#!/usr/bin/perl

use strict;
use warnings;

use FindBin;



sub read_rom
{
    my ($rom_file) = @_;
    return undef unless defined ($rom_file);
    
    my $rom = undef;
    open (my $FH_ROM, '<', $rom_file) or
        die "Cannot open rom '$rom_file': $!";
    local $/ = undef;	## Slurp mode.
    $rom = <$FH_ROM>;
    close ($FH_ROM);
    
    return $rom;
}



sub write_page
{
    my ($page, $page_file) = @_;
    
    open (my $FH_PAGE, '+>', $page_file) or
        die "Cannot open page file '$page_file': $!";
    print $FH_PAGE $page;
    close ($FH_PAGE);
}



my $rom = read_rom ($FindBin::Bin . '/MazeOfGalious.rom');
my $len = length ($rom);
my @pages = unpack ('a8192' x ($len / 8192), $rom);

my $page_counter = 0;
foreach my $page (@pages)
{
    #my $dec_counter = sprintf ("%02d", $page_counter);
    #my $dec_counter = sprintf ("%d", $page_counter);
    my $hex_counter = sprintf ("%02x", $page_counter);
    write_page ($page, $FindBin::Bin . "/MazeOfGalious.page.$hex_counter.bin");
    ++$page_counter;
}
