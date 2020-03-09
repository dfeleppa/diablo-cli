class DiabloCLI::CLI

    def start
        puts "Welcome to Sanctuary..."
        @char = DiabloCLI::API.get_char
        
    end
end