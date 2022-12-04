using Cleopatra;

namespace Cleopatra.Tests {
    public void main() {
        stdout.printf("Testing shlib\n");
        stdout.printf("2 + 3 is %d\n", sum(2, 3));
        stdout.printf("8 squared is %d\n", square(8));
        //  GMime.InternetAddressMailbox mbox = new GMime.InternetAddressMailbox(hello, world);
        //  stderr.printf("Email Address is %s", mbox.get_idn_addr());
        try {
            Cleopatra.Core.InternetAddress addr = Cleopatra.Core.InternetAddressFactory.get("hello", "hello@world.com");
            stdout.printf("Internet address is %s\n", addr.get_addr());
        } catch (Core.InternetAddressError iae) {
            stderr.printf("Error has been fixed\n");
        }
    }
}