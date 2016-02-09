.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# static fields
.field private static final AT0:D = 0.3333333333333293

.field private static final AT1:D = -0.19999999999876483

.field private static final AT10:D = 0.016285820115365782

.field private static final AT2:D = 0.14285714272503466

.field private static final AT3:D = -0.11111110405462356

.field private static final AT4:D = 0.09090887133436507

.field private static final AT5:D = -0.0769187620504483

.field private static final AT6:D = 0.06661073137387531

.field private static final AT7:D = -0.058335701337905735

.field private static final AT8:D = 0.049768779946159324

.field private static final AT9:D = -0.036531572744216916

.field private static final ATANHI:[D

.field private static final ATANLO:[D

.field private static final B1:I = 0x2a9f7893

.field private static final B2:I = 0x297f7893

.field private static final C:D = 0.5428571428571428

.field private static final CBRTE:D = 1.4142857142857144

.field private static final D:D = -0.7053061224489796

.field public static final E:D = 2.718281828459045

.field private static final F:D = 1.6071428571428572

.field private static final G:D = 0.35714285714285715

.field private static final HUGE:D = 1.0E300

.field private static final INVLN2:D = 1.4426950408889634

.field private static final IVLN10:D = 0.4342944819032518

.field private static final LG1:D = 0.6666666666666735

.field private static final LG2:D = 0.3999999999940942

.field private static final LG3:D = 0.2857142874366239

.field private static final LG4:D = 0.22222198432149784

.field private static final LG5:D = 0.1818357216161805

.field private static final LG6:D = 0.15313837699209373

.field private static final LG7:D = 0.14798198605116586

.field private static final LN2_HI:D = 0.6931471803691238

.field private static final LN2_LO:D = 1.9082149292705877E-10

.field private static final LOG10_2HI:D = 0.30102999566361177

.field private static final LOG10_2LO:D = 3.694239077158931E-13

.field private static final LP1:D = 0.6666666666666735

.field private static final LP2:D = 0.3999999999940942

.field private static final LP3:D = 0.2857142874366239

.field private static final LP4:D = 0.22222198432149784

.field private static final LP5:D = 0.1818357216161805

.field private static final LP6:D = 0.15313837699209373

.field private static final LP7:D = 0.14798198605116586

.field private static final ONEBITS:J

.field private static final O_THRESHOLD:D = 709.782712893384

.field private static final P1:D = 0.16666666666666602

.field private static final P2:D = -0.0027777777777015593

.field private static final P3:D = 6.613756321437934E-5

.field private static final P4:D = -1.6533902205465252E-6

.field private static final P5:D = 4.1381367970572385E-8

.field public static final PI:D = 3.141592653589793

.field private static final PIO2_HI:D = 1.5707963267948966

.field private static final PIO2_LO:D = 6.123233995736766E-17

.field private static final PIO4_HI:D = 0.7853981633974483

.field private static final PI_LO:D = 1.2246467991473532E-16

.field private static final PI_O_2:D = 1.5707963267948966

.field private static final PI_O_4:D = 0.7853981633974483

.field private static final PS0:D = 0.16666666666666666

.field private static final PS1:D = -0.3255658186224009

.field private static final PS2:D = 0.20121253213486293

.field private static final PS3:D = -0.04005553450067941

.field private static final PS4:D = 7.915349942898145E-4

.field private static final PS5:D = 3.479331075960212E-5

.field private static final Q1:D = -0.03333333333333313

.field private static final Q2:D = 0.0015873015872548146

.field private static final Q3:D = -7.93650757867488E-5

.field private static final Q4:D = 4.008217827329362E-6

.field private static final Q5:D = -2.0109921818362437E-7

.field private static final QS1:D = -2.403394911734414

.field private static final QS2:D = 2.0209457602335057

.field private static final QS3:D = -0.6882839716054533

.field private static final QS4:D = 0.07703815055590194

.field private static final TINY:D = 1.0E-300

.field private static final TWO54:D = 1.8014398509481984E16

.field private static final TWOM1000:D = 9.332636185032189E-302

.field private static final TWOM54:D = 5.551115123125783E-17

.field private static final TWON24:D = 5.9604644775390625E-8

.field private static final U_THRESHOLD:D = -745.1332191019411

.field private static final shuge:D = 1.0E307


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x4

    #@1
    .line 263
    new-array v0, v1, [D

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Ljava/lang/StrictMath;->ATANHI:[D

    #@8
    .line 266
    new-array v0, v1, [D

    #@a
    fill-array-data v0, :array_1

    #@d
    sput-object v0, Ljava/lang/StrictMath;->ATANLO:[D

    #@f
    .line 605
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@11
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@14
    move-result-wide v0

    #@15
    .line 606
    const-wide v2, 0xffffffffL

    #@1a
    .line 605
    and-long/2addr v0, v2

    #@1b
    sput-wide v0, Ljava/lang/StrictMath;->ONEBITS:J

    #@1d
    .line 49
    return-void

    #@1e
    .line 263
    :array_0
    .array-data 8
        0x3fddac670561bb4fL    # 0.4636476090008061
        0x3fe921fb54442d18L    # 0.7853981633974483
        0x3fef730bd281f69bL    # 0.982793723247329
        0x3ff921fb54442d18L    # 1.5707963267948966
    .end array-data

    #@32
    .line 266
    :array_1
    .array-data 8
        0x3c7a2b7f222f65e2L
        0x3c81a62633145c07L    # 3.061616997868383E-17
        0x3c7007887af0cbbdL    # 1.3903311031230998E-17
        0x3c91a62633145c07L    # 6.123233995736766E-17
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 94
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static abs(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 104
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "l"    # J

    #@0
    .prologue
    .line 114
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static acos(D)D
    .locals 26
    .param p0, "x"    # D

    #@0
    .prologue
    .line 150
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v2

    #@4
    .line 151
    .local v2, "bits":J
    const/16 v22, 0x20

    #@6
    ushr-long v22, v2, v22

    #@8
    move-wide/from16 v0, v22

    #@a
    long-to-int v8, v0

    #@b
    .line 152
    .local v8, "hx":I
    const v22, 0x7fffffff

    #@e
    and-int v9, v8, v22

    #@10
    .line 153
    .local v9, "ix":I
    const/high16 v22, 0x3ff00000    # 1.875f

    #@12
    move/from16 v0, v22

    #@14
    if-lt v9, v0, :cond_2

    #@16
    .line 154
    const/high16 v22, 0x3ff00000    # 1.875f

    #@18
    sub-int v22, v9, v22

    #@1a
    long-to-int v0, v2

    #@1b
    move/from16 v23, v0

    #@1d
    or-int v22, v22, v23

    #@1f
    if-nez v22, :cond_1

    #@21
    .line 155
    if-lez v8, :cond_0

    #@23
    .line 156
    const-wide/16 v22, 0x0

    #@25
    return-wide v22

    #@26
    .line 158
    :cond_0
    const-wide v22, 0x400921fb54442d18L    # Math.PI

    #@2b
    return-wide v22

    #@2c
    .line 161
    :cond_1
    sub-double v22, p0, p0

    #@2e
    sub-double v24, p0, p0

    #@30
    div-double v22, v22, v24

    #@32
    return-wide v22

    #@33
    .line 164
    :cond_2
    const/high16 v22, 0x3fe00000    # 1.75f

    #@35
    move/from16 v0, v22

    #@37
    if-ge v9, v0, :cond_4

    #@39
    .line 165
    const/high16 v22, 0x3c600000    # 0.013671875f

    #@3b
    move/from16 v0, v22

    #@3d
    if-gt v9, v0, :cond_3

    #@3f
    .line 166
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@44
    return-wide v22

    #@45
    .line 169
    :cond_3
    mul-double v20, p0, p0

    #@47
    .line 171
    .local v20, "z":D
    const-wide v22, 0x3f023de10dfdf709L    # 3.479331075960212E-5

    #@4c
    mul-double v22, v22, v20

    #@4e
    const-wide v24, 0x3f49efe07501b288L    # 7.915349942898145E-4

    #@53
    add-double v22, v22, v24

    #@55
    mul-double v22, v22, v20

    #@57
    const-wide v24, -0x405b7dd74a9770c5L    # -0.04005553450067941

    #@5c
    add-double v22, v22, v24

    #@5e
    mul-double v22, v22, v20

    #@60
    const-wide v24, 0x3fc9c1550e884455L    # 0.20121253213486293

    #@65
    add-double v22, v22, v24

    #@67
    mul-double v22, v22, v20

    #@69
    const-wide v24, -0x402b29edfc149083L    # -0.3255658186224009

    #@6e
    add-double v22, v22, v24

    #@70
    .line 170
    mul-double v22, v22, v20

    #@72
    const-wide v24, 0x3fc5555555555555L    # 0.16666666666666666

    #@77
    add-double v22, v22, v24

    #@79
    mul-double v10, v20, v22

    #@7b
    .line 172
    .local v10, "p":D
    const-wide v22, 0x3fb3b8c5b12e9282L    # 0.07703815055590194

    #@80
    mul-double v22, v22, v20

    #@82
    const-wide v24, -0x4019f993e472fea7L    # -0.6882839716054533

    #@87
    add-double v22, v22, v24

    #@89
    mul-double v22, v22, v20

    #@8b
    const-wide v24, 0x40002ae59c598ac8L    # 2.0209457602335057

    #@90
    add-double v22, v22, v24

    #@92
    mul-double v22, v22, v20

    #@94
    const-wide v24, -0x3ffcc5d8e375d2b5L    # -2.403394911734414

    #@99
    add-double v22, v22, v24

    #@9b
    mul-double v22, v22, v20

    #@9d
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@9f
    add-double v12, v24, v22

    #@a1
    .line 173
    .local v12, "q":D
    div-double v14, v10, v12

    #@a3
    .line 174
    .local v14, "r":D
    mul-double v22, p0, v14

    #@a5
    const-wide v24, 0x3c91a62633145c07L    # 6.123233995736766E-17

    #@aa
    sub-double v22, v24, v22

    #@ac
    sub-double v22, p0, v22

    #@ae
    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@b3
    sub-double v22, v24, v22

    #@b5
    return-wide v22

    #@b6
    .line 175
    .end local v10    # "p":D
    .end local v12    # "q":D
    .end local v14    # "r":D
    .end local v20    # "z":D
    :cond_4
    if-gez v8, :cond_5

    #@b8
    .line 176
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@ba
    add-double v22, v22, p0

    #@bc
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    #@be
    mul-double v20, v22, v24

    #@c0
    .line 178
    .restart local v20    # "z":D
    const-wide v22, 0x3f023de10dfdf709L    # 3.479331075960212E-5

    #@c5
    mul-double v22, v22, v20

    #@c7
    const-wide v24, 0x3f49efe07501b288L    # 7.915349942898145E-4

    #@cc
    add-double v22, v22, v24

    #@ce
    mul-double v22, v22, v20

    #@d0
    const-wide v24, -0x405b7dd74a9770c5L    # -0.04005553450067941

    #@d5
    add-double v22, v22, v24

    #@d7
    mul-double v22, v22, v20

    #@d9
    const-wide v24, 0x3fc9c1550e884455L    # 0.20121253213486293

    #@de
    add-double v22, v22, v24

    #@e0
    mul-double v22, v22, v20

    #@e2
    const-wide v24, -0x402b29edfc149083L    # -0.3255658186224009

    #@e7
    add-double v22, v22, v24

    #@e9
    .line 177
    mul-double v22, v22, v20

    #@eb
    const-wide v24, 0x3fc5555555555555L    # 0.16666666666666666

    #@f0
    add-double v22, v22, v24

    #@f2
    mul-double v10, v20, v22

    #@f4
    .line 179
    .restart local v10    # "p":D
    const-wide v22, 0x3fb3b8c5b12e9282L    # 0.07703815055590194

    #@f9
    mul-double v22, v22, v20

    #@fb
    const-wide v24, -0x4019f993e472fea7L    # -0.6882839716054533

    #@100
    add-double v22, v22, v24

    #@102
    mul-double v22, v22, v20

    #@104
    const-wide v24, 0x40002ae59c598ac8L    # 2.0209457602335057

    #@109
    add-double v22, v22, v24

    #@10b
    mul-double v22, v22, v20

    #@10d
    const-wide v24, -0x3ffcc5d8e375d2b5L    # -2.403394911734414

    #@112
    add-double v22, v22, v24

    #@114
    mul-double v22, v22, v20

    #@116
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@118
    add-double v12, v24, v22

    #@11a
    .line 180
    .restart local v12    # "q":D
    invoke-static/range {v20 .. v21}, Ljava/lang/StrictMath;->sqrt(D)D

    #@11d
    move-result-wide v16

    #@11e
    .line 181
    .local v16, "s":D
    div-double v14, v10, v12

    #@120
    .line 182
    .restart local v14    # "r":D
    mul-double v22, v14, v16

    #@122
    const-wide v24, 0x3c91a62633145c07L    # 6.123233995736766E-17

    #@127
    sub-double v18, v22, v24

    #@129
    .line 183
    .local v18, "w":D
    add-double v22, v16, v18

    #@12b
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@12d
    mul-double v22, v22, v24

    #@12f
    const-wide v24, 0x400921fb54442d18L    # Math.PI

    #@134
    sub-double v22, v24, v22

    #@136
    return-wide v22

    #@137
    .line 185
    .end local v10    # "p":D
    .end local v12    # "q":D
    .end local v14    # "r":D
    .end local v16    # "s":D
    .end local v18    # "w":D
    .end local v20    # "z":D
    :cond_5
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@139
    sub-double v22, v22, p0

    #@13b
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    #@13d
    mul-double v20, v22, v24

    #@13f
    .line 186
    .restart local v20    # "z":D
    invoke-static/range {v20 .. v21}, Ljava/lang/StrictMath;->sqrt(D)D

    #@142
    move-result-wide v16

    #@143
    .line 187
    .restart local v16    # "s":D
    move-wide/from16 v6, v16

    #@145
    .line 189
    .local v6, "df":D
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@148
    move-result-wide v22

    #@149
    const-wide v24, -0x100000000L

    #@14e
    and-long v22, v22, v24

    #@150
    .line 188
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@153
    move-result-wide v6

    #@154
    .line 190
    mul-double v22, v6, v6

    #@156
    sub-double v22, v20, v22

    #@158
    add-double v24, v16, v6

    #@15a
    div-double v4, v22, v24

    #@15c
    .line 192
    .local v4, "c":D
    const-wide v22, 0x3f023de10dfdf709L    # 3.479331075960212E-5

    #@161
    mul-double v22, v22, v20

    #@163
    const-wide v24, 0x3f49efe07501b288L    # 7.915349942898145E-4

    #@168
    add-double v22, v22, v24

    #@16a
    mul-double v22, v22, v20

    #@16c
    const-wide v24, -0x405b7dd74a9770c5L    # -0.04005553450067941

    #@171
    add-double v22, v22, v24

    #@173
    mul-double v22, v22, v20

    #@175
    const-wide v24, 0x3fc9c1550e884455L    # 0.20121253213486293

    #@17a
    add-double v22, v22, v24

    #@17c
    mul-double v22, v22, v20

    #@17e
    const-wide v24, -0x402b29edfc149083L    # -0.3255658186224009

    #@183
    add-double v22, v22, v24

    #@185
    .line 191
    mul-double v22, v22, v20

    #@187
    const-wide v24, 0x3fc5555555555555L    # 0.16666666666666666

    #@18c
    add-double v22, v22, v24

    #@18e
    mul-double v10, v20, v22

    #@190
    .line 193
    .restart local v10    # "p":D
    const-wide v22, 0x3fb3b8c5b12e9282L    # 0.07703815055590194

    #@195
    mul-double v22, v22, v20

    #@197
    const-wide v24, -0x4019f993e472fea7L    # -0.6882839716054533

    #@19c
    add-double v22, v22, v24

    #@19e
    mul-double v22, v22, v20

    #@1a0
    const-wide v24, 0x40002ae59c598ac8L    # 2.0209457602335057

    #@1a5
    add-double v22, v22, v24

    #@1a7
    mul-double v22, v22, v20

    #@1a9
    const-wide v24, -0x3ffcc5d8e375d2b5L    # -2.403394911734414

    #@1ae
    add-double v22, v22, v24

    #@1b0
    mul-double v22, v22, v20

    #@1b2
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@1b4
    add-double v12, v24, v22

    #@1b6
    .line 194
    .restart local v12    # "q":D
    div-double v14, v10, v12

    #@1b8
    .line 195
    .restart local v14    # "r":D
    mul-double v22, v14, v16

    #@1ba
    add-double v18, v22, v4

    #@1bc
    .line 196
    .restart local v18    # "w":D
    add-double v22, v6, v18

    #@1be
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@1c0
    mul-double v22, v22, v24

    #@1c2
    return-wide v22
.end method

.method public static asin(D)D
    .locals 26
    .param p0, "x"    # D

    #@0
    .prologue
    .line 218
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v2

    #@4
    .line 219
    .local v2, "bits":J
    const/16 v20, 0x20

    #@6
    ushr-long v20, v2, v20

    #@8
    move-wide/from16 v0, v20

    #@a
    long-to-int v6, v0

    #@b
    .line 220
    .local v6, "hx":I
    const v20, 0x7fffffff

    #@e
    and-int v7, v6, v20

    #@10
    .line 221
    .local v7, "ix":I
    const/high16 v20, 0x3ff00000    # 1.875f

    #@12
    move/from16 v0, v20

    #@14
    if-lt v7, v0, :cond_1

    #@16
    .line 222
    const/high16 v20, 0x3ff00000    # 1.875f

    #@18
    sub-int v20, v7, v20

    #@1a
    long-to-int v0, v2

    #@1b
    move/from16 v21, v0

    #@1d
    or-int v20, v20, v21

    #@1f
    if-nez v20, :cond_0

    #@21
    .line 224
    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@26
    mul-double v20, v20, p0

    #@28
    const-wide v22, 0x3c91a62633145c07L    # 6.123233995736766E-17

    #@2d
    mul-double v22, v22, p0

    #@2f
    add-double v20, v20, v22

    #@31
    return-wide v20

    #@32
    .line 226
    :cond_0
    sub-double v20, p0, p0

    #@34
    sub-double v22, p0, p0

    #@36
    div-double v20, v20, v22

    #@38
    return-wide v20

    #@39
    .line 227
    :cond_1
    const/high16 v20, 0x3fe00000    # 1.75f

    #@3b
    move/from16 v0, v20

    #@3d
    if-ge v7, v0, :cond_3

    #@3f
    .line 228
    const/high16 v20, 0x3e400000    # 0.1875f

    #@41
    move/from16 v0, v20

    #@43
    if-ge v7, v0, :cond_2

    #@45
    .line 229
    const-wide v20, 0x7e37e43c8800759cL    # 1.0E300

    #@4a
    add-double v20, v20, p0

    #@4c
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@4e
    cmpl-double v20, v20, v22

    #@50
    if-lez v20, :cond_3

    #@52
    .line 230
    return-wide p0

    #@53
    .line 233
    :cond_2
    mul-double v16, p0, p0

    #@55
    .line 235
    .local v16, "t":D
    const-wide v20, 0x3f023de10dfdf709L    # 3.479331075960212E-5

    #@5a
    mul-double v20, v20, v16

    #@5c
    const-wide v22, 0x3f49efe07501b288L    # 7.915349942898145E-4

    #@61
    add-double v20, v20, v22

    #@63
    mul-double v20, v20, v16

    #@65
    const-wide v22, -0x405b7dd74a9770c5L    # -0.04005553450067941

    #@6a
    add-double v20, v20, v22

    #@6c
    mul-double v20, v20, v16

    #@6e
    const-wide v22, 0x3fc9c1550e884455L    # 0.20121253213486293

    #@73
    add-double v20, v20, v22

    #@75
    mul-double v20, v20, v16

    #@77
    const-wide v22, -0x402b29edfc149083L    # -0.3255658186224009

    #@7c
    add-double v20, v20, v22

    #@7e
    .line 234
    mul-double v20, v20, v16

    #@80
    const-wide v22, 0x3fc5555555555555L    # 0.16666666666666666

    #@85
    add-double v20, v20, v22

    #@87
    mul-double v8, v16, v20

    #@89
    .line 236
    .local v8, "p":D
    const-wide v20, 0x3fb3b8c5b12e9282L    # 0.07703815055590194

    #@8e
    mul-double v20, v20, v16

    #@90
    const-wide v22, -0x4019f993e472fea7L    # -0.6882839716054533

    #@95
    add-double v20, v20, v22

    #@97
    mul-double v20, v20, v16

    #@99
    const-wide v22, 0x40002ae59c598ac8L    # 2.0209457602335057

    #@9e
    add-double v20, v20, v22

    #@a0
    mul-double v20, v20, v16

    #@a2
    const-wide v22, -0x3ffcc5d8e375d2b5L    # -2.403394911734414

    #@a7
    add-double v20, v20, v22

    #@a9
    mul-double v20, v20, v16

    #@ab
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@ad
    add-double v10, v22, v20

    #@af
    .line 237
    .local v10, "q":D
    div-double v18, v8, v10

    #@b1
    .line 238
    .local v18, "w":D
    mul-double v20, p0, v18

    #@b3
    add-double v20, v20, p0

    #@b5
    return-wide v20

    #@b6
    .line 242
    .end local v8    # "p":D
    .end local v10    # "q":D
    .end local v16    # "t":D
    .end local v18    # "w":D
    :cond_3
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@b9
    move-result-wide v20

    #@ba
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@bc
    sub-double v18, v22, v20

    #@be
    .line 243
    .restart local v18    # "w":D
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    #@c0
    mul-double v16, v18, v20

    #@c2
    .line 244
    .restart local v16    # "t":D
    const-wide v20, 0x3f023de10dfdf709L    # 3.479331075960212E-5

    #@c7
    mul-double v20, v20, v16

    #@c9
    const-wide v22, 0x3f49efe07501b288L    # 7.915349942898145E-4

    #@ce
    add-double v20, v20, v22

    #@d0
    mul-double v20, v20, v16

    #@d2
    const-wide v22, -0x405b7dd74a9770c5L    # -0.04005553450067941

    #@d7
    add-double v20, v20, v22

    #@d9
    mul-double v20, v20, v16

    #@db
    const-wide v22, 0x3fc9c1550e884455L    # 0.20121253213486293

    #@e0
    add-double v20, v20, v22

    #@e2
    mul-double v20, v20, v16

    #@e4
    const-wide v22, -0x402b29edfc149083L    # -0.3255658186224009

    #@e9
    add-double v20, v20, v22

    #@eb
    mul-double v20, v20, v16

    #@ed
    const-wide v22, 0x3fc5555555555555L    # 0.16666666666666666

    #@f2
    add-double v20, v20, v22

    #@f4
    mul-double v8, v16, v20

    #@f6
    .line 245
    .restart local v8    # "p":D
    const-wide v20, 0x3fb3b8c5b12e9282L    # 0.07703815055590194

    #@fb
    mul-double v20, v20, v16

    #@fd
    const-wide v22, -0x4019f993e472fea7L    # -0.6882839716054533

    #@102
    add-double v20, v20, v22

    #@104
    mul-double v20, v20, v16

    #@106
    const-wide v22, 0x40002ae59c598ac8L    # 2.0209457602335057

    #@10b
    add-double v20, v20, v22

    #@10d
    mul-double v20, v20, v16

    #@10f
    const-wide v22, -0x3ffcc5d8e375d2b5L    # -2.403394911734414

    #@114
    add-double v20, v20, v22

    #@116
    mul-double v20, v20, v16

    #@118
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@11a
    add-double v10, v22, v20

    #@11c
    .line 246
    .restart local v10    # "q":D
    invoke-static/range {v16 .. v17}, Ljava/lang/StrictMath;->sqrt(D)D

    #@11f
    move-result-wide v14

    #@120
    .line 247
    .local v14, "s":D
    const v20, 0x3fef3333

    #@123
    move/from16 v0, v20

    #@125
    if-lt v7, v0, :cond_4

    #@127
    .line 248
    div-double v18, v8, v10

    #@129
    .line 249
    mul-double v20, v14, v18

    #@12b
    add-double v20, v20, v14

    #@12d
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    #@12f
    mul-double v20, v20, v22

    #@131
    const-wide v22, 0x3c91a62633145c07L    # 6.123233995736766E-17

    #@136
    sub-double v20, v20, v22

    #@138
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@13d
    sub-double v16, v22, v20

    #@13f
    .line 260
    :goto_0
    if-lez v6, :cond_5

    #@141
    .end local v16    # "t":D
    :goto_1
    return-wide v16

    #@142
    .line 251
    .restart local v16    # "t":D
    :cond_4
    move-wide/from16 v18, v14

    #@144
    .line 253
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@147
    move-result-wide v20

    #@148
    const-wide v22, -0x100000000L

    #@14d
    and-long v20, v20, v22

    #@14f
    .line 252
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@152
    move-result-wide v18

    #@153
    .line 254
    mul-double v20, v18, v18

    #@155
    sub-double v20, v16, v20

    #@157
    add-double v22, v14, v18

    #@159
    div-double v4, v20, v22

    #@15b
    .line 255
    .local v4, "c":D
    div-double v12, v8, v10

    #@15d
    .line 256
    .local v12, "r":D
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    #@15f
    mul-double v20, v20, v14

    #@161
    mul-double v20, v20, v12

    #@163
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    #@165
    mul-double v22, v22, v4

    #@167
    const-wide v24, 0x3c91a62633145c07L    # 6.123233995736766E-17

    #@16c
    sub-double v22, v24, v22

    #@16e
    sub-double v8, v20, v22

    #@170
    .line 257
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    #@172
    mul-double v20, v20, v18

    #@174
    const-wide v22, 0x3fe921fb54442d18L    # 0.7853981633974483

    #@179
    sub-double v10, v22, v20

    #@17b
    .line 258
    sub-double v20, v8, v10

    #@17d
    const-wide v22, 0x3fe921fb54442d18L    # 0.7853981633974483

    #@182
    sub-double v16, v22, v20

    #@184
    goto :goto_0

    #@185
    .line 260
    .end local v4    # "c":D
    .end local v12    # "r":D
    :cond_5
    move-wide/from16 v0, v16

    #@187
    neg-double v0, v0

    #@188
    move-wide/from16 v16, v0

    #@18a
    goto :goto_1
.end method

.method public static atan(D)D
    .locals 20
    .param p0, "x"    # D

    #@0
    .prologue
    .line 302
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 303
    .local v0, "bits":J
    const/16 v5, 0x20

    #@6
    ushr-long v14, v0, v5

    #@8
    long-to-int v2, v14

    #@9
    .line 304
    .local v2, "hx":I
    const v5, 0x7fffffff

    #@c
    and-int v4, v2, v5

    #@e
    .line 305
    .local v4, "ix":I
    const/high16 v5, 0x44100000    # 576.0f

    #@10
    if-lt v4, v5, :cond_3

    #@12
    .line 306
    const/high16 v5, 0x7ff00000

    #@14
    if-gt v4, v5, :cond_0

    #@16
    const/high16 v5, 0x7ff00000

    #@18
    if-ne v4, v5, :cond_1

    #@1a
    long-to-int v5, v0

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 307
    :cond_0
    add-double v14, p0, p0

    #@1f
    return-wide v14

    #@20
    .line 309
    :cond_1
    if-lez v2, :cond_2

    #@22
    .line 310
    sget-object v5, Ljava/lang/StrictMath;->ATANHI:[D

    #@24
    const/4 v14, 0x3

    #@25
    aget-wide v14, v5, v14

    #@27
    sget-object v5, Ljava/lang/StrictMath;->ATANLO:[D

    #@29
    const/16 v16, 0x3

    #@2b
    aget-wide v16, v5, v16

    #@2d
    add-double v14, v14, v16

    #@2f
    return-wide v14

    #@30
    .line 312
    :cond_2
    sget-object v5, Ljava/lang/StrictMath;->ATANHI:[D

    #@32
    const/4 v14, 0x3

    #@33
    aget-wide v14, v5, v14

    #@35
    neg-double v14, v14

    #@36
    sget-object v5, Ljava/lang/StrictMath;->ATANLO:[D

    #@38
    const/16 v16, 0x3

    #@3a
    aget-wide v16, v5, v16

    #@3c
    sub-double v14, v14, v16

    #@3e
    return-wide v14

    #@3f
    .line 315
    :cond_3
    const/high16 v5, 0x3fdc0000    # 1.71875f

    #@41
    if-ge v4, v5, :cond_5

    #@43
    .line 316
    const/high16 v5, 0x3e200000    # 0.15625f

    #@45
    if-ge v4, v5, :cond_4

    #@47
    .line 317
    const-wide v14, 0x7e37e43c8800759cL    # 1.0E300

    #@4c
    add-double v14, v14, p0

    #@4e
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@50
    cmpl-double v5, v14, v16

    #@52
    if-lez v5, :cond_4

    #@54
    .line 318
    return-wide p0

    #@55
    .line 321
    :cond_4
    const/4 v3, -0x1

    #@56
    .line 344
    .local v3, "id":I
    :goto_0
    mul-double v12, p0, p0

    #@58
    .line 345
    .local v12, "z":D
    mul-double v10, v12, v12

    #@5a
    .line 348
    .local v10, "w":D
    const-wide v14, 0x3f90ad3ae322da11L    # 0.016285820115365782

    #@5f
    mul-double/2addr v14, v10

    #@60
    const-wide v16, 0x3fa97b4b24760debL    # 0.049768779946159324

    #@65
    add-double v14, v14, v16

    #@67
    mul-double/2addr v14, v10

    #@68
    const-wide v16, 0x3fb10d66a0d03d51L    # 0.06661073137387531

    #@6d
    add-double v14, v14, v16

    #@6f
    mul-double/2addr v14, v10

    #@70
    const-wide v16, 0x3fb745cdc54c206eL    # 0.09090887133436507

    #@75
    add-double v14, v14, v16

    #@77
    .line 347
    mul-double/2addr v14, v10

    #@78
    const-wide v16, 0x3fc24924920083ffL    # 0.14285714272503466

    #@7d
    add-double v14, v14, v16

    #@7f
    mul-double/2addr v14, v10

    #@80
    const-wide v16, 0x3fd555555555550dL    # 0.3333333333333293

    #@85
    add-double v14, v14, v16

    #@87
    mul-double v6, v12, v14

    #@89
    .line 349
    .local v6, "s1":D
    const-wide v14, -0x405d4bbbd39593d1L    # -0.036531572744216916

    #@8e
    mul-double/2addr v14, v10

    #@8f
    const-wide v16, -0x405221d2ad210266L    # -0.058335701337905735

    #@94
    add-double v14, v14, v16

    #@96
    mul-double/2addr v14, v10

    #@97
    const-wide v16, -0x404c4f0d508b6593L    # -0.0769187620504483

    #@9c
    add-double v14, v14, v16

    #@9e
    mul-double/2addr v14, v10

    #@9f
    const-wide v16, -0x40438e3901dce98fL    # -0.11111110405462356

    #@a4
    add-double v14, v14, v16

    #@a6
    mul-double/2addr v14, v10

    #@a7
    const-wide v16, -0x403666666667143cL    # -0.19999999999876483

    #@ac
    add-double v14, v14, v16

    #@ae
    mul-double v8, v10, v14

    #@b0
    .line 350
    .local v8, "s2":D
    if-gez v3, :cond_9

    #@b2
    .line 351
    add-double v14, v6, v8

    #@b4
    mul-double v14, v14, p0

    #@b6
    sub-double v14, p0, v14

    #@b8
    return-wide v14

    #@b9
    .line 323
    .end local v3    # "id":I
    .end local v6    # "s1":D
    .end local v8    # "s2":D
    .end local v10    # "w":D
    .end local v12    # "z":D
    :cond_5
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@bc
    move-result-wide p0

    #@bd
    .line 324
    const/high16 v5, 0x3ff30000    # 1.8984375f

    #@bf
    if-ge v4, v5, :cond_7

    #@c1
    .line 325
    const/high16 v5, 0x3fe60000    # 1.796875f

    #@c3
    if-ge v4, v5, :cond_6

    #@c5
    .line 326
    const/4 v3, 0x0

    #@c6
    .line 327
    .restart local v3    # "id":I
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    #@c8
    mul-double v14, v14, p0

    #@ca
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@cc
    sub-double v14, v14, v16

    #@ce
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    #@d0
    add-double v16, v16, p0

    #@d2
    div-double p0, v14, v16

    #@d4
    goto :goto_0

    #@d5
    .line 329
    .end local v3    # "id":I
    :cond_6
    const/4 v3, 0x1

    #@d6
    .line 330
    .restart local v3    # "id":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    #@d8
    sub-double v14, p0, v14

    #@da
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@dc
    add-double v16, v16, p0

    #@de
    div-double p0, v14, v16

    #@e0
    goto/16 :goto_0

    #@e2
    .line 333
    .end local v3    # "id":I
    :cond_7
    const v5, 0x40038000

    #@e5
    if-ge v4, v5, :cond_8

    #@e7
    .line 334
    const/4 v3, 0x2

    #@e8
    .line 335
    .restart local v3    # "id":I
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    #@ea
    sub-double v14, p0, v14

    #@ec
    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    #@ee
    mul-double v16, v16, p0

    #@f0
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    #@f2
    add-double v16, v16, v18

    #@f4
    div-double p0, v14, v16

    #@f6
    goto/16 :goto_0

    #@f8
    .line 337
    .end local v3    # "id":I
    :cond_8
    const/4 v3, 0x3

    #@f9
    .line 338
    .restart local v3    # "id":I
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    #@fb
    div-double p0, v14, p0

    #@fd
    goto/16 :goto_0

    #@ff
    .line 353
    .restart local v6    # "s1":D
    .restart local v8    # "s2":D
    .restart local v10    # "w":D
    .restart local v12    # "z":D
    :cond_9
    sget-object v5, Ljava/lang/StrictMath;->ATANHI:[D

    #@101
    aget-wide v14, v5, v3

    #@103
    add-double v16, v6, v8

    #@105
    mul-double v16, v16, p0

    #@107
    sget-object v5, Ljava/lang/StrictMath;->ATANLO:[D

    #@109
    aget-wide v18, v5, v3

    #@10b
    sub-double v16, v16, v18

    #@10d
    sub-double v16, v16, p0

    #@10f
    sub-double v12, v14, v16

    #@111
    .line 354
    if-gez v2, :cond_a

    #@113
    neg-double v12, v12

    #@114
    .end local v12    # "z":D
    :cond_a
    return-wide v12
.end method

.method public static atan2(DD)D
    .locals 18
    .param p0, "y"    # D
    .param p2, "x"    # D

    #@0
    .prologue
    .line 404
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v10

    #@4
    .line 405
    .local v10, "yBits":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@7
    move-result-wide v8

    #@8
    .line 407
    .local v8, "xBits":J
    const/16 v14, 0x20

    #@a
    ushr-long v14, v8, v14

    #@c
    long-to-int v0, v14

    #@d
    .line 408
    .local v0, "hx":I
    const v14, 0x7fffffff

    #@10
    and-int v2, v0, v14

    #@12
    .line 409
    .local v2, "ix":I
    long-to-int v5, v8

    #@13
    .line 410
    .local v5, "lx":I
    const/16 v14, 0x20

    #@15
    ushr-long v14, v10, v14

    #@17
    long-to-int v1, v14

    #@18
    .line 411
    .local v1, "hy":I
    const v14, 0x7fffffff

    #@1b
    and-int v3, v1, v14

    #@1d
    .line 412
    .local v3, "iy":I
    long-to-int v6, v10

    #@1e
    .line 413
    .local v6, "ly":I
    neg-int v14, v5

    #@1f
    or-int/2addr v14, v5

    #@20
    shr-int/lit8 v14, v14, 0x1f

    #@22
    or-int/2addr v14, v2

    #@23
    const/high16 v15, 0x7ff00000

    #@25
    if-gt v14, v15, :cond_0

    #@27
    .line 414
    neg-int v14, v6

    #@28
    or-int/2addr v14, v6

    #@29
    shr-int/lit8 v14, v14, 0x1f

    #@2b
    or-int/2addr v14, v3

    #@2c
    const/high16 v15, 0x7ff00000

    #@2e
    if-le v14, v15, :cond_1

    #@30
    .line 415
    :cond_0
    add-double v14, p2, p0

    #@32
    return-wide v14

    #@33
    .line 417
    :cond_1
    const/high16 v14, 0x3ff00000    # 1.875f

    #@35
    sub-int v14, v0, v14

    #@37
    or-int/2addr v14, v5

    #@38
    if-nez v14, :cond_2

    #@3a
    .line 418
    invoke-static/range {p0 .. p1}, Ljava/lang/StrictMath;->atan(D)D

    #@3d
    move-result-wide v14

    #@3e
    return-wide v14

    #@3f
    .line 421
    :cond_2
    shr-int/lit8 v14, v1, 0x1f

    #@41
    and-int/lit8 v14, v14, 0x1

    #@43
    shr-int/lit8 v15, v0, 0x1e

    #@45
    and-int/lit8 v15, v15, 0x2

    #@47
    or-int v7, v14, v15

    #@49
    .line 424
    .local v7, "m":I
    or-int v14, v3, v6

    #@4b
    if-nez v14, :cond_3

    #@4d
    .line 425
    packed-switch v7, :pswitch_data_0

    #@50
    .line 436
    :cond_3
    or-int v14, v2, v5

    #@52
    if-nez v14, :cond_5

    #@54
    .line 437
    if-gez v1, :cond_4

    #@56
    const-wide v14, -0x4006de04abbbd2e8L    # -1.5707963267948966

    #@5b
    :goto_0
    return-wide v14

    #@5c
    .line 428
    :pswitch_0
    return-wide p0

    #@5d
    .line 430
    :pswitch_1
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    #@62
    return-wide v14

    #@63
    .line 432
    :pswitch_2
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    #@68
    return-wide v14

    #@69
    .line 437
    :cond_4
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@6e
    goto :goto_0

    #@6f
    .line 440
    :cond_5
    const/high16 v14, 0x7ff00000

    #@71
    if-ne v2, v14, :cond_6

    #@73
    .line 441
    const/high16 v14, 0x7ff00000

    #@75
    if-ne v3, v14, :cond_7

    #@77
    .line 442
    packed-switch v7, :pswitch_data_1

    #@7a
    .line 466
    :cond_6
    :goto_1
    const/high16 v14, 0x7ff00000

    #@7c
    if-ne v3, v14, :cond_9

    #@7e
    .line 467
    if-gez v1, :cond_8

    #@80
    const-wide v14, -0x4006de04abbbd2e8L    # -1.5707963267948966

    #@85
    :goto_2
    return-wide v14

    #@86
    .line 444
    :pswitch_3
    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    #@8b
    return-wide v14

    #@8c
    .line 446
    :pswitch_4
    const-wide v14, -0x4016de04abbbd2e8L    # -0.7853981633974483

    #@91
    return-wide v14

    #@92
    .line 448
    :pswitch_5
    const-wide v14, 0x4002d97c7f3321d2L    # 2.356194490192345

    #@97
    return-wide v14

    #@98
    .line 450
    :pswitch_6
    const-wide v14, -0x3ffd268380ccde2eL    # -2.356194490192345

    #@9d
    return-wide v14

    #@9e
    .line 453
    :cond_7
    packed-switch v7, :pswitch_data_2

    #@a1
    goto :goto_1

    #@a2
    .line 455
    :pswitch_7
    const-wide/16 v14, 0x0

    #@a4
    return-wide v14

    #@a5
    .line 457
    :pswitch_8
    const-wide/high16 v14, -0x8000000000000000L

    #@a7
    return-wide v14

    #@a8
    .line 459
    :pswitch_9
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    #@ad
    return-wide v14

    #@ae
    .line 461
    :pswitch_a
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    #@b3
    return-wide v14

    #@b4
    .line 467
    :cond_8
    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@b9
    goto :goto_2

    #@ba
    .line 470
    :cond_9
    sub-int v14, v3, v2

    #@bc
    shr-int/lit8 v4, v14, 0x14

    #@be
    .line 471
    .local v4, "k":I
    const/16 v14, 0x3c

    #@c0
    if-le v4, v14, :cond_a

    #@c2
    .line 472
    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@c7
    .line 479
    .local v12, "z":D
    :goto_3
    packed-switch v7, :pswitch_data_3

    #@ca
    .line 490
    const-wide v14, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    #@cf
    sub-double v14, v12, v14

    #@d1
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    #@d6
    sub-double v14, v14, v16

    #@d8
    return-wide v14

    #@d9
    .line 473
    .end local v12    # "z":D
    :cond_a
    if-gez v0, :cond_b

    #@db
    const/16 v14, -0x3c

    #@dd
    if-ge v4, v14, :cond_b

    #@df
    .line 474
    const-wide/16 v12, 0x0

    #@e1
    .line 473
    .restart local v12    # "z":D
    goto :goto_3

    #@e2
    .line 476
    .end local v12    # "z":D
    :cond_b
    div-double v14, p0, p2

    #@e4
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    #@e7
    move-result-wide v14

    #@e8
    invoke-static {v14, v15}, Ljava/lang/StrictMath;->atan(D)D

    #@eb
    move-result-wide v12

    #@ec
    .restart local v12    # "z":D
    goto :goto_3

    #@ed
    .line 481
    :pswitch_b
    return-wide v12

    #@ee
    .line 485
    :pswitch_c
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@f1
    move-result-wide v14

    #@f2
    const-wide/high16 v16, -0x8000000000000000L

    #@f4
    xor-long v14, v14, v16

    #@f6
    .line 484
    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@f9
    move-result-wide v12

    #@fa
    .line 486
    return-wide v12

    #@fb
    .line 488
    :pswitch_d
    const-wide v14, 0x3ca1a62633145c07L    # 1.2246467991473532E-16

    #@100
    sub-double v14, v12, v14

    #@102
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    #@107
    sub-double v14, v16, v14

    #@109
    return-wide v14

    #@10a
    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@116
    .line 442
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@122
    .line 453
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    #@12e
    .line 479
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static cbrt(D)D
    .locals 22
    .param p0, "x"    # D

    #@0
    .prologue
    .line 520
    const-wide/16 v18, 0x0

    #@2
    cmpg-double v18, p0, v18

    #@4
    if-gez v18, :cond_0

    #@6
    .line 521
    move-wide/from16 v0, p0

    #@8
    neg-double v0, v0

    #@9
    move-wide/from16 v18, v0

    #@b
    invoke-static/range {v18 .. v19}, Ljava/lang/StrictMath;->cbrt(D)D

    #@e
    move-result-wide v18

    #@f
    move-wide/from16 v0, v18

    #@11
    neg-double v0, v0

    #@12
    move-wide/from16 v18, v0

    #@14
    return-wide v18

    #@15
    .line 526
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@18
    move-result-wide v2

    #@19
    .line 528
    .local v2, "bits":J
    const/16 v18, 0x20

    #@1b
    ushr-long v18, v2, v18

    #@1d
    move-wide/from16 v0, v18

    #@1f
    long-to-int v4, v0

    #@20
    .line 529
    .local v4, "hx":I
    const/high16 v18, -0x80000000

    #@22
    and-int v5, v4, v18

    #@24
    .line 530
    .local v5, "sign":I
    xor-int/2addr v4, v5

    #@25
    .line 531
    const/high16 v18, 0x7ff00000

    #@27
    move/from16 v0, v18

    #@29
    if-lt v4, v0, :cond_1

    #@2b
    .line 532
    add-double v18, p0, p0

    #@2d
    return-wide v18

    #@2e
    .line 535
    :cond_1
    long-to-int v0, v2

    #@2f
    move/from16 v18, v0

    #@31
    or-int v18, v18, v4

    #@33
    if-nez v18, :cond_2

    #@35
    .line 536
    return-wide p0

    #@36
    .line 540
    :cond_2
    const-wide v18, 0xffffffffL

    #@3b
    and-long v2, v2, v18

    #@3d
    .line 541
    int-to-long v0, v4

    #@3e
    move-wide/from16 v18, v0

    #@40
    const/16 v20, 0x20

    #@42
    shl-long v18, v18, v20

    #@44
    or-long v2, v2, v18

    #@46
    .line 543
    const-wide/16 v18, 0x0

    #@48
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@4b
    move-result-wide v18

    #@4c
    const-wide v20, 0xffffffffL

    #@51
    and-long v12, v18, v20

    #@53
    .line 544
    .local v12, "tBits":J
    const-wide/16 v10, 0x0

    #@55
    .line 546
    .local v10, "t":D
    const/high16 v18, 0x100000

    #@57
    move/from16 v0, v18

    #@59
    if-ge v4, v0, :cond_3

    #@5b
    .line 548
    const-wide/high16 v18, 0x4350000000000000L    # 1.8014398509481984E16

    #@5d
    or-long v12, v12, v18

    #@5f
    .line 549
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@62
    move-result-wide v10

    #@63
    .line 550
    mul-double v10, v10, p0

    #@65
    .line 553
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@68
    move-result-wide v12

    #@69
    .line 554
    const/16 v18, 0x20

    #@6b
    shr-long v14, v12, v18

    #@6d
    .line 555
    .local v14, "tBitsHigh":J
    const-wide v18, 0xffffffffL

    #@72
    and-long v12, v12, v18

    #@74
    .line 556
    const-wide/16 v18, 0x3

    #@76
    div-long v18, v14, v18

    #@78
    const-wide/32 v20, 0x297f7893

    #@7b
    add-long v18, v18, v20

    #@7d
    const/16 v20, 0x20

    #@7f
    shl-long v18, v18, v20

    #@81
    or-long v12, v12, v18

    #@83
    .line 557
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@86
    move-result-wide v10

    #@87
    .line 566
    .end local v14    # "tBitsHigh":J
    :goto_0
    mul-double v18, v10, v10

    #@89
    div-double v6, v18, p0

    #@8b
    .line 567
    .local v6, "r":D
    mul-double v18, v6, v10

    #@8d
    const-wide v20, 0x3fe15f15f15f15f1L    # 0.5428571428571428

    #@92
    add-double v8, v20, v18

    #@94
    .line 568
    .local v8, "s":D
    const-wide v18, 0x3ff6a0ea0ea0ea0fL    # 1.4142857142857144

    #@99
    add-double v18, v18, v8

    #@9b
    const-wide v20, -0x40196e21dacd37ccL    # -0.7053061224489796

    #@a0
    div-double v20, v20, v8

    #@a2
    add-double v18, v18, v20

    #@a4
    const-wide v20, 0x3ff9b6db6db6db6eL    # 1.6071428571428572

    #@a9
    div-double v18, v20, v18

    #@ab
    const-wide v20, 0x3fd6db6db6db6db7L    # 0.35714285714285715

    #@b0
    add-double v18, v18, v20

    #@b2
    mul-double v10, v10, v18

    #@b4
    .line 571
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@b7
    move-result-wide v12

    #@b8
    .line 572
    const-wide v18, -0x100000000L

    #@bd
    and-long v12, v12, v18

    #@bf
    .line 573
    const-wide v18, 0x100000000L

    #@c4
    add-long v12, v12, v18

    #@c6
    .line 574
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@c9
    move-result-wide v10

    #@ca
    .line 577
    mul-double v8, v10, v10

    #@cc
    .line 578
    div-double v6, p0, v8

    #@ce
    .line 579
    add-double v16, v10, v10

    #@d0
    .line 580
    .local v16, "w":D
    sub-double v18, v6, v10

    #@d2
    add-double v20, v16, v6

    #@d4
    div-double v6, v18, v20

    #@d6
    .line 581
    mul-double v18, v10, v6

    #@d8
    add-double v10, v10, v18

    #@da
    .line 584
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@dd
    move-result-wide v12

    #@de
    .line 585
    int-to-long v0, v5

    #@df
    move-wide/from16 v18, v0

    #@e1
    const/16 v20, 0x20

    #@e3
    shl-long v18, v18, v20

    #@e5
    or-long v12, v12, v18

    #@e7
    .line 586
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@ea
    move-result-wide v18

    #@eb
    return-wide v18

    #@ec
    .line 561
    .end local v6    # "r":D
    .end local v8    # "s":D
    .end local v16    # "w":D
    :cond_3
    div-int/lit8 v18, v4, 0x3

    #@ee
    const v19, 0x2a9f7893

    #@f1
    add-int v18, v18, v19

    #@f3
    move/from16 v0, v18

    #@f5
    int-to-long v0, v0

    #@f6
    move-wide/from16 v18, v0

    #@f8
    const/16 v20, 0x20

    #@fa
    shl-long v18, v18, v20

    #@fc
    or-long v12, v12, v18

    #@fe
    .line 562
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@101
    move-result-wide v10

    #@102
    goto :goto_0
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .locals 8
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    #@0
    .prologue
    .line 1864
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 1865
    .local v0, "magnitudeBits":J
    cmpl-double v4, p2, p2

    #@6
    if-eqz v4, :cond_0

    #@8
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    #@a
    .end local p2    # "sign":D
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@d
    move-result-wide v2

    #@e
    .line 1866
    .local v2, "signBits":J
    const-wide v4, 0x7fffffffffffffffL

    #@13
    and-long/2addr v4, v0

    #@14
    .line 1867
    const-wide/high16 v6, -0x8000000000000000L

    #@16
    and-long/2addr v6, v2

    #@17
    .line 1866
    or-long v0, v4, v6

    #@19
    .line 1868
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1c
    move-result-wide v4

    #@1d
    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 4
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    #@0
    .prologue
    .line 1883
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    .line 1884
    .local v0, "magnitudeBits":I
    cmpl-float v2, p1, p1

    #@6
    if-eqz v2, :cond_0

    #@8
    const/high16 p1, 0x3f800000    # 1.0f

    #@a
    .end local p1    # "sign":F
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@d
    move-result v1

    #@e
    .line 1885
    .local v1, "signBits":I
    const v2, 0x7fffffff

    #@11
    and-int/2addr v2, v0

    #@12
    .line 1886
    const/high16 v3, -0x80000000

    #@14
    and-int/2addr v3, v1

    #@15
    .line 1885
    or-int v0, v2, v3

    #@17
    .line 1887
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@1a
    move-result v2

    #@1b
    return v2
.end method

.method public static native cos(D)D
.end method

.method public static cosh(D)D
    .locals 14
    .param p0, "x"    # D

    #@0
    .prologue
    .line 626
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 627
    .local v0, "bits":J
    const/16 v3, 0x20

    #@6
    ushr-long v10, v0, v3

    #@8
    long-to-int v3, v10

    #@9
    const v10, 0x7fffffff

    #@c
    and-int v2, v3, v10

    #@e
    .line 630
    .local v2, "ix":I
    const/high16 v3, 0x7ff00000

    #@10
    if-lt v2, v3, :cond_0

    #@12
    .line 631
    mul-double v10, p0, p0

    #@14
    return-wide v10

    #@15
    .line 635
    :cond_0
    const v3, 0x3fd62e43

    #@18
    if-ge v2, v3, :cond_2

    #@1a
    .line 636
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@1d
    move-result-wide v10

    #@1e
    invoke-static {v10, v11}, Ljava/lang/StrictMath;->expm1(D)D

    #@21
    move-result-wide v6

    #@22
    .line 637
    .local v6, "t":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@24
    add-double v8, v10, v6

    #@26
    .line 638
    .local v8, "w":D
    const/high16 v3, 0x3c800000    # 0.015625f

    #@28
    if-ge v2, v3, :cond_1

    #@2a
    .line 639
    return-wide v8

    #@2b
    .line 640
    :cond_1
    mul-double v10, v6, v6

    #@2d
    add-double v12, v8, v8

    #@2f
    div-double/2addr v10, v12

    #@30
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@32
    add-double/2addr v10, v12

    #@33
    return-wide v10

    #@34
    .line 644
    .end local v6    # "t":D
    .end local v8    # "w":D
    :cond_2
    const/high16 v3, 0x40360000    # 2.84375f

    #@36
    if-ge v2, v3, :cond_3

    #@38
    .line 645
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@3b
    move-result-wide v10

    #@3c
    invoke-static {v10, v11}, Ljava/lang/StrictMath;->exp(D)D

    #@3f
    move-result-wide v6

    #@40
    .line 646
    .restart local v6    # "t":D
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@42
    mul-double/2addr v10, v6

    #@43
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@45
    div-double/2addr v12, v6

    #@46
    add-double/2addr v10, v12

    #@47
    return-wide v10

    #@48
    .line 650
    .end local v6    # "t":D
    :cond_3
    const v3, 0x40862e42

    #@4b
    if-ge v2, v3, :cond_4

    #@4d
    .line 651
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@50
    move-result-wide v10

    #@51
    invoke-static {v10, v11}, Ljava/lang/StrictMath;->exp(D)D

    #@54
    move-result-wide v10

    #@55
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@57
    mul-double/2addr v10, v12

    #@58
    return-wide v10

    #@59
    .line 655
    :cond_4
    sget-wide v10, Ljava/lang/StrictMath;->ONEBITS:J

    #@5b
    const/16 v3, 0x1d

    #@5d
    ushr-long/2addr v10, v3

    #@5e
    long-to-int v3, v0

    #@5f
    int-to-long v12, v3

    #@60
    add-long/2addr v10, v12

    #@61
    const-wide v12, 0xffffffffL

    #@66
    and-long v4, v10, v12

    #@68
    .line 658
    .local v4, "lx":J
    const v3, 0x408633ce

    #@6b
    if-lt v2, v3, :cond_5

    #@6d
    const v3, 0x408633ce

    #@70
    if-ne v2, v3, :cond_6

    #@72
    const-wide v10, 0x8fb9f87dL

    #@77
    cmp-long v3, v4, v10

    #@79
    if-gtz v3, :cond_6

    #@7b
    .line 659
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@7e
    move-result-wide v10

    #@7f
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@81
    mul-double/2addr v10, v12

    #@82
    invoke-static {v10, v11}, Ljava/lang/StrictMath;->exp(D)D

    #@85
    move-result-wide v8

    #@86
    .line 660
    .restart local v8    # "w":D
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@88
    mul-double v6, v10, v8

    #@8a
    .line 661
    .restart local v6    # "t":D
    mul-double v10, v6, v8

    #@8c
    return-wide v10

    #@8d
    .line 665
    .end local v6    # "t":D
    .end local v8    # "w":D
    :cond_6
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@8f
    return-wide v10
.end method

.method public static exp(D)D
    .locals 26
    .param p0, "x"    # D

    #@0
    .prologue
    .line 714
    const-wide/16 v6, 0x0

    #@2
    .local v6, "hi":D
    const-wide/16 v12, 0x0

    #@4
    .line 715
    .local v12, "lo":D
    const/4 v10, 0x0

    #@5
    .line 717
    .local v10, "k":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@8
    move-result-wide v2

    #@9
    .line 718
    .local v2, "bits":J
    long-to-int v11, v2

    #@a
    .line 719
    .local v11, "lowBits":I
    const/16 v17, 0x20

    #@c
    ushr-long v22, v2, v17

    #@e
    move-wide/from16 v0, v22

    #@10
    long-to-int v8, v0

    #@11
    .line 720
    .local v8, "highBits":I
    const v17, 0x7fffffff

    #@14
    and-int v9, v8, v17

    #@16
    .line 721
    .local v9, "hx":I
    ushr-int/lit8 v17, v8, 0x1f

    #@18
    and-int/lit8 v16, v17, 0x1

    #@1a
    .line 724
    .local v16, "xsb":I
    const v17, 0x40862e42

    #@1d
    move/from16 v0, v17

    #@1f
    if-lt v9, v0, :cond_4

    #@21
    .line 725
    const/high16 v17, 0x7ff00000

    #@23
    move/from16 v0, v17

    #@25
    if-lt v9, v0, :cond_2

    #@27
    .line 726
    const v17, 0xfffff

    #@2a
    and-int v17, v17, v9

    #@2c
    or-int v17, v17, v11

    #@2e
    if-eqz v17, :cond_0

    #@30
    .line 727
    add-double v22, p0, p0

    #@32
    return-wide v22

    #@33
    .line 729
    :cond_0
    if-nez v16, :cond_1

    #@35
    .end local p0    # "x":D
    :goto_0
    return-wide p0

    #@36
    .restart local p0    # "x":D
    :cond_1
    const-wide/16 p0, 0x0

    #@38
    goto :goto_0

    #@39
    .line 733
    :cond_2
    const-wide v22, 0x40862e42fefa39efL    # 709.782712893384

    #@3e
    cmpl-double v17, p0, v22

    #@40
    if-lez v17, :cond_3

    #@42
    .line 734
    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@44
    return-wide v22

    #@45
    .line 737
    :cond_3
    const-wide v22, -0x3f78b6ef2ad2cfafL    # -745.1332191019411

    #@4a
    cmpg-double v17, p0, v22

    #@4c
    if-gez v17, :cond_4

    #@4e
    .line 738
    const-wide/16 v22, 0x0

    #@50
    return-wide v22

    #@51
    .line 743
    :cond_4
    const v17, 0x3fd62e42

    #@54
    move/from16 v0, v17

    #@56
    if-le v9, v0, :cond_a

    #@58
    .line 744
    const v17, 0x3ff0a2b2

    #@5b
    move/from16 v0, v17

    #@5d
    if-ge v9, v0, :cond_8

    #@5f
    .line 745
    if-nez v16, :cond_6

    #@61
    const-wide v22, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@66
    :goto_1
    sub-double v6, p0, v22

    #@68
    .line 747
    if-nez v16, :cond_7

    #@6a
    const-wide v12, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@6f
    .line 749
    :goto_2
    rsub-int/lit8 v17, v16, 0x1

    #@71
    sub-int v10, v17, v16

    #@73
    .line 756
    :goto_3
    sub-double p0, v6, v12

    #@75
    .line 765
    :cond_5
    :goto_4
    mul-double v14, p0, p0

    #@77
    .line 766
    .local v14, "t":D
    const-wide v22, 0x3e66376972bea4d0L    # 4.1381367970572385E-8

    #@7c
    mul-double v22, v22, v14

    #@7e
    const-wide v24, -0x414442be3a2d940fL    # -1.6533902205465252E-6

    #@83
    add-double v22, v22, v24

    #@85
    mul-double v22, v22, v14

    #@87
    const-wide v24, 0x3f11566aaf25de2cL    # 6.613756321437934E-5

    #@8c
    add-double v22, v22, v24

    #@8e
    mul-double v22, v22, v14

    #@90
    const-wide v24, -0x40993e93e941426dL    # -0.0027777777777015593

    #@95
    add-double v22, v22, v24

    #@97
    mul-double v22, v22, v14

    #@99
    const-wide v24, 0x3fc555555555553eL    # 0.16666666666666602

    #@9e
    add-double v22, v22, v24

    #@a0
    mul-double v22, v22, v14

    #@a2
    sub-double v4, p0, v22

    #@a4
    .line 767
    .local v4, "c":D
    if-nez v10, :cond_c

    #@a6
    .line 768
    mul-double v22, p0, v4

    #@a8
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@aa
    sub-double v24, v4, v24

    #@ac
    div-double v22, v22, v24

    #@ae
    sub-double v22, v22, p0

    #@b0
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@b2
    sub-double v22, v24, v22

    #@b4
    return-wide v22

    #@b5
    .line 746
    .end local v4    # "c":D
    .end local v14    # "t":D
    :cond_6
    const-wide v22, -0x4019d1bd01200000L    # -0.6931471803691238

    #@ba
    goto :goto_1

    #@bb
    .line 748
    :cond_7
    const-wide v12, -0x4215c610ca86c38aL

    #@c0
    goto :goto_2

    #@c1
    .line 751
    :cond_8
    const-wide v22, 0x3ff71547652b82feL    # 1.4426950408889634

    #@c6
    mul-double v24, v22, p0

    #@c8
    if-nez v16, :cond_9

    #@ca
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    #@cc
    :goto_5
    add-double v22, v22, v24

    #@ce
    move-wide/from16 v0, v22

    #@d0
    double-to-int v10, v0

    #@d1
    .line 752
    int-to-double v14, v10

    #@d2
    .line 753
    .restart local v14    # "t":D
    const-wide v22, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@d7
    mul-double v22, v22, v14

    #@d9
    sub-double v6, p0, v22

    #@db
    .line 754
    const-wide v22, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@e0
    mul-double v12, v14, v22

    #@e2
    goto :goto_3

    #@e3
    .line 751
    .end local v14    # "t":D
    :cond_9
    const-wide/high16 v22, -0x4020000000000000L    # -0.5

    #@e5
    goto :goto_5

    #@e6
    .line 757
    :cond_a
    const/high16 v17, 0x3e300000    # 0.171875f

    #@e8
    move/from16 v0, v17

    #@ea
    if-ge v9, v0, :cond_b

    #@ec
    .line 758
    const-wide v22, 0x7e37e43c8800759cL    # 1.0E300

    #@f1
    add-double v22, v22, p0

    #@f3
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@f5
    cmpl-double v17, v22, v24

    #@f7
    if-lez v17, :cond_5

    #@f9
    .line 759
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@fb
    add-double v22, v22, p0

    #@fd
    return-wide v22

    #@fe
    .line 761
    :cond_b
    const/4 v10, 0x0

    #@ff
    goto/16 :goto_4

    #@101
    .line 770
    .restart local v4    # "c":D
    .restart local v14    # "t":D
    :cond_c
    mul-double v22, p0, v4

    #@103
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@105
    sub-double v24, v24, v4

    #@107
    div-double v22, v22, v24

    #@109
    sub-double v22, v12, v22

    #@10b
    sub-double v22, v22, v6

    #@10d
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@10f
    sub-double v18, v24, v22

    #@111
    .line 772
    .local v18, "y":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@114
    move-result-wide v20

    #@115
    .line 773
    .local v20, "yBits":J
    const/16 v17, -0x3fd

    #@117
    move/from16 v0, v17

    #@119
    if-lt v10, v0, :cond_d

    #@11b
    .line 774
    shl-int/lit8 v17, v10, 0x14

    #@11d
    move/from16 v0, v17

    #@11f
    int-to-long v0, v0

    #@120
    move-wide/from16 v22, v0

    #@122
    const/16 v17, 0x20

    #@124
    shl-long v22, v22, v17

    #@126
    add-long v20, v20, v22

    #@128
    .line 775
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@12b
    move-result-wide v22

    #@12c
    return-wide v22

    #@12d
    .line 777
    :cond_d
    add-int/lit16 v0, v10, 0x3e8

    #@12f
    move/from16 v17, v0

    #@131
    shl-int/lit8 v17, v17, 0x14

    #@133
    move/from16 v0, v17

    #@135
    int-to-long v0, v0

    #@136
    move-wide/from16 v22, v0

    #@138
    const/16 v17, 0x20

    #@13a
    shl-long v22, v22, v17

    #@13c
    add-long v20, v20, v22

    #@13e
    .line 778
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@141
    move-result-wide v22

    #@142
    const-wide/high16 v24, 0x170000000000000L

    #@144
    mul-double v22, v22, v24

    #@146
    return-wide v22
.end method

.method public static expm1(D)D
    .locals 38
    .param p0, "x"    # D

    #@0
    .prologue
    .line 813
    const-wide/16 v4, 0x0

    #@2
    .line 815
    .local v4, "c":D
    const-wide/16 v30, 0x0

    #@4
    .line 816
    .local v30, "yBits":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@7
    move-result-wide v2

    #@8
    .line 817
    .local v2, "bits":J
    const/16 v27, 0x20

    #@a
    ushr-long v32, v2, v27

    #@c
    move-wide/from16 v0, v32

    #@e
    long-to-int v12, v0

    #@f
    .line 818
    .local v12, "highBits":I
    long-to-int v0, v2

    #@10
    move/from16 v17, v0

    #@12
    .line 819
    .local v17, "lowBits":I
    const v27, 0x7fffffff

    #@15
    and-int v13, v12, v27

    #@17
    .line 820
    .local v13, "hx":I
    const/high16 v27, -0x80000000

    #@19
    and-int v26, v12, v27

    #@1b
    .line 821
    .local v26, "xsb":I
    if-nez v26, :cond_0

    #@1d
    move-wide/from16 v28, p0

    #@1f
    .line 824
    .local v28, "y":D
    :goto_0
    const v27, 0x4043687a

    #@22
    move/from16 v0, v27

    #@24
    if-lt v13, v0, :cond_5

    #@26
    .line 825
    const v27, 0x40862e42

    #@29
    move/from16 v0, v27

    #@2b
    if-lt v13, v0, :cond_4

    #@2d
    .line 826
    const/high16 v27, 0x7ff00000

    #@2f
    move/from16 v0, v27

    #@31
    if-lt v13, v0, :cond_3

    #@33
    .line 827
    const v27, 0xfffff

    #@36
    and-int v27, v27, v13

    #@38
    or-int v27, v27, v17

    #@3a
    if-eqz v27, :cond_1

    #@3c
    .line 828
    add-double v32, p0, p0

    #@3e
    return-wide v32

    #@3f
    .line 821
    .end local v28    # "y":D
    :cond_0
    move-wide/from16 v0, p0

    #@41
    neg-double v0, v0

    #@42
    move-wide/from16 v28, v0

    #@44
    .restart local v28    # "y":D
    goto :goto_0

    #@45
    .line 830
    :cond_1
    if-nez v26, :cond_2

    #@47
    .end local p0    # "x":D
    :goto_1
    return-wide p0

    #@48
    .restart local p0    # "x":D
    :cond_2
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    #@4a
    goto :goto_1

    #@4b
    .line 833
    :cond_3
    const-wide v32, 0x40862e42fefa39efL    # 709.782712893384

    #@50
    cmpl-double v27, p0, v32

    #@52
    if-lez v27, :cond_4

    #@54
    .line 834
    const-wide/high16 v32, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@56
    return-wide v32

    #@57
    .line 837
    :cond_4
    if-eqz v26, :cond_5

    #@59
    .line 838
    const-wide v32, 0x1a56e1fc2f8f359L    # 1.0E-300

    #@5e
    add-double v32, v32, p0

    #@60
    const-wide/16 v34, 0x0

    #@62
    cmpg-double v27, v32, v34

    #@64
    if-gez v27, :cond_5

    #@66
    .line 839
    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    #@68
    return-wide v32

    #@69
    .line 844
    :cond_5
    const v27, 0x3fd62e42

    #@6c
    move/from16 v0, v27

    #@6e
    if-le v13, v0, :cond_9

    #@70
    .line 845
    const v27, 0x3ff0a2b2

    #@73
    move/from16 v0, v27

    #@75
    if-ge v13, v0, :cond_7

    #@77
    .line 846
    if-nez v26, :cond_6

    #@79
    .line 847
    const-wide v32, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@7e
    sub-double v10, p0, v32

    #@80
    .line 848
    .local v10, "hi":D
    const-wide v18, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@85
    .line 849
    .local v18, "lo":D
    const/16 v16, 0x1

    #@87
    .line 861
    .local v16, "k":I
    :goto_2
    sub-double p0, v10, v18

    #@89
    .line 862
    sub-double v32, v10, p0

    #@8b
    sub-double v4, v32, v18

    #@8d
    .line 873
    .end local v10    # "hi":D
    .end local v18    # "lo":D
    :goto_3
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    #@8f
    mul-double v8, v32, p0

    #@91
    .line 874
    .local v8, "hfx":D
    mul-double v14, p0, v8

    #@93
    .line 875
    .local v14, "hxs":D
    const-wide v32, -0x4175024891f63cd3L    # -2.0109921818362437E-7

    #@98
    mul-double v32, v32, v14

    #@9a
    const-wide v34, 0x3ed0cfca86e65239L    # 4.008217827329362E-6

    #@9f
    add-double v32, v32, v34

    #@a1
    mul-double v32, v32, v14

    #@a3
    const-wide v34, -0x40eb31e661552449L    # -7.93650757867488E-5

    #@a8
    add-double v32, v32, v34

    #@aa
    mul-double v32, v32, v14

    #@ac
    const-wide v34, 0x3f5a01a019fe5585L    # 0.0015873015872548146

    #@b1
    add-double v32, v32, v34

    #@b3
    mul-double v32, v32, v14

    #@b5
    const-wide v34, -0x405eeeeeeeeeef0cL    # -0.03333333333333313

    #@ba
    add-double v32, v32, v34

    #@bc
    mul-double v32, v32, v14

    #@be
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    #@c0
    add-double v20, v34, v32

    #@c2
    .line 876
    .local v20, "r1":D
    mul-double v32, v20, v8

    #@c4
    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    #@c6
    sub-double v22, v34, v32

    #@c8
    .line 877
    .local v22, "t":D
    sub-double v32, v20, v22

    #@ca
    mul-double v34, p0, v22

    #@cc
    const-wide/high16 v36, 0x4018000000000000L    # 6.0

    #@ce
    sub-double v34, v36, v34

    #@d0
    div-double v32, v32, v34

    #@d2
    mul-double v6, v14, v32

    #@d4
    .line 878
    .local v6, "e":D
    if-nez v16, :cond_b

    #@d6
    .line 879
    mul-double v32, p0, v6

    #@d8
    sub-double v32, v32, v14

    #@da
    sub-double v32, p0, v32

    #@dc
    return-wide v32

    #@dd
    .line 851
    .end local v6    # "e":D
    .end local v8    # "hfx":D
    .end local v14    # "hxs":D
    .end local v16    # "k":I
    .end local v20    # "r1":D
    .end local v22    # "t":D
    :cond_6
    const-wide v32, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@e2
    add-double v10, p0, v32

    #@e4
    .line 852
    .restart local v10    # "hi":D
    const-wide v18, -0x4215c610ca86c38aL

    #@e9
    .line 853
    .restart local v18    # "lo":D
    const/16 v16, -0x1

    #@eb
    .restart local v16    # "k":I
    goto :goto_2

    #@ec
    .line 856
    .end local v10    # "hi":D
    .end local v16    # "k":I
    .end local v18    # "lo":D
    :cond_7
    const-wide v32, 0x3ff71547652b82feL    # 1.4426950408889634

    #@f1
    mul-double v34, v32, p0

    #@f3
    if-nez v26, :cond_8

    #@f5
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    #@f7
    :goto_4
    add-double v32, v32, v34

    #@f9
    move-wide/from16 v0, v32

    #@fb
    double-to-int v0, v0

    #@fc
    move/from16 v16, v0

    #@fe
    .line 857
    .restart local v16    # "k":I
    move/from16 v0, v16

    #@100
    int-to-double v0, v0

    #@101
    move-wide/from16 v22, v0

    #@103
    .line 858
    .restart local v22    # "t":D
    const-wide v32, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@108
    mul-double v32, v32, v22

    #@10a
    sub-double v10, p0, v32

    #@10c
    .line 859
    .restart local v10    # "hi":D
    const-wide v32, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@111
    mul-double v18, v22, v32

    #@113
    .restart local v18    # "lo":D
    goto/16 :goto_2

    #@115
    .line 856
    .end local v10    # "hi":D
    .end local v16    # "k":I
    .end local v18    # "lo":D
    .end local v22    # "t":D
    :cond_8
    const-wide/high16 v32, -0x4020000000000000L    # -0.5

    #@117
    goto :goto_4

    #@118
    .line 863
    :cond_9
    const/high16 v27, 0x3c900000    # 0.017578125f

    #@11a
    move/from16 v0, v27

    #@11c
    if-ge v13, v0, :cond_a

    #@11e
    .line 866
    return-wide p0

    #@11f
    .line 869
    :cond_a
    const/16 v16, 0x0

    #@121
    .restart local v16    # "k":I
    goto/16 :goto_3

    #@123
    .line 881
    .restart local v6    # "e":D
    .restart local v8    # "hfx":D
    .restart local v14    # "hxs":D
    .restart local v20    # "r1":D
    .restart local v22    # "t":D
    :cond_b
    sub-double v32, v6, v4

    #@125
    mul-double v32, v32, p0

    #@127
    sub-double v6, v32, v4

    #@129
    .line 882
    sub-double/2addr v6, v14

    #@12a
    .line 883
    const/16 v27, -0x1

    #@12c
    move/from16 v0, v16

    #@12e
    move/from16 v1, v27

    #@130
    if-ne v0, v1, :cond_c

    #@132
    .line 884
    sub-double v32, p0, v6

    #@134
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    #@136
    mul-double v32, v32, v34

    #@138
    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    #@13a
    sub-double v32, v32, v34

    #@13c
    return-wide v32

    #@13d
    .line 887
    :cond_c
    const/16 v27, 0x1

    #@13f
    move/from16 v0, v16

    #@141
    move/from16 v1, v27

    #@143
    if-ne v0, v1, :cond_e

    #@145
    .line 888
    const-wide/high16 v32, -0x4030000000000000L    # -0.25

    #@147
    cmpg-double v27, p0, v32

    #@149
    if-gez v27, :cond_d

    #@14b
    .line 889
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    #@14d
    add-double v32, v32, p0

    #@14f
    sub-double v32, v6, v32

    #@151
    const-wide/high16 v34, -0x4000000000000000L    # -2.0

    #@153
    mul-double v32, v32, v34

    #@155
    return-wide v32

    #@156
    .line 891
    :cond_d
    sub-double v32, p0, v6

    #@158
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    #@15a
    mul-double v32, v32, v34

    #@15c
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    #@15e
    add-double v32, v32, v34

    #@160
    return-wide v32

    #@161
    .line 895
    :cond_e
    const/16 v27, -0x2

    #@163
    move/from16 v0, v16

    #@165
    move/from16 v1, v27

    #@167
    if-le v0, v1, :cond_f

    #@169
    const/16 v27, 0x38

    #@16b
    move/from16 v0, v16

    #@16d
    move/from16 v1, v27

    #@16f
    if-le v0, v1, :cond_10

    #@171
    .line 896
    :cond_f
    sub-double v32, v6, p0

    #@173
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    #@175
    sub-double v28, v34, v32

    #@177
    .line 897
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@17a
    move-result-wide v30

    #@17b
    .line 898
    move/from16 v0, v16

    #@17d
    int-to-long v0, v0

    #@17e
    move-wide/from16 v32, v0

    #@180
    const/16 v27, 0x34

    #@182
    shl-long v32, v32, v27

    #@184
    add-long v30, v30, v32

    #@186
    .line 899
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@189
    move-result-wide v32

    #@18a
    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    #@18c
    sub-double v32, v32, v34

    #@18e
    return-wide v32

    #@18f
    .line 902
    :cond_10
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    #@191
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@194
    move-result-wide v32

    #@195
    const-wide v34, 0xffffffffL

    #@19a
    and-long v24, v32, v34

    #@19c
    .line 904
    .local v24, "tBits":J
    const/16 v27, 0x14

    #@19e
    move/from16 v0, v16

    #@1a0
    move/from16 v1, v27

    #@1a2
    if-ge v0, v1, :cond_11

    #@1a4
    .line 905
    const/high16 v27, 0x200000

    #@1a6
    shr-int v27, v27, v16

    #@1a8
    move/from16 v0, v27

    #@1aa
    int-to-long v0, v0

    #@1ab
    move-wide/from16 v32, v0

    #@1ad
    const-wide/32 v34, 0x3ff00000

    #@1b0
    sub-long v32, v34, v32

    #@1b2
    const/16 v27, 0x20

    #@1b4
    shl-long v32, v32, v27

    #@1b6
    or-long v24, v24, v32

    #@1b8
    .line 906
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1bb
    move-result-wide v32

    #@1bc
    sub-double v34, v6, p0

    #@1be
    sub-double v28, v32, v34

    #@1c0
    .line 907
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1c3
    move-result-wide v30

    #@1c4
    .line 908
    move/from16 v0, v16

    #@1c6
    int-to-long v0, v0

    #@1c7
    move-wide/from16 v32, v0

    #@1c9
    const/16 v27, 0x34

    #@1cb
    shl-long v32, v32, v27

    #@1cd
    add-long v30, v30, v32

    #@1cf
    .line 909
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1d2
    move-result-wide v32

    #@1d3
    return-wide v32

    #@1d4
    .line 911
    :cond_11
    move/from16 v0, v16

    #@1d6
    int-to-long v0, v0

    #@1d7
    move-wide/from16 v32, v0

    #@1d9
    const-wide/16 v34, 0x3ff

    #@1db
    sub-long v32, v34, v32

    #@1dd
    const/16 v27, 0x34

    #@1df
    shl-long v32, v32, v27

    #@1e1
    or-long v24, v24, v32

    #@1e3
    .line 912
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1e6
    move-result-wide v32

    #@1e7
    add-double v32, v32, v6

    #@1e9
    sub-double v28, p0, v32

    #@1eb
    .line 913
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    #@1ed
    add-double v28, v28, v32

    #@1ef
    .line 914
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1f2
    move-result-wide v30

    #@1f3
    .line 915
    move/from16 v0, v16

    #@1f5
    int-to-long v0, v0

    #@1f6
    move-wide/from16 v32, v0

    #@1f8
    const/16 v27, 0x34

    #@1fa
    shl-long v32, v32, v27

    #@1fc
    add-long v30, v30, v32

    #@1fe
    .line 916
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@201
    move-result-wide v32

    #@202
    return-wide v32
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1905
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1896
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static log(D)D
    .locals 34
    .param p0, "x"    # D

    #@0
    .prologue
    .line 1015
    const/4 v15, 0x0

    #@1
    .line 1018
    .local v15, "k":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@4
    move-result-wide v4

    #@5
    .line 1019
    .local v4, "bits":J
    const/16 v17, 0x20

    #@7
    ushr-long v28, v4, v17

    #@9
    move-wide/from16 v0, v28

    #@b
    long-to-int v12, v0

    #@c
    .line 1020
    .local v12, "hx":I
    long-to-int v0, v4

    #@d
    move/from16 v16, v0

    #@f
    .line 1022
    .local v16, "lx":I
    const/high16 v17, 0x100000

    #@11
    move/from16 v0, v17

    #@13
    if-ge v12, v0, :cond_2

    #@15
    .line 1023
    const v17, 0x7fffffff

    #@18
    and-int v17, v17, v12

    #@1a
    or-int v17, v17, v16

    #@1c
    if-nez v17, :cond_0

    #@1e
    .line 1024
    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@20
    return-wide v28

    #@21
    .line 1027
    :cond_0
    if-gez v12, :cond_1

    #@23
    .line 1028
    sub-double v28, p0, p0

    #@25
    const-wide/16 v30, 0x0

    #@27
    div-double v28, v28, v30

    #@29
    return-wide v28

    #@2a
    .line 1031
    :cond_1
    const/16 v15, -0x36

    #@2c
    .line 1032
    const-wide/high16 v28, 0x4350000000000000L    # 1.8014398509481984E16

    #@2e
    mul-double p0, p0, v28

    #@30
    .line 1033
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@33
    move-result-wide v4

    #@34
    .line 1034
    const/16 v17, 0x20

    #@36
    ushr-long v28, v4, v17

    #@38
    move-wide/from16 v0, v28

    #@3a
    long-to-int v12, v0

    #@3b
    .line 1037
    :cond_2
    const/high16 v17, 0x7ff00000

    #@3d
    move/from16 v0, v17

    #@3f
    if-lt v12, v0, :cond_3

    #@41
    .line 1038
    add-double v28, p0, p0

    #@43
    return-wide v28

    #@44
    .line 1041
    :cond_3
    shr-int/lit8 v17, v12, 0x14

    #@46
    move/from16 v0, v17

    #@48
    add-int/lit16 v0, v0, -0x3ff

    #@4a
    move/from16 v17, v0

    #@4c
    add-int v15, v15, v17

    #@4e
    .line 1042
    const v17, 0xfffff

    #@51
    and-int v12, v12, v17

    #@53
    .line 1043
    const-wide v28, 0xffffffffL

    #@58
    and-long v4, v4, v28

    #@5a
    .line 1044
    const v17, 0x95f64

    #@5d
    add-int v17, v17, v12

    #@5f
    const/high16 v28, 0x100000

    #@61
    and-int v13, v17, v28

    #@63
    .line 1045
    .local v13, "i":I
    int-to-long v0, v12

    #@64
    move-wide/from16 v28, v0

    #@66
    const/high16 v17, 0x3ff00000    # 1.875f

    #@68
    xor-int v17, v17, v13

    #@6a
    move/from16 v0, v17

    #@6c
    int-to-long v0, v0

    #@6d
    move-wide/from16 v30, v0

    #@6f
    or-long v28, v28, v30

    #@71
    const/16 v17, 0x20

    #@73
    shl-long v28, v28, v17

    #@75
    or-long v4, v4, v28

    #@77
    .line 1046
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7a
    move-result-wide p0

    #@7b
    .line 1047
    shr-int/lit8 v17, v13, 0x14

    #@7d
    add-int v15, v15, v17

    #@7f
    .line 1048
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    #@81
    sub-double v8, p0, v28

    #@83
    .line 1050
    .local v8, "f":D
    add-int/lit8 v17, v12, 0x2

    #@85
    const v28, 0xfffff

    #@88
    and-int v17, v17, v28

    #@8a
    const/16 v28, 0x3

    #@8c
    move/from16 v0, v17

    #@8e
    move/from16 v1, v28

    #@90
    if-ge v0, v1, :cond_7

    #@92
    .line 1051
    const-wide/16 v28, 0x0

    #@94
    cmpl-double v17, v8, v28

    #@96
    if-nez v17, :cond_5

    #@98
    .line 1052
    if-nez v15, :cond_4

    #@9a
    .line 1053
    const-wide/16 v28, 0x0

    #@9c
    return-wide v28

    #@9d
    .line 1055
    :cond_4
    int-to-double v6, v15

    #@9e
    .line 1057
    .local v6, "dk":D
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@a3
    mul-double v28, v28, v6

    #@a5
    const-wide v30, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@aa
    mul-double v30, v30, v6

    #@ac
    add-double v28, v28, v30

    #@ae
    return-wide v28

    #@af
    .line 1060
    .end local v6    # "dk":D
    :cond_5
    mul-double v28, v8, v8

    #@b1
    const-wide v30, 0x3fd5555555555555L    # 0.3333333333333333

    #@b6
    mul-double v30, v30, v8

    #@b8
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    #@ba
    sub-double v30, v32, v30

    #@bc
    mul-double v2, v28, v30

    #@be
    .line 1061
    .local v2, "R":D
    if-nez v15, :cond_6

    #@c0
    .line 1062
    sub-double v28, v8, v2

    #@c2
    return-wide v28

    #@c3
    .line 1064
    :cond_6
    int-to-double v6, v15

    #@c4
    .line 1065
    .restart local v6    # "dk":D
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@c9
    mul-double v28, v28, v6

    #@cb
    const-wide v30, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@d0
    mul-double v30, v30, v6

    #@d2
    sub-double v30, v2, v30

    #@d4
    sub-double v30, v30, v8

    #@d6
    sub-double v28, v28, v30

    #@d8
    return-wide v28

    #@d9
    .line 1068
    .end local v2    # "R":D
    .end local v6    # "dk":D
    :cond_7
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    #@db
    add-double v28, v28, v8

    #@dd
    div-double v18, v8, v28

    #@df
    .line 1069
    .local v18, "s":D
    int-to-double v6, v15

    #@e0
    .line 1070
    .restart local v6    # "dk":D
    mul-double v26, v18, v18

    #@e2
    .line 1071
    .local v26, "z":D
    const v17, 0x6147a

    #@e5
    sub-int v13, v12, v17

    #@e7
    .line 1072
    mul-double v24, v26, v26

    #@e9
    .line 1073
    .local v24, "w":D
    const v17, 0x6b851

    #@ec
    sub-int v14, v17, v12

    #@ee
    .line 1074
    .local v14, "j":I
    const-wide v28, 0x3fc39a09d078c69fL    # 0.15313837699209373

    #@f3
    mul-double v28, v28, v24

    #@f5
    const-wide v30, 0x3fcc71c51d8e78afL    # 0.22222198432149784

    #@fa
    add-double v28, v28, v30

    #@fc
    mul-double v28, v28, v24

    #@fe
    const-wide v30, 0x3fd999999997fa04L    # 0.3999999999940942

    #@103
    add-double v28, v28, v30

    #@105
    mul-double v20, v24, v28

    #@107
    .line 1075
    .local v20, "t1":D
    const-wide v28, 0x3fc2f112df3e5244L    # 0.14798198605116586

    #@10c
    mul-double v28, v28, v24

    #@10e
    const-wide v30, 0x3fc7466496cb03deL    # 0.1818357216161805

    #@113
    add-double v28, v28, v30

    #@115
    mul-double v28, v28, v24

    #@117
    const-wide v30, 0x3fd2492494229359L    # 0.2857142874366239

    #@11c
    add-double v28, v28, v30

    #@11e
    mul-double v28, v28, v24

    #@120
    const-wide v30, 0x3fe5555555555593L    # 0.6666666666666735

    #@125
    add-double v28, v28, v30

    #@127
    mul-double v22, v26, v28

    #@129
    .line 1076
    .local v22, "t2":D
    or-int/2addr v13, v14

    #@12a
    .line 1077
    add-double v2, v22, v20

    #@12c
    .line 1078
    .restart local v2    # "R":D
    if-lez v13, :cond_9

    #@12e
    .line 1079
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    #@130
    mul-double v28, v28, v8

    #@132
    mul-double v10, v28, v8

    #@134
    .line 1080
    .local v10, "hfsq":D
    if-nez v15, :cond_8

    #@136
    .line 1081
    add-double v28, v10, v2

    #@138
    mul-double v28, v28, v18

    #@13a
    sub-double v28, v10, v28

    #@13c
    sub-double v28, v8, v28

    #@13e
    return-wide v28

    #@13f
    .line 1083
    :cond_8
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@144
    mul-double v28, v28, v6

    #@146
    .line 1084
    add-double v30, v10, v2

    #@148
    mul-double v30, v30, v18

    #@14a
    const-wide v32, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@14f
    mul-double v32, v32, v6

    #@151
    add-double v30, v30, v32

    #@153
    sub-double v30, v10, v30

    #@155
    sub-double v30, v30, v8

    #@157
    .line 1083
    sub-double v28, v28, v30

    #@159
    return-wide v28

    #@15a
    .line 1087
    .end local v10    # "hfsq":D
    :cond_9
    if-nez v15, :cond_a

    #@15c
    .line 1088
    sub-double v28, v8, v2

    #@15e
    mul-double v28, v28, v18

    #@160
    sub-double v28, v8, v28

    #@162
    return-wide v28

    #@163
    .line 1090
    :cond_a
    const-wide v28, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@168
    mul-double v28, v28, v6

    #@16a
    sub-double v30, v8, v2

    #@16c
    mul-double v30, v30, v18

    #@16e
    const-wide v32, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@173
    mul-double v32, v32, v6

    #@175
    sub-double v30, v30, v32

    #@177
    sub-double v30, v30, v8

    #@179
    sub-double v28, v28, v30

    #@17b
    return-wide v28
.end method

.method public static log10(D)D
    .locals 16
    .param p0, "x"    # D

    #@0
    .prologue
    .line 1119
    const/4 v4, 0x0

    #@1
    .line 1121
    .local v4, "k":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@4
    move-result-wide v0

    #@5
    .line 1122
    .local v0, "bits":J
    const/16 v10, 0x20

    #@7
    shr-long v10, v0, v10

    #@9
    long-to-int v2, v10

    #@a
    .line 1123
    .local v2, "hx":I
    long-to-int v5, v0

    #@b
    .line 1124
    .local v5, "lx":I
    const/high16 v10, 0x100000

    #@d
    if-ge v2, v10, :cond_2

    #@f
    .line 1125
    const v10, 0x7fffffff

    #@12
    and-int/2addr v10, v2

    #@13
    or-int/2addr v10, v5

    #@14
    if-nez v10, :cond_0

    #@16
    .line 1126
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@18
    return-wide v10

    #@19
    .line 1129
    :cond_0
    if-gez v2, :cond_1

    #@1b
    .line 1130
    sub-double v10, p0, p0

    #@1d
    const-wide/16 v12, 0x0

    #@1f
    div-double/2addr v10, v12

    #@20
    return-wide v10

    #@21
    .line 1133
    :cond_1
    const/16 v4, -0x36

    #@23
    .line 1134
    const-wide/high16 v10, 0x4350000000000000L    # 1.8014398509481984E16

    #@25
    mul-double p0, p0, v10

    #@27
    .line 1135
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@2a
    move-result-wide v0

    #@2b
    .line 1136
    const/16 v10, 0x20

    #@2d
    shr-long v10, v0, v10

    #@2f
    long-to-int v2, v10

    #@30
    .line 1139
    :cond_2
    const/high16 v10, 0x7ff00000

    #@32
    if-lt v2, v10, :cond_3

    #@34
    .line 1140
    add-double v10, p0, p0

    #@36
    return-wide v10

    #@37
    .line 1143
    :cond_3
    shr-int/lit8 v10, v2, 0x14

    #@39
    add-int/lit16 v10, v10, -0x3ff

    #@3b
    add-int/2addr v4, v10

    #@3c
    .line 1144
    int-to-long v10, v4

    #@3d
    const-wide v12, 0xffffffffL

    #@42
    and-long/2addr v10, v12

    #@43
    const-wide/32 v12, -0x80000000

    #@46
    and-long/2addr v10, v12

    #@47
    const/16 v12, 0x1f

    #@49
    ushr-long/2addr v10, v12

    #@4a
    long-to-int v3, v10

    #@4b
    .line 1145
    .local v3, "i":I
    const v10, 0xfffff

    #@4e
    and-int/2addr v10, v2

    #@4f
    rsub-int v11, v3, 0x3ff

    #@51
    shl-int/lit8 v11, v11, 0x14

    #@53
    or-int v2, v10, v11

    #@55
    .line 1146
    add-int v10, v4, v3

    #@57
    int-to-double v6, v10

    #@58
    .line 1147
    .local v6, "y":D
    const-wide v10, 0xffffffffL

    #@5d
    and-long/2addr v0, v10

    #@5e
    .line 1148
    int-to-long v10, v2

    #@5f
    const/16 v12, 0x20

    #@61
    shl-long/2addr v10, v12

    #@62
    or-long/2addr v0, v10

    #@63
    .line 1149
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@66
    move-result-wide p0

    #@67
    .line 1150
    const-wide v10, 0x3d59fef311f12b36L    # 3.694239077158931E-13

    #@6c
    mul-double/2addr v10, v6

    #@6d
    invoke-static/range {p0 .. p1}, Ljava/lang/StrictMath;->log(D)D

    #@70
    move-result-wide v12

    #@71
    const-wide v14, 0x3fdbcb7b1526e50eL    # 0.4342944819032518

    #@76
    mul-double/2addr v12, v14

    #@77
    add-double v8, v10, v12

    #@79
    .line 1151
    .local v8, "z":D
    const-wide v10, 0x3fd34413509f6000L    # 0.30102999566361177

    #@7e
    mul-double/2addr v10, v6

    #@7f
    add-double/2addr v10, v8

    #@80
    return-wide v10
.end method

.method public static log1p(D)D
    .locals 32
    .param p0, "x"    # D

    #@0
    .prologue
    .line 1185
    const-wide/16 v10, 0x0

    #@2
    .local v10, "f":D
    const-wide/16 v8, 0x0

    #@4
    .local v8, "c":D
    const-wide/16 v18, 0x0

    #@6
    .line 1186
    .local v18, "u":D
    const/4 v5, 0x0

    #@7
    .line 1188
    .local v5, "hu":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@a
    move-result-wide v6

    #@b
    .line 1189
    .local v6, "bits":J
    const/16 v24, 0x20

    #@d
    ushr-long v24, v6, v24

    #@f
    move-wide/from16 v0, v24

    #@11
    long-to-int v14, v0

    #@12
    .line 1190
    .local v14, "hx":I
    const v24, 0x7fffffff

    #@15
    and-int v4, v14, v24

    #@17
    .line 1192
    .local v4, "ax":I
    const/4 v15, 0x1

    #@18
    .line 1193
    .local v15, "k":I
    const v24, 0x3fda827a

    #@1b
    move/from16 v0, v24

    #@1d
    if-ge v14, v0, :cond_5

    #@1f
    .line 1194
    const/high16 v24, 0x3ff00000    # 1.875f

    #@21
    move/from16 v0, v24

    #@23
    if-lt v4, v0, :cond_1

    #@25
    .line 1195
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    #@27
    cmpl-double v24, p0, v24

    #@29
    if-nez v24, :cond_0

    #@2b
    .line 1196
    const-wide/high16 v24, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2d
    return-wide v24

    #@2e
    .line 1198
    :cond_0
    sub-double v24, p0, p0

    #@30
    sub-double v26, p0, p0

    #@32
    div-double v24, v24, v26

    #@34
    return-wide v24

    #@35
    .line 1201
    :cond_1
    const/high16 v24, 0x3e200000    # 0.15625f

    #@37
    move/from16 v0, v24

    #@39
    if-ge v4, v0, :cond_3

    #@3b
    .line 1202
    const-wide/high16 v24, 0x4350000000000000L    # 1.8014398509481984E16

    #@3d
    add-double v24, v24, p0

    #@3f
    const-wide/16 v26, 0x0

    #@41
    cmpl-double v24, v24, v26

    #@43
    if-lez v24, :cond_2

    #@45
    const/high16 v24, 0x3c900000    # 0.017578125f

    #@47
    move/from16 v0, v24

    #@49
    if-ge v4, v0, :cond_2

    #@4b
    .line 1203
    return-wide p0

    #@4c
    .line 1205
    :cond_2
    mul-double v24, p0, p0

    #@4e
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    #@50
    mul-double v24, v24, v26

    #@52
    sub-double v24, p0, v24

    #@54
    return-wide v24

    #@55
    .line 1208
    :cond_3
    if-gtz v14, :cond_4

    #@57
    const v24, -0x402d413d

    #@5a
    move/from16 v0, v24

    #@5c
    if-gt v14, v0, :cond_5

    #@5e
    .line 1209
    :cond_4
    const/4 v15, 0x0

    #@5f
    .line 1210
    move-wide/from16 v10, p0

    #@61
    .line 1211
    const/4 v5, 0x1

    #@62
    .line 1215
    :cond_5
    const/high16 v24, 0x7ff00000

    #@64
    move/from16 v0, v24

    #@66
    if-lt v14, v0, :cond_6

    #@68
    .line 1216
    add-double v24, p0, p0

    #@6a
    return-wide v24

    #@6b
    .line 1219
    :cond_6
    if-eqz v15, :cond_7

    #@6d
    .line 1221
    const/high16 v24, 0x43400000    # 192.0f

    #@6f
    move/from16 v0, v24

    #@71
    if-ge v14, v0, :cond_9

    #@73
    .line 1222
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@75
    add-double v18, v24, p0

    #@77
    .line 1223
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@7a
    move-result-wide v20

    #@7b
    .line 1224
    .local v20, "uBits":J
    const/16 v24, 0x20

    #@7d
    ushr-long v24, v20, v24

    #@7f
    move-wide/from16 v0, v24

    #@81
    long-to-int v5, v0

    #@82
    .line 1225
    shr-int/lit8 v24, v5, 0x14

    #@84
    move/from16 v0, v24

    #@86
    add-int/lit16 v15, v0, -0x3ff

    #@88
    .line 1226
    if-lez v15, :cond_8

    #@8a
    sub-double v24, v18, p0

    #@8c
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    #@8e
    sub-double v8, v26, v24

    #@90
    .line 1227
    :goto_0
    div-double v8, v8, v18

    #@92
    .line 1234
    :goto_1
    const v24, 0xfffff

    #@95
    and-int v5, v5, v24

    #@97
    .line 1235
    const v24, 0x6a09e

    #@9a
    move/from16 v0, v24

    #@9c
    if-ge v5, v0, :cond_a

    #@9e
    .line 1237
    const-wide v24, 0xffffffffL

    #@a3
    and-long v20, v20, v24

    #@a5
    .line 1238
    int-to-long v0, v5

    #@a6
    move-wide/from16 v24, v0

    #@a8
    const-wide/32 v26, 0x3ff00000

    #@ab
    or-long v24, v24, v26

    #@ad
    const/16 v26, 0x20

    #@af
    shl-long v24, v24, v26

    #@b1
    or-long v20, v20, v24

    #@b3
    .line 1239
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@b6
    move-result-wide v18

    #@b7
    .line 1248
    :goto_2
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@b9
    sub-double v10, v18, v24

    #@bb
    .line 1250
    .end local v20    # "uBits":J
    :cond_7
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    #@bd
    mul-double v24, v24, v10

    #@bf
    mul-double v12, v24, v10

    #@c1
    .line 1251
    .local v12, "hfsq":D
    if-nez v5, :cond_e

    #@c3
    .line 1252
    const-wide/16 v24, 0x0

    #@c5
    cmpl-double v24, v10, v24

    #@c7
    if-nez v24, :cond_c

    #@c9
    .line 1253
    if-nez v15, :cond_b

    #@cb
    .line 1254
    const-wide/16 v24, 0x0

    #@cd
    return-wide v24

    #@ce
    .line 1226
    .end local v12    # "hfsq":D
    .restart local v20    # "uBits":J
    :cond_8
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    #@d0
    sub-double v24, v18, v24

    #@d2
    sub-double v8, p0, v24

    #@d4
    goto :goto_0

    #@d5
    .line 1229
    .end local v20    # "uBits":J
    :cond_9
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@d8
    move-result-wide v20

    #@d9
    .line 1230
    .restart local v20    # "uBits":J
    const/16 v24, 0x20

    #@db
    ushr-long v24, v20, v24

    #@dd
    move-wide/from16 v0, v24

    #@df
    long-to-int v5, v0

    #@e0
    .line 1231
    shr-int/lit8 v24, v5, 0x14

    #@e2
    move/from16 v0, v24

    #@e4
    add-int/lit16 v15, v0, -0x3ff

    #@e6
    .line 1232
    const-wide/16 v8, 0x0

    #@e8
    goto :goto_1

    #@e9
    .line 1241
    :cond_a
    add-int/lit8 v15, v15, 0x1

    #@eb
    .line 1243
    const-wide v24, 0xffffffffL

    #@f0
    and-long v20, v20, v24

    #@f2
    .line 1244
    int-to-long v0, v5

    #@f3
    move-wide/from16 v24, v0

    #@f5
    const-wide/32 v26, 0x3fe00000

    #@f8
    or-long v24, v24, v26

    #@fa
    const/16 v26, 0x20

    #@fc
    shl-long v24, v24, v26

    #@fe
    or-long v20, v20, v24

    #@100
    .line 1245
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@103
    move-result-wide v18

    #@104
    .line 1246
    const/high16 v24, 0x100000

    #@106
    sub-int v24, v24, v5

    #@108
    shr-int/lit8 v5, v24, 0x2

    #@10a
    goto :goto_2

    #@10b
    .line 1256
    .end local v20    # "uBits":J
    .restart local v12    # "hfsq":D
    :cond_b
    int-to-double v0, v15

    #@10c
    move-wide/from16 v24, v0

    #@10e
    const-wide v26, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@113
    mul-double v24, v24, v26

    #@115
    add-double v8, v8, v24

    #@117
    .line 1257
    int-to-double v0, v15

    #@118
    move-wide/from16 v24, v0

    #@11a
    const-wide v26, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@11f
    mul-double v24, v24, v26

    #@121
    add-double v24, v24, v8

    #@123
    return-wide v24

    #@124
    .line 1261
    :cond_c
    const-wide v24, 0x3fe5555555555555L    # 0.6666666666666666

    #@129
    mul-double v24, v24, v10

    #@12b
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    #@12d
    sub-double v24, v26, v24

    #@12f
    mul-double v2, v12, v24

    #@131
    .line 1262
    .local v2, "R":D
    if-nez v15, :cond_d

    #@133
    .line 1263
    sub-double v24, v10, v2

    #@135
    return-wide v24

    #@136
    .line 1265
    :cond_d
    int-to-double v0, v15

    #@137
    move-wide/from16 v24, v0

    #@139
    const-wide v26, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@13e
    mul-double v24, v24, v26

    #@140
    int-to-double v0, v15

    #@141
    move-wide/from16 v26, v0

    #@143
    const-wide v28, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@148
    mul-double v26, v26, v28

    #@14a
    add-double v26, v26, v8

    #@14c
    sub-double v26, v2, v26

    #@14e
    sub-double v26, v26, v10

    #@150
    sub-double v24, v24, v26

    #@152
    return-wide v24

    #@153
    .line 1269
    .end local v2    # "R":D
    :cond_e
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    #@155
    add-double v24, v24, v10

    #@157
    div-double v16, v10, v24

    #@159
    .line 1270
    .local v16, "s":D
    mul-double v22, v16, v16

    #@15b
    .line 1272
    .local v22, "z":D
    const-wide v24, 0x3fc2f112df3e5244L    # 0.14798198605116586

    #@160
    mul-double v24, v24, v22

    #@162
    const-wide v26, 0x3fc39a09d078c69fL    # 0.15313837699209373

    #@167
    add-double v24, v24, v26

    #@169
    mul-double v24, v24, v22

    #@16b
    const-wide v26, 0x3fc7466496cb03deL    # 0.1818357216161805

    #@170
    add-double v24, v24, v26

    #@172
    mul-double v24, v24, v22

    #@174
    const-wide v26, 0x3fcc71c51d8e78afL    # 0.22222198432149784

    #@179
    add-double v24, v24, v26

    #@17b
    mul-double v24, v24, v22

    #@17d
    const-wide v26, 0x3fd2492494229359L    # 0.2857142874366239

    #@182
    add-double v24, v24, v26

    #@184
    .line 1271
    mul-double v24, v24, v22

    #@186
    const-wide v26, 0x3fd999999997fa04L    # 0.3999999999940942

    #@18b
    add-double v24, v24, v26

    #@18d
    mul-double v24, v24, v22

    #@18f
    const-wide v26, 0x3fe5555555555593L    # 0.6666666666666735

    #@194
    add-double v24, v24, v26

    #@196
    mul-double v2, v22, v24

    #@198
    .line 1273
    .restart local v2    # "R":D
    if-nez v15, :cond_f

    #@19a
    .line 1274
    add-double v24, v12, v2

    #@19c
    mul-double v24, v24, v16

    #@19e
    sub-double v24, v12, v24

    #@1a0
    sub-double v24, v10, v24

    #@1a2
    return-wide v24

    #@1a3
    .line 1276
    :cond_f
    int-to-double v0, v15

    #@1a4
    move-wide/from16 v24, v0

    #@1a6
    const-wide v26, 0x3fe62e42fee00000L    # 0.6931471803691238

    #@1ab
    mul-double v24, v24, v26

    #@1ad
    .line 1277
    add-double v26, v12, v2

    #@1af
    mul-double v26, v26, v16

    #@1b1
    int-to-double v0, v15

    #@1b2
    move-wide/from16 v28, v0

    #@1b4
    const-wide v30, 0x3dea39ef35793c76L    # 1.9082149292705877E-10

    #@1b9
    mul-double v28, v28, v30

    #@1bb
    add-double v28, v28, v8

    #@1bd
    add-double v26, v26, v28

    #@1bf
    sub-double v26, v12, v26

    #@1c1
    sub-double v26, v26, v10

    #@1c3
    .line 1276
    sub-double v24, v24, v26

    #@1c5
    return-wide v24
.end method

.method public static max(DD)D
    .locals 6
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1294
    cmpl-double v0, p0, p2

    #@4
    if-lez v0, :cond_0

    #@6
    .line 1295
    return-wide p0

    #@7
    .line 1296
    :cond_0
    cmpg-double v0, p0, p2

    #@9
    if-gez v0, :cond_1

    #@b
    .line 1297
    return-wide p2

    #@c
    .line 1299
    :cond_1
    cmpl-double v0, p0, p2

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 1300
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@12
    return-wide v0

    #@13
    .line 1302
    :cond_2
    cmpl-double v0, p0, v4

    #@15
    if-nez v0, :cond_3

    #@17
    .line 1303
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1e
    move-result-wide v2

    #@1f
    and-long/2addr v0, v2

    #@20
    const-wide/high16 v2, -0x8000000000000000L

    #@22
    and-long/2addr v0, v2

    #@23
    const-wide/16 v2, 0x0

    #@25
    cmp-long v0, v0, v2

    #@27
    if-nez v0, :cond_3

    #@29
    .line 1304
    return-wide v4

    #@2a
    .line 1305
    :cond_3
    return-wide p0
.end method

.method public static max(FF)F
    .locals 3
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1321
    cmpl-float v0, p0, p1

    #@3
    if-lez v0, :cond_0

    #@5
    .line 1322
    return p0

    #@6
    .line 1323
    :cond_0
    cmpg-float v0, p0, p1

    #@8
    if-gez v0, :cond_1

    #@a
    .line 1324
    return p1

    #@b
    .line 1326
    :cond_1
    cmpl-float v0, p0, p1

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1327
    const/high16 v0, 0x7fc00000    # NaNf

    #@11
    return v0

    #@12
    .line 1329
    :cond_2
    cmpl-float v0, p0, v2

    #@14
    if-nez v0, :cond_3

    #@16
    .line 1330
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@19
    move-result v0

    #@1a
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1d
    move-result v1

    #@1e
    and-int/2addr v0, v1

    #@1f
    const/high16 v1, -0x80000000

    #@21
    and-int/2addr v0, v1

    #@22
    if-nez v0, :cond_3

    #@24
    .line 1331
    return v2

    #@25
    .line 1332
    :cond_3
    return p0
.end method

.method public static max(II)I
    .locals 1
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    #@0
    .prologue
    .line 1340
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    #@0
    .prologue
    .line 1348
    cmp-long v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    .end local p0    # "l1":J
    :goto_0
    return-wide p0

    #@5
    .restart local p0    # "l1":J
    :cond_0
    move-wide p0, p2

    #@6
    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    #@0
    .prologue
    .line 1364
    cmpl-double v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1365
    return-wide p2

    #@5
    .line 1366
    :cond_0
    cmpg-double v0, p0, p2

    #@7
    if-gez v0, :cond_1

    #@9
    .line 1367
    return-wide p0

    #@a
    .line 1369
    :cond_1
    cmpl-double v0, p0, p2

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 1370
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@10
    return-wide v0

    #@11
    .line 1372
    :cond_2
    const-wide/16 v0, 0x0

    #@13
    cmpl-double v0, p0, v0

    #@15
    if-nez v0, :cond_3

    #@17
    .line 1373
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1e
    move-result-wide v2

    #@1f
    or-long/2addr v0, v2

    #@20
    const-wide/high16 v2, -0x8000000000000000L

    #@22
    and-long/2addr v0, v2

    #@23
    const-wide/16 v2, 0x0

    #@25
    cmp-long v0, v0, v2

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 1374
    const-wide/high16 v0, -0x8000000000000000L

    #@2b
    return-wide v0

    #@2c
    .line 1375
    :cond_3
    return-wide p0
.end method

.method public static min(FF)F
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    #@0
    .prologue
    .line 1391
    cmpl-float v0, p0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1392
    return p1

    #@5
    .line 1393
    :cond_0
    cmpg-float v0, p0, p1

    #@7
    if-gez v0, :cond_1

    #@9
    .line 1394
    return p0

    #@a
    .line 1396
    :cond_1
    cmpl-float v0, p0, p1

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 1397
    const/high16 v0, 0x7fc00000    # NaNf

    #@10
    return v0

    #@11
    .line 1399
    :cond_2
    const/4 v0, 0x0

    #@12
    cmpl-float v0, p0, v0

    #@14
    if-nez v0, :cond_3

    #@16
    .line 1400
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@19
    move-result v0

    #@1a
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1d
    move-result v1

    #@1e
    or-int/2addr v0, v1

    #@1f
    const/high16 v1, -0x80000000

    #@21
    and-int/2addr v0, v1

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 1401
    const/high16 v0, -0x80000000

    #@26
    return v0

    #@27
    .line 1402
    :cond_3
    return p0
.end method

.method public static min(II)I
    .locals 1
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    #@0
    .prologue
    .line 1410
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    #@0
    .prologue
    .line 1418
    cmp-long v0, p0, p2

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p0    # "l1":J
    :goto_0
    return-wide p0

    #@5
    .restart local p0    # "l1":J
    :cond_0
    move-wide p0, p2

    #@6
    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 4
    .param p0, "start"    # D
    .param p2, "direction"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1915
    cmpl-double v0, p0, v2

    #@4
    if-nez v0, :cond_0

    #@6
    cmpl-double v0, p2, v2

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1916
    return-wide p2

    #@b
    .line 1918
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->nextafter(DD)D

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "direction"    # D

    #@0
    .prologue
    .line 1928
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1937
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1946
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    #@0
    .prologue
    .line 1468
    invoke-static {}, Ljava/lang/Math;->random()D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1533
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1510
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 18
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    #@0
    .prologue
    .line 1955
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v11

    #@4
    if-nez v11, :cond_0

    #@6
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@9
    move-result v11

    #@a
    if-nez v11, :cond_0

    #@c
    const-wide/16 v12, 0x0

    #@e
    cmpl-double v11, p0, v12

    #@10
    if-nez v11, :cond_1

    #@12
    .line 1956
    :cond_0
    return-wide p0

    #@13
    .line 1959
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@16
    move-result-wide v0

    #@17
    .line 1961
    .local v0, "bits":J
    const-wide/high16 v12, -0x8000000000000000L

    #@19
    and-long v8, v0, v12

    #@1b
    .line 1963
    .local v8, "sign":J
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1d
    and-long/2addr v12, v0

    #@1e
    const/16 v11, 0x34

    #@20
    shr-long/2addr v12, v11

    #@21
    long-to-int v11, v12

    #@22
    add-int/lit16 v11, v11, -0x3ff

    #@24
    add-int v11, v11, p2

    #@26
    int-to-long v4, v11

    #@27
    .line 1967
    .local v4, "factor":J
    const-wide v12, 0x7fffffffffffffffL

    #@2c
    and-long/2addr v12, v0

    #@2d
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@30
    move-result v11

    #@31
    add-int/lit8 v10, v11, -0xc

    #@33
    .line 1969
    .local v10, "subNormalFactor":I
    if-gez v10, :cond_2

    #@35
    .line 1971
    const/4 v10, 0x0

    #@36
    .line 1973
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@39
    move-result-wide v12

    #@3a
    const-wide/high16 v14, 0x10000000000000L

    #@3c
    cmpg-double v11, v12, v14

    #@3e
    if-gez v11, :cond_3

    #@40
    .line 1974
    int-to-long v12, v10

    #@41
    sub-long/2addr v4, v12

    #@42
    .line 1976
    :cond_3
    const-wide/16 v12, 0x3ff

    #@44
    cmp-long v11, v4, v12

    #@46
    if-lez v11, :cond_5

    #@48
    .line 1977
    const-wide/16 v12, 0x0

    #@4a
    cmpl-double v11, p0, v12

    #@4c
    if-lez v11, :cond_4

    #@4e
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@50
    :goto_0
    return-wide v12

    #@51
    :cond_4
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@53
    goto :goto_0

    #@54
    .line 1982
    :cond_5
    const-wide/16 v12, -0x3ff

    #@56
    cmp-long v11, v4, v12

    #@58
    if-gez v11, :cond_7

    #@5a
    .line 1984
    const-wide/16 v12, 0x3ff

    #@5c
    add-long/2addr v12, v4

    #@5d
    int-to-long v14, v10

    #@5e
    add-long v2, v12, v14

    #@60
    .line 1985
    .local v2, "digits":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@63
    move-result-wide v12

    #@64
    const-wide/high16 v14, 0x10000000000000L

    #@66
    cmpg-double v11, v12, v14

    #@68
    if-gez v11, :cond_6

    #@6a
    .line 1987
    const-wide v12, 0xfffffffffffffL

    #@6f
    and-long/2addr v12, v0

    #@70
    invoke-static {v12, v13, v2, v3}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    #@73
    move-result-wide v6

    #@74
    .line 2001
    .end local v2    # "digits":J
    .local v6, "result":J
    :goto_1
    or-long v12, v6, v8

    #@76
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@79
    move-result-wide v12

    #@7a
    return-wide v12

    #@7b
    .line 1990
    .end local v6    # "result":J
    .restart local v2    # "digits":J
    :cond_6
    const-wide v12, 0xfffffffffffffL

    #@80
    and-long/2addr v12, v0

    #@81
    const-wide/high16 v14, 0x10000000000000L

    #@83
    or-long/2addr v12, v14

    #@84
    const-wide/16 v14, 0x1

    #@86
    sub-long v14, v2, v14

    #@88
    invoke-static {v12, v13, v14, v15}, Ljava/lang/StrictMath;->shiftLongBits(JJ)J

    #@8b
    move-result-wide v6

    #@8c
    .restart local v6    # "result":J
    goto :goto_1

    #@8d
    .line 1993
    .end local v2    # "digits":J
    .end local v6    # "result":J
    :cond_7
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@90
    move-result-wide v12

    #@91
    const-wide/high16 v14, 0x10000000000000L

    #@93
    cmpl-double v11, v12, v14

    #@95
    if-ltz v11, :cond_8

    #@97
    .line 1995
    const-wide/16 v12, 0x3ff

    #@99
    add-long/2addr v12, v4

    #@9a
    const/16 v11, 0x34

    #@9c
    shl-long/2addr v12, v11

    #@9d
    const-wide v14, 0xfffffffffffffL

    #@a2
    and-long/2addr v14, v0

    #@a3
    or-long v6, v12, v14

    #@a5
    .restart local v6    # "result":J
    goto :goto_1

    #@a6
    .line 1998
    .end local v6    # "result":J
    :cond_8
    const-wide/16 v12, 0x3ff

    #@a8
    add-long/2addr v12, v4

    #@a9
    const/16 v11, 0x34

    #@ab
    shl-long/2addr v12, v11

    #@ac
    add-int/lit8 v11, v10, 0x1

    #@ae
    shl-long v14, v0, v11

    #@b0
    const-wide v16, 0xfffffffffffffL

    #@b5
    and-long v14, v14, v16

    #@b7
    or-long v6, v12, v14

    #@b9
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method public static scalb(FI)F
    .locals 10
    .param p0, "d"    # F
    .param p1, "scaleFactor"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v7, 0x800000

    #@3
    const v8, 0x7fffff

    #@6
    .line 2010
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_0

    #@c
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_0

    #@12
    cmpl-float v6, p0, v9

    #@14
    if-nez v6, :cond_1

    #@16
    .line 2011
    :cond_0
    return p0

    #@17
    .line 2013
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1a
    move-result v0

    #@1b
    .line 2014
    .local v0, "bits":I
    const/high16 v6, -0x80000000

    #@1d
    and-int v4, v0, v6

    #@1f
    .line 2015
    .local v4, "sign":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    #@21
    and-int/2addr v6, v0

    #@22
    shr-int/lit8 v6, v6, 0x17

    #@24
    add-int/lit8 v6, v6, -0x7f

    #@26
    add-int v2, v6, p1

    #@28
    .line 2018
    .local v2, "factor":I
    const v6, 0x7fffffff

    #@2b
    and-int/2addr v6, v0

    #@2c
    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@2f
    move-result v6

    #@30
    add-int/lit8 v5, v6, -0x9

    #@32
    .line 2019
    .local v5, "subNormalFactor":I
    if-gez v5, :cond_2

    #@34
    .line 2021
    const/4 v5, 0x0

    #@35
    .line 2023
    :cond_2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@38
    move-result v6

    #@39
    cmpg-float v6, v6, v7

    #@3b
    if-gez v6, :cond_3

    #@3d
    .line 2024
    sub-int/2addr v2, v5

    #@3e
    .line 2026
    :cond_3
    const/16 v6, 0x7f

    #@40
    if-le v2, v6, :cond_5

    #@42
    .line 2027
    cmpl-float v6, p0, v9

    #@44
    if-lez v6, :cond_4

    #@46
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    #@48
    :goto_0
    return v6

    #@49
    :cond_4
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    #@4b
    goto :goto_0

    #@4c
    .line 2032
    :cond_5
    const/16 v6, -0x7f

    #@4e
    if-ge v2, v6, :cond_7

    #@50
    .line 2034
    add-int/lit8 v6, v2, 0x7f

    #@52
    add-int v1, v6, v5

    #@54
    .line 2035
    .local v1, "digits":I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@57
    move-result v6

    #@58
    cmpg-float v6, v6, v7

    #@5a
    if-gez v6, :cond_6

    #@5c
    .line 2037
    and-int v6, v0, v8

    #@5e
    invoke-static {v6, v1}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    #@61
    move-result v3

    #@62
    .line 2054
    .end local v1    # "digits":I
    .local v3, "result":I
    :goto_1
    or-int v6, v3, v4

    #@64
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@67
    move-result v6

    #@68
    return v6

    #@69
    .line 2040
    .end local v3    # "result":I
    .restart local v1    # "digits":I
    :cond_6
    and-int v6, v0, v8

    #@6b
    const/high16 v7, 0x800000

    #@6d
    or-int/2addr v6, v7

    #@6e
    add-int/lit8 v7, v1, -0x1

    #@70
    invoke-static {v6, v7}, Ljava/lang/StrictMath;->shiftIntBits(II)I

    #@73
    move-result v3

    #@74
    .restart local v3    # "result":I
    goto :goto_1

    #@75
    .line 2043
    .end local v1    # "digits":I
    .end local v3    # "result":I
    :cond_7
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@78
    move-result v6

    #@79
    cmpl-float v6, v6, v7

    #@7b
    if-ltz v6, :cond_8

    #@7d
    .line 2045
    add-int/lit8 v6, v2, 0x7f

    #@7f
    shl-int/lit8 v6, v6, 0x17

    #@81
    .line 2046
    and-int v7, v0, v8

    #@83
    .line 2045
    or-int v3, v6, v7

    #@85
    .restart local v3    # "result":I
    goto :goto_1

    #@86
    .line 2049
    .end local v3    # "result":I
    :cond_8
    add-int/lit8 v6, v2, 0x7f

    #@88
    shl-int/lit8 v6, v6, 0x17

    #@8a
    .line 2051
    add-int/lit8 v7, v5, 0x1

    #@8c
    shl-int v7, v0, v7

    #@8e
    .line 2050
    and-int/2addr v7, v8

    #@8f
    .line 2049
    or-int v3, v6, v7

    #@91
    .restart local v3    # "result":I
    goto :goto_1
.end method

.method private static shiftIntBits(II)I
    .locals 4
    .param p0, "bits"    # I
    .param p1, "digits"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2060
    if-lez p1, :cond_0

    #@3
    .line 2061
    shl-int v1, p0, p1

    #@5
    return v1

    #@6
    .line 2064
    :cond_0
    neg-int v0, p1

    #@7
    .line 2065
    .local v0, "absDigits":I
    const v1, 0x7fffffff

    #@a
    and-int/2addr v1, p0

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@e
    move-result v1

    #@f
    .line 2066
    rsub-int/lit8 v2, v0, 0x20

    #@11
    .line 2065
    if-gt v1, v2, :cond_3

    #@13
    .line 2068
    add-int/lit8 v1, v0, -0x1

    #@15
    shr-int v1, p0, v1

    #@17
    and-int/lit8 v1, v1, 0x1

    #@19
    if-eqz v1, :cond_1

    #@1b
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@1e
    move-result v1

    #@1f
    add-int/lit8 v2, v0, -0x1

    #@21
    if-ne v1, v2, :cond_2

    #@23
    .line 2069
    :cond_1
    shr-int v1, p0, v0

    #@25
    return v1

    #@26
    .line 2071
    :cond_2
    shr-int v1, p0, v0

    #@28
    add-int/lit8 v1, v1, 0x1

    #@2a
    return v1

    #@2b
    .line 2073
    :cond_3
    return v3
.end method

.method private static shiftLongBits(JJ)J
    .locals 10
    .param p0, "bits"    # J
    .param p2, "digits"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const-wide/16 v6, 0x1

    #@4
    .line 2079
    cmp-long v2, p2, v8

    #@6
    if-lez v2, :cond_0

    #@8
    .line 2080
    long-to-int v2, p2

    #@9
    shl-long v2, p0, v2

    #@b
    return-wide v2

    #@c
    .line 2083
    :cond_0
    neg-long v0, p2

    #@d
    .line 2084
    .local v0, "absDigits":J
    const-wide v2, 0x7fffffffffffffffL

    #@12
    and-long/2addr v2, p0

    #@13
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@16
    move-result v2

    #@17
    int-to-long v2, v2

    #@18
    .line 2085
    const-wide/16 v4, 0x40

    #@1a
    sub-long/2addr v4, v0

    #@1b
    .line 2084
    cmp-long v2, v2, v4

    #@1d
    if-gtz v2, :cond_3

    #@1f
    .line 2087
    sub-long v2, v0, v6

    #@21
    long-to-int v2, v2

    #@22
    shr-long v2, p0, v2

    #@24
    and-long/2addr v2, v6

    #@25
    cmp-long v2, v2, v8

    #@27
    if-eqz v2, :cond_1

    #@29
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@2c
    move-result v2

    #@2d
    int-to-long v2, v2

    #@2e
    sub-long v4, v0, v6

    #@30
    cmp-long v2, v2, v4

    #@32
    if-nez v2, :cond_2

    #@34
    .line 2088
    :cond_1
    long-to-int v2, v0

    #@35
    shr-long v2, p0, v2

    #@37
    return-wide v2

    #@38
    .line 2090
    :cond_2
    long-to-int v2, v0

    #@39
    shr-long v2, p0, v2

    #@3b
    add-long/2addr v2, v6

    #@3c
    return-wide v2

    #@3d
    .line 2092
    :cond_3
    return-wide v8
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1556
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static signum(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1579
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native sin(D)D
.end method

.method public static sinh(D)D
    .locals 18
    .param p0, "x"    # D

    #@0
    .prologue
    .line 1604
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 1606
    .local v0, "bits":J
    const/16 v12, 0x20

    #@6
    ushr-long v12, v0, v12

    #@8
    long-to-int v5, v12

    #@9
    .line 1607
    .local v5, "jx":I
    const v12, 0x7fffffff

    #@c
    and-int v4, v5, v12

    #@e
    .line 1610
    .local v4, "ix":I
    const/high16 v12, 0x7ff00000

    #@10
    if-lt v4, v12, :cond_0

    #@12
    .line 1611
    add-double v12, p0, p0

    #@14
    return-wide v12

    #@15
    .line 1614
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@17
    .line 1615
    .local v2, "h":D
    if-gez v5, :cond_1

    #@19
    .line 1616
    neg-double v2, v2

    #@1a
    .line 1620
    :cond_1
    const/high16 v12, 0x40360000    # 2.84375f

    #@1c
    if-ge v4, v12, :cond_4

    #@1e
    .line 1621
    const/high16 v12, 0x3e300000    # 0.171875f

    #@20
    if-ge v4, v12, :cond_2

    #@22
    .line 1622
    const-wide v12, 0x7fac7b1f3cac7433L    # 1.0E307

    #@27
    add-double v12, v12, p0

    #@29
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    #@2b
    cmpl-double v12, v12, v14

    #@2d
    if-lez v12, :cond_2

    #@2f
    .line 1623
    return-wide p0

    #@30
    .line 1625
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@33
    move-result-wide v12

    #@34
    invoke-static {v12, v13}, Ljava/lang/StrictMath;->expm1(D)D

    #@37
    move-result-wide v8

    #@38
    .line 1626
    .local v8, "t":D
    const/high16 v12, 0x3ff00000    # 1.875f

    #@3a
    if-ge v4, v12, :cond_3

    #@3c
    .line 1627
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@3e
    mul-double/2addr v12, v8

    #@3f
    mul-double v14, v8, v8

    #@41
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    #@43
    add-double v16, v16, v8

    #@45
    div-double v14, v14, v16

    #@47
    sub-double/2addr v12, v14

    #@48
    mul-double/2addr v12, v2

    #@49
    return-wide v12

    #@4a
    .line 1628
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@4c
    add-double/2addr v12, v8

    #@4d
    div-double v12, v8, v12

    #@4f
    add-double/2addr v12, v8

    #@50
    mul-double/2addr v12, v2

    #@51
    return-wide v12

    #@52
    .line 1632
    .end local v8    # "t":D
    :cond_4
    const v12, 0x40862e42

    #@55
    if-ge v4, v12, :cond_5

    #@57
    .line 1633
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@5a
    move-result-wide v12

    #@5b
    invoke-static {v12, v13}, Ljava/lang/StrictMath;->exp(D)D

    #@5e
    move-result-wide v12

    #@5f
    mul-double/2addr v12, v2

    #@60
    return-wide v12

    #@61
    .line 1637
    :cond_5
    sget-wide v12, Ljava/lang/StrictMath;->ONEBITS:J

    #@63
    const/16 v14, 0x1d

    #@65
    ushr-long/2addr v12, v14

    #@66
    long-to-int v14, v0

    #@67
    int-to-long v14, v14

    #@68
    add-long/2addr v12, v14

    #@69
    const-wide v14, 0xffffffffL

    #@6e
    and-long v6, v12, v14

    #@70
    .line 1639
    .local v6, "lx":J
    const v12, 0x408633ce

    #@73
    if-lt v4, v12, :cond_6

    #@75
    const v12, 0x408633ce

    #@78
    if-ne v4, v12, :cond_7

    #@7a
    const-wide v12, 0x8fb9f87dL

    #@7f
    cmp-long v12, v6, v12

    #@81
    if-gtz v12, :cond_7

    #@83
    .line 1640
    :cond_6
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@86
    move-result-wide v12

    #@87
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    #@89
    mul-double/2addr v12, v14

    #@8a
    invoke-static {v12, v13}, Ljava/lang/StrictMath;->exp(D)D

    #@8d
    move-result-wide v10

    #@8e
    .line 1641
    .local v10, "w":D
    mul-double v8, v2, v10

    #@90
    .line 1642
    .restart local v8    # "t":D
    mul-double v12, v8, v10

    #@92
    return-wide v12

    #@93
    .line 1646
    .end local v8    # "t":D
    .end local v10    # "w":D
    :cond_7
    const-wide v12, 0x7fac7b1f3cac7433L    # 1.0E307

    #@98
    mul-double v12, v12, p0

    #@9a
    return-wide v12
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static tanh(D)D
    .locals 14
    .param p0, "x"    # D

    #@0
    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@4
    .line 1721
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@7
    move-result-wide v0

    #@8
    .line 1723
    .local v0, "bits":J
    const/16 v8, 0x20

    #@a
    ushr-long v8, v0, v8

    #@c
    long-to-int v3, v8

    #@d
    .line 1724
    .local v3, "jx":I
    const v8, 0x7fffffff

    #@10
    and-int v2, v3, v8

    #@12
    .line 1727
    .local v2, "ix":I
    const/high16 v8, 0x7ff00000

    #@14
    if-lt v2, v8, :cond_1

    #@16
    .line 1728
    if-ltz v3, :cond_0

    #@18
    .line 1729
    div-double v8, v10, p0

    #@1a
    add-double/2addr v8, v10

    #@1b
    return-wide v8

    #@1c
    .line 1731
    :cond_0
    div-double v8, v10, p0

    #@1e
    sub-double/2addr v8, v10

    #@1f
    return-wide v8

    #@20
    .line 1736
    :cond_1
    const/high16 v8, 0x40360000    # 2.84375f

    #@22
    if-ge v2, v8, :cond_4

    #@24
    .line 1737
    const/high16 v8, 0x3c800000    # 0.015625f

    #@26
    if-ge v2, v8, :cond_2

    #@28
    .line 1738
    add-double v8, v10, p0

    #@2a
    mul-double/2addr v8, p0

    #@2b
    return-wide v8

    #@2c
    .line 1741
    :cond_2
    const/high16 v8, 0x3ff00000    # 1.875f

    #@2e
    if-lt v2, v8, :cond_3

    #@30
    .line 1742
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@33
    move-result-wide v8

    #@34
    mul-double/2addr v8, v12

    #@35
    invoke-static {v8, v9}, Ljava/lang/Math;->expm1(D)D

    #@38
    move-result-wide v4

    #@39
    .line 1743
    .local v4, "t":D
    add-double v8, v4, v12

    #@3b
    div-double v8, v12, v8

    #@3d
    sub-double v6, v10, v8

    #@3f
    .line 1752
    .end local v4    # "t":D
    .local v6, "z":D
    :goto_0
    if-ltz v3, :cond_5

    #@41
    .end local v6    # "z":D
    :goto_1
    return-wide v6

    #@42
    .line 1745
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@45
    move-result-wide v8

    #@46
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    #@48
    mul-double/2addr v8, v10

    #@49
    invoke-static {v8, v9}, Ljava/lang/Math;->expm1(D)D

    #@4c
    move-result-wide v4

    #@4d
    .line 1746
    .restart local v4    # "t":D
    neg-double v8, v4

    #@4e
    add-double v10, v4, v12

    #@50
    div-double v6, v8, v10

    #@52
    .restart local v6    # "z":D
    goto :goto_0

    #@53
    .line 1750
    .end local v4    # "t":D
    .end local v6    # "z":D
    :cond_4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@55
    .restart local v6    # "z":D
    goto :goto_0

    #@56
    .line 1752
    :cond_5
    neg-double v6, v6

    #@57
    goto :goto_1
.end method

.method public static toDegrees(D)D
    .locals 2
    .param p0, "angrad"    # D

    #@0
    .prologue
    .line 1773
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 2
    .param p0, "angdeg"    # D

    #@0
    .prologue
    .line 1794
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@5
    .line 1818
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1819
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@d
    return-wide v0

    #@e
    .line 1820
    :cond_0
    cmpl-double v0, p0, v2

    #@10
    if-eqz v0, :cond_1

    #@12
    const-wide v0, -0x10000000000001L

    #@17
    cmpl-double v0, p0, v0

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 1821
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@1d
    const-wide v2, 0x408e580000000000L    # 971.0

    #@22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    #@25
    move-result-wide v0

    #@26
    return-wide v0

    #@27
    .line 1823
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@2a
    move-result-wide p0

    #@2b
    .line 1824
    invoke-static {p0, p1, v2, v3}, Ljava/lang/StrictMath;->nextafter(DD)D

    #@2e
    move-result-wide v0

    #@2f
    sub-double/2addr v0, p0

    #@30
    return-wide v0
.end method

.method public static ulp(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1847
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method
