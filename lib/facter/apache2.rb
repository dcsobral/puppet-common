# apache2.rb

Facter.add("apache2") do
        setcode do
                %x{/usr/bin/test -x /etc/init.d/apache2 -o -x /etc/rc.d/init.d/apache2 && /bin/echo yes || /bin/echo no}.chomp
        end
end

