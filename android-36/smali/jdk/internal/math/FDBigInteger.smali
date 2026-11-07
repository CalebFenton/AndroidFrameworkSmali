.class public Ljdk/internal/math/FDBigInteger;
.super Ljava/lang/Object;
.source "FDBigInteger.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist LONG_5_POW:[J

.field private static final blacklist LONG_MASK:J = 0xffffffffL

.field private static final blacklist MAX_FIVE_POW:I = 0x154

.field private static final blacklist POW_5_CACHE:[Ljdk/internal/math/FDBigInteger;

.field static final blacklist SMALL_5_POW:[I

.field public static final blacklist ZERO:Ljdk/internal/math/FDBigInteger;

.field private static blacklist archivedCaches:[Ljava/lang/Object;


# instance fields
.field private blacklist data:[I

.field private blacklist isImmutable:Z

.field private blacklist nWords:I

.field private blacklist offset:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 34
    nop

    .line 87
    sget-object v0, Ljdk/internal/math/FDBigInteger;->archivedCaches:[Ljava/lang/Object;

    .line 88
    .local v0, "caches":[Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_55

    .line 89
    const/16 v2, 0x1b

    new-array v2, v2, [J

    fill-array-data v2, :array_72

    .line 118
    .local v2, "long5pow":[J
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_e2

    .line 134
    .local v3, "small5pow":[I
    const/16 v4, 0x154

    new-array v5, v4, [Ljdk/internal/math/FDBigInteger;

    .line 135
    .local v5, "pow5cache":[Ljdk/internal/math/FDBigInteger;
    const/4 v6, 0x0

    .line 136
    .local v6, "i":I
    :goto_19
    array-length v7, v3

    if-ge v6, v7, :cond_30

    .line 137
    new-instance v7, Ljdk/internal/math/FDBigInteger;

    aget v8, v3, v6

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    .line 138
    .local v7, "pow5":Ljdk/internal/math/FDBigInteger;
    invoke-virtual {v7}, Ljdk/internal/math/FDBigInteger;->makeImmutable()V

    .line 139
    aput-object v7, v5, v6

    .line 140
    nop

    .end local v7    # "pow5":Ljdk/internal/math/FDBigInteger;
    add-int/lit8 v6, v6, 0x1

    .line 141
    goto :goto_19

    .line 142
    :cond_30
    add-int/lit8 v7, v6, -0x1

    aget-object v7, v5, v7

    .line 143
    .local v7, "prev":Ljdk/internal/math/FDBigInteger;
    :goto_34
    if-ge v6, v4, :cond_44

    .line 144
    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljdk/internal/math/FDBigInteger;->mult(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v8

    move-object v7, v8

    aput-object v8, v5, v6

    .line 145
    invoke-virtual {v7}, Ljdk/internal/math/FDBigInteger;->makeImmutable()V

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 148
    :cond_44
    new-instance v4, Ljdk/internal/math/FDBigInteger;

    new-array v8, v1, [I

    invoke-direct {v4, v8, v1}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    .line 149
    .local v4, "zero":Ljdk/internal/math/FDBigInteger;
    invoke-virtual {v4}, Ljdk/internal/math/FDBigInteger;->makeImmutable()V

    .line 150
    filled-new-array {v3, v2, v5, v4}, [Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    sput-object v8, Ljdk/internal/math/FDBigInteger;->archivedCaches:[Ljava/lang/Object;

    .line 152
    .end local v2    # "long5pow":[J
    .end local v3    # "small5pow":[I
    .end local v4    # "zero":Ljdk/internal/math/FDBigInteger;
    .end local v5    # "pow5cache":[Ljdk/internal/math/FDBigInteger;
    .end local v6    # "i":I
    .end local v7    # "prev":Ljdk/internal/math/FDBigInteger;
    :cond_55
    aget-object v1, v0, v1

    check-cast v1, [I

    sput-object v1, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    .line 153
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [J

    sput-object v1, Ljdk/internal/math/FDBigInteger;->LONG_5_POW:[J

    .line 154
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, [Ljdk/internal/math/FDBigInteger;

    sput-object v1, Ljdk/internal/math/FDBigInteger;->POW_5_CACHE:[Ljdk/internal/math/FDBigInteger;

    .line 155
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljdk/internal/math/FDBigInteger;

    sput-object v1, Ljdk/internal/math/FDBigInteger;->ZERO:Ljdk/internal/math/FDBigInteger;

    .line 156
    .end local v0    # "caches":[Ljava/lang/Object;
    return-void

    nop

    :array_72
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
    .end array-data

    :array_e2
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data
.end method

.method public constructor blacklist <init>(J[CII)V
    .registers 15
    .param p1, "lValue"    # J
    .param p3, "digits"    # [C
    .param p4, "kDigits"    # I
    .param p5, "nDigits"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    .line 220
    add-int/lit8 v1, p5, 0x8

    div-int/lit8 v1, v1, 0x9

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 221
    .local v1, "n":I
    new-array v3, v1, [I

    iput-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 222
    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    long-to-int v4, p1

    aput v4, v3, v0

    .line 223
    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 224
    iput v0, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 225
    iput v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 226
    move v0, p4

    .line 227
    .local v0, "i":I
    add-int/lit8 v2, p5, -0x5

    .line 229
    .local v2, "limit":I
    :goto_29
    if-ge v0, v2, :cond_4a

    .line 230
    add-int/lit8 v3, v0, 0x5

    .line 231
    .local v3, "ilim":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aget-char v0, p3, v0

    add-int/lit8 v0, v0, -0x30

    move v8, v4

    move v4, v0

    move v0, v8

    .line 232
    .restart local v0    # "i":I
    .local v4, "v":I
    :goto_36
    if-ge v0, v3, :cond_43

    .line 233
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    aget-char v0, p3, v0

    add-int/2addr v6, v0

    add-int/lit8 v4, v6, -0x30

    move v0, v7

    goto :goto_36

    .line 235
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_43
    const v6, 0x186a0

    invoke-direct {p0, v6, v4}, Ljdk/internal/math/FDBigInteger;->multAddMe(II)V

    .line 236
    .end local v3    # "ilim":I
    goto :goto_29

    .line 237
    .end local v4    # "v":I
    :cond_4a
    const/4 v3, 0x1

    .line 238
    .local v3, "factor":I
    const/4 v4, 0x0

    .line 239
    .restart local v4    # "v":I
    :goto_4c
    if-ge v0, p5, :cond_5b

    .line 240
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .restart local v7    # "i":I
    aget-char v0, p3, v0

    add-int/2addr v6, v0

    add-int/lit8 v4, v6, -0x30

    .line 241
    mul-int/lit8 v3, v3, 0xa

    move v0, v7

    goto :goto_4c

    .line 243
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_5b
    if-eq v3, v5, :cond_60

    .line 244
    invoke-direct {p0, v3, v4}, Ljdk/internal/math/FDBigInteger;->multAddMe(II)V

    .line 246
    :cond_60
    invoke-direct {p0}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 247
    return-void
.end method

.method private constructor blacklist <init>([II)V
    .registers 4
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    .line 198
    iput-object p1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 199
    iput p2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 200
    array-length v0, p1

    iput v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 201
    invoke-direct {p0}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 202
    return-void
.end method

.method private blacklist add(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;
    .registers 23
    .param p1, "other"    # Ljdk/internal/math/FDBigInteger;

    .line 1196
    invoke-direct/range {p0 .. p0}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v0

    .line 1197
    .local v0, "tSize":I
    invoke-direct/range {p1 .. p1}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v1

    .line 1198
    .local v1, "oSize":I
    if-lt v0, v1, :cond_11

    .line 1199
    move-object/from16 v2, p0

    .line 1200
    .local v2, "big":Ljdk/internal/math/FDBigInteger;
    move v3, v0

    .line 1201
    .local v3, "bigLen":I
    move-object/from16 v4, p1

    .line 1202
    .local v4, "small":Ljdk/internal/math/FDBigInteger;
    move v5, v1

    .local v5, "smallLen":I
    goto :goto_17

    .line 1204
    .end local v2    # "big":Ljdk/internal/math/FDBigInteger;
    .end local v3    # "bigLen":I
    .end local v4    # "small":Ljdk/internal/math/FDBigInteger;
    .end local v5    # "smallLen":I
    :cond_11
    move-object/from16 v2, p1

    .line 1205
    .restart local v2    # "big":Ljdk/internal/math/FDBigInteger;
    move v3, v1

    .line 1206
    .restart local v3    # "bigLen":I
    move-object/from16 v4, p0

    .line 1207
    .restart local v4    # "small":Ljdk/internal/math/FDBigInteger;
    move v5, v0

    .line 1209
    .restart local v5    # "smallLen":I
    :goto_17
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [I

    .line 1210
    .local v6, "r":[I
    const/4 v7, 0x0

    .line 1211
    .local v7, "i":I
    const-wide/16 v8, 0x0

    .line 1212
    .local v8, "carry":J
    :goto_1e
    const-wide v13, 0xffffffffL

    if-ge v7, v5, :cond_5c

    .line 1213
    iget v15, v2, Ljdk/internal/math/FDBigInteger;->offset:I

    if-ge v7, v15, :cond_2e

    const-wide/16 v10, 0x0

    const/16 v16, 0x20

    goto :goto_3b

    :cond_2e
    iget-object v15, v2, Ljdk/internal/math/FDBigInteger;->data:[I

    const/16 v16, 0x20

    iget v10, v2, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int v10, v7, v10

    aget v10, v15, v10

    int-to-long v11, v10

    and-long v10, v11, v13

    .line 1214
    :goto_3b
    iget v12, v4, Ljdk/internal/math/FDBigInteger;->offset:I

    if-ge v7, v12, :cond_42

    const-wide/16 v17, 0x0

    goto :goto_51

    :cond_42
    iget-object v12, v4, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v15, v4, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int v15, v7, v15

    aget v12, v12, v15

    move-wide/from16 v19, v13

    int-to-long v13, v12

    and-long v12, v13, v19

    move-wide/from16 v17, v12

    :goto_51
    add-long v10, v10, v17

    add-long/2addr v8, v10

    .line 1215
    long-to-int v10, v8

    aput v10, v6, v7

    .line 1216
    shr-long v8, v8, v16

    .line 1212
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_5c
    move-wide/from16 v19, v13

    const/16 v16, 0x20

    .line 1218
    :goto_60
    if-ge v7, v3, :cond_7d

    .line 1219
    iget v10, v2, Ljdk/internal/math/FDBigInteger;->offset:I

    if-ge v7, v10, :cond_69

    const-wide/16 v10, 0x0

    goto :goto_74

    :cond_69
    iget-object v10, v2, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v11, v2, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int v11, v7, v11

    aget v10, v10, v11

    int-to-long v10, v10

    and-long v10, v10, v19

    :goto_74
    add-long/2addr v8, v10

    .line 1220
    long-to-int v10, v8

    aput v10, v6, v7

    .line 1221
    shr-long v8, v8, v16

    .line 1218
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 1223
    :cond_7d
    long-to-int v10, v8

    aput v10, v6, v3

    .line 1224
    new-instance v10, Ljdk/internal/math/FDBigInteger;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v10
.end method

.method private static blacklist big5pow(I)Ljdk/internal/math/FDBigInteger;
    .registers 2
    .param p0, "p"    # I

    .line 1433
    nop

    .line 1434
    const/16 v0, 0x154

    if-ge p0, v0, :cond_a

    .line 1435
    sget-object v0, Ljdk/internal/math/FDBigInteger;->POW_5_CACHE:[Ljdk/internal/math/FDBigInteger;

    aget-object v0, v0, p0

    return-object v0

    .line 1437
    :cond_a
    invoke-static {p0}, Ljdk/internal/math/FDBigInteger;->big5powRec(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist big5powRec(I)Ljdk/internal/math/FDBigInteger;
    .registers 5
    .param p0, "p"    # I

    .line 1448
    const/16 v0, 0x154

    if-ge p0, v0, :cond_9

    .line 1449
    sget-object v0, Ljdk/internal/math/FDBigInteger;->POW_5_CACHE:[Ljdk/internal/math/FDBigInteger;

    aget-object v0, v0, p0

    return-object v0

    .line 1458
    :cond_9
    shr-int/lit8 v0, p0, 0x1

    .line 1459
    .local v0, "q":I
    sub-int v1, p0, v0

    .line 1460
    .local v1, "r":I
    invoke-static {v0}, Ljdk/internal/math/FDBigInteger;->big5powRec(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v2

    .line 1461
    .local v2, "bigq":Ljdk/internal/math/FDBigInteger;
    sget-object v3, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1f

    .line 1462
    sget-object v3, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    aget v3, v3, v1

    invoke-direct {v2, v3}, Ljdk/internal/math/FDBigInteger;->mult(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v3

    return-object v3

    .line 1464
    :cond_1f
    invoke-static {v1}, Ljdk/internal/math/FDBigInteger;->big5powRec(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Ljdk/internal/math/FDBigInteger;->mult(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist checkZeroTail([II)I
    .registers 3
    .param p0, "a"    # [I
    .param p1, "from"    # I

    .line 935
    nop

    :cond_1
    if-lez p1, :cond_b

    .line 936
    add-int/lit8 p1, p1, -0x1

    aget v0, p0, p1

    if-eqz v0, :cond_1

    .line 937
    const/4 v0, 0x1

    return v0

    .line 940
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist leftShift([II[IIII)V
    .registers 8
    .param p0, "src"    # [I
    .param p1, "idx"    # I
    .param p2, "result"    # [I
    .param p3, "bitcount"    # I
    .param p4, "anticount"    # I
    .param p5, "prev"    # I

    .line 433
    nop

    :goto_1
    if-lez p1, :cond_11

    .line 434
    shl-int v0, p5, p3

    .line 435
    .local v0, "v":I
    add-int/lit8 v1, p1, -0x1

    aget p5, p0, v1

    .line 436
    ushr-int v1, p5, p4

    or-int/2addr v0, v1

    .line 437
    aput v0, p2, p1

    .line 433
    .end local v0    # "v":I
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 439
    :cond_11
    shl-int v0, p5, p3

    .line 440
    .restart local v0    # "v":I
    const/4 v1, 0x0

    aput v0, p2, v1

    .line 441
    return-void
.end method

.method private blacklist mult(I)Ljdk/internal/math/FDBigInteger;
    .registers 5
    .param p1, "i"    # I

    .line 1134
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 1135
    return-object p0

    .line 1137
    :cond_5
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 1138
    .local v0, "r":[I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v1, v2, p1, v0}, Ljdk/internal/math/FDBigInteger;->mult([III[I)V

    .line 1139
    new-instance v1, Ljdk/internal/math/FDBigInteger;

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    invoke-direct {v1, v0, v2}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v1
.end method

.method private blacklist mult(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;
    .registers 7
    .param p1, "other"    # Ljdk/internal/math/FDBigInteger;

    .line 1166
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 1167
    return-object p0

    .line 1169
    :cond_5
    invoke-direct {p0}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 1170
    iget-object v0, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v0, v0, v1

    invoke-direct {p1, v0}, Ljdk/internal/math/FDBigInteger;->mult(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 1172
    :cond_16
    iget v0, p1, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_1b

    .line 1173
    return-object p1

    .line 1175
    :cond_1b
    invoke-direct {p1}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v0

    if-ne v0, v2, :cond_2a

    .line 1176
    iget-object v0, p1, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Ljdk/internal/math/FDBigInteger;->mult(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_2a
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget v1, p1, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1179
    .local v0, "r":[I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v3, p1, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v4, p1, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v1, v2, v3, v4, v0}, Ljdk/internal/math/FDBigInteger;->mult([II[II[I)V

    .line 1180
    new-instance v1, Ljdk/internal/math/FDBigInteger;

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    iget v3, p1, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v1
.end method

.method private static blacklist mult([IIII[I)V
    .registers 20
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "v0"    # I
    .param p3, "v1"    # I
    .param p4, "dst"    # [I

    .line 1407
    move/from16 v0, p1

    move/from16 v1, p2

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1408
    .local v2, "v":J
    const-wide/16 v6, 0x0

    .line 1409
    .local v6, "carry":J
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_e
    const/16 v9, 0x20

    if-ge v8, v0, :cond_20

    .line 1410
    aget v10, p0, v8

    int-to-long v10, v10

    and-long/2addr v10, v4

    mul-long/2addr v10, v2

    add-long/2addr v10, v6

    .line 1411
    .local v10, "product":J
    long-to-int v12, v10

    aput v12, p4, v8

    .line 1412
    ushr-long v6, v10, v9

    .line 1409
    .end local v10    # "product":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 1414
    .end local v8    # "j":I
    :cond_20
    long-to-int v8, v6

    aput v8, p4, v0

    .line 1415
    move/from16 v8, p3

    int-to-long v10, v8

    and-long v2, v10, v4

    .line 1416
    const-wide/16 v6, 0x0

    .line 1417
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2b
    if-ge v10, v0, :cond_44

    .line 1418
    add-int/lit8 v11, v10, 0x1

    aget v11, p4, v11

    int-to-long v11, v11

    and-long/2addr v11, v4

    aget v13, p0, v10

    int-to-long v13, v13

    and-long/2addr v13, v4

    mul-long/2addr v13, v2

    add-long/2addr v11, v13

    add-long/2addr v11, v6

    .line 1419
    .local v11, "product":J
    add-int/lit8 v13, v10, 0x1

    long-to-int v14, v11

    aput v14, p4, v13

    .line 1420
    ushr-long v6, v11, v9

    .line 1417
    .end local v11    # "product":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 1422
    .end local v10    # "j":I
    :cond_44
    add-int/lit8 v4, v0, 0x1

    long-to-int v5, v6

    aput v5, p4, v4

    .line 1423
    return-void
.end method

.method private static blacklist mult([III[I)V
    .registers 14
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "value"    # I
    .param p3, "dst"    # [I

    .line 1380
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1381
    .local v0, "val":J
    const-wide/16 v4, 0x0

    .line 1382
    .local v4, "carry":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    if-ge v6, p1, :cond_1c

    .line 1383
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v7, v4

    .line 1384
    .local v7, "product":J
    long-to-int v9, v7

    aput v9, p3, v6

    .line 1385
    const/16 v9, 0x20

    ushr-long v4, v7, v9

    .line 1382
    .end local v7    # "product":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1387
    .end local v6    # "i":I
    :cond_1c
    long-to-int v2, v4

    aput v2, p3, p1

    .line 1388
    return-void
.end method

.method private static blacklist mult([II[II[I)V
    .registers 18
    .param p0, "s1"    # [I
    .param p1, "s1Len"    # I
    .param p2, "s2"    # [I
    .param p3, "s2Len"    # I
    .param p4, "dst"    # [I

    .line 758
    move/from16 v0, p3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_33

    .line 759
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 760
    .local v2, "v":J
    const-wide/16 v6, 0x0

    .line 761
    .local v6, "p":J
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_11
    if-ge v8, v0, :cond_2b

    .line 762
    add-int v9, v1, v8

    aget v9, p4, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    aget v11, p2, v8

    int-to-long v11, v11

    and-long/2addr v11, v4

    mul-long/2addr v11, v2

    add-long/2addr v9, v11

    add-long/2addr v6, v9

    .line 763
    add-int v9, v1, v8

    long-to-int v10, v6

    aput v10, p4, v9

    .line 764
    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    .line 761
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 766
    .end local v8    # "j":I
    :cond_2b
    add-int v4, v1, v0

    long-to-int v5, v6

    aput v5, p4, v4

    .line 758
    .end local v2    # "v":J
    .end local v6    # "p":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 768
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method private blacklist multAddMe(II)V
    .registers 13
    .param p1, "iv"    # I
    .param p2, "addend"    # I

    .line 1246
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1248
    .local v0, "v":J
    iget-object v4, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-long v6, v4

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 1249
    .local v6, "p":J
    iget-object v4, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    long-to-int v8, v6

    aput v8, v4, v5

    .line 1250
    const/16 v4, 0x20

    ushr-long v5, v6, v4

    .line 1251
    .end local v6    # "p":J
    .local v5, "p":J
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1c
    iget v8, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-ge v7, v8, :cond_31

    .line 1252
    iget-object v8, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v8, v8, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long/2addr v8, v0

    add-long/2addr v5, v8

    .line 1253
    iget-object v8, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    long-to-int v9, v5

    aput v9, v8, v7

    .line 1254
    ushr-long/2addr v5, v4

    .line 1251
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 1256
    .end local v7    # "i":I
    :cond_31
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_42

    .line 1257
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    long-to-int v4, v5

    aput v4, v2, v3

    .line 1259
    :cond_42
    return-void
.end method

.method private static blacklist multAndCarryBy10([II[I)I
    .registers 10
    .param p0, "src"    # [I
    .param p1, "srcLen"    # I
    .param p2, "dst"    # [I

    .line 1356
    const-wide/16 v0, 0x0

    .line 1357
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p1, :cond_1c

    .line 1358
    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    add-long/2addr v3, v0

    .line 1359
    .local v3, "product":J
    long-to-int v5, v3

    aput v5, p2, v2

    .line 1360
    const/16 v5, 0x20

    ushr-long v0, v3, v5

    .line 1357
    .end local v3    # "product":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1362
    .end local v2    # "i":I
    :cond_1c
    long-to-int v2, v0

    return v2
.end method

.method private blacklist multDiffMe(JLjdk/internal/math/FDBigInteger;)J
    .registers 23
    .param p1, "q"    # J
    .param p3, "S"    # Ljdk/internal/math/FDBigInteger;

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 1303
    .local v2, "diff":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_8e

    .line 1304
    iget v4, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    iget v5, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int/2addr v4, v5

    .line 1305
    .local v4, "deltaSize":I
    const/16 v5, 0x20

    const-wide v6, 0xffffffffL

    if-ltz v4, :cond_3a

    .line 1306
    iget-object v8, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 1307
    .local v8, "sd":[I
    iget-object v9, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 1308
    .local v9, "td":[I
    const/4 v10, 0x0

    .local v10, "sIndex":I
    move v11, v4

    .local v11, "tIndex":I
    :goto_20
    iget v12, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-ge v10, v12, :cond_39

    .line 1309
    aget v12, v9, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    aget v14, v8, v10

    int-to-long v14, v14

    and-long/2addr v14, v6

    mul-long v14, v14, p1

    sub-long/2addr v12, v14

    add-long/2addr v2, v12

    .line 1310
    long-to-int v12, v2

    aput v12, v9, v11

    .line 1311
    shr-long/2addr v2, v5

    .line 1308
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    .line 1313
    .end local v8    # "sd":[I
    .end local v9    # "td":[I
    .end local v10    # "sIndex":I
    .end local v11    # "tIndex":I
    :cond_39
    goto :goto_8e

    .line 1314
    :cond_3a
    neg-int v4, v4

    .line 1315
    iget v8, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/2addr v8, v4

    new-array v8, v8, [I

    .line 1316
    .local v8, "rd":[I
    const/4 v9, 0x0

    .line 1317
    .local v9, "sIndex":I
    const/4 v10, 0x0

    .line 1318
    .local v10, "rIndex":I
    iget-object v11, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 1319
    .local v11, "sd":[I
    :goto_44
    if-ge v10, v4, :cond_5a

    iget v12, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-ge v9, v12, :cond_5a

    .line 1320
    aget v12, v11, v9

    int-to-long v12, v12

    and-long/2addr v12, v6

    mul-long v12, v12, p1

    sub-long/2addr v2, v12

    .line 1321
    long-to-int v12, v2

    aput v12, v8, v10

    .line 1322
    shr-long/2addr v2, v5

    .line 1319
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 1324
    :cond_5a
    const/4 v12, 0x0

    .line 1325
    .local v12, "tIndex":I
    iget-object v13, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 1326
    .local v13, "td":[I
    :goto_5d
    iget v14, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-ge v9, v14, :cond_82

    .line 1327
    aget v14, v13, v12

    int-to-long v14, v14

    and-long/2addr v14, v6

    move/from16 v16, v5

    aget v5, v11, v9

    move-wide/from16 v17, v6

    int-to-long v6, v5

    and-long v5, v6, v17

    mul-long v5, v5, p1

    sub-long/2addr v14, v5

    add-long/2addr v2, v14

    .line 1328
    long-to-int v5, v2

    aput v5, v8, v10

    .line 1329
    shr-long v2, v2, v16

    .line 1326
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    move-wide/from16 v6, v17

    goto :goto_5d

    .line 1331
    :cond_82
    iget v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/2addr v5, v4

    iput v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 1332
    iget v5, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int/2addr v5, v4

    iput v5, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 1333
    iput-object v8, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 1336
    .end local v4    # "deltaSize":I
    .end local v8    # "rd":[I
    .end local v9    # "sIndex":I
    .end local v10    # "rIndex":I
    .end local v11    # "sd":[I
    .end local v12    # "tIndex":I
    .end local v13    # "td":[I
    :cond_8e
    :goto_8e
    return-wide v2
.end method

.method private blacklist size()I
    .registers 3

    .line 546
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget v1, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist trimLeadingZeros()V
    .registers 4

    .line 382
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 383
    .local v0, "i":I
    if-lez v0, :cond_20

    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-nez v1, :cond_20

    .line 385
    :goto_c
    if-lez v0, :cond_19

    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_19

    .line 386
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 388
    :cond_19
    iput v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 389
    if-nez v0, :cond_20

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 393
    :cond_20
    return-void
.end method

.method public static blacklist valueOfMulPow52(JII)Ljdk/internal/math/FDBigInteger;
    .registers 22
    .param p0, "value"    # J
    .param p2, "p5"    # I
    .param p3, "p2"    # I

    .line 301
    move-wide/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 302
    nop

    .line 303
    long-to-int v4, v0

    .line 304
    .local v4, "v0":I
    const/16 v5, 0x20

    ushr-long v6, v0, v5

    long-to-int v6, v6

    .line 305
    .local v6, "v1":I
    shr-int/lit8 v7, v3, 0x5

    .line 306
    .local v7, "wordcount":I
    and-int/lit8 v8, v3, 0x1f

    .line 307
    .local v8, "bitcount":I
    const/4 v9, 0x0

    if-eqz v2, :cond_93

    .line 308
    sget-object v10, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    array-length v10, v10

    if-ge v2, v10, :cond_5e

    .line 309
    sget-object v9, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    aget v9, v9, v2

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    .line 310
    .local v9, "pow5":J
    int-to-long v13, v4

    and-long/2addr v13, v11

    mul-long/2addr v13, v9

    .line 311
    .local v13, "carry":J
    long-to-int v4, v13

    .line 312
    ushr-long/2addr v13, v5

    .line 313
    move-wide v15, v11

    int-to-long v11, v6

    and-long/2addr v11, v15

    mul-long/2addr v11, v9

    add-long/2addr v11, v13

    .line 314
    .end local v13    # "carry":J
    .local v11, "carry":J
    long-to-int v6, v11

    .line 315
    ushr-long v13, v11, v5

    long-to-int v5, v13

    .line 316
    .local v5, "v2":I
    if-nez v8, :cond_3e

    .line 317
    new-instance v13, Ljdk/internal/math/FDBigInteger;

    filled-new-array {v4, v6, v5}, [I

    move-result-object v14

    invoke-direct {v13, v14, v7}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v13

    .line 319
    :cond_3e
    new-instance v13, Ljdk/internal/math/FDBigInteger;

    shl-int v14, v4, v8

    shl-int v15, v6, v8

    rsub-int/lit8 v16, v8, 0x20

    ushr-int v16, v4, v16

    or-int v15, v15, v16

    shl-int v16, v5, v8

    rsub-int/lit8 v17, v8, 0x20

    ushr-int v17, v6, v17

    or-int v0, v16, v17

    rsub-int/lit8 v1, v8, 0x20

    ushr-int v1, v5, v1

    filled-new-array {v14, v15, v0, v1}, [I

    move-result-object v0

    invoke-direct {v13, v0, v7}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v13

    .line 327
    .end local v5    # "v2":I
    .end local v9    # "pow5":J
    .end local v11    # "carry":J
    :cond_5e
    invoke-static {v2}, Ljdk/internal/math/FDBigInteger;->big5pow(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    .line 329
    .local v0, "pow5":Ljdk/internal/math/FDBigInteger;
    const/4 v1, 0x1

    if-nez v6, :cond_76

    .line 330
    iget v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/2addr v5, v1

    if-eqz v3, :cond_6b

    move v9, v1

    :cond_6b
    add-int/2addr v5, v9

    new-array v1, v5, [I

    .line 331
    .local v1, "r":[I
    iget-object v5, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v9, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v5, v9, v4, v1}, Ljdk/internal/math/FDBigInteger;->mult([III[I)V

    goto :goto_87

    .line 333
    .end local v1    # "r":[I
    :cond_76
    iget v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v5, v5, 0x2

    if-eqz v3, :cond_7d

    move v9, v1

    :cond_7d
    add-int/2addr v5, v9

    new-array v1, v5, [I

    .line 334
    .restart local v1    # "r":[I
    iget-object v5, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v9, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v5, v9, v4, v6, v1}, Ljdk/internal/math/FDBigInteger;->mult([IIII[I)V

    .line 336
    :goto_87
    new-instance v5, Ljdk/internal/math/FDBigInteger;

    iget v9, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    invoke-direct {v5, v1, v9}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    invoke-virtual {v5, v3}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v5

    return-object v5

    .line 338
    .end local v0    # "pow5":Ljdk/internal/math/FDBigInteger;
    .end local v1    # "r":[I
    :cond_93
    if-eqz v3, :cond_b8

    .line 339
    if-nez v8, :cond_a1

    .line 340
    new-instance v0, Ljdk/internal/math/FDBigInteger;

    filled-new-array {v4, v6}, [I

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v0

    .line 342
    :cond_a1
    new-instance v0, Ljdk/internal/math/FDBigInteger;

    shl-int v1, v4, v8

    shl-int v5, v6, v8

    rsub-int/lit8 v9, v8, 0x20

    ushr-int v9, v4, v9

    or-int/2addr v5, v9

    rsub-int/lit8 v9, v8, 0x20

    ushr-int v9, v6, v9

    filled-new-array {v1, v5, v9}, [I

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v0

    .line 349
    :cond_b8
    new-instance v0, Ljdk/internal/math/FDBigInteger;

    filled-new-array {v4, v6}, [I

    move-result-object v1

    invoke-direct {v0, v1, v9}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v0
.end method

.method private static blacklist valueOfPow2(I)Ljdk/internal/math/FDBigInteger;
    .registers 5
    .param p0, "p2"    # I

    .line 365
    shr-int/lit8 v0, p0, 0x5

    .line 366
    .local v0, "wordcount":I
    and-int/lit8 v1, p0, 0x1f

    .line 367
    .local v1, "bitcount":I
    new-instance v2, Ljdk/internal/math/FDBigInteger;

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v2
.end method

.method public static blacklist valueOfPow52(II)Ljdk/internal/math/FDBigInteger;
    .registers 8
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    .line 263
    if-eqz p0, :cond_3b

    .line 264
    if-nez p1, :cond_9

    .line 265
    invoke-static {p0}, Ljdk/internal/math/FDBigInteger;->big5pow(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 266
    :cond_9
    sget-object v0, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    array-length v0, v0

    if-ge p0, v0, :cond_32

    .line 267
    sget-object v0, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    aget v0, v0, p0

    .line 268
    .local v0, "pow5":I
    shr-int/lit8 v1, p1, 0x5

    .line 269
    .local v1, "wordcount":I
    and-int/lit8 v2, p1, 0x1f

    .line 270
    .local v2, "bitcount":I
    if-nez v2, :cond_22

    .line 271
    new-instance v3, Ljdk/internal/math/FDBigInteger;

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v3

    .line 273
    :cond_22
    new-instance v3, Ljdk/internal/math/FDBigInteger;

    shl-int v4, v0, v2

    rsub-int/lit8 v5, v2, 0x20

    ushr-int v5, v0, v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v3

    .line 279
    .end local v0    # "pow5":I
    .end local v1    # "wordcount":I
    .end local v2    # "bitcount":I
    :cond_32
    invoke-static {p0}, Ljdk/internal/math/FDBigInteger;->big5pow(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    return-object v0

    .line 282
    :cond_3b
    invoke-static {p1}, Ljdk/internal/math/FDBigInteger;->valueOfPow2(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAndCmp(Ljdk/internal/math/FDBigInteger;Ljdk/internal/math/FDBigInteger;)I
    .registers 24
    .param p1, "x"    # Ljdk/internal/math/FDBigInteger;
    .param p2, "y"    # Ljdk/internal/math/FDBigInteger;

    .line 1041
    move-object/from16 v0, p0

    invoke-direct/range {p1 .. p1}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v1

    .line 1042
    .local v1, "xSize":I
    invoke-direct/range {p2 .. p2}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v2

    .line 1045
    .local v2, "ySize":I
    if-lt v1, v2, :cond_13

    .line 1046
    move-object/from16 v3, p1

    .line 1047
    .local v3, "big":Ljdk/internal/math/FDBigInteger;
    move-object/from16 v4, p2

    .line 1048
    .local v4, "small":Ljdk/internal/math/FDBigInteger;
    move v5, v1

    .line 1049
    .local v5, "bSize":I
    move v6, v2

    .local v6, "sSize":I
    goto :goto_19

    .line 1051
    .end local v3    # "big":Ljdk/internal/math/FDBigInteger;
    .end local v4    # "small":Ljdk/internal/math/FDBigInteger;
    .end local v5    # "bSize":I
    .end local v6    # "sSize":I
    :cond_13
    move-object/from16 v3, p2

    .line 1052
    .restart local v3    # "big":Ljdk/internal/math/FDBigInteger;
    move-object/from16 v4, p1

    .line 1053
    .restart local v4    # "small":Ljdk/internal/math/FDBigInteger;
    move v5, v2

    .line 1054
    .restart local v5    # "bSize":I
    move v6, v1

    .line 1056
    .restart local v6    # "sSize":I
    :goto_19
    invoke-direct {v0}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v7

    .line 1057
    .local v7, "thSize":I
    const/4 v8, 0x1

    if-nez v5, :cond_24

    .line 1058
    if-nez v7, :cond_23

    const/4 v8, 0x0

    :cond_23
    return v8

    .line 1060
    :cond_24
    if-nez v6, :cond_2b

    .line 1061
    invoke-virtual {v0, v3}, Ljdk/internal/math/FDBigInteger;->cmp(Ljdk/internal/math/FDBigInteger;)I

    move-result v8

    return v8

    .line 1063
    :cond_2b
    const/4 v9, -0x1

    if-le v5, v7, :cond_2f

    .line 1064
    return v9

    .line 1066
    :cond_2f
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v7, :cond_34

    .line 1067
    return v8

    .line 1069
    :cond_34
    iget-object v10, v3, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v11, v3, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v11, v8

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 1070
    .local v10, "top":J
    if-ne v6, v5, :cond_4e

    .line 1071
    iget-object v14, v4, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v15, v4, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v14, v12

    add-long/2addr v10, v14

    .line 1073
    :cond_4e
    const/16 v14, 0x20

    ushr-long v15, v10, v14

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    const-wide/16 v19, 0x1

    if-nez v15, :cond_7b

    .line 1074
    add-long v15, v10, v19

    ushr-long v14, v15, v14

    cmp-long v14, v14, v17

    if-nez v14, :cond_96

    .line 1076
    if-ge v5, v7, :cond_65

    .line 1077
    return v8

    .line 1080
    :cond_65
    iget-object v14, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v15, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v12, v14

    .line 1081
    .local v12, "v":J
    cmp-long v14, v12, v10

    if-gez v14, :cond_73

    .line 1082
    return v9

    .line 1084
    :cond_73
    add-long v19, v10, v19

    cmp-long v9, v12, v19

    if-lez v9, :cond_7a

    .line 1085
    return v8

    .line 1087
    .end local v12    # "v":J
    :cond_7a
    goto :goto_96

    .line 1089
    :cond_7b
    add-int/lit8 v15, v5, 0x1

    if-le v15, v7, :cond_80

    .line 1090
    return v9

    .line 1093
    :cond_80
    ushr-long/2addr v10, v14

    .line 1094
    iget-object v14, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v15, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v12, v14

    .line 1095
    .restart local v12    # "v":J
    cmp-long v14, v12, v10

    if-gez v14, :cond_8f

    .line 1096
    return v9

    .line 1098
    :cond_8f
    add-long v19, v10, v19

    cmp-long v9, v12, v19

    if-lez v9, :cond_96

    .line 1099
    return v8

    .line 1102
    .end local v12    # "v":J
    :cond_96
    :goto_96
    invoke-direct {v3, v4}, Ljdk/internal/math/FDBigInteger;->add(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljdk/internal/math/FDBigInteger;->cmp(Ljdk/internal/math/FDBigInteger;)I

    move-result v8

    return v8
.end method

.method public blacklist cmp(Ljdk/internal/math/FDBigInteger;)I
    .registers 16
    .param p1, "other"    # Ljdk/internal/math/FDBigInteger;

    .line 960
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget v1, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    .line 961
    .local v0, "aSize":I
    iget v1, p1, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget v2, p1, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v1, v2

    .line 962
    .local v1, "bSize":I
    const/4 v2, 0x1

    if-le v0, v1, :cond_e

    .line 963
    return v2

    .line 964
    :cond_e
    const/4 v3, -0x1

    if-ge v0, v1, :cond_12

    .line 965
    return v3

    .line 967
    :cond_12
    iget v4, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 968
    .local v4, "aLen":I
    iget v5, p1, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 969
    .local v5, "bLen":I
    :goto_16
    if-lez v4, :cond_38

    if-lez v5, :cond_38

    .line 970
    iget-object v6, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    add-int/lit8 v4, v4, -0x1

    aget v6, v6, v4

    .line 971
    .local v6, "a":I
    iget-object v7, p1, Ljdk/internal/math/FDBigInteger;->data:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    .line 972
    .local v7, "b":I
    if-eq v6, v7, :cond_37

    .line 973
    int-to-long v8, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    int-to-long v12, v7

    and-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_36

    move v2, v3

    :cond_36
    return v2

    .line 975
    .end local v6    # "a":I
    .end local v7    # "b":I
    :cond_37
    goto :goto_16

    .line 976
    :cond_38
    if-lez v4, :cond_41

    .line 977
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-static {v2, v4}, Ljdk/internal/math/FDBigInteger;->checkZeroTail([II)I

    move-result v2

    return v2

    .line 979
    :cond_41
    if-lez v5, :cond_4b

    .line 980
    iget-object v2, p1, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-static {v2, v5}, Ljdk/internal/math/FDBigInteger;->checkZeroTail([II)I

    move-result v2

    neg-int v2, v2

    return v2

    .line 982
    :cond_4b
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist cmpPow52(II)I
    .registers 16
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .line 1004
    if-nez p1, :cond_3b

    .line 1005
    shr-int/lit8 v0, p2, 0x5

    .line 1006
    .local v0, "wordcount":I
    and-int/lit8 v1, p2, 0x1f

    .line 1007
    .local v1, "bitcount":I
    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget v3, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v2, v3

    .line 1008
    .local v2, "size":I
    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-le v2, v3, :cond_11

    .line 1009
    return v4

    .line 1010
    :cond_11
    add-int/lit8 v3, v0, 0x1

    const/4 v5, -0x1

    if-ge v2, v3, :cond_17

    .line 1011
    return v5

    .line 1013
    :cond_17
    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v6, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v6, v4

    aget v3, v3, v6

    .line 1014
    .local v3, "a":I
    shl-int v6, v4, v1

    .line 1015
    .local v6, "b":I
    if-eq v3, v6, :cond_31

    .line 1016
    int-to-long v7, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    int-to-long v11, v6

    and-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_30

    move v4, v5

    :cond_30
    return v4

    .line 1018
    :cond_31
    iget-object v5, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v7, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v7, v4

    invoke-static {v5, v7}, Ljdk/internal/math/FDBigInteger;->checkZeroTail([II)I

    move-result v4

    return v4

    .line 1020
    .end local v0    # "wordcount":I
    .end local v1    # "bitcount":I
    .end local v2    # "size":I
    .end local v3    # "a":I
    .end local v6    # "b":I
    :cond_3b
    invoke-static {p1}, Ljdk/internal/math/FDBigInteger;->big5pow(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljdk/internal/math/FDBigInteger;->cmp(Ljdk/internal/math/FDBigInteger;)I

    move-result v0

    return v0
.end method

.method public blacklist getNormalizationBias()I
    .registers 3

    .line 408
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-eqz v0, :cond_19

    .line 411
    iget-object v0, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 412
    .local v0, "zeros":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_16

    add-int/lit8 v1, v0, 0x1c

    goto :goto_18

    :cond_16
    add-int/lit8 v1, v0, -0x4

    :goto_18
    return v1

    .line 409
    .end local v0    # "zeros":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero value cannot be normalized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist leftInplaceSub(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;
    .registers 21
    .param p1, "subtrahend"    # Ljdk/internal/math/FDBigInteger;

    .line 794
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 796
    iget-boolean v2, v0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_18

    .line 797
    new-instance v2, Ljdk/internal/math/FDBigInteger;

    iget-object v3, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget v4, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    invoke-direct {v2, v3, v4}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    .local v2, "minuend":Ljdk/internal/math/FDBigInteger;
    goto :goto_1a

    .line 799
    .end local v2    # "minuend":Ljdk/internal/math/FDBigInteger;
    :cond_18
    move-object/from16 v2, p0

    .line 801
    .restart local v2    # "minuend":Ljdk/internal/math/FDBigInteger;
    :goto_1a
    iget v3, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    iget v4, v2, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int/2addr v3, v4

    .line 802
    .local v3, "offsetDiff":I
    iget-object v4, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 803
    .local v4, "sData":[I
    iget-object v5, v2, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 804
    .local v5, "mData":[I
    iget v6, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 805
    .local v6, "subLen":I
    iget v7, v2, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 806
    .local v7, "minLen":I
    if-gez v3, :cond_49

    .line 808
    sub-int v8, v7, v3

    .line 809
    .local v8, "rLen":I
    array-length v9, v5

    const/4 v10, 0x0

    if-ge v8, v9, :cond_38

    .line 810
    neg-int v9, v3

    invoke-static {v5, v10, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    neg-int v9, v3

    invoke-static {v5, v10, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_41

    .line 813
    :cond_38
    new-array v9, v8, [I

    .line 814
    .local v9, "r":[I
    neg-int v11, v3

    invoke-static {v5, v10, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    move-object v5, v9

    iput-object v9, v2, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 817
    .end local v9    # "r":[I
    :goto_41
    iget v9, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    iput v9, v2, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 818
    move v7, v8

    iput v8, v2, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 819
    const/4 v3, 0x0

    .line 821
    .end local v8    # "rLen":I
    :cond_49
    const-wide/16 v8, 0x0

    .line 822
    .local v8, "borrow":J
    move v10, v3

    .line 823
    .local v10, "mIndex":I
    const/4 v11, 0x0

    .local v11, "sIndex":I
    :goto_4d
    if-ge v11, v6, :cond_6e

    if-ge v10, v7, :cond_6e

    .line 824
    aget v15, v5, v10

    const/16 v16, 0x20

    const-wide v17, 0xffffffffL

    int-to-long v12, v15

    and-long v12, v12, v17

    aget v14, v4, v11

    int-to-long v14, v14

    and-long v14, v14, v17

    sub-long/2addr v12, v14

    add-long/2addr v12, v8

    .line 825
    .local v12, "diff":J
    long-to-int v14, v12

    aput v14, v5, v10

    .line 826
    shr-long v8, v12, v16

    .line 823
    .end local v12    # "diff":J
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_4d

    :cond_6e
    const/16 v16, 0x20

    const-wide v17, 0xffffffffL

    .line 828
    .end local v11    # "sIndex":I
    :goto_75
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-eqz v11, :cond_8b

    if-ge v10, v7, :cond_8b

    .line 829
    aget v11, v5, v10

    int-to-long v11, v11

    and-long v11, v11, v17

    add-long/2addr v11, v8

    .line 830
    .local v11, "diff":J
    long-to-int v13, v11

    aput v13, v5, v10

    .line 831
    shr-long v8, v11, v16

    .line 828
    .end local v11    # "diff":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_75

    .line 833
    :cond_8b
    nop

    .line 835
    invoke-direct {v2}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 836
    return-object v2
.end method

.method public blacklist leftShift(I)Ljdk/internal/math/FDBigInteger;
    .registers 12
    .param p1, "shift"    # I

    .line 470
    if-eqz p1, :cond_c0

    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_8

    goto/16 :goto_c0

    .line 473
    :cond_8
    shr-int/lit8 v0, p1, 0x5

    .line 474
    .local v0, "wordcount":I
    and-int/lit8 v4, p1, 0x1f

    .line 475
    .local v4, "bitcount":I
    iget-boolean v1, p0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    if-eqz v1, :cond_50

    .line 476
    if-nez v4, :cond_23

    .line 477
    new-instance v1, Ljdk/internal/math/FDBigInteger;

    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget v3, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v1

    .line 479
    :cond_23
    rsub-int/lit8 v5, v4, 0x20

    .line 480
    .local v5, "anticount":I
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v2, v1, -0x1

    .line 481
    .local v2, "idx":I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v6, v1, v2

    .line 482
    .local v6, "prev":I
    ushr-int v7, v6, v5

    .line 484
    .local v7, "hi":I
    if-eqz v7, :cond_3d

    .line 485
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 486
    .local v1, "result":[I
    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    aput v7, v1, v3

    move-object v3, v1

    goto :goto_42

    .line 488
    .end local v1    # "result":[I
    :cond_3d
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    new-array v1, v1, [I

    move-object v3, v1

    .line 490
    .local v3, "result":[I
    :goto_42
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-static/range {v1 .. v6}, Ljdk/internal/math/FDBigInteger;->leftShift([II[IIII)V

    .line 491
    new-instance v1, Ljdk/internal/math/FDBigInteger;

    iget v8, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v8, v0

    invoke-direct {v1, v3, v8}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v1

    .line 494
    .end local v2    # "idx":I
    .end local v3    # "result":[I
    .end local v5    # "anticount":I
    .end local v6    # "prev":I
    .end local v7    # "hi":I
    :cond_50
    if-eqz v4, :cond_ba

    .line 495
    rsub-int/lit8 v5, v4, 0x20

    .line 496
    .restart local v5    # "anticount":I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    shl-int/2addr v1, v4

    if-nez v1, :cond_8e

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "idx":I
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v2, v2, v1

    .line 499
    .local v2, "prev":I
    :goto_61
    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_79

    .line 500
    ushr-int v3, v2, v5

    .line 501
    .local v3, "v":I
    iget-object v6, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    .line 502
    shl-int v6, v2, v4

    or-int/2addr v3, v6

    .line 503
    iget-object v6, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aput v3, v6, v1

    .line 499
    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 505
    :cond_79
    ushr-int v3, v2, v5

    .line 506
    .restart local v3    # "v":I
    iget-object v6, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aput v3, v6, v1

    .line 507
    if-nez v3, :cond_87

    .line 508
    iget v6, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 510
    :cond_87
    iget v6, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 511
    .end local v1    # "idx":I
    .end local v2    # "prev":I
    .end local v3    # "v":I
    goto :goto_ba

    .line 512
    :cond_8e
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v2, v1, -0x1

    .line 513
    .local v2, "idx":I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v6, v1, v2

    .line 514
    .restart local v6    # "prev":I
    ushr-int v7, v6, v5

    .line 515
    .restart local v7    # "hi":I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 516
    .local v1, "result":[I
    move-object v3, v1

    .end local v1    # "result":[I
    .local v3, "result":[I
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 517
    .local v1, "src":[I
    if-eqz v7, :cond_b7

    .line 518
    iget v8, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v9, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    array-length v9, v9

    if-ne v8, v9, :cond_af

    .line 519
    iget v8, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    move-object v3, v8

    iput-object v8, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 521
    :cond_af
    iget v8, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    aput v7, v3, v8

    .line 523
    :cond_b7
    invoke-static/range {v1 .. v6}, Ljdk/internal/math/FDBigInteger;->leftShift([II[IIII)V

    .line 526
    .end local v1    # "src":[I
    .end local v2    # "idx":I
    .end local v3    # "result":[I
    .end local v5    # "anticount":I
    .end local v6    # "prev":I
    .end local v7    # "hi":I
    :cond_ba
    :goto_ba
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 527
    return-object p0

    .line 471
    .end local v0    # "wordcount":I
    .end local v4    # "bitcount":I
    :cond_c0
    :goto_c0
    return-object p0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    .line 1114
    return-void
.end method

.method public blacklist multBy10()Ljdk/internal/math/FDBigInteger;
    .registers 7

    .line 666
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 667
    return-object p0

    .line 669
    :cond_5
    iget-boolean v0, p0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 670
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 671
    .local v0, "res":[I
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v2, v3, v0}, Ljdk/internal/math/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v2

    aput v2, v0, v1

    .line 672
    new-instance v1, Ljdk/internal/math/FDBigInteger;

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    invoke-direct {v1, v0, v2}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    return-object v1

    .line 674
    .end local v0    # "res":[I
    :cond_23
    iget-object v0, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-static {v0, v2, v3}, Ljdk/internal/math/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v0

    .line 675
    .local v0, "p":I
    if-eqz v0, :cond_66

    .line 676
    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    array-length v3, v3

    if-ne v2, v3, :cond_5b

    .line 677
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_4f

    .line 678
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget-object v4, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v5, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    sub-int/2addr v5, v1

    iput v5, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v2, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    iget v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v2, v1

    iput v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    goto :goto_5b

    .line 681
    :cond_4f
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    array-length v3, v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 684
    :cond_5b
    :goto_5b
    iget-object v1, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    aput v0, v1, v2

    goto :goto_69

    .line 686
    :cond_66
    invoke-direct {p0}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 688
    :goto_69
    return-object p0
.end method

.method public blacklist multByPow52(II)Ljdk/internal/math/FDBigInteger;
    .registers 11
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    .line 721
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_5

    .line 722
    return-object p0

    .line 724
    :cond_5
    move-object v0, p0

    .line 725
    .local v0, "res":Ljdk/internal/math/FDBigInteger;
    if-eqz p1, :cond_51

    .line 727
    const/4 v1, 0x1

    if-eqz p2, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 728
    .local v2, "extraSize":I
    :goto_e
    sget-object v3, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v3

    if-ge p1, v3, :cond_2d

    .line 729
    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    new-array v1, v3, [I

    .line 730
    .local v1, "r":[I
    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v4, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    sget-object v5, Ljdk/internal/math/FDBigInteger;->SMALL_5_POW:[I

    aget v5, v5, p1

    invoke-static {v3, v4, v5, v1}, Ljdk/internal/math/FDBigInteger;->mult([III[I)V

    .line 731
    new-instance v3, Ljdk/internal/math/FDBigInteger;

    iget v4, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    invoke-direct {v3, v1, v4}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    move-object v0, v3

    goto :goto_51

    .line 733
    .end local v1    # "r":[I
    :cond_2d
    invoke-static {p1}, Ljdk/internal/math/FDBigInteger;->big5pow(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v1

    .line 734
    .local v1, "pow5":Ljdk/internal/math/FDBigInteger;
    iget v3, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-direct {v1}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [I

    .line 735
    .local v3, "r":[I
    iget-object v4, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v5, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v6, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v7, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    invoke-static {v4, v5, v6, v7, v3}, Ljdk/internal/math/FDBigInteger;->mult([II[II[I)V

    .line 736
    new-instance v4, Ljdk/internal/math/FDBigInteger;

    iget v5, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    iget v6, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v5, v6

    invoke-direct {v4, v3, v5}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    move-object v0, v4

    .line 739
    .end local v1    # "pow5":Ljdk/internal/math/FDBigInteger;
    .end local v2    # "extraSize":I
    .end local v3    # "r":[I
    :cond_51
    :goto_51
    invoke-virtual {v0, p2}, Ljdk/internal/math/FDBigInteger;->leftShift(I)Ljdk/internal/math/FDBigInteger;

    move-result-object v1

    return-object v1
.end method

.method public blacklist quoRemIteration(Ljdk/internal/math/FDBigInteger;)I
    .registers 24
    .param p1, "S"    # Ljdk/internal/math/FDBigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 580
    invoke-direct {v0}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v2

    .line 581
    .local v2, "thSize":I
    invoke-direct {v1}, Ljdk/internal/math/FDBigInteger;->size()I

    move-result v3

    .line 582
    .local v3, "sSize":I
    if-ge v2, v3, :cond_2a

    .line 585
    iget-object v4, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v6, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-static {v4, v5, v6}, Ljdk/internal/math/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v4

    .line 586
    .local v4, "p":I
    if-eqz v4, :cond_25

    .line 587
    iget-object v5, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v6, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    aput v4, v5, v6

    goto :goto_28

    .line 589
    :cond_25
    invoke-direct {v0}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 591
    :goto_28
    const/4 v5, 0x0

    return v5

    .line 592
    .end local v4    # "p":I
    :cond_2a
    if-gt v2, v3, :cond_ac

    .line 598
    iget-object v4, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget-object v8, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v9, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v6

    div-long/2addr v4, v8

    .line 599
    .local v4, "q":J
    invoke-direct {v0, v4, v5, v1}, Ljdk/internal/math/FDBigInteger;->multDiffMe(JLjdk/internal/math/FDBigInteger;)J

    move-result-wide v8

    .line 600
    .local v8, "diff":J
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_9a

    .line 608
    const-wide/16 v12, 0x0

    .line 609
    .local v12, "sum":J
    iget v14, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    iget v15, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int/2addr v14, v15

    .line 611
    .local v14, "tStart":I
    iget-object v15, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 612
    .local v15, "sd":[I
    move-wide/from16 v16, v6

    iget-object v6, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 613
    .local v6, "td":[I
    :goto_5d
    cmp-long v7, v12, v10

    if-nez v7, :cond_97

    .line 614
    const/4 v7, 0x0

    .local v7, "sIndex":I
    move/from16 v18, v14

    move/from16 v10, v18

    .local v10, "tIndex":I
    :goto_66
    iget v11, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-ge v10, v11, :cond_8a

    .line 615
    aget v11, v6, v10

    move/from16 v19, v2

    .end local v2    # "thSize":I
    .local v19, "thSize":I
    int-to-long v1, v11

    and-long v1, v1, v16

    aget v11, v15, v7

    move-wide/from16 v20, v1

    int-to-long v1, v11

    and-long v1, v1, v16

    add-long v1, v20, v1

    add-long/2addr v12, v1

    .line 616
    long-to-int v1, v12

    aput v1, v6, v10

    .line 617
    const/16 v1, 0x20

    ushr-long/2addr v12, v1

    .line 614
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v19

    goto :goto_66

    .end local v19    # "thSize":I
    .restart local v2    # "thSize":I
    :cond_8a
    move/from16 v19, v2

    .line 627
    .end local v2    # "thSize":I
    .end local v7    # "sIndex":I
    .end local v10    # "tIndex":I
    .restart local v19    # "thSize":I
    nop

    .line 628
    const-wide/16 v1, 0x1

    sub-long/2addr v4, v1

    move-object/from16 v1, p1

    move/from16 v2, v19

    const-wide/16 v10, 0x0

    goto :goto_5d

    .line 613
    .end local v19    # "thSize":I
    .restart local v2    # "thSize":I
    :cond_97
    move/from16 v19, v2

    .end local v2    # "thSize":I
    .restart local v19    # "thSize":I
    goto :goto_9c

    .line 600
    .end local v6    # "td":[I
    .end local v12    # "sum":J
    .end local v14    # "tStart":I
    .end local v15    # "sd":[I
    .end local v19    # "thSize":I
    .restart local v2    # "thSize":I
    :cond_9a
    move/from16 v19, v2

    .line 634
    .end local v2    # "thSize":I
    .restart local v19    # "thSize":I
    :goto_9c
    iget-object v1, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    iget v2, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget-object v6, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-static {v1, v2, v6}, Ljdk/internal/math/FDBigInteger;->multAndCarryBy10([II[I)I

    move-result v1

    .line 635
    .local v1, "p":I
    nop

    .line 636
    invoke-direct {v0}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 637
    long-to-int v2, v4

    return v2

    .line 593
    .end local v1    # "p":I
    .end local v4    # "q":J
    .end local v8    # "diff":J
    .end local v19    # "thSize":I
    .restart local v2    # "thSize":I
    :cond_ac
    move/from16 v19, v2

    .end local v2    # "thSize":I
    .restart local v19    # "thSize":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "disparate values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist rightInplaceSub(Ljdk/internal/math/FDBigInteger;)Ljdk/internal/math/FDBigInteger;
    .registers 20
    .param p1, "subtrahend"    # Ljdk/internal/math/FDBigInteger;

    .line 863
    move-object/from16 v0, p1

    .line 864
    move-object/from16 v1, p0

    .line 865
    .local v1, "minuend":Ljdk/internal/math/FDBigInteger;
    iget-boolean v2, v0, Ljdk/internal/math/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_18

    .line 866
    new-instance v2, Ljdk/internal/math/FDBigInteger;

    iget-object v3, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget v4, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    invoke-direct {v2, v3, v4}, Ljdk/internal/math/FDBigInteger;-><init>([II)V

    move-object v0, v2

    .line 868
    .end local p1    # "subtrahend":Ljdk/internal/math/FDBigInteger;
    .local v0, "subtrahend":Ljdk/internal/math/FDBigInteger;
    :cond_18
    iget v2, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    iget v3, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    sub-int/2addr v2, v3

    .line 869
    .local v2, "offsetDiff":I
    iget-object v3, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 870
    .local v3, "sData":[I
    iget-object v4, v1, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 871
    .local v4, "mData":[I
    iget v5, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 872
    .local v5, "subLen":I
    iget v6, v1, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 873
    .local v6, "minLen":I
    if-gez v2, :cond_45

    .line 874
    move v7, v6

    .line 875
    .local v7, "rLen":I
    array-length v8, v3

    const/4 v9, 0x0

    if-ge v7, v8, :cond_35

    .line 876
    neg-int v8, v2

    invoke-static {v3, v9, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    neg-int v8, v2

    invoke-static {v3, v9, v8, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_3e

    .line 879
    :cond_35
    new-array v8, v7, [I

    .line 880
    .local v8, "r":[I
    neg-int v10, v2

    invoke-static {v3, v9, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    move-object v3, v8

    iput-object v8, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 883
    .end local v8    # "r":[I
    :goto_3e
    iget v8, v1, Ljdk/internal/math/FDBigInteger;->offset:I

    iput v8, v0, Ljdk/internal/math/FDBigInteger;->offset:I

    .line 884
    sub-int/2addr v5, v2

    .line 885
    const/4 v2, 0x0

    .line 886
    .end local v7    # "rLen":I
    goto :goto_51

    .line 887
    :cond_45
    add-int v7, v6, v2

    .line 888
    .restart local v7    # "rLen":I
    array-length v8, v3

    if-lt v7, v8, :cond_51

    .line 889
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move-object v3, v8

    iput-object v8, v0, Ljdk/internal/math/FDBigInteger;->data:[I

    .line 900
    .end local v7    # "rLen":I
    :cond_51
    :goto_51
    const/4 v7, 0x0

    .line 901
    .local v7, "sIndex":I
    const-wide/16 v8, 0x0

    .line 902
    .local v8, "borrow":J
    :goto_54
    const/16 v10, 0x20

    const-wide v11, 0xffffffffL

    if-ge v7, v2, :cond_6d

    .line 903
    aget v13, v3, v7

    int-to-long v13, v13

    and-long/2addr v11, v13

    const-wide/16 v13, 0x0

    sub-long/2addr v13, v11

    add-long/2addr v13, v8

    .line 904
    .local v13, "diff":J
    long-to-int v11, v13

    aput v11, v3, v7

    .line 905
    shr-long v8, v13, v10

    .line 902
    .end local v13    # "diff":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 908
    :cond_6d
    const/4 v13, 0x0

    .local v13, "mIndex":I
    :goto_6e
    if-ge v13, v6, :cond_8d

    .line 910
    aget v14, v4, v13

    int-to-long v14, v14

    and-long/2addr v14, v11

    move/from16 p1, v10

    aget v10, v3, v7

    move-wide/from16 v16, v11

    int-to-long v11, v10

    and-long v10, v11, v16

    sub-long/2addr v14, v10

    add-long/2addr v14, v8

    .line 911
    .local v14, "diff":J
    long-to-int v10, v14

    aput v10, v3, v7

    .line 912
    shr-long v8, v14, p1

    .line 908
    .end local v14    # "diff":J
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p1

    move-wide/from16 v11, v16

    goto :goto_6e

    .line 914
    .end local v13    # "mIndex":I
    :cond_8d
    nop

    .line 916
    iput v7, v0, Ljdk/internal/math/FDBigInteger;->nWords:I

    .line 917
    invoke-direct {v0}, Ljdk/internal/math/FDBigInteger;->trimLeadingZeros()V

    .line 918
    return-object v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 6

    .line 1499
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 1500
    .local v0, "magnitude":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-ge v1, v2, :cond_3e

    .line 1501
    iget-object v2, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v2, v2, v1

    .line 1502
    .local v2, "w":I
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1503
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1504
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1505
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x4

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1500
    .end local v2    # "w":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1507
    .end local v1    # "i":I
    :cond_3e
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    mul-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toHexString()Ljava/lang/String;
    .registers 7

    .line 1475
    iget v0, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    if-nez v0, :cond_7

    .line 1476
    const-string v0, "0"

    return-object v0

    .line 1478
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    iget v2, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    add-int/2addr v1, v2

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1479
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->nWords:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_36

    .line 1480
    iget-object v3, p0, Ljdk/internal/math/FDBigInteger;->data:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1481
    .local v3, "subStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "j":I
    :goto_26
    if-ge v4, v2, :cond_30

    .line 1482
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1481
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1484
    .end local v4    # "j":I
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    .end local v3    # "subStr":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 1486
    .end local v1    # "i":I
    :cond_36
    iget v1, p0, Ljdk/internal/math/FDBigInteger;->offset:I

    .restart local v1    # "i":I
    :goto_38
    if-lez v1, :cond_42

    .line 1487
    const-string v2, "00000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 1489
    .end local v1    # "i":I
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1518
    invoke-virtual {p0}, Ljdk/internal/math/FDBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
