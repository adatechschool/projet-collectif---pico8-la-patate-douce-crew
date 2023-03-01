pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
#include src/main.lua
#include src/player.lua
#include src/burger.lua
#include src/fries.lua
#include src/utils.lua
#include src/collisions.lua
#include src/hud.lua
__gfx__
000000003333333333333333cccccccc4444444444444444cc7776ccdddddddd44444444d66666666666666ddddddddddddddddd66666666dddddddddddddddd
000000003333333333939333cccccccc4dddddd444444444c7767777dddddddd44444444d66666666666666d6666666dd6666666666666666666666dd6666666
000000003333333339393933cccccccc4dddddd44444444467777677ddddddddaa4aa4aad66666666666666d6666666dd6566666666666666666656dd6666666
000000003333333339393933cccccccc4dddddd44444444476777777dddddddd58488485d66666666666666d6666666dd6566666666666666666656dd6666666
000000003333333339393933cccccccc000000004444444477777777dddddddd54aa4aa5d66666666666666d6666666dd6566666666666666666656dd6666666
000000003333333339333933cccccccc555555554444444467777776dddddddd55884855d66666666666666d6666666dd6666666666666666666666dd6666666
000000003333333339333933cccccccc34333343444444447677777cdddddddd55555555d66666666666666d6666666dd6666666666666666666666dd6666666
000000003333333333333333cccccccc3433334344444444cc7776ccdddddddd55555555dddddddddddddddd6666666dd6666666666666666666666dd6666666
66666666dddddddd33a333338888888899999999999a99998888888899a999a9a999999accccccccffffffffe333333300000000000000000000000000000000
6666666666666666333333a38888888899999999a9aa99998878788899aa99999aa99a99ccccccccffffffff3333333908800880000000000000000000000000
66666666666666663a3a3a3a888888889999999999a99aa9878787889aa99aa99a999a99ccccccccffffffff333e3f3387888882000000000000000000000000
666666666666666688a888a888888888999999999aa9aa998787878899999a999999aaa9ccccccccfffffffff333333e88888882000000000000000000000000
66666666666666666666666688888888999999999999999a878787889aaa99999a999999ccccccccffffffff3333333308888820000000000000000000000000
66666666666666666656665688888888797977979aa99aaa878887889a999aa999aaa999ccccccccffffffff3333393300888200000000000000000000000000
66666666666666666666666688888888979779799aa9999987888788a9aa9a99a999a9aaccccccccffffffff3e33333300082000000000000000000000000000
dddddddd66666666666666668888888839797793dddddddd8888888899a999999a99999911111111ffffffff3393333e00000000000000000000000000000000
00049900000499009999990000449900000499000004990000000000001111101111111000000000000000000000000000000000333333333333333333333333
009ff440009ff440009ff440009ff440004ff444044ff44000900a0011ff7f700fff7f700000000000b0b000000b0b00000000003388333333aa333333bb3333
00f7efe000f7efe004fffef004ff7ee004f7efe404f7efe4009a0a000ff8ff800ff8ff80000000000f8b8f0000ffbf0000000000388883333aaaa3333bbbb333
00fffff000fffff004fffff004fffff004fffff404fffff4009a9a00055555500555555000000000f88787000f87870000000000388788333aa7aa333bb7bb33
0fff88ff00ff88f004ff884004ff88000f4f88f40f4f88f4089a9a80044444400444444000000000f8808080f8808080000000003388883333aaaa3333bbbb33
005544500055445004554400045544000044444f0044444f088a98800b8bb8800b8bb88080000008f8888880f88888800000000033388833333aaa33333bbb33
005445500054455000444000004440000054440000044450007777000ffffff00ffffff00bf8fbf00f88e8000f88e800088ff880333333333333333333333333
000f0ff000f00f00ff0ff000f40f0000000000000000f0ff008888000ff00ff000ff00ff0fbf8f0b00b00bb00b00bb000bb88bb0333333333333333333333333
00000000c8888888c88888883333333300000000000000000000000000000000000000000000000000000000000000000000000033333344333333ee333333aa
0000a900888fff88888fff8833333333000000000000000000000000000000000000000000000000000000000000000000000000333333343333333e3333333a
000a9a00877f7ff88f77f77833333333000000000000000000000000000000000000000000000000000000000000000000000000333333333333333333333333
0009a0008f0ff0f88f0ff0f8333333330aa0a0aa0000000000000000000000000000000000000000000000000000000000000000333333333333333333333333
9a0000a98ff88ff88ff88ff833333333000000000000000000000000000000000000000000000000000000000000000000000000333333333333333333333333
a9a00a90fffffff88fffffff333388330aa0a0aa0000000000000000000000000000000000000000000000000000000000000000333333333333333333333333
0aa00900999fff99999fff993388883700000000000000000000000000000000000000000000000000000000000000000000000043333333e3333333a3333333
00000000cc99999ccc99999c3f88f99300000000000000000000000000000000000000000000000000000000000000000000000044333333ee333333aa333333
__gff__
4000800001010101010101010101010101010100010100000001000100000000000000000000060c0c0c1414140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0303060603030306060303030606030303030306060303030306060303030303030303030303030303030303030303060606030303060606030303030303030303030303030303030303030606030303030606060303030303060603030606030303030303030303030303030303030303030303030603030303030303030303
1919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191919191903030606030306030303030303060303030303030303030303
0101010102010101010101010101010101010101020101010101010101020108010101010101010101010101010101010101010101010101010f11110b0101010101010101010101010101010101010107011a011a011a011a011a011a011a011a011a011a011a08030303030303030606060303030303030306060603030303
0101010101010101010101010201010102010201270102010201260101010108010101010101010101010f110b260101010101010101012d0f0d0d0d0d0b260101010101010101010101010101010101071a021a011a011a011a021a011a021a011a011a011a0108030303060603030303030303060603030303030303030303
010201010101020101010101010101010101010404040101010108080101010801010201010f0e0c0b110d0d0d0b0101020101010101010707070707070707010101020101010126260102010101010107011a011a011a011a011a011a011a011a021a011a021a08030303030303030303030603030303030303030303060303
01010101020101010102010126012802010201010101010101010101010101080101010101090a090a101313130a01010101010107010114141414141414140101010101010c111111110e0101010201071a011a021a021a011a011a011a011a011a011a011a0108030303030303030303060306030303030303030306060303
01010101010101010101040404040401010101010101020101010101010101080101010101010101010101010101010101010101011613161316161613161616130101010209101010100a010101010107011a011a011a011a021a261a011a261a011a021a011a08030303060603030303030303030303030303030303030303
0101010101010401010102010101010101010101010101020101270126020108010101010102010101010102010101010101070101161616131613161313161313010101010101010102010101010101011a021a011a011a011a050505050505011a011a011a0108030303030303030303030303030303030303030303030303
01010101010801010101020101010101010101040401010104040404040101080101020101010101010101010101020101010101011613161316161613131613132a010101010102020201010101010101011a011a011a011a010404040404041a011a011a011a08030303030303030606030303030303030303030303030303
0101010108080101010101010101012601010101010101010101020101010101010101010101010101010101010126010101020101131313131313131313131313070701010101020101010102010101011a011a011a2f1a011a011a011a011a011a021a011a0103030303030303030303030303030303030303030303030303
0101010808080801010101010101080801010101010102010101010101010201010101012d0f0e0c0b12121212120c0b01010101010f0b17171717171717170f0b0f110e01280101010201010101010101011a01050505011a011a011a011a011a011a011a261a03030303030303030303030303030303030303030303030303
0404040404040404010127012801040404040101280101010127012e01012601012a010707090a090a1010101010090a0101010101090a1515151515151515090a09100a0707070707010127010127012a1a011a04040404011a281a012a011a2a1a281a27040403030303030303033231033103320303030303030303030303
070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707071b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b