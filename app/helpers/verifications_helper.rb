module VerificationsHelper
  class SebImporter
    @@SEB_AMOUNT_RE = "(\s*\d+)+(,\d+)?"
    @@SEB_DATE_RE = "\d\d\-\d\d\-\d\d"
    # Format: Bokföringsdatum\tValutadatum\tVerifikationsnummer\tText\tBelopp\tSaldo
    @@SEB_LINE_RE = 
      @@SEB_DATE_RE + "\t" + 
      @@SEB_DATE_RE + "\t" +
      "\S+" + "\t" +
      "\S+" + "\t" +
      @@SEB_AMOUNT_RE + "\t" +
      @@SEB_AMOUNT_RE
    
    def self.validate(line)
      line =~ @@SEB_LINE_RE
    end
    
    def self.parse(line)
      columns = line.split("\t")
      if columns.length < 6 || columns.length > 7
        return "SEB line must be tab separated and contain 6-7 columns"
      end
      sebhash = {
        :raw => line,
        :bank => "SEB",
        :verification_id => columns[2].strip,
        :verification_date => Date.strptime(columns[1].strip, "%Y-%m-%d"),
        :description => columns[3].strip.upcase,
        :amount => columns[4].strip.gsub(/[^0-9\-\,]/, "").gsub(/,/,".").to_f}
      # check for visa date text field
      if columns[3].strip =~ /.*\/\d\d\-\d\d\-\d\d$/
        sebhash[:description] = UnicodeUtils.upcase(columns[3].strip[/(.*)\/(\d\d\-\d\d\-\d\d)$/, 1].strip)
        sebhash[:verification_date] = Date.strptime("20" + columns[3].strip[/(.*)\/(\d\d\-\d\d\-\d\d)$/, 2], "%Y-%m-%d")
      end
      sebhash[:month] = sebhash[:verification_date].month
      sebhash[:year] = sebhash[:verification_date].year
      if columns.length == 7
        sebhash[:category] = columns[6].strip
      end
      return sebhash
    end
  end
end