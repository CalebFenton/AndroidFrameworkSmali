.class Lcom/android/org/bouncycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# static fields
.field private static final INTERLEAVE2_TABLE:[I

.field private static final INTERLEAVE3_TABLE:[I

.field private static final INTERLEAVE4_TABLE:[I

.field private static final INTERLEAVE5_TABLE:[I

.field private static final INTERLEAVE7_TABLE:[J

.field private static final ZEROES:Ljava/lang/String; = "0000000000000000000000000000000000000000000000000000000000000000"

.field static final bitLengths:[B


# instance fields
.field private m_ints:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x80

    #@2
    const/16 v1, 0x100

    #@4
    .line 16
    new-array v0, v1, [I

    #@6
    fill-array-data v0, :array_0

    #@9
    .line 15
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    #@b
    .line 55
    new-array v0, v2, [I

    #@d
    fill-array-data v0, :array_1

    #@10
    .line 54
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    #@12
    .line 78
    new-array v0, v1, [I

    #@14
    fill-array-data v0, :array_2

    #@17
    .line 77
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    #@19
    .line 116
    new-array v0, v2, [I

    #@1b
    fill-array-data v0, :array_3

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    #@20
    .line 139
    const/16 v0, 0x200

    #@22
    new-array v0, v0, [J

    #@24
    fill-array-data v0, :array_4

    #@27
    .line 138
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@29
    .line 274
    new-array v0, v1, [B

    #@2b
    fill-array-data v0, :array_5

    #@2e
    .line 273
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@30
    .line 7
    return-void

    #@31
    .line 16
    nop

    #@32
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data

    #@236
    .line 55
    :array_1
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    #@33a
    .line 78
    :array_2
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    #@53e
    .line 116
    :array_3
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    #@642
    .line 139
    :array_4
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    #@e46
    .line 274
    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "intLen"    # I

    #@0
    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 299
    new-array v0, p1, [J

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@7
    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 19
    .param p1, "bigInt"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 322
    if-eqz p1, :cond_0

    #@5
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    #@8
    move-result v13

    #@9
    if-gez v13, :cond_1

    #@b
    .line 324
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v16, "invalid F2m field value"

    #@10
    move-object/from16 v0, v16

    #@12
    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v13

    #@16
    .line 327
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    #@19
    move-result v13

    #@1a
    if-nez v13, :cond_2

    #@1c
    .line 329
    const/4 v13, 0x1

    #@1d
    new-array v13, v13, [J

    #@1f
    const-wide/16 v16, 0x0

    #@21
    const/16 v18, 0x0

    #@23
    aput-wide v16, v13, v18

    #@25
    move-object/from16 v0, p0

    #@27
    iput-object v13, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@29
    .line 330
    return-void

    #@2a
    .line 333
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@2d
    move-result-object v2

    #@2e
    .line 334
    .local v2, "barr":[B
    array-length v6, v2

    #@2f
    .line 335
    .local v6, "barrLen":I
    const/4 v7, 0x0

    #@30
    .line 336
    .local v7, "barrStart":I
    const/4 v13, 0x0

    #@31
    aget-byte v13, v2, v13

    #@33
    if-nez v13, :cond_3

    #@35
    .line 340
    add-int/lit8 v6, v6, -0x1

    #@37
    .line 341
    const/4 v7, 0x1

    #@38
    .line 343
    :cond_3
    add-int/lit8 v13, v6, 0x7

    #@3a
    div-int/lit8 v11, v13, 0x8

    #@3c
    .line 344
    .local v11, "intLen":I
    new-array v13, v11, [J

    #@3e
    move-object/from16 v0, p0

    #@40
    iput-object v13, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@42
    .line 346
    add-int/lit8 v9, v11, -0x1

    #@44
    .line 347
    .local v9, "iarrJ":I
    rem-int/lit8 v13, v6, 0x8

    #@46
    add-int v12, v13, v7

    #@48
    .line 348
    .local v12, "rem":I
    const-wide/16 v14, 0x0

    #@4a
    .line 349
    .local v14, "temp":J
    move v4, v7

    #@4b
    .line 350
    .local v4, "barrI":I
    if-ge v7, v12, :cond_5

    #@4d
    .line 352
    :goto_0
    if-ge v4, v12, :cond_4

    #@4f
    .line 354
    const/16 v13, 0x8

    #@51
    shl-long/2addr v14, v13

    #@52
    .line 355
    aget-byte v13, v2, v4

    #@54
    and-int/lit16 v3, v13, 0xff

    #@56
    .line 356
    .local v3, "barrBarrI":I
    int-to-long v0, v3

    #@57
    move-wide/from16 v16, v0

    #@59
    or-long v14, v14, v16

    #@5b
    .line 352
    add-int/lit8 v4, v4, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 358
    .end local v3    # "barrBarrI":I
    :cond_4
    move-object/from16 v0, p0

    #@60
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@62
    add-int/lit8 v10, v9, -0x1

    #@64
    .end local v9    # "iarrJ":I
    .local v10, "iarrJ":I
    aput-wide v14, v13, v9

    #@66
    move v9, v10

    #@67
    .line 361
    .end local v10    # "iarrJ":I
    .restart local v9    # "iarrJ":I
    :cond_5
    :goto_1
    if-ltz v9, :cond_7

    #@69
    .line 363
    const-wide/16 v14, 0x0

    #@6b
    .line 364
    const/4 v8, 0x0

    #@6c
    .local v8, "i":I
    move v5, v4

    #@6d
    .end local v4    # "barrI":I
    .local v5, "barrI":I
    :goto_2
    const/16 v13, 0x8

    #@6f
    if-ge v8, v13, :cond_6

    #@71
    .line 366
    const/16 v13, 0x8

    #@73
    shl-long/2addr v14, v13

    #@74
    .line 367
    add-int/lit8 v4, v5, 0x1

    #@76
    .end local v5    # "barrI":I
    .restart local v4    # "barrI":I
    aget-byte v13, v2, v5

    #@78
    and-int/lit16 v3, v13, 0xff

    #@7a
    .line 368
    .restart local v3    # "barrBarrI":I
    int-to-long v0, v3

    #@7b
    move-wide/from16 v16, v0

    #@7d
    or-long v14, v14, v16

    #@7f
    .line 364
    add-int/lit8 v8, v8, 0x1

    #@81
    move v5, v4

    #@82
    .end local v4    # "barrI":I
    .restart local v5    # "barrI":I
    goto :goto_2

    #@83
    .line 370
    .end local v3    # "barrBarrI":I
    :cond_6
    move-object/from16 v0, p0

    #@85
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@87
    aput-wide v14, v13, v9

    #@89
    .line 361
    add-int/lit8 v9, v9, -0x1

    #@8b
    move v4, v5

    #@8c
    .end local v5    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_1

    #@8d
    .line 320
    .end local v8    # "i":I
    :cond_7
    return-void
.end method

.method public constructor <init>([J)V
    .locals 0
    .param p1, "ints"    # [J

    #@0
    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 304
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@5
    .line 302
    return-void
.end method

.method public constructor <init>([JII)V
    .locals 2
    .param p1, "ints"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 309
    if-nez p2, :cond_0

    #@6
    array-length v0, p1

    #@7
    if-ne p3, v0, :cond_0

    #@9
    .line 311
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@b
    .line 307
    :goto_0
    return-void

    #@c
    .line 315
    :cond_0
    new-array v0, p3, [J

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@10
    .line 316
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@12
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@15
    goto :goto_0
.end method

.method private static add([JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 718
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 720
    add-int v1, p1, v0

    #@5
    aget-wide v2, p0, v1

    #@7
    add-int v4, p3, v0

    #@9
    aget-wide v4, p2, v4

    #@b
    xor-long/2addr v2, v4

    #@c
    aput-wide v2, p0, v1

    #@e
    .line 718
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 716
    :cond_0
    return-void
.end method

.method private static add([JI[JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I
    .param p6, "count"    # I

    #@0
    .prologue
    .line 726
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    #@3
    .line 728
    add-int v1, p5, v0

    #@5
    add-int v2, p1, v0

    #@7
    aget-wide v2, p0, v2

    #@9
    add-int v4, p3, v0

    #@b
    aget-wide v4, p2, v4

    #@d
    xor-long/2addr v2, v4

    #@e
    aput-wide v2, p4, v1

    #@10
    .line 726
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 724
    :cond_0
    return-void
.end method

.method private static addBoth([JI[JI[JII)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y1"    # [J
    .param p3, "y1Off"    # I
    .param p4, "y2"    # [J
    .param p5, "y2Off"    # I
    .param p6, "count"    # I

    #@0
    .prologue
    .line 734
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    #@3
    .line 736
    add-int v1, p1, v0

    #@5
    aget-wide v2, p0, v1

    #@7
    add-int v4, p3, v0

    #@9
    aget-wide v4, p2, v4

    #@b
    add-int v6, p5, v0

    #@d
    aget-wide v6, p4, v6

    #@f
    xor-long/2addr v4, v6

    #@10
    xor-long/2addr v2, v4

    #@11
    aput-wide v2, p0, v1

    #@13
    .line 734
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 732
    :cond_0
    return-void
.end method

.method private addShiftedByBitsSafe(Lcom/android/org/bouncycastle/math/ec/LongArray;II)V
    .locals 10
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/LongArray;
    .param p2, "otherDegree"    # I
    .param p3, "bits"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 654
    add-int/lit8 v0, p2, 0x3f

    #@3
    ushr-int/lit8 v4, v0, 0x6

    #@5
    .line 656
    .local v4, "otherLen":I
    ushr-int/lit8 v1, p3, 0x6

    #@7
    .line 657
    .local v1, "words":I
    and-int/lit8 v5, p3, 0x3f

    #@9
    .line 659
    .local v5, "shift":I
    if-nez v5, :cond_0

    #@b
    .line 661
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@d
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@f
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    #@12
    .line 662
    return-void

    #@13
    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@15
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@17
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    #@1a
    move-result-wide v6

    #@1b
    .line 666
    .local v6, "carry":J
    const-wide/16 v2, 0x0

    #@1d
    cmp-long v0, v6, v2

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 668
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@23
    add-int v2, v4, v1

    #@25
    aget-wide v8, v0, v2

    #@27
    xor-long/2addr v8, v6

    #@28
    aput-wide v8, v0, v2

    #@2a
    .line 652
    :cond_1
    return-void
.end method

.method private static addShiftedDown([JI[JIII)J
    .locals 12
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    #@0
    .prologue
    .line 687
    rsub-int/lit8 v1, p5, 0x40

    #@2
    .line 688
    .local v1, "shiftInv":I
    const-wide/16 v4, 0x0

    #@4
    .line 689
    .local v4, "prev":J
    move/from16 v0, p4

    #@6
    .line 690
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 692
    add-int v6, p3, v0

    #@c
    aget-wide v2, p2, v6

    #@e
    .line 693
    .local v2, "next":J
    add-int v6, p1, v0

    #@10
    aget-wide v8, p0, v6

    #@12
    ushr-long v10, v2, p5

    #@14
    or-long/2addr v10, v4

    #@15
    xor-long/2addr v8, v10

    #@16
    aput-wide v8, p0, v6

    #@18
    .line 694
    shl-long v4, v2, v1

    #@1a
    goto :goto_0

    #@1b
    .line 696
    .end local v2    # "next":J
    :cond_0
    return-wide v4
.end method

.method private static addShiftedUp([JI[JIII)J
    .locals 14
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    #@0
    .prologue
    .line 674
    rsub-int/lit8 v3, p5, 0x40

    #@2
    .line 675
    .local v3, "shiftInv":I
    const-wide/16 v6, 0x0

    #@4
    .line 676
    .local v6, "prev":J
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    move/from16 v0, p4

    #@7
    if-ge v2, v0, :cond_0

    #@9
    .line 678
    add-int v8, p3, v2

    #@b
    aget-wide v4, p2, v8

    #@d
    .line 679
    .local v4, "next":J
    add-int v8, p1, v2

    #@f
    aget-wide v10, p0, v8

    #@11
    shl-long v12, v4, p5

    #@13
    or-long/2addr v12, v6

    #@14
    xor-long/2addr v10, v12

    #@15
    aput-wide v10, p0, v8

    #@17
    .line 680
    ushr-long v6, v4, v3

    #@19
    .line 676
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 682
    .end local v4    # "next":J
    :cond_0
    return-wide v6
.end method

.method private static bitLength(J)I
    .locals 8
    .param p0, "w"    # J

    #@0
    .prologue
    .line 500
    const/16 v5, 0x20

    #@2
    ushr-long v6, p0, v5

    #@4
    long-to-int v3, v6

    #@5
    .line 501
    .local v3, "u":I
    if-nez v3, :cond_0

    #@7
    .line 503
    long-to-int v3, p0

    #@8
    .line 504
    const/4 v0, 0x0

    #@9
    .line 511
    .local v0, "b":I
    :goto_0
    ushr-int/lit8 v2, v3, 0x10

    #@b
    .line 512
    .local v2, "t":I
    if-nez v2, :cond_2

    #@d
    .line 514
    ushr-int/lit8 v2, v3, 0x8

    #@f
    .line 515
    if-nez v2, :cond_1

    #@11
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@13
    aget-byte v1, v5, v3

    #@15
    .line 523
    .local v1, "k":I
    :goto_1
    add-int v5, v0, v1

    #@17
    return v5

    #@18
    .line 508
    .end local v0    # "b":I
    .end local v1    # "k":I
    .end local v2    # "t":I
    :cond_0
    const/16 v0, 0x20

    #@1a
    .restart local v0    # "b":I
    goto :goto_0

    #@1b
    .line 515
    .restart local v2    # "t":I
    :cond_1
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@1d
    aget-byte v5, v5, v2

    #@1f
    add-int/lit8 v1, v5, 0x8

    #@21
    .restart local v1    # "k":I
    goto :goto_1

    #@22
    .line 519
    .end local v1    # "k":I
    :cond_2
    ushr-int/lit8 v4, v2, 0x8

    #@24
    .line 520
    .local v4, "v":I
    if-nez v4, :cond_3

    #@26
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@28
    aget-byte v5, v5, v2

    #@2a
    add-int/lit8 v1, v5, 0x10

    #@2c
    .restart local v1    # "k":I
    goto :goto_1

    #@2d
    .end local v1    # "k":I
    :cond_3
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@2f
    aget-byte v5, v5, v4

    #@31
    add-int/lit8 v1, v5, 0x18

    #@33
    .restart local v1    # "k":I
    goto :goto_1
.end method

.method private degreeFrom(I)I
    .locals 7
    .param p1, "limit"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 459
    add-int/lit8 v1, p1, 0x3e

    #@3
    ushr-int/lit8 v0, v1, 0x6

    #@5
    .line 463
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    #@7
    .line 465
    return v6

    #@8
    .line 467
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    aget-wide v2, v1, v0

    #@e
    .line 469
    .local v2, "w":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 471
    shl-int/lit8 v1, v0, 0x6

    #@16
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    #@19
    move-result v4

    #@1a
    add-int/2addr v1, v4

    #@1b
    return v1
.end method

.method private static distribute([JIIII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "src"    # I
    .param p2, "dst1"    # I
    .param p3, "dst2"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 742
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 744
    add-int v1, p1, v0

    #@5
    aget-wide v2, p0, v1

    #@7
    .line 745
    .local v2, "v":J
    add-int v1, p2, v0

    #@9
    aget-wide v4, p0, v1

    #@b
    xor-long/2addr v4, v2

    #@c
    aput-wide v4, p0, v1

    #@e
    .line 746
    add-int v1, p3, v0

    #@10
    aget-wide v4, p0, v1

    #@12
    xor-long/2addr v4, v2

    #@13
    aput-wide v4, p0, v1

    #@15
    .line 742
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 740
    .end local v2    # "v":J
    :cond_0
    return-void
.end method

.method private static flipBit([JII)V
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 808
    ushr-int/lit8 v3, p2, 0x6

    #@2
    .line 810
    .local v3, "theInt":I
    and-int/lit8 v2, p2, 0x3f

    #@4
    .line 811
    .local v2, "theBit":I
    const-wide/16 v4, 0x1

    #@6
    shl-long v0, v4, v2

    #@8
    .line 812
    .local v0, "flipper":J
    add-int v4, p1, v3

    #@a
    aget-wide v6, p0, v4

    #@c
    xor-long/2addr v6, v0

    #@d
    aput-wide v6, p0, v4

    #@f
    .line 805
    return-void
.end method

.method private static flipVector([JI[JIII)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "yLen"    # I
    .param p5, "bits"    # I

    #@0
    .prologue
    .line 1643
    ushr-int/lit8 v0, p5, 0x6

    #@2
    add-int/2addr p1, v0

    #@3
    .line 1644
    and-int/lit8 p5, p5, 0x3f

    #@5
    .line 1646
    if-nez p5, :cond_0

    #@7
    .line 1648
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    #@a
    .line 1641
    :goto_0
    return-void

    #@b
    .line 1652
    :cond_0
    add-int/lit8 v1, p1, 0x1

    #@d
    rsub-int/lit8 v5, p5, 0x40

    #@f
    move-object v0, p0

    #@10
    move-object v2, p2

    #@11
    move v3, p3

    #@12
    move v4, p4

    #@13
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    #@16
    move-result-wide v6

    #@17
    .line 1653
    .local v6, "carry":J
    aget-wide v0, p0, p1

    #@19
    xor-long/2addr v0, v6

    #@1a
    aput-wide v0, p0, p1

    #@1c
    goto :goto_0
.end method

.method private static flipWord([JIIJ)V
    .locals 7
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J

    #@0
    .prologue
    .line 757
    ushr-int/lit8 v2, p2, 0x6

    #@2
    add-int v0, p1, v2

    #@4
    .line 758
    .local v0, "n":I
    and-int/lit8 v1, p2, 0x3f

    #@6
    .line 759
    .local v1, "shift":I
    if-nez v1, :cond_1

    #@8
    .line 761
    aget-wide v2, p0, v0

    #@a
    xor-long/2addr v2, p3

    #@b
    aput-wide v2, p0, v0

    #@d
    .line 755
    :cond_0
    :goto_0
    return-void

    #@e
    .line 765
    :cond_1
    aget-wide v2, p0, v0

    #@10
    shl-long v4, p3, v1

    #@12
    xor-long/2addr v2, v4

    #@13
    aput-wide v2, p0, v0

    #@15
    .line 766
    rsub-int/lit8 v2, v1, 0x40

    #@17
    ushr-long/2addr p3, v2

    #@18
    .line 767
    const-wide/16 v2, 0x0

    #@1a
    cmp-long v2, p3, v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 769
    add-int/lit8 v0, v0, 0x1

    #@20
    aget-wide v2, p0, v0

    #@22
    xor-long/2addr v2, p3

    #@23
    aput-wide v2, p0, v0

    #@25
    goto :goto_0
.end method

.method private static interleave([JI[JIII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "width"    # I

    #@0
    .prologue
    .line 1735
    packed-switch p5, :pswitch_data_0

    #@3
    .line 1747
    :pswitch_0
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@5
    aget-byte v0, v0, p5

    #@7
    add-int/lit8 v5, v0, -0x1

    #@9
    move-object v0, p0

    #@a
    move v1, p1

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_n([JI[JIII)V

    #@11
    .line 1733
    :goto_0
    return-void

    #@12
    .line 1738
    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3([JI[JII)V

    #@15
    goto :goto_0

    #@16
    .line 1741
    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave5([JI[JII)V

    #@19
    goto :goto_0

    #@1a
    .line 1744
    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave7([JI[JII)V

    #@1d
    goto :goto_0

    #@1e
    .line 1735
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static interleave2_32to64(I)J
    .locals 8
    .param p0, "x"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 1900
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    #@7
    and-int/lit16 v3, p0, 0xff

    #@9
    aget v2, v2, v3

    #@b
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    #@d
    ushr-int/lit8 v4, p0, 0x8

    #@f
    and-int/lit16 v4, v4, 0xff

    #@11
    aget v3, v3, v4

    #@13
    shl-int/lit8 v3, v3, 0x10

    #@15
    or-int v0, v2, v3

    #@17
    .line 1901
    .local v0, "r00":I
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    #@19
    ushr-int/lit8 v3, p0, 0x10

    #@1b
    and-int/lit16 v3, v3, 0xff

    #@1d
    aget v2, v2, v3

    #@1f
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    #@21
    ushr-int/lit8 v4, p0, 0x18

    #@23
    aget v3, v3, v4

    #@25
    shl-int/lit8 v3, v3, 0x10

    #@27
    or-int v1, v2, v3

    #@29
    .line 1902
    .local v1, "r32":I
    int-to-long v2, v1

    #@2a
    and-long/2addr v2, v6

    #@2b
    const/16 v4, 0x20

    #@2d
    shl-long/2addr v2, v4

    #@2e
    int-to-long v4, v0

    #@2f
    and-long/2addr v4, v6

    #@30
    or-long/2addr v2, v4

    #@31
    return-wide v2
.end method

.method private static interleave2_n(JI)J
    .locals 8
    .param p0, "x"    # J
    .param p2, "rounds"    # I

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    const/4 v6, 0x1

    #@3
    const v5, 0xffff

    #@6
    .line 1876
    :goto_0
    if-le p2, v6, :cond_0

    #@8
    .line 1878
    add-int/lit8 p2, p2, -0x2

    #@a
    .line 1879
    long-to-int v0, p0

    #@b
    and-int/2addr v0, v5

    #@c
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    #@f
    move-result-wide v0

    #@10
    .line 1880
    const/16 v2, 0x10

    #@12
    ushr-long v2, p0, v2

    #@14
    long-to-int v2, v2

    #@15
    and-int/2addr v2, v5

    #@16
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    #@19
    move-result-wide v2

    #@1a
    shl-long/2addr v2, v6

    #@1b
    .line 1879
    or-long/2addr v0, v2

    #@1c
    .line 1881
    ushr-long v2, p0, v7

    #@1e
    long-to-int v2, v2

    #@1f
    and-int/2addr v2, v5

    #@20
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    #@23
    move-result-wide v2

    #@24
    const/4 v4, 0x2

    #@25
    shl-long/2addr v2, v4

    #@26
    .line 1879
    or-long/2addr v0, v2

    #@27
    .line 1882
    const/16 v2, 0x30

    #@29
    ushr-long v2, p0, v2

    #@2b
    long-to-int v2, v2

    #@2c
    and-int/2addr v2, v5

    #@2d
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    #@30
    move-result-wide v2

    #@31
    const/4 v4, 0x3

    #@32
    shl-long/2addr v2, v4

    #@33
    .line 1879
    or-long p0, v0, v2

    #@35
    goto :goto_0

    #@36
    .line 1884
    :cond_0
    if-lez p2, :cond_1

    #@38
    .line 1886
    long-to-int v0, p0

    #@39
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@3c
    move-result-wide v0

    #@3d
    ushr-long v2, p0, v7

    #@3f
    long-to-int v2, v2

    #@40
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@43
    move-result-wide v2

    #@44
    shl-long/2addr v2, v6

    #@45
    or-long p0, v0, v2

    #@47
    .line 1888
    :cond_1
    return-wide p0
.end method

.method private static interleave2_n([JI[JIII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "rounds"    # I

    #@0
    .prologue
    .line 1868
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 1870
    add-int v1, p3, v0

    #@5
    add-int v2, p1, v0

    #@7
    aget-wide v2, p0, v2

    #@9
    invoke-static {v2, v3, p5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_n(JI)J

    #@c
    move-result-wide v2

    #@d
    aput-wide v2, p2, v1

    #@f
    .line 1868
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1866
    :cond_0
    return-void
.end method

.method private static interleave3(J)J
    .locals 8
    .param p0, "x"    # J

    #@0
    .prologue
    const v7, 0x1fffff

    #@3
    .line 1762
    const-wide/high16 v2, -0x8000000000000000L

    #@5
    and-long v0, p0, v2

    #@7
    .line 1764
    .local v0, "z":J
    long-to-int v2, p0

    #@8
    and-int/2addr v2, v7

    #@9
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    #@c
    move-result-wide v2

    #@d
    .line 1763
    or-long/2addr v2, v0

    #@e
    .line 1765
    const/16 v4, 0x15

    #@10
    ushr-long v4, p0, v4

    #@12
    long-to-int v4, v4

    #@13
    and-int/2addr v4, v7

    #@14
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    #@17
    move-result-wide v4

    #@18
    const/4 v6, 0x1

    #@19
    shl-long/2addr v4, v6

    #@1a
    .line 1763
    or-long/2addr v2, v4

    #@1b
    .line 1766
    const/16 v4, 0x2a

    #@1d
    ushr-long v4, p0, v4

    #@1f
    long-to-int v4, v4

    #@20
    and-int/2addr v4, v7

    #@21
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    #@24
    move-result-wide v4

    #@25
    const/4 v6, 0x2

    #@26
    shl-long/2addr v4, v6

    #@27
    .line 1763
    or-long/2addr v2, v4

    #@28
    return-wide v2
.end method

.method private static interleave3([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 1754
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 1756
    add-int v1, p3, v0

    #@5
    add-int v2, p1, v0

    #@7
    aget-wide v2, p0, v2

    #@9
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3(J)J

    #@c
    move-result-wide v2

    #@d
    aput-wide v2, p2, v1

    #@f
    .line 1754
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1752
    :cond_0
    return-void
.end method

.method private static interleave3_13to65(I)J
    .locals 8
    .param p0, "x"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 1826
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    #@7
    and-int/lit8 v3, p0, 0x7f

    #@9
    aget v0, v2, v3

    #@b
    .line 1827
    .local v0, "r00":I
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    #@d
    ushr-int/lit8 v3, p0, 0x7

    #@f
    aget v1, v2, v3

    #@11
    .line 1828
    .local v1, "r35":I
    int-to-long v2, v1

    #@12
    and-long/2addr v2, v6

    #@13
    const/16 v4, 0x23

    #@15
    shl-long/2addr v2, v4

    #@16
    int-to-long v4, v0

    #@17
    and-long/2addr v4, v6

    #@18
    or-long/2addr v2, v4

    #@19
    return-wide v2
.end method

.method private static interleave3_21to63(I)J
    .locals 10
    .param p0, "x"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 1786
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    #@7
    and-int/lit8 v4, p0, 0x7f

    #@9
    aget v0, v3, v4

    #@b
    .line 1787
    .local v0, "r00":I
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    #@d
    ushr-int/lit8 v4, p0, 0x7

    #@f
    and-int/lit8 v4, v4, 0x7f

    #@11
    aget v1, v3, v4

    #@13
    .line 1788
    .local v1, "r21":I
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    #@15
    ushr-int/lit8 v4, p0, 0xe

    #@17
    aget v2, v3, v4

    #@19
    .line 1789
    .local v2, "r42":I
    int-to-long v4, v2

    #@1a
    and-long/2addr v4, v8

    #@1b
    const/16 v3, 0x2a

    #@1d
    shl-long/2addr v4, v3

    #@1e
    int-to-long v6, v1

    #@1f
    and-long/2addr v6, v8

    #@20
    const/16 v3, 0x15

    #@22
    shl-long/2addr v6, v3

    #@23
    or-long/2addr v4, v6

    #@24
    int-to-long v6, v0

    #@25
    and-long/2addr v6, v8

    #@26
    or-long/2addr v4, v6

    #@27
    return-wide v4
.end method

.method private static interleave4_16to64(I)J
    .locals 8
    .param p0, "x"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 1893
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    #@7
    and-int/lit16 v3, p0, 0xff

    #@9
    aget v0, v2, v3

    #@b
    .line 1894
    .local v0, "r00":I
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    #@d
    ushr-int/lit8 v3, p0, 0x8

    #@f
    aget v1, v2, v3

    #@11
    .line 1895
    .local v1, "r32":I
    int-to-long v2, v1

    #@12
    and-long/2addr v2, v6

    #@13
    const/16 v4, 0x20

    #@15
    shl-long/2addr v2, v4

    #@16
    int-to-long v4, v0

    #@17
    and-long/2addr v4, v6

    #@18
    or-long/2addr v2, v4

    #@19
    return-wide v2
.end method

.method private static interleave5(J)J
    .locals 6
    .param p0, "x"    # J

    #@0
    .prologue
    .line 1802
    long-to-int v0, p0

    #@1
    and-int/lit16 v0, v0, 0x1fff

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    #@6
    move-result-wide v0

    #@7
    .line 1803
    const/16 v2, 0xd

    #@9
    ushr-long v2, p0, v2

    #@b
    long-to-int v2, v2

    #@c
    and-int/lit16 v2, v2, 0x1fff

    #@e
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    #@11
    move-result-wide v2

    #@12
    const/4 v4, 0x1

    #@13
    shl-long/2addr v2, v4

    #@14
    .line 1802
    or-long/2addr v0, v2

    #@15
    .line 1804
    const/16 v2, 0x1a

    #@17
    ushr-long v2, p0, v2

    #@19
    long-to-int v2, v2

    #@1a
    and-int/lit16 v2, v2, 0x1fff

    #@1c
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    #@1f
    move-result-wide v2

    #@20
    const/4 v4, 0x2

    #@21
    shl-long/2addr v2, v4

    #@22
    .line 1802
    or-long/2addr v0, v2

    #@23
    .line 1805
    const/16 v2, 0x27

    #@25
    ushr-long v2, p0, v2

    #@27
    long-to-int v2, v2

    #@28
    and-int/lit16 v2, v2, 0x1fff

    #@2a
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    #@2d
    move-result-wide v2

    #@2e
    const/4 v4, 0x3

    #@2f
    shl-long/2addr v2, v4

    #@30
    .line 1802
    or-long/2addr v0, v2

    #@31
    .line 1806
    const/16 v2, 0x34

    #@33
    ushr-long v2, p0, v2

    #@35
    long-to-int v2, v2

    #@36
    and-int/lit16 v2, v2, 0x1fff

    #@38
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    #@3b
    move-result-wide v2

    #@3c
    const/4 v4, 0x4

    #@3d
    shl-long/2addr v2, v4

    #@3e
    .line 1802
    or-long/2addr v0, v2

    #@3f
    return-wide v0
.end method

.method private static interleave5([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 1794
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 1796
    add-int v1, p3, v0

    #@5
    add-int v2, p1, v0

    #@7
    aget-wide v2, p0, v2

    #@9
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave5(J)J

    #@c
    move-result-wide v2

    #@d
    aput-wide v2, p2, v1

    #@f
    .line 1794
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1792
    :cond_0
    return-void
.end method

.method private static interleave7(J)J
    .locals 8
    .param p0, "x"    # J

    #@0
    .prologue
    .line 1841
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    and-long v0, p0, v2

    #@4
    .line 1843
    .local v0, "z":J
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@6
    long-to-int v3, p0

    #@7
    and-int/lit16 v3, v3, 0x1ff

    #@9
    aget-wide v2, v2, v3

    #@b
    .line 1842
    or-long/2addr v2, v0

    #@c
    .line 1844
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@e
    const/16 v5, 0x9

    #@10
    ushr-long v6, p0, v5

    #@12
    long-to-int v5, v6

    #@13
    and-int/lit16 v5, v5, 0x1ff

    #@15
    aget-wide v4, v4, v5

    #@17
    const/4 v6, 0x1

    #@18
    shl-long/2addr v4, v6

    #@19
    .line 1842
    or-long/2addr v2, v4

    #@1a
    .line 1845
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@1c
    const/16 v5, 0x12

    #@1e
    ushr-long v6, p0, v5

    #@20
    long-to-int v5, v6

    #@21
    and-int/lit16 v5, v5, 0x1ff

    #@23
    aget-wide v4, v4, v5

    #@25
    const/4 v6, 0x2

    #@26
    shl-long/2addr v4, v6

    #@27
    .line 1842
    or-long/2addr v2, v4

    #@28
    .line 1846
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@2a
    const/16 v5, 0x1b

    #@2c
    ushr-long v6, p0, v5

    #@2e
    long-to-int v5, v6

    #@2f
    and-int/lit16 v5, v5, 0x1ff

    #@31
    aget-wide v4, v4, v5

    #@33
    const/4 v6, 0x3

    #@34
    shl-long/2addr v4, v6

    #@35
    .line 1842
    or-long/2addr v2, v4

    #@36
    .line 1847
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@38
    const/16 v5, 0x24

    #@3a
    ushr-long v6, p0, v5

    #@3c
    long-to-int v5, v6

    #@3d
    and-int/lit16 v5, v5, 0x1ff

    #@3f
    aget-wide v4, v4, v5

    #@41
    const/4 v6, 0x4

    #@42
    shl-long/2addr v4, v6

    #@43
    .line 1842
    or-long/2addr v2, v4

    #@44
    .line 1848
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@46
    const/16 v5, 0x2d

    #@48
    ushr-long v6, p0, v5

    #@4a
    long-to-int v5, v6

    #@4b
    and-int/lit16 v5, v5, 0x1ff

    #@4d
    aget-wide v4, v4, v5

    #@4f
    const/4 v6, 0x5

    #@50
    shl-long/2addr v4, v6

    #@51
    .line 1842
    or-long/2addr v2, v4

    #@52
    .line 1849
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    #@54
    const/16 v5, 0x36

    #@56
    ushr-long v6, p0, v5

    #@58
    long-to-int v5, v6

    #@59
    and-int/lit16 v5, v5, 0x1ff

    #@5b
    aget-wide v4, v4, v5

    #@5d
    const/4 v6, 0x6

    #@5e
    shl-long/2addr v4, v6

    #@5f
    .line 1842
    or-long/2addr v2, v4

    #@60
    return-wide v2
.end method

.method private static interleave7([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 1833
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@3
    .line 1835
    add-int v1, p3, v0

    #@5
    add-int v2, p1, v0

    #@7
    aget-wide v2, p0, v2

    #@9
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave7(J)J

    #@c
    move-result-wide v2

    #@d
    aput-wide v2, p2, v1

    #@f
    .line 1833
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1831
    :cond_0
    return-void
.end method

.method private static multiplyWord(J[JI[JI)V
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # [J
    .param p3, "bLen"    # I
    .param p4, "c"    # [J
    .param p5, "cOff"    # I

    #@0
    .prologue
    .line 837
    const-wide/16 v0, 0x1

    #@2
    and-long/2addr v0, p0

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 839
    const/4 v0, 0x0

    #@a
    invoke-static {p4, p5, p2, v0, p3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    #@d
    .line 841
    :cond_0
    const/4 v5, 0x1

    #@e
    .line 842
    .local v5, "k":I
    :goto_0
    const/4 v0, 0x1

    #@f
    ushr-long/2addr p0, v0

    #@10
    const-wide/16 v0, 0x0

    #@12
    cmp-long v0, p0, v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 844
    const-wide/16 v0, 0x1

    #@18
    and-long/2addr v0, p0

    #@19
    const-wide/16 v2, 0x0

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 846
    const/4 v3, 0x0

    #@20
    move-object v0, p4

    #@21
    move v1, p5

    #@22
    move-object v2, p2

    #@23
    move v4, p3

    #@24
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    #@27
    move-result-wide v6

    #@28
    .line 847
    .local v6, "carry":J
    const-wide/16 v0, 0x0

    #@2a
    cmp-long v0, v6, v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 849
    add-int v0, p5, p3

    #@30
    aget-wide v2, p4, v0

    #@32
    xor-long/2addr v2, v6

    #@33
    aput-wide v2, p4, v0

    #@35
    .line 852
    .end local v6    # "carry":J
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 835
    :cond_2
    return-void
.end method

.method private static reduceBit([JIII[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    #@0
    .prologue
    .line 1579
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    #@3
    .line 1580
    sub-int v1, p2, p3

    #@5
    .line 1581
    .local v1, "n":I
    array-length v0, p4

    #@6
    .line 1582
    .local v0, "j":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 1584
    aget v2, p4, v0

    #@c
    add-int/2addr v2, v1

    #@d
    invoke-static {p0, p1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    #@10
    goto :goto_0

    #@11
    .line 1586
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    #@14
    .line 1577
    return-void
.end method

.method private static reduceBitWise([JIII[I)V
    .locals 1
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bitlength"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    #@0
    .prologue
    .line 1568
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    #@2
    if-lt p2, p3, :cond_1

    #@4
    .line 1570
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->testBit([JII)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1572
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    #@d
    goto :goto_0

    #@e
    .line 1566
    :cond_1
    return-void
.end method

.method private static reduceInPlace([JIII[I)I
    .locals 23
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    #@0
    .prologue
    .line 1524
    add-int/lit8 v6, p3, 0x3f

    #@2
    ushr-int/lit8 v20, v6, 0x6

    #@4
    .line 1525
    .local v20, "mLen":I
    move/from16 v0, p2

    #@6
    move/from16 v1, v20

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1527
    return p2

    #@b
    .line 1530
    :cond_0
    shl-int/lit8 v6, p2, 0x6

    #@d
    shl-int/lit8 v7, p3, 0x1

    #@f
    add-int/lit8 v7, v7, -0x1

    #@11
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v21

    #@15
    .line 1531
    .local v21, "numBits":I
    shl-int/lit8 v6, p2, 0x6

    #@17
    sub-int v16, v6, v21

    #@19
    .line 1532
    .local v16, "excessBits":I
    :goto_0
    const/16 v6, 0x40

    #@1b
    move/from16 v0, v16

    #@1d
    if-lt v0, v6, :cond_1

    #@1f
    .line 1534
    add-int/lit8 p2, p2, -0x1

    #@21
    .line 1535
    add-int/lit8 v16, v16, -0x40

    #@23
    goto :goto_0

    #@24
    .line 1538
    :cond_1
    move-object/from16 v0, p4

    #@26
    array-length v0, v0

    #@27
    move/from16 v17, v0

    #@29
    .local v17, "kLen":I
    add-int/lit8 v6, v17, -0x1

    #@2b
    aget v18, p4, v6

    #@2d
    .local v18, "kMax":I
    const/4 v6, 0x1

    #@2e
    move/from16 v0, v17

    #@30
    if-le v0, v6, :cond_2

    #@32
    add-int/lit8 v6, v17, -0x2

    #@34
    aget v19, p4, v6

    #@36
    .line 1539
    .local v19, "kNext":I
    :goto_1
    add-int/lit8 v6, v18, 0x40

    #@38
    move/from16 v0, p3

    #@3a
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    #@3d
    move-result v13

    #@3e
    .line 1540
    .local v13, "wordWiseLimit":I
    sub-int v6, v21, v13

    #@40
    sub-int v7, p3, v19

    #@42
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v6

    #@46
    add-int v6, v6, v16

    #@48
    shr-int/lit8 v22, v6, 0x6

    #@4a
    .line 1541
    .local v22, "vectorableWords":I
    const/4 v6, 0x1

    #@4b
    move/from16 v0, v22

    #@4d
    if-le v0, v6, :cond_4

    #@4f
    .line 1543
    sub-int v9, p2, v22

    #@51
    .local v9, "vectorWiseWords":I
    move-object/from16 v6, p0

    #@53
    move/from16 v7, p1

    #@55
    move/from16 v8, p2

    #@57
    move/from16 v10, p3

    #@59
    move-object/from16 v11, p4

    #@5b
    .line 1544
    invoke-static/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    #@5e
    .line 1545
    :goto_2
    move/from16 v0, p2

    #@60
    if-le v0, v9, :cond_3

    #@62
    .line 1547
    add-int/lit8 p2, p2, -0x1

    #@64
    add-int v6, p1, p2

    #@66
    const-wide/16 v10, 0x0

    #@68
    aput-wide v10, p0, v6

    #@6a
    goto :goto_2

    #@6b
    .line 1538
    .end local v9    # "vectorWiseWords":I
    .end local v13    # "wordWiseLimit":I
    .end local v19    # "kNext":I
    .end local v22    # "vectorableWords":I
    :cond_2
    const/16 v19, 0x0

    #@6d
    .restart local v19    # "kNext":I
    goto :goto_1

    #@6e
    .line 1549
    .restart local v9    # "vectorWiseWords":I
    .restart local v13    # "wordWiseLimit":I
    .restart local v22    # "vectorableWords":I
    :cond_3
    shl-int/lit8 v21, v9, 0x6

    #@70
    .line 1552
    .end local v9    # "vectorWiseWords":I
    :cond_4
    move/from16 v0, v21

    #@72
    if-le v0, v13, :cond_5

    #@74
    move-object/from16 v10, p0

    #@76
    move/from16 v11, p1

    #@78
    move/from16 v12, p2

    #@7a
    move/from16 v14, p3

    #@7c
    move-object/from16 v15, p4

    #@7e
    .line 1554
    invoke-static/range {v10 .. v15}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    #@81
    .line 1555
    move/from16 v21, v13

    #@83
    .line 1558
    :cond_5
    move/from16 v0, v21

    #@85
    move/from16 v1, p3

    #@87
    if-le v0, v1, :cond_6

    #@89
    .line 1560
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, p1

    #@8d
    move/from16 v2, v21

    #@8f
    move/from16 v3, p3

    #@91
    move-object/from16 v4, p4

    #@93
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    #@96
    .line 1563
    :cond_6
    return v20
.end method

.method private static reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 2
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    #@0
    .prologue
    .line 1491
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    #@3
    move-result v0

    #@4
    .line 1492
    .local v0, "rLen":I
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@6
    invoke-direct {v1, p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@9
    return-object v1
.end method

.method private static reduceVectorWise([JIIII[I)V
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "words"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I

    #@0
    .prologue
    .line 1632
    shl-int/lit8 v0, p3, 0x6

    #@2
    sub-int v6, v0, p4

    #@4
    .line 1633
    .local v6, "baseBit":I
    array-length v7, p5

    #@5
    .line 1634
    .local v7, "j":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    #@7
    if-ltz v7, :cond_0

    #@9
    .line 1636
    add-int v3, p1, p3

    #@b
    sub-int v4, p2, p3

    #@d
    aget v0, p5, v7

    #@f
    add-int v5, v6, v0

    #@11
    move-object v0, p0

    #@12
    move v1, p1

    #@13
    move-object v2, p0

    #@14
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    #@17
    goto :goto_0

    #@18
    .line 1638
    :cond_0
    add-int v3, p1, p3

    #@1a
    sub-int v4, p2, p3

    #@1c
    move-object v0, p0

    #@1d
    move v1, p1

    #@1e
    move-object v2, p0

    #@1f
    move v5, v6

    #@20
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    #@23
    .line 1625
    return-void
.end method

.method private static reduceWord([JIIJI[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J
    .param p5, "m"    # I
    .param p6, "ks"    # [I

    #@0
    .prologue
    .line 1616
    sub-int v1, p2, p5

    #@2
    .line 1617
    .local v1, "offset":I
    array-length v0, p6

    #@3
    .line 1618
    .local v0, "j":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 1620
    aget v2, p6, v0

    #@9
    add-int/2addr v2, v1

    #@a
    invoke-static {p0, p1, v2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    #@d
    goto :goto_0

    #@e
    .line 1622
    :cond_0
    invoke-static {p0, p1, v1, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    #@11
    .line 1614
    return-void
.end method

.method private static reduceWordWise([JIIII[I)V
    .locals 9
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "toBit"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I

    #@0
    .prologue
    .line 1591
    ushr-int/lit8 v8, p3, 0x6

    #@2
    .line 1593
    .local v8, "toPos":I
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    #@4
    if-le p2, v8, :cond_1

    #@6
    .line 1595
    add-int v1, p1, p2

    #@8
    aget-wide v4, p0, v1

    #@a
    .line 1596
    .local v4, "word":J
    const-wide/16 v2, 0x0

    #@c
    cmp-long v1, v4, v2

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1598
    add-int v1, p1, p2

    #@12
    const-wide/16 v2, 0x0

    #@14
    aput-wide v2, p0, v1

    #@16
    .line 1599
    shl-int/lit8 v3, p2, 0x6

    #@18
    move-object v1, p0

    #@19
    move v2, p1

    #@1a
    move v6, p4

    #@1b
    move-object v7, p5

    #@1c
    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    #@1f
    goto :goto_0

    #@20
    .line 1604
    .end local v4    # "word":J
    :cond_1
    and-int/lit8 v0, p3, 0x3f

    #@22
    .line 1605
    .local v0, "partial":I
    add-int v1, p1, v8

    #@24
    aget-wide v2, p0, v1

    #@26
    ushr-long v4, v2, v0

    #@28
    .line 1606
    .restart local v4    # "word":J
    const-wide/16 v2, 0x0

    #@2a
    cmp-long v1, v4, v2

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 1608
    add-int v1, p1, v8

    #@30
    aget-wide v2, p0, v1

    #@32
    shl-long v6, v4, v0

    #@34
    xor-long/2addr v2, v6

    #@35
    aput-wide v2, p0, v1

    #@37
    move-object v1, p0

    #@38
    move v2, p1

    #@39
    move v3, p3

    #@3a
    move v6, p4

    #@3b
    move-object v7, p5

    #@3c
    .line 1609
    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    #@3f
    .line 1589
    :cond_2
    return-void
.end method

.method private resizedInts(I)[J
    .locals 4
    .param p1, "newLen"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 528
    new-array v0, p1, [J

    #@3
    .line 529
    .local v0, "newInts":[J
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@5
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@7
    array-length v2, v2

    #@8
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v2

    #@c
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@f
    .line 530
    return-object v0
.end method

.method private static shiftUp([JIII)J
    .locals 10
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "count"    # I
    .param p3, "shift"    # I

    #@0
    .prologue
    .line 588
    rsub-int/lit8 v1, p3, 0x40

    #@2
    .line 589
    .local v1, "shiftInv":I
    const-wide/16 v4, 0x0

    #@4
    .line 590
    .local v4, "prev":J
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 592
    add-int v6, p1, v0

    #@9
    aget-wide v2, p0, v6

    #@b
    .line 593
    .local v2, "next":J
    add-int v6, p1, v0

    #@d
    shl-long v8, v2, p3

    #@f
    or-long/2addr v8, v4

    #@10
    aput-wide v8, p0, v6

    #@12
    .line 594
    ushr-long v4, v2, v1

    #@14
    .line 590
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 596
    .end local v2    # "next":J
    :cond_0
    return-wide v4
.end method

.method private static shiftUp([JI[JIII)J
    .locals 10
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    #@0
    .prologue
    .line 601
    rsub-int/lit8 v1, p5, 0x40

    #@2
    .line 602
    .local v1, "shiftInv":I
    const-wide/16 v4, 0x0

    #@4
    .line 603
    .local v4, "prev":J
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@7
    .line 605
    add-int v6, p1, v0

    #@9
    aget-wide v2, p0, v6

    #@b
    .line 606
    .local v2, "next":J
    add-int v6, p3, v0

    #@d
    shl-long v8, v2, p5

    #@f
    or-long/2addr v8, v4

    #@10
    aput-wide v8, p2, v6

    #@12
    .line 607
    ushr-long v4, v2, v1

    #@14
    .line 603
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 609
    .end local v2    # "next":J
    :cond_0
    return-wide v4
.end method

.method private static squareInPlace([JII[I)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xLen"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    #@0
    .prologue
    .line 1724
    shl-int/lit8 v0, p1, 0x1

    #@2
    .line 1725
    .local v0, "pos":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@4
    if-ltz p1, :cond_0

    #@6
    .line 1727
    aget-wide v2, p0, p1

    #@8
    .line 1728
    .local v2, "xVal":J
    add-int/lit8 v0, v0, -0x1

    #@a
    const/16 v1, 0x20

    #@c
    ushr-long v4, v2, v1

    #@e
    long-to-int v1, v4

    #@f
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@12
    move-result-wide v4

    #@13
    aput-wide v4, p0, v0

    #@15
    .line 1729
    add-int/lit8 v0, v0, -0x1

    #@17
    long-to-int v1, v2

    #@18
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@1b
    move-result-wide v4

    #@1c
    aput-wide v4, p0, v0

    #@1e
    goto :goto_0

    #@1f
    .line 1722
    .end local v2    # "xVal":J
    :cond_0
    return-void
.end method

.method private static testBit([JII)Z
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 798
    ushr-int/lit8 v3, p2, 0x6

    #@2
    .line 800
    .local v3, "theInt":I
    and-int/lit8 v2, p2, 0x3f

    #@4
    .line 801
    .local v2, "theBit":I
    const-wide/16 v4, 0x1

    #@6
    shl-long v0, v4, v2

    #@8
    .line 802
    .local v0, "tester":J
    add-int v4, p1, v3

    #@a
    aget-wide v4, p0, v4

    #@c
    and-long/2addr v4, v0

    #@d
    const-wide/16 v6, 0x0

    #@f
    cmp-long v4, v4, v6

    #@11
    if-eqz v4, :cond_0

    #@13
    const/4 v4, 0x1

    #@14
    :goto_0
    return v4

    #@15
    :cond_0
    const/4 v4, 0x0

    #@16
    goto :goto_0
.end method


# virtual methods
.method public addOne()Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 614
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@6
    array-length v2, v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 616
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@b
    new-array v3, v3, [J

    #@d
    aput-wide v6, v3, v4

    #@f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    #@12
    return-object v2

    #@13
    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@16
    move-result v2

    #@17
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v1

    #@1b
    .line 620
    .local v1, "resultLen":I
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    #@1e
    move-result-object v0

    #@1f
    .line 621
    .local v0, "ints":[J
    aget-wide v2, v0, v4

    #@21
    xor-long/2addr v2, v6

    #@22
    aput-wide v2, v0, v4

    #@24
    .line 622
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@26
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    #@29
    return-object v2
.end method

.method public addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V
    .locals 5
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/LongArray;
    .param p2, "words"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 701
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@4
    move-result v1

    #@5
    .line 702
    .local v1, "otherUsedLen":I
    if-nez v1, :cond_0

    #@7
    .line 704
    return-void

    #@8
    .line 707
    :cond_0
    add-int v0, v1, p2

    #@a
    .line 708
    .local v0, "minLen":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@c
    array-length v2, v2

    #@d
    if-le v0, v2, :cond_1

    #@f
    .line 710
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@15
    .line 713
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@17
    iget-object v3, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@19
    invoke-static {v2, p2, v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    #@1c
    .line 699
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 2168
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    #@b
    return-object v0
.end method

.method public degree()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 442
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@3
    array-length v0, v1

    #@4
    .line 446
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    #@6
    .line 448
    return v6

    #@7
    .line 450
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    aget-wide v2, v1, v0

    #@d
    .line 452
    .local v2, "w":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 454
    shl-int/lit8 v1, v0, 0x6

    #@15
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    #@18
    move-result v4

    #@19
    add-int/2addr v1, v4

    #@1a
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2131
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2133
    return v8

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 2135
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@9
    .line 2136
    .local v1, "other":Lcom/android/org/bouncycastle/math/ec/LongArray;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@c
    move-result v2

    #@d
    .line 2137
    .local v2, "usedLen":I
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@10
    move-result v3

    #@11
    if-eq v3, v2, :cond_1

    #@13
    .line 2139
    return v8

    #@14
    .line 2141
    :cond_1
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@17
    .line 2143
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@19
    aget-wide v4, v3, v0

    #@1b
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@1d
    aget-wide v6, v3, v0

    #@1f
    cmp-long v3, v4, v6

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 2145
    return v8

    #@24
    .line 2141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 2148
    :cond_3
    const/4 v3, 0x1

    #@28
    return v3
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getUsedLength()I
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@2
    array-length v0, v0

    #@3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 8
    .param p1, "from"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 411
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@5
    .line 412
    .local v0, "a":[J
    array-length v1, v0

    #@6
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result p1

    #@a
    .line 414
    const/4 v1, 0x1

    #@b
    if-ge p1, v1, :cond_0

    #@d
    .line 416
    return v4

    #@e
    .line 420
    :cond_0
    aget-wide v2, v0, v4

    #@10
    cmp-long v1, v2, v6

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 422
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@16
    aget-wide v2, v0, p1

    #@18
    cmp-long v1, v2, v6

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 425
    add-int/lit8 v1, p1, 0x1

    #@1e
    return v1

    #@1f
    .line 435
    :cond_2
    if-lez p1, :cond_4

    #@21
    .line 430
    :cond_3
    add-int/lit8 p1, p1, -0x1

    #@23
    aget-wide v2, v0, p1

    #@25
    cmp-long v1, v2, v6

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 432
    add-int/lit8 v1, p1, 0x1

    #@2b
    return v1

    #@2c
    .line 437
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@3
    move-result v4

    #@4
    .line 2154
    .local v4, "usedLen":I
    const/4 v0, 0x1

    #@5
    .line 2155
    .local v0, "hash":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    #@8
    .line 2157
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@a
    aget-wide v2, v5, v1

    #@c
    .line 2158
    .local v2, "mi":J
    mul-int/lit8 v0, v0, 0x1f

    #@e
    .line 2159
    long-to-int v5, v2

    #@f
    xor-int/2addr v0, v5

    #@10
    .line 2160
    mul-int/lit8 v0, v0, 0x1f

    #@12
    .line 2161
    const/16 v5, 0x20

    #@14
    ushr-long v6, v2, v5

    #@16
    long-to-int v5, v6

    #@17
    xor-int/2addr v0, v5

    #@18
    .line 2155
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2163
    .end local v2    # "mi":J
    :cond_0
    return v0
.end method

.method public isOne()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 376
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@3
    .line 377
    .local v0, "a":[J
    aget-wide v2, v0, v6

    #@5
    const-wide/16 v4, 0x1

    #@7
    cmp-long v2, v2, v4

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 379
    return v6

    #@c
    .line 381
    :cond_0
    const/4 v1, 0x1

    #@d
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@e
    if-ge v1, v2, :cond_2

    #@10
    .line 383
    aget-wide v2, v0, v1

    #@12
    const-wide/16 v4, 0x0

    #@14
    cmp-long v2, v2, v4

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 385
    return v6

    #@19
    .line 381
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 388
    :cond_2
    const/4 v2, 0x1

    #@1d
    return v2
.end method

.method public isZero()Z
    .locals 6

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@2
    .line 394
    .local v0, "a":[J
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 396
    aget-wide v2, v0, v1

    #@8
    const-wide/16 v4, 0x0

    #@a
    cmp-long v2, v2, v4

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 398
    const/4 v2, 0x0

    #@f
    return v2

    #@10
    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 401
    :cond_1
    const/4 v2, 0x1

    #@14
    return v2
.end method

.method public modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 26
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@3
    move-result v20

    #@4
    .line 2055
    .local v20, "uzDegree":I
    if-nez v20, :cond_0

    #@6
    .line 2057
    new-instance v22, Ljava/lang/IllegalStateException;

    #@8
    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalStateException;-><init>()V

    #@b
    throw v22

    #@c
    .line 2059
    :cond_0
    const/16 v22, 0x1

    #@e
    move/from16 v0, v20

    #@10
    move/from16 v1, v22

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 2061
    return-object p0

    #@15
    .line 2065
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    #@18
    move-result-object v19

    #@19
    check-cast v19, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@1b
    .line 2067
    .local v19, "uz":Lcom/android/org/bouncycastle/math/ec/LongArray;
    add-int/lit8 v22, p1, 0x3f

    #@1d
    ushr-int/lit8 v16, v22, 0x6

    #@1f
    .line 2070
    .local v16, "t":I
    new-instance v21, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@21
    move-object/from16 v0, v21

    #@23
    move/from16 v1, v16

    #@25
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    #@28
    .line 2071
    .local v21, "vz":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v0, v21

    #@2a
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@2c
    move-object/from16 v22, v0

    #@2e
    const/16 v23, 0x0

    #@30
    move-object/from16 v0, v22

    #@32
    move/from16 v1, v23

    #@34
    move/from16 v2, p1

    #@36
    move/from16 v3, p1

    #@38
    move-object/from16 v4, p2

    #@3a
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    #@3d
    .line 2074
    new-instance v11, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@3f
    move/from16 v0, v16

    #@41
    invoke-direct {v11, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    #@44
    .line 2075
    .local v11, "g1z":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget-object v0, v11, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@46
    move-object/from16 v22, v0

    #@48
    const-wide/16 v24, 0x1

    #@4a
    const/16 v23, 0x0

    #@4c
    aput-wide v24, v22, v23

    #@4e
    .line 2076
    new-instance v12, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@50
    move/from16 v0, v16

    #@52
    invoke-direct {v12, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    #@55
    .line 2078
    .local v12, "g2z":Lcom/android/org/bouncycastle/math/ec/LongArray;
    const/16 v22, 0x2

    #@57
    move/from16 v0, v22

    #@59
    new-array v0, v0, [I

    #@5b
    move-object/from16 v18, v0

    #@5d
    const/16 v22, 0x0

    #@5f
    aput v20, v18, v22

    #@61
    add-int/lit8 v22, p1, 0x1

    #@63
    const/16 v23, 0x1

    #@65
    aput v22, v18, v23

    #@67
    .line 2079
    .local v18, "uvDeg":[I
    const/16 v22, 0x2

    #@69
    move/from16 v0, v22

    #@6b
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@6d
    move-object/from16 v17, v0

    #@6f
    const/16 v22, 0x0

    #@71
    aput-object v19, v17, v22

    #@73
    const/16 v22, 0x1

    #@75
    aput-object v21, v17, v22

    #@77
    .line 2081
    .local v17, "uv":[Lcom/android/org/bouncycastle/math/ec/LongArray;
    const/16 v22, 0x1

    #@79
    const/16 v23, 0x0

    #@7b
    filled-new-array/range {v22 .. v23}, [I

    #@7e
    move-result-object v14

    #@7f
    .line 2082
    .local v14, "ggDeg":[I
    const/16 v22, 0x2

    #@81
    move/from16 v0, v22

    #@83
    new-array v13, v0, [Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@85
    const/16 v22, 0x0

    #@87
    aput-object v11, v13, v22

    #@89
    const/16 v22, 0x1

    #@8b
    aput-object v12, v13, v22

    #@8d
    .line 2084
    .local v13, "gg":[Lcom/android/org/bouncycastle/math/ec/LongArray;
    const/4 v6, 0x1

    #@8e
    .line 2085
    .local v6, "b":I
    aget v9, v18, v6

    #@90
    .line 2086
    .local v9, "duv1":I
    aget v7, v14, v6

    #@92
    .line 2087
    .local v7, "dgg1":I
    const/16 v22, 0x0

    #@94
    aget v22, v18, v22

    #@96
    sub-int v15, v9, v22

    #@98
    .line 2091
    .local v15, "j":I
    :goto_0
    if-gez v15, :cond_2

    #@9a
    .line 2093
    neg-int v15, v15

    #@9b
    .line 2094
    aput v9, v18, v6

    #@9d
    .line 2095
    aput v7, v14, v6

    #@9f
    .line 2096
    rsub-int/lit8 v6, v6, 0x1

    #@a1
    .line 2097
    aget v9, v18, v6

    #@a3
    .line 2098
    aget v7, v14, v6

    #@a5
    .line 2101
    :cond_2
    aget-object v22, v17, v6

    #@a7
    rsub-int/lit8 v23, v6, 0x1

    #@a9
    aget-object v23, v17, v23

    #@ab
    rsub-int/lit8 v24, v6, 0x1

    #@ad
    aget v24, v18, v24

    #@af
    move-object/from16 v0, v22

    #@b1
    move-object/from16 v1, v23

    #@b3
    move/from16 v2, v24

    #@b5
    invoke-direct {v0, v1, v2, v15}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/org/bouncycastle/math/ec/LongArray;II)V

    #@b8
    .line 2103
    aget-object v22, v17, v6

    #@ba
    move-object/from16 v0, v22

    #@bc
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    #@bf
    move-result v10

    #@c0
    .line 2104
    .local v10, "duv2":I
    if-nez v10, :cond_3

    #@c2
    .line 2106
    rsub-int/lit8 v22, v6, 0x1

    #@c4
    aget-object v22, v13, v22

    #@c6
    return-object v22

    #@c7
    .line 2110
    :cond_3
    rsub-int/lit8 v22, v6, 0x1

    #@c9
    aget v8, v14, v22

    #@cb
    .line 2111
    .local v8, "dgg2":I
    aget-object v22, v13, v6

    #@cd
    rsub-int/lit8 v23, v6, 0x1

    #@cf
    aget-object v23, v13, v23

    #@d1
    move-object/from16 v0, v22

    #@d3
    move-object/from16 v1, v23

    #@d5
    invoke-direct {v0, v1, v8, v15}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/org/bouncycastle/math/ec/LongArray;II)V

    #@d8
    .line 2112
    add-int/2addr v8, v15

    #@d9
    .line 2114
    if-le v8, v7, :cond_5

    #@db
    .line 2116
    move v7, v8

    #@dc
    .line 2124
    :cond_4
    :goto_1
    sub-int v22, v10, v9

    #@de
    add-int v15, v15, v22

    #@e0
    .line 2125
    move v9, v10

    #@e1
    goto :goto_0

    #@e2
    .line 2118
    :cond_5
    if-ne v8, v7, :cond_4

    #@e4
    .line 2120
    aget-object v22, v13, v6

    #@e6
    move-object/from16 v0, v22

    #@e8
    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    #@eb
    move-result v7

    #@ec
    goto :goto_1
.end method

.method public modMultiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 40
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    #@0
    .prologue
    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@3
    move-result v28

    #@4
    .line 994
    .local v28, "aDeg":I
    if-nez v28, :cond_0

    #@6
    .line 996
    return-object p0

    #@7
    .line 998
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@a
    move-result v31

    #@b
    .line 999
    .local v31, "bDeg":I
    if-nez v31, :cond_1

    #@d
    .line 1001
    return-object p1

    #@e
    .line 1007
    :cond_1
    move-object/from16 v25, p0

    #@10
    .local v25, "A":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v26, p1

    #@12
    .line 1008
    .local v26, "B":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move/from16 v0, v28

    #@14
    move/from16 v1, v31

    #@16
    if-le v0, v1, :cond_2

    #@18
    .line 1010
    move-object/from16 v25, p1

    #@1a
    move-object/from16 v26, p0

    #@1c
    .line 1011
    move/from16 v37, v28

    #@1e
    .local v37, "tmp":I
    move/from16 v28, v31

    #@20
    move/from16 v31, v37

    #@22
    .line 1017
    .end local v37    # "tmp":I
    :cond_2
    add-int/lit8 v6, v28, 0x3f

    #@24
    ushr-int/lit8 v29, v6, 0x6

    #@26
    .line 1018
    .local v29, "aLen":I
    add-int/lit8 v6, v31, 0x3f

    #@28
    ushr-int/lit8 v7, v6, 0x6

    #@2a
    .line 1019
    .local v7, "bLen":I
    add-int v6, v28, v31

    #@2c
    add-int/lit8 v6, v6, 0x3e

    #@2e
    ushr-int/lit8 v34, v6, 0x6

    #@30
    .line 1021
    .local v34, "cLen":I
    const/4 v6, 0x1

    #@31
    move/from16 v0, v29

    #@33
    if-ne v0, v6, :cond_4

    #@35
    .line 1023
    move-object/from16 v0, v25

    #@37
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@39
    const/4 v10, 0x0

    #@3a
    aget-wide v4, v6, v10

    #@3c
    .line 1024
    .local v4, "a0":J
    const-wide/16 v10, 0x1

    #@3e
    cmp-long v6, v4, v10

    #@40
    if-nez v6, :cond_3

    #@42
    .line 1026
    return-object v26

    #@43
    .line 1032
    :cond_3
    move/from16 v0, v34

    #@45
    new-array v8, v0, [J

    #@47
    .line 1033
    .local v8, "c0":[J
    move-object/from16 v0, v26

    #@49
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@4b
    const/4 v9, 0x0

    #@4c
    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    #@4f
    .line 1038
    const/4 v6, 0x0

    #@50
    move/from16 v0, v34

    #@52
    move/from16 v1, p2

    #@54
    move-object/from16 v2, p3

    #@56
    invoke-static {v8, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@59
    move-result-object v6

    #@5a
    return-object v6

    #@5b
    .line 1044
    .end local v4    # "a0":J
    .end local v8    # "c0":[J
    :cond_4
    add-int/lit8 v6, v31, 0x7

    #@5d
    add-int/lit8 v6, v6, 0x3f

    #@5f
    ushr-int/lit8 v13, v6, 0x6

    #@61
    .line 1049
    .local v13, "bMax":I
    const/16 v6, 0x10

    #@63
    new-array v0, v6, [I

    #@65
    move-object/from16 v36, v0

    #@67
    .line 1054
    .local v36, "ti":[I
    shl-int/lit8 v6, v13, 0x4

    #@69
    new-array v9, v6, [J

    #@6b
    .line 1055
    .local v9, "T0":[J
    move v12, v13

    #@6c
    .line 1056
    .local v12, "tOff":I
    const/4 v6, 0x1

    #@6d
    aput v12, v36, v6

    #@6f
    .line 1057
    move-object/from16 v0, v26

    #@71
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@73
    const/4 v10, 0x0

    #@74
    invoke-static {v6, v10, v9, v12, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@77
    .line 1058
    const/16 v35, 0x2

    #@79
    .local v35, "i":I
    :goto_0
    const/16 v6, 0x10

    #@7b
    move/from16 v0, v35

    #@7d
    if-ge v0, v6, :cond_6

    #@7f
    .line 1060
    add-int/2addr v12, v13

    #@80
    aput v12, v36, v35

    #@82
    .line 1061
    and-int/lit8 v6, v35, 0x1

    #@84
    if-nez v6, :cond_5

    #@86
    .line 1063
    ushr-int/lit8 v10, v12, 0x1

    #@88
    const/4 v14, 0x1

    #@89
    move-object v11, v9

    #@8a
    invoke-static/range {v9 .. v14}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@8d
    .line 1058
    :goto_1
    add-int/lit8 v35, v35, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 1067
    :cond_5
    sub-int v17, v12, v13

    #@92
    move-object v14, v9

    #@93
    move v15, v13

    #@94
    move-object/from16 v16, v9

    #@96
    move-object/from16 v18, v9

    #@98
    move/from16 v19, v12

    #@9a
    move/from16 v20, v13

    #@9c
    invoke-static/range {v14 .. v20}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    #@9f
    goto :goto_1

    #@a0
    .line 1074
    :cond_6
    array-length v6, v9

    #@a1
    new-array v0, v6, [J

    #@a3
    move-object/from16 v16, v0

    #@a5
    .line 1075
    .local v16, "T1":[J
    array-length v0, v9

    #@a6
    move/from16 v18, v0

    #@a8
    const/4 v15, 0x0

    #@a9
    const/16 v17, 0x0

    #@ab
    const/16 v19, 0x4

    #@ad
    move-object v14, v9

    #@ae
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@b1
    .line 1078
    move-object/from16 v0, v25

    #@b3
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@b5
    move-object/from16 v27, v0

    #@b7
    .line 1079
    .local v27, "a":[J
    shl-int/lit8 v6, v34, 0x3

    #@b9
    new-array v0, v6, [J

    #@bb
    move-object/from16 v17, v0

    #@bd
    .line 1087
    .local v17, "c":[J
    const/16 v30, 0x0

    #@bf
    .local v30, "aPos":I
    :goto_2
    move/from16 v0, v30

    #@c1
    move/from16 v1, v29

    #@c3
    if-ge v0, v1, :cond_8

    #@c5
    .line 1089
    aget-wide v32, v27, v30

    #@c7
    .line 1090
    .local v32, "aVal":J
    move/from16 v18, v30

    #@c9
    .line 1093
    .local v18, "cOff":I
    :goto_3
    move-wide/from16 v0, v32

    #@cb
    long-to-int v6, v0

    #@cc
    and-int/lit8 v38, v6, 0xf

    #@ce
    .line 1094
    .local v38, "u":I
    const/4 v6, 0x4

    #@cf
    ushr-long v32, v32, v6

    #@d1
    .line 1095
    move-wide/from16 v0, v32

    #@d3
    long-to-int v6, v0

    #@d4
    and-int/lit8 v39, v6, 0xf

    #@d6
    .line 1096
    .local v39, "v":I
    aget v20, v36, v38

    #@d8
    aget v22, v36, v39

    #@da
    move-object/from16 v19, v9

    #@dc
    move-object/from16 v21, v16

    #@de
    move/from16 v23, v13

    #@e0
    invoke-static/range {v17 .. v23}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    #@e3
    .line 1097
    const/4 v6, 0x4

    #@e4
    ushr-long v32, v32, v6

    #@e6
    .line 1098
    const-wide/16 v10, 0x0

    #@e8
    cmp-long v6, v32, v10

    #@ea
    if-nez v6, :cond_7

    #@ec
    .line 1087
    add-int/lit8 v30, v30, 0x1

    #@ee
    goto :goto_2

    #@ef
    .line 1102
    :cond_7
    add-int v18, v18, v34

    #@f1
    goto :goto_3

    #@f2
    .line 1107
    .end local v18    # "cOff":I
    .end local v32    # "aVal":J
    .end local v38    # "u":I
    .end local v39    # "v":I
    :cond_8
    move-object/from16 v0, v17

    #@f4
    array-length v0, v0

    #@f5
    move/from16 v18, v0

    #@f7
    .line 1108
    .restart local v18    # "cOff":I
    :goto_4
    sub-int v18, v18, v34

    #@f9
    if-eqz v18, :cond_9

    #@fb
    .line 1110
    sub-int v20, v18, v34

    #@fd
    const/16 v24, 0x8

    #@ff
    move-object/from16 v19, v17

    #@101
    move-object/from16 v21, v17

    #@103
    move/from16 v22, v18

    #@105
    move/from16 v23, v34

    #@107
    invoke-static/range {v19 .. v24}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    #@10a
    goto :goto_4

    #@10b
    .line 1117
    :cond_9
    const/4 v6, 0x0

    #@10c
    move-object/from16 v0, v17

    #@10e
    move/from16 v1, v34

    #@110
    move/from16 v2, p2

    #@112
    move-object/from16 v3, p3

    #@114
    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@117
    move-result-object v6

    #@118
    return-object v6
.end method

.method public modMultiplyAlt(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 46
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    #@0
    .prologue
    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@3
    move-result v30

    #@4
    .line 1126
    .local v30, "aDeg":I
    if-nez v30, :cond_0

    #@6
    .line 1128
    return-object p0

    #@7
    .line 1130
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@a
    move-result v34

    #@b
    .line 1131
    .local v34, "bDeg":I
    if-nez v34, :cond_1

    #@d
    .line 1133
    return-object p1

    #@e
    .line 1139
    :cond_1
    move-object/from16 v27, p0

    #@10
    .local v27, "A":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v28, p1

    #@12
    .line 1140
    .local v28, "B":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move/from16 v0, v30

    #@14
    move/from16 v1, v34

    #@16
    if-le v0, v1, :cond_2

    #@18
    .line 1142
    move-object/from16 v27, p1

    #@1a
    move-object/from16 v28, p0

    #@1c
    .line 1143
    move/from16 v45, v30

    #@1e
    .local v45, "tmp":I
    move/from16 v30, v34

    #@20
    move/from16 v34, v45

    #@22
    .line 1149
    .end local v45    # "tmp":I
    :cond_2
    add-int/lit8 v6, v30, 0x3f

    #@24
    ushr-int/lit8 v13, v6, 0x6

    #@26
    .line 1150
    .local v13, "aLen":I
    add-int/lit8 v6, v34, 0x3f

    #@28
    ushr-int/lit8 v7, v6, 0x6

    #@2a
    .line 1151
    .local v7, "bLen":I
    add-int v6, v30, v34

    #@2c
    add-int/lit8 v6, v6, 0x3e

    #@2e
    ushr-int/lit8 v25, v6, 0x6

    #@30
    .line 1153
    .local v25, "cLen":I
    const/4 v6, 0x1

    #@31
    if-ne v13, v6, :cond_4

    #@33
    .line 1155
    move-object/from16 v0, v27

    #@35
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@37
    const/4 v9, 0x0

    #@38
    aget-wide v4, v6, v9

    #@3a
    .line 1156
    .local v4, "a0":J
    const-wide/16 v16, 0x1

    #@3c
    cmp-long v6, v4, v16

    #@3e
    if-nez v6, :cond_3

    #@40
    .line 1158
    return-object v28

    #@41
    .line 1164
    :cond_3
    move/from16 v0, v25

    #@43
    new-array v8, v0, [J

    #@45
    .line 1165
    .local v8, "c0":[J
    move-object/from16 v0, v28

    #@47
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@49
    const/4 v9, 0x0

    #@4a
    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    #@4d
    .line 1170
    const/4 v6, 0x0

    #@4e
    move/from16 v0, v25

    #@50
    move/from16 v1, p2

    #@52
    move-object/from16 v2, p3

    #@54
    invoke-static {v8, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@57
    move-result-object v6

    #@58
    return-object v6

    #@59
    .line 1206
    .end local v4    # "a0":J
    .end local v8    # "c0":[J
    :cond_4
    const/4 v14, 0x4

    #@5a
    .local v14, "width":I
    const/16 v26, 0x10

    #@5c
    .local v26, "positions":I
    const/16 v36, 0x8

    #@5e
    .line 1214
    .local v36, "banks":I
    const/16 v43, 0xf

    #@60
    .line 1215
    .local v43, "shifts":I
    add-int/lit8 v6, v34, 0xf

    #@62
    add-int/lit8 v6, v6, 0x3f

    #@64
    ushr-int/lit8 v19, v6, 0x6

    #@66
    .line 1217
    .local v19, "bMax":I
    mul-int/lit8 v35, v19, 0x8

    #@68
    .local v35, "bTotal":I
    const/16 v44, 0x20

    #@6a
    .line 1222
    .local v44, "stride":I
    const/16 v6, 0x10

    #@6c
    new-array v0, v6, [I

    #@6e
    move-object/from16 v38, v0

    #@70
    .line 1223
    .local v38, "ci":[I
    move/from16 v37, v13

    #@72
    .line 1225
    .local v37, "cTotal":I
    const/4 v6, 0x0

    #@73
    aput v37, v38, v6

    #@75
    .line 1226
    add-int v37, v37, v35

    #@77
    .line 1227
    const/4 v6, 0x1

    #@78
    aput v37, v38, v6

    #@7a
    .line 1228
    const/16 v40, 0x2

    #@7c
    .local v40, "i":I
    :goto_0
    move-object/from16 v0, v38

    #@7e
    array-length v6, v0

    #@7f
    move/from16 v0, v40

    #@81
    if-ge v0, v6, :cond_5

    #@83
    .line 1230
    add-int v37, v37, v25

    #@85
    .line 1231
    aput v37, v38, v40

    #@87
    .line 1228
    add-int/lit8 v40, v40, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 1233
    :cond_5
    add-int v37, v37, v25

    #@8c
    .line 1236
    add-int/lit8 v37, v37, 0x1

    #@8e
    .line 1238
    move/from16 v0, v37

    #@90
    new-array v11, v0, [J

    #@92
    .line 1241
    .local v11, "c":[J
    move-object/from16 v0, v27

    #@94
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@96
    const/4 v10, 0x0

    #@97
    const/4 v12, 0x0

    #@98
    invoke-static/range {v9 .. v14}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave([JI[JIII)V

    #@9b
    .line 1245
    move/from16 v18, v13

    #@9d
    .line 1246
    .local v18, "bOff":I
    move-object/from16 v0, v28

    #@9f
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@a1
    const/4 v9, 0x0

    #@a2
    move/from16 v0, v18

    #@a4
    invoke-static {v6, v9, v11, v0, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@a7
    .line 1247
    const/16 v20, 0x1

    #@a9
    .line 1206
    .local v20, "bank":I
    :goto_1
    const/16 v6, 0x8

    #@ab
    .line 1247
    move/from16 v0, v20

    #@ad
    if-ge v0, v6, :cond_6

    #@af
    .line 1249
    add-int v18, v18, v19

    #@b1
    move-object v15, v11

    #@b2
    move/from16 v16, v13

    #@b4
    move-object/from16 v17, v11

    #@b6
    invoke-static/range {v15 .. v20}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@b9
    .line 1247
    add-int/lit8 v20, v20, 0x1

    #@bb
    goto :goto_1

    #@bc
    .line 1259
    :cond_6
    const/16 v6, 0x10

    #@be
    add-int/lit8 v29, v6, -0x1

    #@c0
    .line 1261
    .local v29, "MASK":I
    const/16 v42, 0x0

    #@c2
    .line 1264
    .local v42, "k":I
    :goto_2
    const/16 v31, 0x0

    #@c4
    .line 1267
    .local v31, "aPos":I
    :cond_7
    aget-wide v16, v11, v31

    #@c6
    ushr-long v32, v16, v42

    #@c8
    .line 1268
    .local v32, "aVal":J
    const/16 v20, 0x0

    #@ca
    move/from16 v18, v13

    #@cc
    .line 1271
    :goto_3
    move-wide/from16 v0, v32

    #@ce
    long-to-int v6, v0

    #@cf
    and-int v41, v6, v29

    #@d1
    .line 1272
    .local v41, "index":I
    if-eqz v41, :cond_8

    #@d3
    .line 1279
    aget v6, v38, v41

    #@d5
    add-int v6, v6, v31

    #@d7
    move/from16 v0, v18

    #@d9
    move/from16 v1, v19

    #@db
    invoke-static {v11, v6, v11, v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    #@de
    .line 1281
    :cond_8
    add-int/lit8 v20, v20, 0x1

    #@e0
    .line 1206
    const/16 v6, 0x8

    #@e2
    .line 1281
    move/from16 v0, v20

    #@e4
    if-ne v0, v6, :cond_9

    #@e6
    .line 1289
    add-int/lit8 v31, v31, 0x1

    #@e8
    move/from16 v0, v31

    #@ea
    if-lt v0, v13, :cond_7

    #@ec
    .line 1291
    add-int/lit8 v42, v42, 0x20

    #@ee
    .line 1206
    const/16 v6, 0x40

    #@f0
    .line 1291
    move/from16 v0, v42

    #@f2
    if-lt v0, v6, :cond_b

    #@f4
    .line 1293
    const/16 v6, 0x40

    #@f6
    move/from16 v0, v42

    #@f8
    if-lt v0, v6, :cond_a

    #@fa
    .line 1312
    move-object/from16 v0, v38

    #@fc
    array-length v0, v0

    #@fd
    move/from16 v39, v0

    #@ff
    .line 1313
    .local v39, "ciPos":I
    :goto_4
    add-int/lit8 v39, v39, -0x1

    #@101
    const/4 v6, 0x1

    #@102
    move/from16 v0, v39

    #@104
    if-le v0, v6, :cond_d

    #@106
    .line 1315
    move/from16 v0, v39

    #@108
    int-to-long v0, v0

    #@109
    move-wide/from16 v16, v0

    #@10b
    const-wide/16 v22, 0x1

    #@10d
    and-long v16, v16, v22

    #@10f
    const-wide/16 v22, 0x0

    #@111
    cmp-long v6, v16, v22

    #@113
    if-nez v6, :cond_c

    #@115
    .line 1320
    ushr-int/lit8 v6, v39, 0x1

    #@117
    aget v22, v38, v6

    #@119
    aget v24, v38, v39

    #@11b
    move-object/from16 v21, v11

    #@11d
    move-object/from16 v23, v11

    #@11f
    invoke-static/range {v21 .. v26}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    #@122
    goto :goto_4

    #@123
    .line 1285
    .end local v39    # "ciPos":I
    :cond_9
    add-int v18, v18, v19

    #@125
    .line 1206
    const/4 v6, 0x4

    #@126
    .line 1286
    ushr-long v32, v32, v6

    #@128
    goto :goto_3

    #@129
    .line 1302
    :cond_a
    const/16 v42, 0x3c

    #@12b
    .line 1303
    shl-int/lit8 v6, v29, 0x4

    #@12d
    and-int v29, v29, v6

    #@12f
    .line 1309
    :cond_b
    move/from16 v0, v35

    #@131
    move/from16 v1, v36

    #@133
    invoke-static {v11, v13, v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    #@136
    goto :goto_2

    #@137
    .line 1327
    .restart local v39    # "ciPos":I
    :cond_c
    aget v6, v38, v39

    #@139
    add-int/lit8 v9, v39, -0x1

    #@13b
    aget v9, v38, v9

    #@13d
    const/4 v10, 0x1

    #@13e
    aget v10, v38, v10

    #@140
    move/from16 v0, v25

    #@142
    invoke-static {v11, v6, v9, v10, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->distribute([JIIII)V

    #@145
    goto :goto_4

    #@146
    .line 1334
    :cond_d
    const/4 v6, 0x1

    #@147
    aget v6, v38, v6

    #@149
    move/from16 v0, v25

    #@14b
    move/from16 v1, p2

    #@14d
    move-object/from16 v2, p3

    #@14f
    invoke-static {v11, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@152
    move-result-object v6

    #@153
    return-object v6
.end method

.method public modMultiplyLD(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 39
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    #@0
    .prologue
    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@3
    move-result v27

    #@4
    .line 862
    .local v27, "aDeg":I
    if-nez v27, :cond_0

    #@6
    .line 864
    return-object p0

    #@7
    .line 866
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@a
    move-result v30

    #@b
    .line 867
    .local v30, "bDeg":I
    if-nez v30, :cond_1

    #@d
    .line 869
    return-object p1

    #@e
    .line 875
    :cond_1
    move-object/from16 v24, p0

    #@10
    .local v24, "A":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v25, p1

    #@12
    .line 876
    .local v25, "B":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move/from16 v0, v27

    #@14
    move/from16 v1, v30

    #@16
    if-le v0, v1, :cond_2

    #@18
    .line 878
    move-object/from16 v24, p1

    #@1a
    move-object/from16 v25, p0

    #@1c
    .line 879
    move/from16 v36, v27

    #@1e
    .local v36, "tmp":I
    move/from16 v27, v30

    #@20
    move/from16 v30, v36

    #@22
    .line 885
    .end local v36    # "tmp":I
    :cond_2
    add-int/lit8 v6, v27, 0x3f

    #@24
    ushr-int/lit8 v28, v6, 0x6

    #@26
    .line 886
    .local v28, "aLen":I
    add-int/lit8 v6, v30, 0x3f

    #@28
    ushr-int/lit8 v7, v6, 0x6

    #@2a
    .line 887
    .local v7, "bLen":I
    add-int v6, v27, v30

    #@2c
    add-int/lit8 v6, v6, 0x3e

    #@2e
    ushr-int/lit8 v31, v6, 0x6

    #@30
    .line 889
    .local v31, "cLen":I
    const/4 v6, 0x1

    #@31
    move/from16 v0, v28

    #@33
    if-ne v0, v6, :cond_4

    #@35
    .line 891
    move-object/from16 v0, v24

    #@37
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@39
    const/4 v10, 0x0

    #@3a
    aget-wide v4, v6, v10

    #@3c
    .line 892
    .local v4, "a0":J
    const-wide/16 v10, 0x1

    #@3e
    cmp-long v6, v4, v10

    #@40
    if-nez v6, :cond_3

    #@42
    .line 894
    return-object v25

    #@43
    .line 900
    :cond_3
    move/from16 v0, v31

    #@45
    new-array v8, v0, [J

    #@47
    .line 901
    .local v8, "c0":[J
    move-object/from16 v0, v25

    #@49
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@4b
    const/4 v9, 0x0

    #@4c
    invoke-static/range {v4 .. v9}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    #@4f
    .line 906
    const/4 v6, 0x0

    #@50
    move/from16 v0, v31

    #@52
    move/from16 v1, p2

    #@54
    move-object/from16 v2, p3

    #@56
    invoke-static {v8, v6, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@59
    move-result-object v6

    #@5a
    return-object v6

    #@5b
    .line 912
    .end local v4    # "a0":J
    .end local v8    # "c0":[J
    :cond_4
    add-int/lit8 v6, v30, 0x7

    #@5d
    add-int/lit8 v6, v6, 0x3f

    #@5f
    ushr-int/lit8 v13, v6, 0x6

    #@61
    .line 917
    .local v13, "bMax":I
    const/16 v6, 0x10

    #@63
    new-array v0, v6, [I

    #@65
    move-object/from16 v35, v0

    #@67
    .line 922
    .local v35, "ti":[I
    shl-int/lit8 v6, v13, 0x4

    #@69
    new-array v9, v6, [J

    #@6b
    .line 923
    .local v9, "T0":[J
    move v12, v13

    #@6c
    .line 924
    .local v12, "tOff":I
    const/4 v6, 0x1

    #@6d
    aput v12, v35, v6

    #@6f
    .line 925
    move-object/from16 v0, v25

    #@71
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@73
    const/4 v10, 0x0

    #@74
    invoke-static {v6, v10, v9, v12, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@77
    .line 926
    const/16 v32, 0x2

    #@79
    .local v32, "i":I
    :goto_0
    const/16 v6, 0x10

    #@7b
    move/from16 v0, v32

    #@7d
    if-ge v0, v6, :cond_6

    #@7f
    .line 928
    add-int/2addr v12, v13

    #@80
    aput v12, v35, v32

    #@82
    .line 929
    and-int/lit8 v6, v32, 0x1

    #@84
    if-nez v6, :cond_5

    #@86
    .line 931
    ushr-int/lit8 v10, v12, 0x1

    #@88
    const/4 v14, 0x1

    #@89
    move-object v11, v9

    #@8a
    invoke-static/range {v9 .. v14}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@8d
    .line 926
    :goto_1
    add-int/lit8 v32, v32, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 935
    :cond_5
    sub-int v17, v12, v13

    #@92
    move-object v14, v9

    #@93
    move v15, v13

    #@94
    move-object/from16 v16, v9

    #@96
    move-object/from16 v18, v9

    #@98
    move/from16 v19, v12

    #@9a
    move/from16 v20, v13

    #@9c
    invoke-static/range {v14 .. v20}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    #@9f
    goto :goto_1

    #@a0
    .line 942
    :cond_6
    array-length v6, v9

    #@a1
    new-array v0, v6, [J

    #@a3
    move-object/from16 v16, v0

    #@a5
    .line 943
    .local v16, "T1":[J
    array-length v0, v9

    #@a6
    move/from16 v18, v0

    #@a8
    const/4 v15, 0x0

    #@a9
    const/16 v17, 0x0

    #@ab
    const/16 v19, 0x4

    #@ad
    move-object v14, v9

    #@ae
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@b1
    .line 946
    move-object/from16 v0, v24

    #@b3
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@b5
    move-object/from16 v26, v0

    #@b7
    .line 947
    .local v26, "a":[J
    move/from16 v0, v31

    #@b9
    new-array v0, v0, [J

    #@bb
    move-object/from16 v17, v0

    #@bd
    .line 955
    .local v17, "c":[J
    const/16 v34, 0x38

    #@bf
    .local v34, "k":I
    :goto_2
    if-ltz v34, :cond_8

    #@c1
    .line 957
    const/16 v18, 0x1

    #@c3
    .local v18, "j":I
    move/from16 v33, v18

    #@c5
    .end local v18    # "j":I
    .local v33, "j":I
    :goto_3
    move/from16 v0, v33

    #@c7
    move/from16 v1, v28

    #@c9
    if-ge v0, v1, :cond_7

    #@cb
    .line 959
    aget-wide v10, v26, v33

    #@cd
    ushr-long v10, v10, v34

    #@cf
    long-to-int v0, v10

    #@d0
    move/from16 v29, v0

    #@d2
    .line 960
    .local v29, "aVal":I
    and-int/lit8 v37, v29, 0xf

    #@d4
    .line 961
    .local v37, "u":I
    ushr-int/lit8 v6, v29, 0x4

    #@d6
    and-int/lit8 v38, v6, 0xf

    #@d8
    .line 962
    .local v38, "v":I
    add-int/lit8 v18, v33, -0x1

    #@da
    aget v20, v35, v37

    #@dc
    aget v22, v35, v38

    #@de
    move-object/from16 v19, v9

    #@e0
    move-object/from16 v21, v16

    #@e2
    move/from16 v23, v13

    #@e4
    invoke-static/range {v17 .. v23}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    #@e7
    .line 957
    add-int/lit8 v18, v33, 0x2

    #@e9
    .end local v33    # "j":I
    .restart local v18    # "j":I
    move/from16 v33, v18

    #@eb
    .end local v18    # "j":I
    .restart local v33    # "j":I
    goto :goto_3

    #@ec
    .line 964
    .end local v29    # "aVal":I
    .end local v37    # "u":I
    .end local v38    # "v":I
    :cond_7
    const/4 v6, 0x0

    #@ed
    const/16 v10, 0x8

    #@ef
    move-object/from16 v0, v17

    #@f1
    move/from16 v1, v31

    #@f3
    invoke-static {v0, v6, v1, v10}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    #@f6
    .line 955
    add-int/lit8 v34, v34, -0x8

    #@f8
    goto :goto_2

    #@f9
    .line 967
    .end local v33    # "j":I
    :cond_8
    const/16 v34, 0x38

    #@fb
    :goto_4
    if-ltz v34, :cond_b

    #@fd
    .line 969
    const/16 v18, 0x0

    #@ff
    .restart local v18    # "j":I
    :goto_5
    move/from16 v0, v18

    #@101
    move/from16 v1, v28

    #@103
    if-ge v0, v1, :cond_9

    #@105
    .line 971
    aget-wide v10, v26, v18

    #@107
    ushr-long v10, v10, v34

    #@109
    long-to-int v0, v10

    #@10a
    move/from16 v29, v0

    #@10c
    .line 972
    .restart local v29    # "aVal":I
    and-int/lit8 v37, v29, 0xf

    #@10e
    .line 973
    .restart local v37    # "u":I
    ushr-int/lit8 v6, v29, 0x4

    #@110
    and-int/lit8 v38, v6, 0xf

    #@112
    .line 974
    .restart local v38    # "v":I
    aget v20, v35, v37

    #@114
    aget v22, v35, v38

    #@116
    move-object/from16 v19, v9

    #@118
    move-object/from16 v21, v16

    #@11a
    move/from16 v23, v13

    #@11c
    invoke-static/range {v17 .. v23}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    #@11f
    .line 969
    add-int/lit8 v18, v18, 0x2

    #@121
    goto :goto_5

    #@122
    .line 976
    .end local v29    # "aVal":I
    .end local v37    # "u":I
    .end local v38    # "v":I
    :cond_9
    if-lez v34, :cond_a

    #@124
    .line 978
    const/4 v6, 0x0

    #@125
    const/16 v10, 0x8

    #@127
    move-object/from16 v0, v17

    #@129
    move/from16 v1, v31

    #@12b
    invoke-static {v0, v6, v1, v10}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    #@12e
    .line 967
    :cond_a
    add-int/lit8 v34, v34, -0x8

    #@130
    goto :goto_4

    #@131
    .line 985
    .end local v18    # "j":I
    :cond_b
    const/4 v6, 0x0

    #@132
    move-object/from16 v0, v17

    #@134
    move/from16 v1, v31

    #@136
    move/from16 v2, p2

    #@138
    move-object/from16 v3, p3

    #@13a
    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@13d
    move-result-object v6

    #@13e
    return-object v6
.end method

.method public modReduce(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1339
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@3
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    #@6
    move-result-object v0

    #@7
    .line 1340
    .local v0, "buf":[J
    array-length v2, v0

    #@8
    invoke-static {v0, v3, v2, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    #@b
    move-result v1

    #@c
    .line 1341
    .local v1, "rLen":I
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@e
    invoke-direct {v2, v0, v3, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@11
    return-object v2
.end method

.method public modSquare(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 11
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1659
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@4
    move-result v1

    #@5
    .line 1660
    .local v1, "len":I
    if-nez v1, :cond_0

    #@7
    .line 1662
    return-object p0

    #@8
    .line 1665
    :cond_0
    shl-int/lit8 v0, v1, 0x1

    #@a
    .line 1666
    .local v0, "_2len":I
    new-array v6, v0, [J

    #@c
    .line 1668
    .local v6, "r":[J
    const/4 v4, 0x0

    #@d
    .local v4, "pos":I
    move v5, v4

    #@e
    .line 1669
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_0
    if-ge v5, v0, :cond_1

    #@10
    .line 1671
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@12
    ushr-int/lit8 v8, v5, 0x1

    #@14
    aget-wide v2, v7, v8

    #@16
    .line 1672
    .local v2, "mi":J
    add-int/lit8 v4, v5, 0x1

    #@18
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    long-to-int v7, v2

    #@19
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@1c
    move-result-wide v8

    #@1d
    aput-wide v8, v6, v5

    #@1f
    .line 1673
    add-int/lit8 v5, v4, 0x1

    #@21
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x20

    #@23
    ushr-long v8, v2, v7

    #@25
    long-to-int v7, v8

    #@26
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@29
    move-result-wide v8

    #@2a
    aput-wide v8, v6, v4

    #@2c
    goto :goto_0

    #@2d
    .line 1676
    .end local v2    # "mi":J
    :cond_1
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2f
    array-length v8, v6

    #@30
    invoke-static {v6, v10, v8, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    #@33
    move-result v8

    #@34
    invoke-direct {v7, v6, v10, v8}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@37
    return-object v7
.end method

.method public modSquareN(II[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 5
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1681
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@4
    move-result v0

    #@5
    .line 1682
    .local v0, "len":I
    if-nez v0, :cond_0

    #@7
    .line 1684
    return-object p0

    #@8
    .line 1687
    :cond_0
    add-int/lit8 v3, p2, 0x3f

    #@a
    ushr-int/lit8 v1, v3, 0x6

    #@c
    .line 1688
    .local v1, "mLen":I
    shl-int/lit8 v3, v1, 0x1

    #@e
    new-array v2, v3, [J

    #@10
    .line 1689
    .local v2, "r":[J
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@12
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@15
    .line 1691
    :goto_0
    add-int/lit8 p1, p1, -0x1

    #@17
    if-ltz p1, :cond_1

    #@19
    .line 1693
    invoke-static {v2, v0, p2, p3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    #@1c
    .line 1694
    array-length v3, v2

    #@1d
    invoke-static {v2, v4, v3, p2, p3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    #@20
    move-result v0

    #@21
    goto :goto_0

    #@22
    .line 1697
    :cond_1
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@24
    invoke-direct {v3, v2, v4, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@27
    return-object v3
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 38
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    #@0
    .prologue
    .line 1349
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@3
    move-result v26

    #@4
    .line 1350
    .local v26, "aDeg":I
    if-nez v26, :cond_0

    #@6
    .line 1352
    return-object p0

    #@7
    .line 1354
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@a
    move-result v29

    #@b
    .line 1355
    .local v29, "bDeg":I
    if-nez v29, :cond_1

    #@d
    .line 1357
    return-object p1

    #@e
    .line 1363
    :cond_1
    move-object/from16 v23, p0

    #@10
    .local v23, "A":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v24, p1

    #@12
    .line 1364
    .local v24, "B":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move/from16 v0, v26

    #@14
    move/from16 v1, v29

    #@16
    if-le v0, v1, :cond_2

    #@18
    .line 1366
    move-object/from16 v23, p1

    #@1a
    move-object/from16 v24, p0

    #@1c
    .line 1367
    move/from16 v35, v26

    #@1e
    .local v35, "tmp":I
    move/from16 v26, v29

    #@20
    move/from16 v29, v35

    #@22
    .line 1373
    .end local v35    # "tmp":I
    :cond_2
    add-int/lit8 v4, v26, 0x3f

    #@24
    ushr-int/lit8 v27, v4, 0x6

    #@26
    .line 1374
    .local v27, "aLen":I
    add-int/lit8 v4, v29, 0x3f

    #@28
    ushr-int/lit8 v5, v4, 0x6

    #@2a
    .line 1375
    .local v5, "bLen":I
    add-int v4, v26, v29

    #@2c
    add-int/lit8 v4, v4, 0x3e

    #@2e
    ushr-int/lit8 v32, v4, 0x6

    #@30
    .line 1377
    .local v32, "cLen":I
    const/4 v4, 0x1

    #@31
    move/from16 v0, v27

    #@33
    if-ne v0, v4, :cond_4

    #@35
    .line 1379
    move-object/from16 v0, v23

    #@37
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@39
    const/4 v8, 0x0

    #@3a
    aget-wide v2, v4, v8

    #@3c
    .line 1380
    .local v2, "a0":J
    const-wide/16 v8, 0x1

    #@3e
    cmp-long v4, v2, v8

    #@40
    if-nez v4, :cond_3

    #@42
    .line 1382
    return-object v24

    #@43
    .line 1388
    :cond_3
    move/from16 v0, v32

    #@45
    new-array v6, v0, [J

    #@47
    .line 1389
    .local v6, "c0":[J
    move-object/from16 v0, v24

    #@49
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@4b
    const/4 v7, 0x0

    #@4c
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    #@4f
    .line 1395
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@51
    const/4 v8, 0x0

    #@52
    move/from16 v0, v32

    #@54
    invoke-direct {v4, v6, v8, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@57
    return-object v4

    #@58
    .line 1401
    .end local v2    # "a0":J
    .end local v6    # "c0":[J
    :cond_4
    add-int/lit8 v4, v29, 0x7

    #@5a
    add-int/lit8 v4, v4, 0x3f

    #@5c
    ushr-int/lit8 v11, v4, 0x6

    #@5e
    .line 1406
    .local v11, "bMax":I
    const/16 v4, 0x10

    #@60
    new-array v0, v4, [I

    #@62
    move-object/from16 v34, v0

    #@64
    .line 1411
    .local v34, "ti":[I
    shl-int/lit8 v4, v11, 0x4

    #@66
    new-array v7, v4, [J

    #@68
    .line 1412
    .local v7, "T0":[J
    move v10, v11

    #@69
    .line 1413
    .local v10, "tOff":I
    const/4 v4, 0x1

    #@6a
    aput v10, v34, v4

    #@6c
    .line 1414
    move-object/from16 v0, v24

    #@6e
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@70
    const/4 v8, 0x0

    #@71
    invoke-static {v4, v8, v7, v10, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@74
    .line 1415
    const/16 v33, 0x2

    #@76
    .local v33, "i":I
    :goto_0
    const/16 v4, 0x10

    #@78
    move/from16 v0, v33

    #@7a
    if-ge v0, v4, :cond_6

    #@7c
    .line 1417
    add-int/2addr v10, v11

    #@7d
    aput v10, v34, v33

    #@7f
    .line 1418
    and-int/lit8 v4, v33, 0x1

    #@81
    if-nez v4, :cond_5

    #@83
    .line 1420
    ushr-int/lit8 v8, v10, 0x1

    #@85
    const/4 v12, 0x1

    #@86
    move-object v9, v7

    #@87
    invoke-static/range {v7 .. v12}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@8a
    .line 1415
    :goto_1
    add-int/lit8 v33, v33, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 1424
    :cond_5
    sub-int v15, v10, v11

    #@8f
    move-object v12, v7

    #@90
    move v13, v11

    #@91
    move-object v14, v7

    #@92
    move-object/from16 v16, v7

    #@94
    move/from16 v17, v10

    #@96
    move/from16 v18, v11

    #@98
    invoke-static/range {v12 .. v18}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    #@9b
    goto :goto_1

    #@9c
    .line 1431
    :cond_6
    array-length v4, v7

    #@9d
    new-array v14, v4, [J

    #@9f
    .line 1432
    .local v14, "T1":[J
    array-length v0, v7

    #@a0
    move/from16 v16, v0

    #@a2
    const/4 v13, 0x0

    #@a3
    const/4 v15, 0x0

    #@a4
    const/16 v17, 0x4

    #@a6
    move-object v12, v7

    #@a7
    invoke-static/range {v12 .. v17}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    #@aa
    .line 1435
    move-object/from16 v0, v23

    #@ac
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@ae
    move-object/from16 v25, v0

    #@b0
    .line 1436
    .local v25, "a":[J
    shl-int/lit8 v4, v32, 0x3

    #@b2
    new-array v15, v4, [J

    #@b4
    .line 1444
    .local v15, "c":[J
    const/16 v28, 0x0

    #@b6
    .local v28, "aPos":I
    :goto_2
    move/from16 v0, v28

    #@b8
    move/from16 v1, v27

    #@ba
    if-ge v0, v1, :cond_8

    #@bc
    .line 1446
    aget-wide v30, v25, v28

    #@be
    .line 1447
    .local v30, "aVal":J
    move/from16 v16, v28

    #@c0
    .line 1450
    .local v16, "cOff":I
    :goto_3
    move-wide/from16 v0, v30

    #@c2
    long-to-int v4, v0

    #@c3
    and-int/lit8 v36, v4, 0xf

    #@c5
    .line 1451
    .local v36, "u":I
    const/4 v4, 0x4

    #@c6
    ushr-long v30, v30, v4

    #@c8
    .line 1452
    move-wide/from16 v0, v30

    #@ca
    long-to-int v4, v0

    #@cb
    and-int/lit8 v37, v4, 0xf

    #@cd
    .line 1453
    .local v37, "v":I
    aget v18, v34, v36

    #@cf
    aget v20, v34, v37

    #@d1
    move-object/from16 v17, v7

    #@d3
    move-object/from16 v19, v14

    #@d5
    move/from16 v21, v11

    #@d7
    invoke-static/range {v15 .. v21}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    #@da
    .line 1454
    const/4 v4, 0x4

    #@db
    ushr-long v30, v30, v4

    #@dd
    .line 1455
    const-wide/16 v8, 0x0

    #@df
    cmp-long v4, v30, v8

    #@e1
    if-nez v4, :cond_7

    #@e3
    .line 1444
    add-int/lit8 v28, v28, 0x1

    #@e5
    goto :goto_2

    #@e6
    .line 1459
    :cond_7
    add-int v16, v16, v32

    #@e8
    goto :goto_3

    #@e9
    .line 1464
    .end local v16    # "cOff":I
    .end local v30    # "aVal":J
    .end local v36    # "u":I
    .end local v37    # "v":I
    :cond_8
    array-length v0, v15

    #@ea
    move/from16 v16, v0

    #@ec
    .line 1465
    .restart local v16    # "cOff":I
    :goto_4
    sub-int v16, v16, v32

    #@ee
    if-eqz v16, :cond_9

    #@f0
    .line 1467
    sub-int v18, v16, v32

    #@f2
    const/16 v22, 0x8

    #@f4
    move-object/from16 v17, v15

    #@f6
    move-object/from16 v19, v15

    #@f8
    move/from16 v20, v16

    #@fa
    move/from16 v21, v32

    #@fc
    invoke-static/range {v17 .. v22}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    #@ff
    goto :goto_4

    #@100
    .line 1475
    :cond_9
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@102
    const/4 v8, 0x0

    #@103
    move/from16 v0, v32

    #@105
    invoke-direct {v4, v15, v8, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@108
    return-object v4
.end method

.method public reduce(I[I)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1480
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@3
    .line 1481
    .local v0, "buf":[J
    array-length v2, v0

    #@4
    invoke-static {v0, v3, v2, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    #@7
    move-result v1

    #@8
    .line 1482
    .local v1, "rLen":I
    array-length v2, v0

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 1484
    new-array v2, v1, [J

    #@d
    iput-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@f
    .line 1485
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@11
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@14
    .line 1478
    :cond_0
    return-void
.end method

.method public square(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .locals 11
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1702
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@4
    move-result v1

    #@5
    .line 1703
    .local v1, "len":I
    if-nez v1, :cond_0

    #@7
    .line 1705
    return-object p0

    #@8
    .line 1708
    :cond_0
    shl-int/lit8 v0, v1, 0x1

    #@a
    .line 1709
    .local v0, "_2len":I
    new-array v6, v0, [J

    #@c
    .line 1711
    .local v6, "r":[J
    const/4 v4, 0x0

    #@d
    .local v4, "pos":I
    move v5, v4

    #@e
    .line 1712
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_0
    if-ge v5, v0, :cond_1

    #@10
    .line 1714
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@12
    ushr-int/lit8 v8, v5, 0x1

    #@14
    aget-wide v2, v7, v8

    #@16
    .line 1715
    .local v2, "mi":J
    add-int/lit8 v4, v5, 0x1

    #@18
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    long-to-int v7, v2

    #@19
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@1c
    move-result-wide v8

    #@1d
    aput-wide v8, v6, v5

    #@1f
    .line 1716
    add-int/lit8 v5, v4, 0x1

    #@21
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x20

    #@23
    ushr-long v8, v2, v7

    #@25
    long-to-int v7, v8

    #@26
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    #@29
    move-result-wide v8

    #@2a
    aput-wide v8, v6, v4

    #@2c
    goto :goto_0

    #@2d
    .line 1719
    .end local v2    # "mi":J
    :cond_1
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2f
    array-length v8, v6

    #@30
    invoke-direct {v7, v6, v10, v8}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    #@33
    return-object v7
.end method

.method public testBitZero()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 792
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@3
    array-length v1, v1

    #@4
    if-lez v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@8
    aget-wide v2, v1, v0

    #@a
    const-wide/16 v4, 0x1

    #@c
    and-long/2addr v2, v4

    #@d
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 18

    #@0
    .prologue
    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@3
    move-result v15

    #@4
    .line 536
    .local v15, "usedLen":I
    if-nez v15, :cond_0

    #@6
    .line 538
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@8
    return-object v16

    #@9
    .line 541
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@d
    move-object/from16 v16, v0

    #@f
    add-int/lit8 v17, v15, -0x1

    #@11
    aget-wide v6, v16, v17

    #@13
    .line 542
    .local v6, "highestInt":J
    const/16 v16, 0x8

    #@15
    move/from16 v0, v16

    #@17
    new-array v12, v0, [B

    #@19
    .line 543
    .local v12, "temp":[B
    const/4 v3, 0x0

    #@1a
    .line 544
    .local v3, "barrI":I
    const/4 v14, 0x0

    #@1b
    .line 545
    .local v14, "trailingZeroBytesDone":Z
    const/4 v9, 0x7

    #@1c
    .local v9, "j":I
    move v4, v3

    #@1d
    .end local v3    # "barrI":I
    .local v4, "barrI":I
    :goto_0
    if-ltz v9, :cond_3

    #@1f
    .line 547
    mul-int/lit8 v16, v9, 0x8

    #@21
    ushr-long v16, v6, v16

    #@23
    move-wide/from16 v0, v16

    #@25
    long-to-int v0, v0

    #@26
    move/from16 v16, v0

    #@28
    move/from16 v0, v16

    #@2a
    int-to-byte v13, v0

    #@2b
    .line 548
    .local v13, "thisByte":B
    if-nez v14, :cond_1

    #@2d
    if-eqz v13, :cond_2

    #@2f
    .line 550
    :cond_1
    const/4 v14, 0x1

    #@30
    .line 551
    add-int/lit8 v3, v4, 0x1

    #@32
    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    aput-byte v13, v12, v4

    #@34
    .line 545
    :goto_1
    add-int/lit8 v9, v9, -0x1

    #@36
    move v4, v3

    #@37
    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_0

    #@38
    :cond_2
    move v3, v4

    #@39
    .line 549
    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    goto :goto_1

    #@3a
    .line 555
    .end local v3    # "barrI":I
    .end local v13    # "thisByte":B
    .restart local v4    # "barrI":I
    :cond_3
    add-int/lit8 v16, v15, -0x1

    #@3c
    mul-int/lit8 v16, v16, 0x8

    #@3e
    add-int v5, v16, v4

    #@40
    .line 556
    .local v5, "barrLen":I
    new-array v2, v5, [B

    #@42
    .line 557
    .local v2, "barr":[B
    const/4 v9, 0x0

    #@43
    :goto_2
    if-ge v9, v4, :cond_4

    #@45
    .line 559
    aget-byte v16, v12, v9

    #@47
    aput-byte v16, v2, v9

    #@49
    .line 557
    add-int/lit8 v9, v9, 0x1

    #@4b
    goto :goto_2

    #@4c
    .line 563
    :cond_4
    add-int/lit8 v8, v15, -0x2

    #@4e
    .local v8, "iarrJ":I
    move v3, v4

    #@4f
    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    :goto_3
    if-ltz v8, :cond_6

    #@51
    .line 565
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@55
    move-object/from16 v16, v0

    #@57
    aget-wide v10, v16, v8

    #@59
    .line 566
    .local v10, "mi":J
    const/4 v9, 0x7

    #@5a
    move v4, v3

    #@5b
    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    :goto_4
    if-ltz v9, :cond_5

    #@5d
    .line 568
    add-int/lit8 v3, v4, 0x1

    #@5f
    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    mul-int/lit8 v16, v9, 0x8

    #@61
    ushr-long v16, v10, v16

    #@63
    move-wide/from16 v0, v16

    #@65
    long-to-int v0, v0

    #@66
    move/from16 v16, v0

    #@68
    move/from16 v0, v16

    #@6a
    int-to-byte v0, v0

    #@6b
    move/from16 v16, v0

    #@6d
    aput-byte v16, v2, v4

    #@6f
    .line 566
    add-int/lit8 v9, v9, -0x1

    #@71
    move v4, v3

    #@72
    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_4

    #@73
    .line 563
    :cond_5
    add-int/lit8 v8, v8, -0x1

    #@75
    move v3, v4

    #@76
    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    goto :goto_3

    #@77
    .line 571
    .end local v10    # "mi":J
    :cond_6
    new-instance v16, Ljava/math/BigInteger;

    #@79
    const/16 v17, 0x1

    #@7b
    move-object/from16 v0, v16

    #@7d
    move/from16 v1, v17

    #@7f
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@82
    return-object v16
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    #@3
    move-result v0

    #@4
    .line 2174
    .local v0, "i":I
    if-nez v0, :cond_0

    #@6
    .line 2176
    const-string/jumbo v4, "0"

    #@9
    return-object v4

    #@a
    .line 2179
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@c
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    aget-wide v4, v4, v0

    #@12
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@19
    .line 2180
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    if-ltz v0, :cond_2

    #@1d
    .line 2182
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    #@1f
    aget-wide v4, v4, v0

    #@21
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 2185
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@28
    move-result v1

    #@29
    .line 2186
    .local v1, "len":I
    const/16 v4, 0x40

    #@2b
    if-ge v1, v4, :cond_1

    #@2d
    .line 2188
    const-string/jumbo v4, "0000000000000000000000000000000000000000000000000000000000000000"

    #@30
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 2191
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    goto :goto_0

    #@3b
    .line 2193
    .end local v1    # "len":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    return-object v4
.end method
