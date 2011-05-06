# ntp.rb

Facter.add("ntp") do
        setcode do
                %x{/usr/bin/test -x /etc/init.d/ntp -o -x /etc/rc.d/init.d/ntp && /bin/echo yes || /bin/echo no}.chomp
        end
end

