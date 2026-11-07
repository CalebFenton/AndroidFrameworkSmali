.class Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ASCIIToBinaryBuffer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist BIG_10_POW:[D

.field private static final blacklist MAX_SMALL_TEN:I

.field private static final blacklist SINGLE_MAX_SMALL_TEN:I

.field private static final blacklist SINGLE_SMALL_10_POW:[F

.field private static final blacklist SMALL_10_POW:[D

.field private static final blacklist TINY_10_POW:[D


# instance fields
.field blacklist decExponent:I

.field blacklist digits:[C

.field blacklist isNegative:Z

.field blacklist nDigits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1034
    const-class v0, Ljdk/internal/math/FloatingDecimal;

    .line 1705
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_32

    sput-object v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    .line 1714
    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_92

    sput-object v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    .line 1720
    const/4 v0, 0x5

    new-array v1, v0, [D

    fill-array-data v1, :array_ac

    sput-object v1, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    .line 1722
    new-array v0, v0, [D

    fill-array-data v0, :array_c4

    sput-object v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    .line 1725
    sget-object v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    .line 1726
    sget-object v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    return-void

    :array_32
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_92
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_ac
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    :array_c4
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data
.end method

.method constructor blacklist <init>(ZI[CI)V
    .registers 5
    .param p1, "negSign"    # Z
    .param p2, "decExponent"    # I
    .param p3, "digits"    # [C
    .param p4, "n"    # I

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    iput-boolean p1, p0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    .line 1043
    iput p2, p0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    .line 1044
    iput-object p3, p0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    .line 1045
    iput p4, p0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1046
    return-void
.end method


# virtual methods
.method public blacklist doubleValue()D
    .registers 45

    .line 1058
    move-object/from16 v0, p0

    iget v1, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1063
    .local v7, "kDigits":I
    iget-object v1, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    add-int/lit8 v1, v1, -0x30

    .line 1064
    .local v1, "iValue":I
    const/16 v3, 0x9

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1065
    .local v9, "iDigits":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_18
    if-ge v3, v9, :cond_26

    .line 1066
    mul-int/lit8 v4, v1, 0xa

    iget-object v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x30

    .line 1065
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1068
    .end local v3    # "i":I
    :cond_26
    int-to-long v3, v1

    .line 1069
    .local v3, "lValue":J
    move v5, v9

    move-wide/from16 v42, v3

    move v3, v5

    move-wide/from16 v4, v42

    .local v3, "i":I
    .local v4, "lValue":J
    :goto_2d
    if-ge v3, v7, :cond_3e

    .line 1070
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v4

    iget-object v6, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v6, v6, v3

    add-int/lit8 v6, v6, -0x30

    int-to-long v12, v6

    add-long v4, v10, v12

    .line 1069
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1072
    .end local v3    # "i":I
    :cond_3e
    long-to-double v10, v4

    .line 1073
    .local v10, "dValue":D
    iget v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int/2addr v3, v7

    .line 1080
    .local v3, "exp":I
    iget v6, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const-wide/16 v12, 0x0

    const/16 v8, 0xf

    if-gt v6, v8, :cond_9c

    .line 1091
    if-eqz v3, :cond_94

    cmpl-double v6, v10, v12

    if-nez v6, :cond_51

    goto :goto_94

    .line 1094
    :cond_51
    if-ltz v3, :cond_80

    .line 1095
    sget v6, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    if-gt v3, v6, :cond_64

    .line 1100
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v12, v2, v3

    mul-double/2addr v12, v10

    .line 1101
    .local v12, "rValue":D
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_62

    neg-double v14, v12

    goto :goto_63

    :cond_62
    move-wide v14, v12

    :goto_63
    return-wide v14

    .line 1103
    .end local v12    # "rValue":D
    :cond_64
    rsub-int/lit8 v6, v7, 0xf

    .line 1104
    .local v6, "slop":I
    sget v8, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    add-int/2addr v8, v6

    if-gt v3, v8, :cond_7f

    .line 1111
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v12, v2, v6

    mul-double/2addr v10, v12

    .line 1112
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    sub-int v8, v3, v6

    aget-wide v12, v2, v8

    mul-double/2addr v12, v10

    .line 1113
    .restart local v12    # "rValue":D
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_7d

    neg-double v14, v12

    goto :goto_7e

    :cond_7d
    move-wide v14, v12

    :goto_7e
    return-wide v14

    .line 1118
    .end local v6    # "slop":I
    .end local v12    # "rValue":D
    :cond_7f
    goto :goto_9c

    .line 1119
    :cond_80
    sget v6, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    neg-int v6, v6

    if-lt v3, v6, :cond_9c

    .line 1123
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    neg-int v6, v3

    aget-wide v12, v2, v6

    div-double v12, v10, v12

    .line 1124
    .restart local v12    # "rValue":D
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_92

    neg-double v14, v12

    goto :goto_93

    :cond_92
    move-wide v14, v12

    :goto_93
    return-wide v14

    .line 1092
    .end local v12    # "rValue":D
    :cond_94
    :goto_94
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_9a

    neg-double v12, v10

    goto :goto_9b

    :cond_9a
    move-wide v12, v10

    :goto_9b
    return-wide v12

    .line 1140
    :cond_9c
    :goto_9c
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v6, 0x1

    if-lez v3, :cond_102

    .line 1141
    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v12, 0x135

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-le v8, v12, :cond_b3

    .line 1146
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_b0

    goto :goto_b2

    :cond_b0
    move-wide/from16 v16, v18

    :goto_b2
    return-wide v16

    .line 1148
    :cond_b3
    and-int/lit8 v8, v3, 0xf

    if-eqz v8, :cond_be

    .line 1149
    sget-object v8, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v12, v3, 0xf

    aget-wide v12, v8, v12

    mul-double/2addr v10, v12

    .line 1151
    :cond_be
    shr-int/lit8 v8, v3, 0x4

    move v3, v8

    if-eqz v8, :cond_fe

    .line 1153
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_c4
    if-le v3, v6, :cond_d4

    .line 1154
    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_cf

    .line 1155
    sget-object v12, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v12, v12, v8

    mul-double/2addr v10, v12

    .line 1153
    :cond_cf
    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_c4

    .line 1164
    :cond_d4
    sget-object v12, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v12, v12, v8

    mul-double/2addr v12, v10

    .line 1165
    .local v12, "t":D
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v20

    if-eqz v20, :cond_f9

    .line 1178
    div-double v12, v10, v14

    .line 1179
    sget-object v14, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v14, v14, v8

    mul-double/2addr v12, v14

    .line 1180
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_f4

    .line 1181
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_f1

    goto :goto_f3

    :cond_f1
    move-wide/from16 v16, v18

    :goto_f3
    return-wide v16

    .line 1183
    :cond_f4
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1185
    :cond_f9
    move-wide v10, v12

    .line 1186
    .end local v8    # "j":I
    .end local v12    # "t":D
    move-wide v11, v10

    move v10, v3

    goto/16 :goto_162

    .line 1151
    :cond_fe
    move-wide v11, v10

    move v10, v3

    goto/16 :goto_162

    .line 1187
    :cond_102
    if-gez v3, :cond_160

    .line 1188
    neg-int v3, v3

    .line 1189
    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-wide/from16 v16, v12

    const/16 v12, -0x145

    const-wide/high16 v18, -0x8000000000000000L

    if-ge v8, v12, :cond_119

    .line 1194
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_116

    move-wide/from16 v12, v18

    goto :goto_118

    :cond_116
    move-wide/from16 v12, v16

    :goto_118
    return-wide v12

    .line 1196
    :cond_119
    and-int/lit8 v8, v3, 0xf

    if-eqz v8, :cond_124

    .line 1197
    sget-object v8, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v12, v3, 0xf

    aget-wide v12, v8, v12

    div-double/2addr v10, v12

    .line 1199
    :cond_124
    shr-int/lit8 v8, v3, 0x4

    move v3, v8

    if-eqz v8, :cond_15d

    .line 1201
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_12a
    if-le v3, v6, :cond_13a

    .line 1202
    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_135

    .line 1203
    sget-object v12, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v12, v12, v8

    mul-double/2addr v10, v12

    .line 1201
    :cond_135
    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_12a

    .line 1212
    :cond_13a
    sget-object v12, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v12, v12, v8

    mul-double/2addr v12, v10

    .line 1213
    .restart local v12    # "t":D
    cmpl-double v20, v12, v16

    if-nez v20, :cond_159

    .line 1226
    mul-double/2addr v14, v10

    .line 1227
    .end local v12    # "t":D
    .local v14, "t":D
    sget-object v12, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v12, v12, v8

    mul-double/2addr v14, v12

    .line 1228
    cmpl-double v12, v14, v16

    if-nez v12, :cond_157

    .line 1229
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_154

    move-wide/from16 v12, v18

    goto :goto_156

    :cond_154
    move-wide/from16 v12, v16

    :goto_156
    return-wide v12

    .line 1231
    :cond_157
    const-wide/16 v12, 0x1

    .line 1233
    .end local v14    # "t":D
    .restart local v12    # "t":D
    :cond_159
    move-wide v10, v12

    move-wide v11, v10

    move v10, v3

    goto :goto_162

    .line 1199
    .end local v8    # "j":I
    .end local v12    # "t":D
    :cond_15d
    move-wide v11, v10

    move v10, v3

    goto :goto_162

    .line 1187
    :cond_160
    move-wide v11, v10

    move v10, v3

    .line 1244
    .end local v3    # "exp":I
    .local v10, "exp":I
    .local v11, "dValue":D
    :goto_162
    iget v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0x44c

    if-le v3, v8, :cond_172

    .line 1245
    const/16 v3, 0x44d

    iput v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1246
    iget-object v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v13, 0x31

    aput-char v13, v3, v8

    .line 1248
    :cond_172
    new-instance v3, Ljdk/internal/math/FDBigInteger;

    move v8, v6

    iget-object v6, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    move v13, v8

    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    invoke-direct/range {v3 .. v8}, Ljdk/internal/math/FDBigInteger;-><init>(J[CII)V

    .line 1249
    .local v3, "bigD0":Ljdk/internal/math/FDBigInteger;
    iget v6, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int/2addr v6, v8

    .line 1251
    .end local v10    # "exp":I
    .local v6, "exp":I
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v14

    .line 1252
    .local v14, "ieeeBits":J
    neg-int v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1253
    .local v8, "B5":I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1254
    .local v10, "D5":I
    invoke-virtual {v3, v10, v2}, Ljdk/internal/math/FDBigInteger;->multByPow52(II)Ljdk/internal/math/FDBigInteger;

    move-result-object v2

    .line 1255
    .end local v3    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .local v2, "bigD0":Ljdk/internal/math/FDBigInteger;
    invoke-virtual {v2}, Ljdk/internal/math/FDBigInteger;->makeImmutable()V

    .line 1256
    const/4 v3, 0x0

    .line 1257
    .local v3, "bigD":Ljdk/internal/math/FDBigInteger;
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 1262
    .local v13, "prevD2":I
    :goto_19b
    const/16 v17, 0x34

    move-wide/from16 v18, v4

    move-object v5, v3

    .end local v3    # "bigD":Ljdk/internal/math/FDBigInteger;
    .end local v4    # "lValue":J
    .local v5, "bigD":Ljdk/internal/math/FDBigInteger;
    .local v18, "lValue":J
    ushr-long v3, v14, v17

    long-to-int v3, v3

    .line 1263
    .local v3, "binexp":I
    const-wide v20, 0xfffffffffffffL

    and-long v20, v14, v20

    .line 1264
    .local v20, "bigBbits":J
    if-lez v3, :cond_1b1

    .line 1265
    const-wide/high16 v22, 0x10000000000000L

    or-long v20, v20, v22

    goto :goto_1bc

    .line 1267
    :cond_1b1
    nop

    .line 1268
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    .line 1269
    .local v4, "leadingZeros":I
    add-int/lit8 v17, v4, -0xb

    .line 1270
    .local v17, "shift":I
    shl-long v20, v20, v17

    .line 1271
    rsub-int/lit8 v3, v17, 0x1

    .line 1273
    .end local v4    # "leadingZeros":I
    .end local v17    # "shift":I
    :goto_1bc
    const/16 v4, -0x3ff

    add-int/2addr v3, v4

    .line 1274
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v17

    .line 1275
    .local v17, "lowOrderZeros":I
    move-object/from16 v22, v5

    .end local v5    # "bigD":Ljdk/internal/math/FDBigInteger;
    .local v22, "bigD":Ljdk/internal/math/FDBigInteger;
    ushr-long v4, v20, v17

    .line 1276
    .end local v20    # "bigBbits":J
    .local v4, "bigBbits":J
    add-int/lit8 v20, v3, -0x34

    move/from16 v21, v1

    .end local v1    # "iValue":I
    .local v21, "iValue":I
    add-int v1, v20, v17

    .line 1277
    .local v1, "bigIntExp":I
    move/from16 v20, v6

    .end local v6    # "exp":I
    .local v20, "exp":I
    rsub-int/lit8 v6, v17, 0x35

    .line 1288
    .local v6, "bigIntNBits":I
    move/from16 v24, v8

    .line 1289
    .local v24, "B2":I
    move/from16 v25, v10

    .line 1291
    .local v25, "D2":I
    if-ltz v1, :cond_1da

    .line 1292
    add-int v24, v24, v1

    goto :goto_1dc

    .line 1294
    :cond_1da
    sub-int v25, v25, v1

    .line 1296
    :goto_1dc
    move/from16 v26, v24

    .line 1300
    .local v26, "Ulp2":I
    move/from16 v27, v7

    const/16 v7, -0x3ff

    .end local v7    # "kDigits":I
    .local v27, "kDigits":I
    if-gt v3, v7, :cond_1e9

    .line 1304
    add-int v7, v3, v17

    add-int/lit16 v7, v7, 0x3ff

    .local v7, "hulpbias":I
    goto :goto_1eb

    .line 1306
    .end local v7    # "hulpbias":I
    :cond_1e9
    add-int/lit8 v7, v17, 0x1

    .line 1308
    .restart local v7    # "hulpbias":I
    :goto_1eb
    move/from16 v23, v3

    .end local v3    # "binexp":I
    .local v23, "binexp":I
    add-int v3, v24, v7

    .line 1309
    .end local v24    # "B2":I
    .local v3, "B2":I
    move/from16 v24, v7

    .end local v7    # "hulpbias":I
    .local v24, "hulpbias":I
    add-int v7, v25, v24

    .line 1312
    .end local v25    # "D2":I
    .local v7, "D2":I
    move/from16 v25, v9

    move/from16 v9, v26

    move/from16 v26, v10

    .end local v10    # "D5":I
    .local v9, "Ulp2":I
    .local v25, "iDigits":I
    .local v26, "D5":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1313
    .local v10, "common2":I
    sub-int/2addr v3, v10

    .line 1314
    sub-int/2addr v7, v10

    .line 1315
    sub-int/2addr v9, v10

    .line 1317
    move/from16 v28, v9

    .end local v9    # "Ulp2":I
    .local v28, "Ulp2":I
    invoke-static {v4, v5, v8, v3}, Ljdk/internal/math/FDBigInteger;->valueOfMulPow52(JII)Ljdk/internal/math/FDBigInteger;

    move-result-object v9

    .line 1318
    .local v9, "bigB":Ljdk/internal/math/FDBigInteger;
    if-eqz v22, :cond_216

    if-eq v13, v7, :cond_20f

    goto :goto_216

    :cond_20f
    move-object/from16 v42, v22

    move/from16 v22, v13

    move-object/from16 v13, v42

    goto :goto_221

    .line 1319
    :cond_216
    :goto_216
    invoke-virtual {v2, v7}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v22

    .line 1320
    move v13, v7

    move-object/from16 v42, v22

    move/from16 v22, v13

    move-object/from16 v13, v42

    .line 1339
    .local v13, "bigD":Ljdk/internal/math/FDBigInteger;
    .local v22, "prevD2":I
    :goto_221
    invoke-virtual {v9, v13}, Ljdk/internal/math/FDBigInteger;->cmp(Ljdk/internal/math/FDBigInteger;)I

    move-result v29

    move/from16 v30, v29

    .local v30, "cmpResult":I
    if-lez v29, :cond_255

    .line 1340
    const/16 v29, 0x1

    .line 1341
    .local v29, "overvalue":Z
    move-object/from16 v31, v2

    .end local v2    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .local v31, "bigD0":Ljdk/internal/math/FDBigInteger;
    invoke-virtual {v9, v13}, Ljdk/internal/math/FDBigInteger;->leftInplaceSub(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;

    move-result-object v2

    .line 1342
    .local v2, "diff":Ljdk/internal/math/FDBigInteger;
    move/from16 v32, v3

    const/4 v3, 0x1

    .end local v3    # "B2":I
    .local v32, "B2":I
    if-ne v6, v3, :cond_24f

    const/16 v3, -0x3fe

    if-le v1, v3, :cond_24b

    .line 1347
    add-int/lit8 v3, v28, -0x1

    .line 1348
    .end local v28    # "Ulp2":I
    .local v3, "Ulp2":I
    if-gez v3, :cond_247

    .line 1351
    const/4 v3, 0x0

    .line 1352
    move/from16 v33, v1

    const/4 v1, 0x1

    .end local v1    # "bigIntExp":I
    .local v33, "bigIntExp":I
    invoke-virtual {v2, v1}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v2

    goto :goto_266

    .line 1348
    .end local v33    # "bigIntExp":I
    .restart local v1    # "bigIntExp":I
    :cond_247
    move/from16 v33, v1

    const/4 v1, 0x1

    .end local v1    # "bigIntExp":I
    .restart local v33    # "bigIntExp":I
    goto :goto_266

    .line 1342
    .end local v3    # "Ulp2":I
    .end local v33    # "bigIntExp":I
    .restart local v1    # "bigIntExp":I
    .restart local v28    # "Ulp2":I
    :cond_24b
    move/from16 v33, v1

    const/4 v1, 0x1

    goto :goto_252

    :cond_24f
    move/from16 v33, v1

    move v1, v3

    .line 1363
    .end local v1    # "bigIntExp":I
    .restart local v33    # "bigIntExp":I
    :goto_252
    move/from16 v3, v28

    goto :goto_266

    .line 1355
    .end local v29    # "overvalue":Z
    .end local v31    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .end local v32    # "B2":I
    .end local v33    # "bigIntExp":I
    .restart local v1    # "bigIntExp":I
    .local v2, "bigD0":Ljdk/internal/math/FDBigInteger;
    .local v3, "B2":I
    :cond_255
    move/from16 v33, v1

    move-object/from16 v31, v2

    move/from16 v32, v3

    const/4 v1, 0x1

    .end local v1    # "bigIntExp":I
    .end local v2    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .end local v3    # "B2":I
    .restart local v31    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .restart local v32    # "B2":I
    .restart local v33    # "bigIntExp":I
    if-gez v30, :cond_2a8

    .line 1356
    const/16 v29, 0x0

    .line 1357
    .restart local v29    # "overvalue":Z
    invoke-virtual {v13, v9}, Ljdk/internal/math/FDBigInteger;->rightInplaceSub(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;

    move-result-object v2

    move/from16 v3, v28

    .line 1363
    .end local v28    # "Ulp2":I
    .local v2, "diff":Ljdk/internal/math/FDBigInteger;
    .local v3, "Ulp2":I
    :goto_266
    invoke-virtual {v2, v8, v3}, Ljdk/internal/math/FDBigInteger;->cmpPow52(II)I

    move-result v16

    .line 1364
    .end local v30    # "cmpResult":I
    .local v16, "cmpResult":I
    if-gez v16, :cond_26d

    .line 1367
    goto :goto_2a8

    .line 1368
    :cond_26d
    const-wide/16 v34, -0x1

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x1

    if-nez v16, :cond_283

    .line 1371
    and-long v40, v14, v38

    cmp-long v1, v40, v36

    if-eqz v1, :cond_2a8

    .line 1372
    if-eqz v29, :cond_27e

    goto :goto_280

    :cond_27e
    move-wide/from16 v34, v38

    :goto_280
    add-long v14, v14, v34

    goto :goto_2a8

    .line 1380
    :cond_283
    if-eqz v29, :cond_286

    goto :goto_288

    :cond_286
    move-wide/from16 v34, v38

    :goto_288
    add-long v14, v14, v34

    .line 1381
    cmp-long v28, v14, v36

    if-eqz v28, :cond_2a8

    const-wide/high16 v34, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v28, v14, v34

    if-nez v28, :cond_295

    .line 1382
    goto :goto_2a8

    .line 1381
    :cond_295
    move-object v3, v13

    move-wide/from16 v4, v18

    move/from16 v6, v20

    move/from16 v1, v21

    move/from16 v13, v22

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v7, v27

    move-object/from16 v2, v31

    goto/16 :goto_19b

    .line 1388
    .end local v2    # "diff":Ljdk/internal/math/FDBigInteger;
    .end local v3    # "Ulp2":I
    .end local v4    # "bigBbits":J
    .end local v6    # "bigIntNBits":I
    .end local v7    # "D2":I
    .end local v9    # "bigB":Ljdk/internal/math/FDBigInteger;
    .end local v10    # "common2":I
    .end local v16    # "cmpResult":I
    .end local v17    # "lowOrderZeros":I
    .end local v23    # "binexp":I
    .end local v24    # "hulpbias":I
    .end local v29    # "overvalue":Z
    .end local v32    # "B2":I
    .end local v33    # "bigIntExp":I
    :cond_2a8
    :goto_2a8
    iget-boolean v1, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v1, :cond_2af

    .line 1389
    const-wide/high16 v1, -0x8000000000000000L

    or-long/2addr v14, v1

    .line 1391
    :cond_2af
    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist floatValue()F
    .registers 31

    .line 1405
    move-object/from16 v0, p0

    iget v1, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1409
    .local v7, "kDigits":I
    iget-object v1, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    add-int/lit8 v1, v1, -0x30

    .line 1410
    .local v1, "iValue":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_12
    if-ge v3, v7, :cond_20

    .line 1411
    mul-int/lit8 v4, v1, 0xa

    iget-object v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x30

    .line 1410
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1413
    .end local v3    # "i":I
    :cond_20
    int-to-float v3, v1

    .line 1414
    .local v3, "fValue":F
    iget v4, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int/2addr v4, v7

    .line 1421
    .local v4, "exp":I
    iget v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/4 v6, 0x0

    const/4 v8, 0x7

    if-gt v5, v8, :cond_7b

    .line 1432
    if-eqz v4, :cond_73

    cmpl-float v5, v3, v6

    if-nez v5, :cond_31

    goto :goto_73

    .line 1434
    :cond_31
    if-ltz v4, :cond_60

    .line 1435
    sget v5, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    if-gt v4, v5, :cond_44

    .line 1440
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v2, v2, v4

    mul-float/2addr v3, v2

    .line 1441
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_42

    neg-float v2, v3

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    return v2

    .line 1443
    :cond_44
    rsub-int/lit8 v5, v7, 0x7

    .line 1444
    .local v5, "slop":I
    sget v8, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    add-int/2addr v8, v5

    if-gt v4, v8, :cond_5f

    .line 1451
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v2, v2, v5

    mul-float/2addr v3, v2

    .line 1452
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    sub-int v6, v4, v5

    aget v2, v2, v6

    mul-float/2addr v3, v2

    .line 1453
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_5d

    neg-float v2, v3

    goto :goto_5e

    :cond_5d
    move v2, v3

    :goto_5e
    return v2

    .line 1458
    .end local v5    # "slop":I
    :cond_5f
    goto :goto_b3

    .line 1459
    :cond_60
    sget v5, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    neg-int v5, v5

    if-lt v4, v5, :cond_b3

    .line 1463
    sget-object v2, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    neg-int v5, v4

    aget v2, v2, v5

    div-float/2addr v3, v2

    .line 1464
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_71

    neg-float v2, v3

    goto :goto_72

    :cond_71
    move v2, v3

    :goto_72
    return v2

    .line 1433
    :cond_73
    :goto_73
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_79

    neg-float v2, v3

    goto :goto_7a

    :cond_79
    move v2, v3

    :goto_7a
    return v2

    .line 1470
    :cond_7b
    iget v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    if-lt v5, v8, :cond_b3

    iget v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    add-int/2addr v5, v8

    const/16 v8, 0xf

    if-gt v5, v8, :cond_b3

    .line 1480
    int-to-long v5, v1

    .line 1481
    .local v5, "lValue":J
    move v2, v7

    .local v2, "i":I
    :goto_8c
    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    if-ge v2, v8, :cond_9f

    .line 1482
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v5

    iget-object v10, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v10, v10, v2

    add-int/lit8 v10, v10, -0x30

    int-to-long v10, v10

    add-long v5, v8, v10

    .line 1481
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 1484
    .end local v2    # "i":I
    :cond_9f
    long-to-double v8, v5

    .line 1485
    .local v8, "dValue":D
    iget v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iget v10, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int/2addr v2, v10

    .line 1486
    .end local v4    # "exp":I
    .local v2, "exp":I
    sget-object v4, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v10, v4, v2

    mul-double/2addr v8, v10

    .line 1487
    double-to-float v3, v8

    .line 1488
    iget-boolean v4, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_b1

    neg-float v4, v3

    goto :goto_b2

    :cond_b1
    move v4, v3

    :goto_b2
    return v4

    .line 1500
    .end local v2    # "exp":I
    .end local v5    # "lValue":J
    .end local v8    # "dValue":D
    .restart local v4    # "exp":I
    :cond_b3
    :goto_b3
    float-to-double v8, v3

    .line 1501
    .restart local v8    # "dValue":D
    if-lez v4, :cond_ed

    .line 1502
    iget v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v6, 0x27

    if-le v5, v6, :cond_c6

    .line 1507
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_c3

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_c5

    :cond_c3
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_c5
    return v2

    .line 1509
    :cond_c6
    and-int/lit8 v5, v4, 0xf

    if-eqz v5, :cond_d1

    .line 1510
    sget-object v5, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v6, v4, 0xf

    aget-wide v5, v5, v6

    mul-double/2addr v8, v5

    .line 1512
    :cond_d1
    shr-int/lit8 v5, v4, 0x4

    move v4, v5

    if-eqz v5, :cond_ea

    .line 1514
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_d7
    if-lez v4, :cond_e7

    .line 1515
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_e2

    .line 1516
    sget-object v6, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v10, v6, v5

    mul-double/2addr v8, v10

    .line 1514
    :cond_e2
    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    goto :goto_d7

    .line 1519
    .end local v5    # "j":I
    :cond_e7
    move-wide v10, v8

    move v9, v4

    goto :goto_126

    .line 1512
    :cond_ea
    move-wide v10, v8

    move v9, v4

    goto :goto_126

    .line 1520
    :cond_ed
    if-gez v4, :cond_124

    .line 1521
    neg-int v4, v4

    .line 1522
    iget v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v10, -0x2e

    if-ge v5, v10, :cond_fd

    .line 1527
    iget-boolean v2, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v2, :cond_fc

    const/high16 v6, -0x80000000

    :cond_fc
    return v6

    .line 1529
    :cond_fd
    and-int/lit8 v5, v4, 0xf

    if-eqz v5, :cond_108

    .line 1530
    sget-object v5, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v6, v4, 0xf

    aget-wide v5, v5, v6

    div-double/2addr v8, v5

    .line 1532
    :cond_108
    shr-int/lit8 v5, v4, 0x4

    move v4, v5

    if-eqz v5, :cond_121

    .line 1534
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_10e
    if-lez v4, :cond_11e

    .line 1535
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_119

    .line 1536
    sget-object v6, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v10, v6, v5

    mul-double/2addr v8, v10

    .line 1534
    :cond_119
    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    goto :goto_10e

    :cond_11e
    move-wide v10, v8

    move v9, v4

    goto :goto_126

    .line 1532
    .end local v5    # "j":I
    :cond_121
    move-wide v10, v8

    move v9, v4

    goto :goto_126

    .line 1520
    :cond_124
    move-wide v10, v8

    move v9, v4

    .line 1541
    .end local v4    # "exp":I
    .end local v8    # "dValue":D
    .local v9, "exp":I
    .local v10, "dValue":D
    :goto_126
    double-to-float v4, v10

    const/4 v5, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v4, v5, v6}, Ljava/lang/Math;->clamp(FFF)F

    move-result v12

    .line 1550
    .end local v3    # "fValue":F
    .local v12, "fValue":F
    iget v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v4, 0xc8

    if-le v3, v4, :cond_13f

    .line 1551
    const/16 v3, 0xc9

    iput v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1552
    iget-object v3, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v5, 0x31

    aput-char v5, v3, v4

    .line 1554
    :cond_13f
    new-instance v3, Ljdk/internal/math/FDBigInteger;

    int-to-long v4, v1

    iget-object v6, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    iget v8, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    invoke-direct/range {v3 .. v8}, Ljdk/internal/math/FDBigInteger;-><init>(J[CII)V

    .line 1555
    .local v3, "bigD0":Ljdk/internal/math/FDBigInteger;
    iget v4, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    iget v5, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int/2addr v4, v5

    .line 1557
    .end local v9    # "exp":I
    .restart local v4    # "exp":I
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 1558
    .local v5, "ieeeBits":I
    neg-int v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1559
    .local v6, "B5":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1560
    .local v8, "D5":I
    invoke-virtual {v3, v8, v2}, Ljdk/internal/math/FDBigInteger;->multByPow52(II)Ljdk/internal/math/FDBigInteger;

    move-result-object v2

    .line 1561
    .end local v3    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .local v2, "bigD0":Ljdk/internal/math/FDBigInteger;
    invoke-virtual {v2}, Ljdk/internal/math/FDBigInteger;->makeImmutable()V

    .line 1562
    const/4 v3, 0x0

    .line 1563
    .local v3, "bigD":Ljdk/internal/math/FDBigInteger;
    const/4 v9, 0x0

    .line 1568
    .local v9, "prevD2":I
    :goto_164
    ushr-int/lit8 v13, v5, 0x17

    .line 1569
    .local v13, "binexp":I
    const v14, 0x7fffff

    and-int/2addr v14, v5

    .line 1570
    .local v14, "bigBbits":I
    if-lez v13, :cond_170

    .line 1571
    const/high16 v15, 0x800000

    or-int/2addr v14, v15

    goto :goto_17b

    .line 1573
    :cond_170
    nop

    .line 1574
    invoke-static {v14}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v15

    .line 1575
    .local v15, "leadingZeros":I
    add-int/lit8 v16, v15, -0x8

    .line 1576
    .local v16, "shift":I
    shl-int v14, v14, v16

    .line 1577
    rsub-int/lit8 v13, v16, 0x1

    .line 1579
    .end local v15    # "leadingZeros":I
    .end local v16    # "shift":I
    :goto_17b
    const/16 v15, -0x7f

    add-int/2addr v13, v15

    .line 1580
    invoke-static {v14}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v16

    .line 1581
    .local v16, "lowOrderZeros":I
    ushr-int v14, v14, v16

    .line 1582
    add-int/lit8 v17, v13, -0x17

    add-int v15, v17, v16

    .line 1583
    .local v15, "bigIntExp":I
    move/from16 v17, v1

    .end local v1    # "iValue":I
    .local v17, "iValue":I
    rsub-int/lit8 v1, v16, 0x18

    .line 1594
    .local v1, "bigIntNBits":I
    move/from16 v19, v6

    .line 1595
    .local v19, "B2":I
    move/from16 v20, v8

    .line 1597
    .local v20, "D2":I
    if-ltz v15, :cond_195

    .line 1598
    add-int v19, v19, v15

    goto :goto_197

    .line 1600
    :cond_195
    sub-int v20, v20, v15

    .line 1602
    :goto_197
    move/from16 v21, v19

    .line 1606
    .local v21, "Ulp2":I
    move-object/from16 v22, v3

    const/16 v3, -0x7f

    .end local v3    # "bigD":Ljdk/internal/math/FDBigInteger;
    .local v22, "bigD":Ljdk/internal/math/FDBigInteger;
    if-gt v13, v3, :cond_1a4

    .line 1610
    add-int v3, v13, v16

    add-int/lit8 v3, v3, 0x7f

    .local v3, "hulpbias":I
    goto :goto_1a6

    .line 1612
    .end local v3    # "hulpbias":I
    :cond_1a4
    add-int/lit8 v3, v16, 0x1

    .line 1614
    .restart local v3    # "hulpbias":I
    :goto_1a6
    move/from16 v18, v3

    .end local v3    # "hulpbias":I
    .local v18, "hulpbias":I
    add-int v3, v19, v18

    .line 1615
    .end local v19    # "B2":I
    .local v3, "B2":I
    move/from16 v19, v4

    .end local v4    # "exp":I
    .local v19, "exp":I
    add-int v4, v20, v18

    .line 1618
    .end local v20    # "D2":I
    .local v4, "D2":I
    move/from16 v20, v5

    move/from16 v5, v21

    move/from16 v21, v7

    .end local v7    # "kDigits":I
    .local v5, "Ulp2":I
    .local v20, "ieeeBits":I
    .local v21, "kDigits":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1619
    .local v7, "common2":I
    sub-int/2addr v3, v7

    .line 1620
    sub-int/2addr v4, v7

    .line 1621
    sub-int/2addr v5, v7

    .line 1623
    move/from16 v24, v7

    move/from16 v23, v8

    .end local v7    # "common2":I
    .end local v8    # "D5":I
    .local v23, "D5":I
    .local v24, "common2":I
    int-to-long v7, v14

    invoke-static {v7, v8, v6, v3}, Ljdk/internal/math/FDBigInteger;->valueOfMulPow52(JII)Ljdk/internal/math/FDBigInteger;

    move-result-object v7

    .line 1624
    .local v7, "bigB":Ljdk/internal/math/FDBigInteger;
    if-eqz v22, :cond_1d0

    if-eq v9, v4, :cond_1cd

    goto :goto_1d0

    :cond_1cd
    move-object/from16 v8, v22

    goto :goto_1d5

    .line 1625
    :cond_1d0
    :goto_1d0
    invoke-virtual {v2, v4}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v8

    .line 1626
    .end local v22    # "bigD":Ljdk/internal/math/FDBigInteger;
    .local v8, "bigD":Ljdk/internal/math/FDBigInteger;
    move v9, v4

    .line 1645
    :goto_1d5
    invoke-virtual {v7, v8}, Ljdk/internal/math/FDBigInteger;->cmp(Ljdk/internal/math/FDBigInteger;)I

    move-result v22

    move/from16 v25, v22

    move-object/from16 v26, v2

    .end local v2    # "bigD0":Ljdk/internal/math/FDBigInteger;
    .local v25, "cmpResult":I
    .local v26, "bigD0":Ljdk/internal/math/FDBigInteger;
    const/4 v2, 0x1

    if-lez v22, :cond_1fd

    .line 1646
    const/16 v22, 0x1

    .line 1647
    .local v22, "overvalue":Z
    move/from16 v27, v3

    .end local v3    # "B2":I
    .local v27, "B2":I
    invoke-virtual {v7, v8}, Ljdk/internal/math/FDBigInteger;->leftInplaceSub(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;

    move-result-object v3

    .line 1648
    .local v3, "diff":Ljdk/internal/math/FDBigInteger;
    if-ne v1, v2, :cond_207

    const/16 v2, -0x7e

    if-le v15, v2, :cond_1fb

    .line 1653
    add-int/lit8 v5, v5, -0x1

    .line 1654
    if-gez v5, :cond_1f9

    .line 1657
    const/4 v5, 0x0

    .line 1658
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v3

    goto :goto_207

    .line 1654
    :cond_1f9
    const/4 v2, 0x1

    goto :goto_207

    .line 1648
    :cond_1fb
    const/4 v2, 0x1

    goto :goto_207

    .line 1661
    .end local v22    # "overvalue":Z
    .end local v27    # "B2":I
    .local v3, "B2":I
    :cond_1fd
    move/from16 v27, v3

    .end local v3    # "B2":I
    .restart local v27    # "B2":I
    if-gez v25, :cond_23f

    .line 1662
    const/16 v22, 0x0

    .line 1663
    .restart local v22    # "overvalue":Z
    invoke-virtual {v8, v7}, Ljdk/internal/math/FDBigInteger;->rightInplaceSub(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;

    move-result-object v3

    .line 1669
    .local v3, "diff":Ljdk/internal/math/FDBigInteger;
    :cond_207
    :goto_207
    invoke-virtual {v3, v6, v5}, Ljdk/internal/math/FDBigInteger;->cmpPow52(II)I

    move-result v25

    .line 1670
    if-gez v25, :cond_20e

    .line 1673
    goto :goto_241

    .line 1674
    :cond_20e
    const/16 v28, -0x1

    if-nez v25, :cond_21e

    .line 1677
    and-int/lit8 v29, v20, 0x1

    if-eqz v29, :cond_241

    .line 1678
    if-eqz v22, :cond_21a

    move/from16 v2, v28

    :cond_21a
    add-int v2, v20, v2

    move v5, v2

    .end local v20    # "ieeeBits":I
    .local v2, "ieeeBits":I
    goto :goto_243

    .line 1686
    .end local v2    # "ieeeBits":I
    .restart local v20    # "ieeeBits":I
    :cond_21e
    if-eqz v22, :cond_222

    move/from16 v2, v28

    :cond_222
    add-int v2, v20, v2

    .line 1687
    .end local v20    # "ieeeBits":I
    .restart local v2    # "ieeeBits":I
    if-eqz v2, :cond_23b

    move/from16 v28, v1

    .end local v1    # "bigIntNBits":I
    .local v28, "bigIntNBits":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ne v2, v1, :cond_22d

    .line 1688
    goto :goto_23d

    .line 1687
    :cond_22d
    move v5, v2

    move-object v3, v8

    move/from16 v1, v17

    move/from16 v4, v19

    move/from16 v7, v21

    move/from16 v8, v23

    move-object/from16 v2, v26

    goto/16 :goto_164

    .end local v28    # "bigIntNBits":I
    .restart local v1    # "bigIntNBits":I
    :cond_23b
    move/from16 v28, v1

    .line 1694
    .end local v1    # "bigIntNBits":I
    .end local v3    # "diff":Ljdk/internal/math/FDBigInteger;
    .end local v4    # "D2":I
    .end local v5    # "Ulp2":I
    .end local v7    # "bigB":Ljdk/internal/math/FDBigInteger;
    .end local v13    # "binexp":I
    .end local v14    # "bigBbits":I
    .end local v15    # "bigIntExp":I
    .end local v16    # "lowOrderZeros":I
    .end local v18    # "hulpbias":I
    .end local v22    # "overvalue":Z
    .end local v24    # "common2":I
    .end local v25    # "cmpResult":I
    .end local v27    # "B2":I
    :goto_23d
    move v5, v2

    goto :goto_243

    .line 1661
    .end local v2    # "ieeeBits":I
    .restart local v1    # "bigIntNBits":I
    .restart local v4    # "D2":I
    .restart local v5    # "Ulp2":I
    .restart local v7    # "bigB":Ljdk/internal/math/FDBigInteger;
    .restart local v13    # "binexp":I
    .restart local v14    # "bigBbits":I
    .restart local v15    # "bigIntExp":I
    .restart local v16    # "lowOrderZeros":I
    .restart local v18    # "hulpbias":I
    .restart local v20    # "ieeeBits":I
    .restart local v24    # "common2":I
    .restart local v25    # "cmpResult":I
    .restart local v27    # "B2":I
    :cond_23f
    move/from16 v28, v1

    .line 1694
    .end local v1    # "bigIntNBits":I
    .end local v4    # "D2":I
    .end local v5    # "Ulp2":I
    .end local v7    # "bigB":Ljdk/internal/math/FDBigInteger;
    .end local v13    # "binexp":I
    .end local v14    # "bigBbits":I
    .end local v15    # "bigIntExp":I
    .end local v16    # "lowOrderZeros":I
    .end local v18    # "hulpbias":I
    .end local v24    # "common2":I
    .end local v25    # "cmpResult":I
    .end local v27    # "B2":I
    :cond_241
    :goto_241
    move/from16 v5, v20

    .end local v20    # "ieeeBits":I
    .local v5, "ieeeBits":I
    :goto_243
    iget-boolean v1, v0, Ljdk/internal/math/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v1, :cond_24a

    .line 1695
    const/high16 v1, -0x80000000

    or-int/2addr v5, v1

    .line 1697
    :cond_24a
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method
