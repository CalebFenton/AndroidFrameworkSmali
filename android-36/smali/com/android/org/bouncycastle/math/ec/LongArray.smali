.class Lcom/android/org/bouncycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist INTERLEAVE2_TABLE:[S

.field private static final blacklist INTERLEAVE3_TABLE:[I

.field private static final blacklist INTERLEAVE4_TABLE:[I

.field private static final blacklist INTERLEAVE5_TABLE:[I

.field private static final blacklist INTERLEAVE7_TABLE:[J

.field static final blacklist bitLengths:[B


# instance fields
.field private blacklist m_ints:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/16 v0, 0x100

    .line 18
    new-array v1, v0, [S

    fill-array-data v1, :array_34

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    const/16 v1, 0x80

    .line 57
    new-array v1, v1, [I

    fill-array-data v1, :array_138

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    .line 80
    new-array v1, v0, [I

    fill-array-data v1, :array_23c

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    const/16 v1, 0x80

    .line 119
    new-array v1, v1, [I

    fill-array-data v1, :array_440

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    const/16 v1, 0x200

    .line 141
    new-array v1, v1, [J

    fill-array-data v1, :array_544

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    .line 276
    new-array v0, v0, [B

    fill-array-data v0, :array_d48

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    nop

    :array_34
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_138
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

    :array_23c
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

    :array_440
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

    :array_544
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

    :array_d48
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

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_66

    .line 325
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_66

    .line 330
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1c

    .line 332
    new-array p1, v1, [J

    aput-wide v3, p1, v0

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    return-void

    .line 336
    :cond_1c
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 337
    array-length v2, p1

    .line 339
    aget-byte v5, p1, v0

    if-nez v5, :cond_29

    add-int/lit8 v2, v2, -0x1

    move v5, v1

    goto :goto_2a

    :cond_29
    move v5, v0

    :goto_2a
    add-int/lit8 v6, v2, 0x7

    const/16 v7, 0x8

    .line 346
    div-int/2addr v6, v7

    .line 347
    new-array v8, v6, [J

    iput-object v8, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v8, v6, -0x1

    .line 350
    rem-int/2addr v2, v7

    add-int/2addr v2, v5

    if-ge v5, v2, :cond_4c

    move-wide v9, v3

    :goto_3a
    if-ge v5, v2, :cond_45

    shl-long/2addr v9, v7

    .line 358
    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    or-long/2addr v9, v11

    add-int/2addr v5, v1

    goto :goto_3a

    .line 361
    :cond_45
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v6, v6, -0x2

    aput-wide v9, v2, v8

    move v8, v6

    :cond_4c
    :goto_4c
    if-ltz v8, :cond_65

    move v2, v0

    move-wide v9, v3

    :goto_50
    if-ge v2, v7, :cond_5e

    shl-long/2addr v9, v7

    add-int/lit8 v6, v5, 0x1

    .line 370
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v11, v5

    or-long/2addr v9, v11

    add-int/2addr v2, v1

    move v5, v6

    goto :goto_50

    .line 373
    :cond_5e
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v9, v2, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_4c

    :cond_65
    return-void

    .line 327
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid F2m field value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>([J)V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    return-void
.end method

.method public constructor blacklist <init>([JII)V
    .registers 5

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_b

    .line 312
    array-length v0, p1

    if-ne p3, v0, :cond_b

    .line 314
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    return-void

    .line 318
    :cond_b
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 p0, 0x0

    .line 319
    invoke-static {p1, p2, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static blacklist add([JI[JII)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_11

    add-int v1, p1, v0

    .line 728
    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private static blacklist add([JI[JI[JII)V
    .registers 13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p6, :cond_13

    add-int v1, p5, v0

    add-int v2, p1, v0

    .line 736
    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private static blacklist addBoth([JI[JI[JII)V
    .registers 15

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p6, :cond_16

    add-int v1, p1, v0

    .line 744
    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method private blacklist addShiftedByBitsSafe(Lcom/android/org/bouncycastle/math/ec/LongArray;II)V
    .registers 10

    add-int/lit8 p2, p2, 0x3f

    ushr-int/lit8 v4, p2, 0x6

    ushr-int/lit8 v1, p3, 0x6

    and-int/lit8 v5, p3, 0x3f

    if-nez v5, :cond_13

    .line 669
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 p2, 0x0

    invoke-static {p0, v1, p1, p2, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    return-void

    .line 673
    :cond_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_2a

    .line 676
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/2addr v4, v1

    aget-wide v0, p0, v4

    xor-long/2addr p1, v0

    aput-wide p1, p0, v4

    :cond_2a
    return-void
.end method

.method private static blacklist addShiftedDown([JI[JIII)J
    .registers 16

    rsub-int/lit8 v0, p5, 0x40

    const-wide/16 v1, 0x0

    :goto_4
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_19

    add-int v3, p3, p4

    .line 700
    aget-wide v3, p2, v3

    add-int v5, p1, p4

    .line 701
    aget-wide v6, p0, v5

    ushr-long v8, v3, p5

    or-long/2addr v1, v8

    xor-long/2addr v1, v6

    aput-wide v1, p0, v5

    shl-long v1, v3, v0

    goto :goto_4

    :cond_19
    return-wide v1
.end method

.method private static blacklist addShiftedUp([JI[JIII)J
    .registers 18

    rsub-int/lit8 v0, p5, 0x40

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move/from16 v4, p4

    :goto_7
    if-ge v3, v4, :cond_1c

    add-int v5, p3, v3

    .line 686
    aget-wide v5, p2, v5

    add-int v7, p1, v3

    .line 687
    aget-wide v8, p0, v7

    shl-long v10, v5, p5

    or-long/2addr v1, v10

    xor-long/2addr v1, v8

    aput-wide v1, p0, v7

    ushr-long v1, v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    return-wide v1
.end method

.method private static blacklist bitLength(J)I
    .registers 5

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    if-nez v1, :cond_9

    long-to-int v1, p0

    const/4 v0, 0x0

    :cond_9
    ushr-int/lit8 p0, v1, 0x10

    if-nez p0, :cond_1d

    ushr-int/lit8 p0, v1, 0x8

    if-nez p0, :cond_16

    .line 523
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p0, v1

    goto :goto_2e

    :cond_16
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p1, p0

    add-int/lit8 p0, p0, 0x8

    goto :goto_2e

    :cond_1d
    ushr-int/lit8 p1, v1, 0x18

    if-nez p1, :cond_28

    .line 528
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p1, p0

    add-int/lit8 p0, p0, 0x10

    goto :goto_2e

    :cond_28
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte p0, p0, p1

    add-int/lit8 p0, p0, 0x18

    :goto_2e
    add-int/2addr v0, p0

    return v0
.end method

.method private blacklist degreeFrom(I)I
    .registers 6

    add-int/lit8 p1, p1, 0x3e

    ushr-int/lit8 p1, p1, 0x6

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    shl-int/lit8 p0, p1, 0x6

    .line 479
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static blacklist flipBit([JII)V
    .registers 8

    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    add-int/2addr p1, v0

    .line 820
    aget-wide v3, p0, p1

    xor-long v0, v3, v1

    aput-wide v0, p0, p1

    return-void
.end method

.method private static blacklist flipVector([JI[JIII)V
    .registers 12

    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    and-int/lit8 p5, p5, 0x3f

    if-nez p5, :cond_b

    .line 1656
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    return-void

    :cond_b
    add-int/lit8 v1, p1, 0x1

    rsub-int/lit8 v5, p5, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1660
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide p2

    .line 1661
    aget-wide p4, v0, p1

    xor-long/2addr p2, p4

    aput-wide p2, v0, p1

    return-void
.end method

.method private static blacklist flipWord([JIIJ)V
    .registers 9

    ushr-int/lit8 v0, p2, 0x6

    add-int/2addr p1, v0

    and-int/lit8 p2, p2, 0x3f

    if-nez p2, :cond_e

    .line 769
    aget-wide v0, p0, p1

    xor-long p2, v0, p3

    aput-wide p2, p0, p1

    return-void

    .line 773
    :cond_e
    aget-wide v0, p0, p1

    shl-long v2, p3, p2

    xor-long/2addr v0, v2

    aput-wide v0, p0, p1

    rsub-int/lit8 p2, p2, 0x40

    ushr-long p2, p3, p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_26

    add-int/lit8 p1, p1, 0x1

    .line 777
    aget-wide v0, p0, p1

    xor-long/2addr p2, v0

    aput-wide p2, p0, p1

    :cond_26
    return-void
.end method

.method private static blacklist interleave2_32to64(I)J
    .registers 7

    .line 1908
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v1, v0, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 1909
    aget-short v2, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    aget-short p0, v0, p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    int-to-long v0, v1

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist multiplyWord(J[JI[JI)V
    .registers 21

    move/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v1, p5

    const-wide/16 v6, 0x1

    and-long v2, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 847
    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_19

    :cond_17
    move-object/from16 v3, p2

    :goto_19
    const/4 v10, 0x1

    move-wide v11, p0

    move v5, v10

    :goto_1c
    ushr-long/2addr v11, v10

    cmp-long v2, v11, v8

    if-eqz v2, :cond_44

    and-long v13, v11, v6

    cmp-long v2, v13, v8

    if-eqz v2, :cond_39

    const/4 v3, 0x0

    move-object/from16 v2, p2

    .line 854
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v13

    cmp-long v0, v13, v8

    if-eqz v0, :cond_39

    add-int v0, p5, p3

    .line 857
    aget-wide v1, p4, v0

    xor-long/2addr v1, v13

    aput-wide v1, p4, v0

    :cond_39
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v1, p5

    goto :goto_1c

    :cond_44
    return-void
.end method

.method private static blacklist reduceBit([JIII[I)V
    .registers 6

    .line 1587
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    sub-int/2addr p2, p3

    .line 1589
    array-length p3, p4

    :goto_5
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_10

    .line 1592
    aget v0, p4, p3

    add-int/2addr v0, p2

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_5

    .line 1594
    :cond_10
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    return-void
.end method

.method private static blacklist reduceBitWise([JIII[I)V
    .registers 6

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_e

    .line 1578
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_0

    :cond_e
    return-void
.end method

.method private static blacklist reduceInPlace([JIII[I)I
    .registers 15

    add-int/lit8 v1, p3, 0x3f

    ushr-int/lit8 v6, v1, 0x6

    if-ge p2, v6, :cond_7

    return p2

    :cond_7
    shl-int/lit8 v1, p2, 0x6

    shl-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 1538
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    move v0, p2

    :goto_13
    const/16 v7, 0x40

    if-lt v1, v7, :cond_1c

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x40

    goto :goto_13

    .line 1546
    :cond_1c
    array-length v8, p4

    add-int/lit8 v9, v8, -0x1

    aget v9, p4, v9

    if-le v8, v3, :cond_28

    add-int/lit8 v8, v8, -0x2

    aget v8, p4, v8

    goto :goto_29

    :cond_28
    const/4 v8, 0x0

    :goto_29
    add-int/2addr v9, v7

    .line 1547
    invoke-static {p3, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v9, v2, v7

    sub-int v8, p3, v8

    .line 1548
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v1, v8

    shr-int/lit8 v1, v1, 0x6

    if-le v1, v3, :cond_53

    sub-int v3, v0, v1

    move v1, p1

    move v4, p3

    move-object v5, p4

    move v2, v0

    move-object v0, p0

    .line 1552
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    move v0, v2

    :goto_46
    if-le v0, v3, :cond_51

    add-int/lit8 v0, v0, -0x1

    add-int v1, p1, v0

    const-wide/16 v4, 0x0

    .line 1555
    aput-wide v4, p0, v1

    goto :goto_46

    :cond_51
    shl-int/lit8 v2, v3, 0x6

    :cond_53
    move v8, v2

    move v2, v0

    if-le v8, v7, :cond_60

    move-object v0, p0

    move v1, p1

    move v4, p3

    move-object v5, p4

    move v3, v7

    .line 1562
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    goto :goto_61

    :cond_60
    move v7, v8

    :goto_61
    if-le v7, p3, :cond_66

    .line 1568
    invoke-static {p0, p1, v7, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    :cond_66
    return v6
.end method

.method private static blacklist reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 5

    .line 1499
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p2

    .line 1500
    new-instance p3, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p3
.end method

.method private static blacklist reduceVectorWise([JIIII[I)V
    .registers 13

    shl-int/lit8 v0, p3, 0x6

    sub-int/2addr v0, p4

    .line 1641
    array-length p4, p5

    :goto_4
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_17

    add-int v4, p1, p3

    sub-int v5, p2, p3

    .line 1644
    aget v1, p5, p4

    add-int v6, v0, v1

    move-object v3, p0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    goto :goto_4

    :cond_17
    add-int p4, p1, p3

    sub-int/2addr p2, p3

    move p3, p4

    move p4, p2

    move-object p2, p0

    move p5, v0

    .line 1646
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    return-void
.end method

.method private static blacklist reduceWord([JIIJI[I)V
    .registers 8

    sub-int/2addr p2, p5

    .line 1625
    array-length p5, p6

    :goto_2
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_d

    .line 1628
    aget v0, p6, p5

    add-int/2addr v0, p2

    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_2

    .line 1630
    :cond_d
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    return-void
.end method

.method private static blacklist reduceWordWise([JIIII[I)V
    .registers 23

    ushr-int/lit8 v0, p3, 0x6

    move/from16 v1, p2

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    if-le v1, v0, :cond_22

    add-int v4, p1, v1

    .line 1603
    aget-wide v8, p0, v4

    cmp-long v5, v8, v2

    if-eqz v5, :cond_4

    .line 1606
    aput-wide v2, p0, v4

    shl-int/lit8 v7, v1, 0x6

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 1607
    invoke-static/range {v5 .. v11}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    goto :goto_4

    :cond_22
    and-int/lit8 v1, p3, 0x3f

    add-int v0, p1, v0

    .line 1613
    aget-wide v4, p0, v0

    ushr-long v13, v4, v1

    cmp-long v2, v13, v2

    if-eqz v2, :cond_40

    shl-long v1, v13, v1

    xor-long/2addr v1, v4

    .line 1616
    aput-wide v1, p0, v0

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    .line 1617
    invoke-static/range {v10 .. v16}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    :cond_40
    return-void
.end method

.method private blacklist resizedInts(I)[J
    .registers 4

    .line 536
    new-array v0, p1, [J

    .line 537
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static blacklist shiftUp([JI[JIII)J
    .registers 15

    rsub-int/lit8 v0, p5, 0x40

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, p4, :cond_17

    add-int v4, p1, v3

    .line 613
    aget-wide v4, p0, v4

    add-int v6, p3, v3

    shl-long v7, v4, p5

    or-long/2addr v1, v7

    .line 614
    aput-wide v1, p2, v6

    ushr-long v1, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_17
    return-wide v1
.end method

.method private static blacklist squareInPlace([JII[I)V
    .registers 8

    shl-int/lit8 p2, p1, 0x1

    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1f

    .line 1735
    aget-wide v0, p0, p1

    add-int/lit8 p3, p2, -0x1

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    .line 1736
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    aput-wide v2, p0, p3

    add-int/lit8 p2, p2, -0x2

    long-to-int p3, v0

    .line 1737
    invoke-static {p3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private static blacklist testBit([JII)Z
    .registers 6

    ushr-int/lit8 v0, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    const-wide/16 v1, 0x1

    shl-long/2addr v1, p2

    add-int/2addr p1, v0

    .line 810
    aget-wide p0, p0, p1

    and-long/2addr p0, v1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 622
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_13

    .line 624
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    new-array v1, v1, [J

    aput-wide v3, v1, v0

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object p0

    .line 627
    :cond_13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 628
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object p0

    .line 629
    aget-wide v1, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 630
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method public blacklist addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V
    .registers 6

    .line 709
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    add-int v1, v0, p2

    .line 716
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v1, v2, :cond_14

    .line 718
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 721
    :cond_14
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v1, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 2176
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method blacklist copyTo([JI)V
    .registers 5

    .line 379
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public blacklist degree()I
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    :cond_3
    if-nez v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 458
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    shl-int/lit8 p0, v0, 0x6

    .line 462
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v0

    add-int/2addr p0, v0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 2139
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2143
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 2144
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2145
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    if-eq v2, v0, :cond_13

    return v1

    :cond_13
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_26

    .line 2151
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v3, v2

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v5, v5, v2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getUsedLength()I
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result p0

    return p0
.end method

.method public blacklist getUsedLengthFrom(I)I
    .registers 8

    .line 419
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 420
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_c

    return v1

    .line 428
    :cond_c
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    :goto_14
    add-int/lit8 v0, p1, -0x1

    .line 430
    aget-wide v1, p0, v0

    cmp-long v1, v1, v4

    if-nez v1, :cond_1e

    move p1, v0

    goto :goto_14

    :cond_1e
    return p1

    :cond_1f
    :goto_1f
    add-int/lit8 v0, p1, -0x1

    .line 438
    aget-wide v2, p0, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    return p1

    :cond_28
    if-gtz v0, :cond_2b

    return v1

    :cond_2b
    move p1, v0

    goto :goto_1f
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 2161
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    .line 2165
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v3, v2

    mul-int/lit8 v1, v1, 0x1f

    long-to-int v5, v3

    xor-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public blacklist isOne()Z
    .registers 8

    .line 384
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v0, 0x0

    .line 385
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x1

    move v2, v1

    .line 389
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_1d

    .line 391
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    return v1
.end method

.method public blacklist isZero()Z
    .registers 7

    .line 401
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v0, 0x0

    move v1, v0

    .line 402
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 404
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 13

    .line 2062
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return-object p0

    .line 2073
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    add-int/lit8 v2, p1, 0x3f

    ushr-int/lit8 v2, v2, 0x6

    .line 2078
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2079
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    .line 2082
    new-instance p2, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p2, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2083
    iget-object v4, p2, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const-wide/16 v6, 0x1

    aput-wide v6, v4, v5

    .line 2084
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    const/4 v2, 0x2

    .line 2086
    new-array v6, v2, [I

    aput v0, v6, v5

    add-int/2addr p1, v1

    aput p1, v6, v1

    .line 2087
    filled-new-array {p0, v3}, [Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    .line 2089
    new-array p1, v2, [I

    aput v1, p1, v5

    aput v5, p1, v1

    .line 2090
    filled-new-array {p2, v4}, [Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p2

    .line 2093
    aget v0, v6, v1

    .line 2095
    aget v2, v6, v5

    sub-int v2, v0, v2

    :goto_4b
    if-gez v2, :cond_5b

    neg-int v2, v2

    .line 2102
    aput v0, v6, v1

    .line 2103
    aput v5, p1, v1

    rsub-int/lit8 v0, v1, 0x1

    .line 2105
    aget v1, v6, v0

    .line 2106
    aget v5, p1, v0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 2109
    :cond_5b
    aget-object v3, p0, v1

    rsub-int/lit8 v4, v1, 0x1

    aget-object v7, p0, v4

    aget v8, v6, v4

    invoke-direct {v3, v7, v8, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/org/bouncycastle/math/ec/LongArray;II)V

    .line 2111
    aget-object v3, p0, v1

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v3

    if-nez v3, :cond_71

    .line 2114
    aget-object p0, p2, v4

    return-object p0

    .line 2118
    :cond_71
    aget v7, p1, v4

    .line 2119
    aget-object v8, p2, v1

    aget-object v4, p2, v4

    invoke-direct {v8, v4, v7, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/org/bouncycastle/math/ec/LongArray;II)V

    add-int/2addr v7, v2

    if-le v7, v5, :cond_7f

    move v5, v7

    goto :goto_88

    :cond_7f
    if-ne v7, v5, :cond_88

    .line 2128
    aget-object v4, p2, v1

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v4

    move v5, v4

    :cond_88
    :goto_88
    sub-int v0, v3, v0

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_4b

    .line 2065
    :cond_8d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public blacklist modMultiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 24

    move/from16 v0, p2

    move-object/from16 v1, p3

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    if-nez v2, :cond_b

    return-object p0

    .line 1006
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    if-nez v3, :cond_12

    return-object p1

    :cond_12
    if-le v2, v3, :cond_1b

    move v5, v2

    move v4, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_21

    :cond_1b
    move v4, v2

    move v5, v3

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    :goto_21
    add-int/lit8 v6, v4, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    add-int/lit8 v7, v5, 0x3f

    ushr-int/lit8 v11, v7, 0x6

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v4, v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4a

    .line 1031
    iget-object v3, v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v8, v3, v7

    const-wide/16 v5, 0x1

    cmp-long v3, v8, v5

    if-nez v3, :cond_3d

    return-object v2

    .line 1040
    :cond_3d
    new-array v12, v4, [J

    .line 1041
    iget-object v10, v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1046
    invoke-static {v12, v7, v4, v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    :cond_4a
    add-int/lit8 v5, v5, 0x46

    ushr-int/lit8 v13, v5, 0x6

    const/16 v5, 0x10

    .line 1057
    new-array v9, v5, [I

    shl-int/lit8 v10, v13, 0x4

    .line 1062
    new-array v12, v10, [J

    .line 1064
    aput v13, v9, v8

    .line 1065
    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v2, v7, v12, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    move v8, v13

    :goto_5f
    if-ge v2, v5, :cond_8a

    add-int v15, v8, v13

    .line 1068
    aput v15, v9, v2

    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_76

    move/from16 v16, v13

    ushr-int/lit8 v13, v15, 0x1

    const/16 v17, 0x1

    move-object v14, v12

    .line 1071
    invoke-static/range {v12 .. v17}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v13, v16

    goto :goto_86

    :cond_76
    move/from16 v16, v13

    move/from16 v17, v15

    sub-int v15, v17, v16

    move-object v14, v12

    move-object/from16 v16, v12

    move/from16 v18, v13

    .line 1075
    invoke-static/range {v12 .. v18}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v15, v17

    :goto_86
    add-int/lit8 v2, v2, 0x1

    move v8, v15

    goto :goto_5f

    .line 1082
    :cond_8a
    new-array v2, v10, [J

    const/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v10

    move-object v14, v12

    .line 1083
    invoke-static/range {v14 .. v19}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1086
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    shl-int/lit8 v3, v4, 0x3

    .line 1087
    new-array v12, v3, [J

    move v5, v7

    :goto_a0
    if-ge v5, v6, :cond_d5

    .line 1097
    aget-wide v10, v2, v5

    move/from16 v18, v13

    move v13, v5

    :goto_a7
    long-to-int v8, v10

    and-int/lit8 v8, v8, 0xf

    const/4 v15, 0x4

    move/from16 p1, v8

    ushr-long v7, v10, v15

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0xf

    .line 1104
    aget v15, v9, p1

    aget v17, v9, v7

    invoke-static/range {v12 .. v18}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    move-object v7, v12

    move v8, v13

    move-object v12, v14

    move/from16 v13, v18

    const/16 v14, 0x8

    ushr-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_cd

    add-int/lit8 v5, v5, 0x1

    move-object v14, v12

    move-object v12, v7

    const/4 v7, 0x0

    goto :goto_a0

    :cond_cd
    add-int/2addr v8, v4

    move-object v14, v12

    move/from16 v18, v13

    move-object v12, v7

    move v13, v8

    const/4 v7, 0x0

    goto :goto_a7

    :cond_d5
    move-object v7, v12

    :goto_d6
    sub-int v15, v3, v4

    if-eqz v15, :cond_e7

    sub-int v13, v15, v4

    const/16 v17, 0x8

    move-object v14, v7

    move/from16 v16, v4

    move-object v12, v7

    .line 1118
    invoke-static/range {v12 .. v17}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move v3, v15

    goto :goto_d6

    :cond_e7
    move v2, v4

    move-object v12, v7

    const/4 v3, 0x0

    .line 1125
    invoke-static {v12, v3, v2, v0, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist modSquare(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 12

    .line 1667
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    shl-int/lit8 v0, v0, 0x1

    .line 1674
    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_2b

    .line 1679
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v3, 0x1

    long-to-int v7, v4

    .line 1680
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v1, v3

    add-int/lit8 v3, v3, 0x2

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    long-to-int v4, v4

    .line 1681
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, v1, v6

    goto :goto_d

    .line 1684
    :cond_2b
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p0
.end method

.method public blacklist modSquareN(II[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 8

    .line 1689
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    add-int/lit8 v1, p2, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x1

    .line 1696
    new-array v2, v1, [J

    .line 1697
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_15
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_21

    .line 1701
    invoke-static {v2, v0, p2, p3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    .line 1702
    invoke-static {v2, v3, v1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_15

    .line 1705
    :cond_21
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 26

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 1362
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    if-nez v1, :cond_e

    return-object p1

    :cond_e
    if-le v0, v1, :cond_17

    move v3, v0

    move v2, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1d

    :cond_17
    move v2, v0

    move v3, v1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :goto_1d
    add-int/lit8 v4, v2, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v3, 0x3f

    ushr-int/lit8 v9, v5, 0x6

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3e

    ushr-int/lit8 v14, v2, 0x6

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_47

    .line 1387
    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v1, v2

    const-wide/16 v3, 0x1

    cmp-long v1, v6, v3

    if-nez v1, :cond_39

    return-object v0

    .line 1396
    :cond_39
    new-array v10, v14, [J

    .line 1397
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1403
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, v10, v2, v14}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0

    :cond_47
    add-int/lit8 v3, v3, 0x46

    ushr-int/lit8 v3, v3, 0x6

    const/16 v6, 0x10

    .line 1414
    new-array v7, v6, [I

    shl-int/lit8 v8, v3, 0x4

    .line 1419
    new-array v15, v8, [J

    .line 1421
    aput v3, v7, v5

    .line 1422
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v2, v15, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    move v5, v3

    :goto_5c
    if-ge v0, v6, :cond_8c

    add-int v18, v5, v3

    .line 1425
    aput v18, v7, v0

    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_74

    ushr-int/lit8 v16, v18, 0x1

    const/16 v20, 0x1

    move-object/from16 v17, v15

    move/from16 v19, v3

    .line 1428
    invoke-static/range {v15 .. v20}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v21, v19

    goto :goto_85

    :cond_74
    move/from16 v16, v3

    move/from16 v20, v18

    sub-int v18, v20, v16

    move-object/from16 v17, v15

    move-object/from16 v19, v15

    move/from16 v21, v16

    .line 1432
    invoke-static/range {v15 .. v21}, Lcom/android/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v18, v20

    :goto_85
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v18

    move/from16 v3, v21

    goto :goto_5c

    :cond_8c
    move/from16 v21, v3

    .line 1439
    new-array v0, v8, [J

    const/16 v18, 0x0

    const/16 v20, 0x4

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v19, v8

    .line 1440
    invoke-static/range {v15 .. v20}, Lcom/android/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1443
    iget-object v0, v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    shl-int/lit8 v1, v14, 0x3

    .line 1444
    new-array v10, v1, [J

    move v3, v2

    :goto_a4
    if-ge v3, v4, :cond_db

    .line 1454
    aget-wide v5, v0, v3

    move/from16 v16, v3

    :goto_aa
    long-to-int v8, v5

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x4

    ushr-long v11, v5, v9

    long-to-int v9, v11

    and-int/lit8 v9, v9, 0xf

    .line 1461
    aget v18, v7, v8

    aget v20, v7, v9

    move-object/from16 v19, v17

    move-object/from16 v17, v15

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    move/from16 v8, v16

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move/from16 v16, v21

    const/16 v9, 0x8

    ushr-long/2addr v5, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-nez v9, :cond_d5

    add-int/lit8 v3, v3, 0x1

    move/from16 v21, v16

    goto :goto_a4

    :cond_d5
    add-int/2addr v8, v14

    move/from16 v21, v16

    move/from16 v16, v8

    goto :goto_aa

    :cond_db
    :goto_db
    sub-int v13, v1, v14

    if-eqz v13, :cond_e9

    sub-int v11, v13, v14

    const/16 v15, 0x8

    move-object v12, v10

    .line 1475
    invoke-static/range {v10 .. v15}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move v1, v13

    goto :goto_db

    .line 1483
    :cond_e9
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, v10, v2, v14}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public blacklist reduce(I[I)V
    .registers 6

    .line 1488
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1489
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result p1

    .line 1490
    array-length p2, v0

    if-ge p1, p2, :cond_12

    .line 1492
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1493
    invoke-static {v0, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    return-void
.end method

.method public blacklist square(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;
    .registers 10

    .line 1710
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result p1

    if-nez p1, :cond_7

    return-object p0

    :cond_7
    shl-int/lit8 p1, p1, 0x1

    .line 1717
    new-array p2, p1, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, p1, :cond_2b

    .line 1722
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v3, v1, 0x1

    aget-wide v2, v2, v3

    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    .line 1723
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v5

    aput-wide v5, p2, v1

    add-int/lit8 v1, v1, 0x2

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    .line 1724
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    aput-wide v2, p2, v4

    goto :goto_d

    .line 1727
    :cond_2b
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {p0, p2, v0, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object p0
.end method

.method public blacklist testBitZero()Z
    .registers 7

    .line 800
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_13

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 15

    .line 543
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_9

    .line 546
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 549
    :cond_9
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v1, v2

    const/16 v1, 0x8

    .line 550
    new-array v5, v1, [B

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    move v10, v9

    :goto_18
    const/4 v11, 0x1

    if-ltz v8, :cond_2e

    mul-int/lit8 v12, v8, 0x8

    ushr-long v12, v3, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    if-nez v10, :cond_25

    if-eqz v12, :cond_2b

    :cond_25
    add-int/lit8 v10, v9, 0x1

    .line 559
    aput-byte v12, v5, v9

    move v9, v10

    move v10, v11

    :cond_2b
    add-int/lit8 v8, v8, -0x1

    goto :goto_18

    :cond_2e
    mul-int/2addr v2, v1

    add-int/2addr v2, v9

    .line 564
    new-array v1, v2, [B

    :goto_32
    if-ge v7, v9, :cond_3b

    .line 567
    aget-byte v2, v5, v7

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3b
    add-int/lit8 v0, v0, -0x2

    :goto_3d
    if-ltz v0, :cond_57

    .line 573
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v2, v0

    move v4, v6

    :goto_44
    if-ltz v4, :cond_54

    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v7, v4, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 576
    aput-byte v7, v1, v9

    add-int/lit8 v4, v4, -0x1

    move v9, v5

    goto :goto_44

    :cond_54
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 579
    :cond_57
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2181
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    if-nez v0, :cond_9

    .line 2184
    const-string p0, "0"

    return-object p0

    .line 2187
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_18
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_39

    .line 2190
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_35

    .line 2196
    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2199
    :cond_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18

    .line 2201
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
