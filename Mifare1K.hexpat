#pragma description Mifare 1K Template based on Mifare1k from SweetScape repo written by Ruben Boonen (b33f). 10 June 2024.
#pragma author Matt Hutchinson (github.com/HoneyBadgerMatt)

import std.sys;

#pragma endian little

  enum color_space_t : u8 {
      sRGB = 0,
      linear = 1
  };
namespace Sector0 {
  struct Sector0 {
    u8 Card_UID[4] [[comment("Manufacturer Block"), name("Manufacturer Block"), color("dc2f2f")]];
    u8 LRC[1][[comment("LRC"), name("LRC")]];
    char Internal[11][[comment("Internal"), name("Internal")]];
    char Data[32];
    u8 Key_A[6][[color("b58900")]];
    u8 Access_Bits[3][[color("4dff00")]];
    u8 GPB[1][[comment("General Purpose Byte"), name("GPB"), color("7bd654")]];
    u8 Key_B[6][[color("cb4b16")]];
  } [[inline, no_highlight]];
}
Sector0::Sector0 Sector0 @ 0x0;
using Sector0 = Sector0::Sector0;

namespace Sectors {
  struct Blocks {
    char Values [48][[no_highlight]];
    u8 Key_A[6][[color("b58900")]];
    u8 Access_Bits[3][[color("4dff00")]];
    u8 GPB[1][[comment("General Purpose Byte"), name("GPB"), color("7bd654")]];
    u8 Key_B[6][[color("cb4b16")]];
  } [[inline]];
}

Sectors::Blocks Sector1 @ 0x40[[comment("Sector 1"), name ("Sector 1")]];
Sectors::Blocks Sector2 @ 0x80[[comment("Sector 2"), name ("Sector 2")]];
Sectors::Blocks Sector3 @ 0xC0[[comment("Sector 3"), name ("Sector 3")]];
Sectors::Blocks Sector4 @ 0x100[[comment("Sector 4"), name ("Sector 4")]];
Sectors::Blocks Sector5 @ 0x140[[comment("Sector 5"), name ("Sector 5")]];
Sectors::Blocks Sector6 @ 0x180[[comment("Sector 6"), name ("Sector 6")]];
Sectors::Blocks Sector7 @ 0x1C0[[comment("Sector 7"), name ("Sector 7")]];
Sectors::Blocks Sector8 @ 0x200[[comment("Sector 8"), name ("Sector 8")]];
Sectors::Blocks Sector9 @ 0x240[[comment("Sector 9"), name ("Sector 9")]];
Sectors::Blocks Sector10 @ 0x280[[comment("Sector 10"), name ("Sector 10")]];
Sectors::Blocks Sector11 @ 0x2C0[[comment("Sector 11"), name ("Sector 11")]];
Sectors::Blocks Sector12 @ 0x300[[comment("Sector 12"), name ("Sector 12")]];
Sectors::Blocks Sector13 @ 0x340[[comment("Sector 13"), name ("Sector 13")]];
Sectors::Blocks Sector14 @ 0x380[[comment("Sector 14"), name ("Sector 14")]];
Sectors::Blocks Sector15 @ 0x3C0[[comment("Sector 15"), name ("Sector 15")]];
using Sectors = Sectors::Blocks;
