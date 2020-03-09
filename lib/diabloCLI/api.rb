
class DiabloCLI::API

    def self.get_char
        @char_hash = HTTParty.get("https://gateway.battlenet.com.cn/d3/data/hero/barbarian?locale=zh_CN&access_token=USlMJgji9uNy6mNuNMnX1Z2MNOLNXyFNkB")
        binding.pry
    end

    
end