.class public Lsun/misc/FDBigInt;
.super Ljava/lang/Object;
.source "FDBigInt.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field data:[I

.field nWords:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/misc/FDBigInt;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@b
    .line 32
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "v"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    #@6
    .line 39
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@a
    .line 40
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@c
    const/4 v1, 0x0

    #@d
    aput p1, v0, v1

    #@f
    .line 37
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "v"    # J

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 44
    new-array v2, v1, [I

    #@8
    iput-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@a
    .line 45
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@c
    long-to-int v3, p1

    #@d
    aput v3, v2, v4

    #@f
    .line 46
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@11
    const/16 v3, 0x20

    #@13
    ushr-long v4, p1, v3

    #@15
    long-to-int v3, v4

    #@16
    aput v3, v2, v0

    #@18
    .line 47
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@1a
    aget v2, v2, v0

    #@1c
    if-nez v2, :cond_0

    #@1e
    :goto_0
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    #@20
    .line 43
    return-void

    #@21
    :cond_0
    move v0, v1

    #@22
    .line 47
    goto :goto_0
.end method

.method public constructor <init>(J[CII)V
    .locals 13
    .param p1, "seed"    # J
    .param p3, "digit"    # [C
    .param p4, "nd0"    # I
    .param p5, "nd"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    add-int/lit8 v9, p5, 0x8

    #@5
    div-int/lit8 v7, v9, 0x9

    #@7
    .line 62
    .local v7, "n":I
    const/4 v9, 0x2

    #@8
    if-ge v7, v9, :cond_0

    #@a
    const/4 v7, 0x2

    #@b
    .line 63
    :cond_0
    new-array v9, v7, [I

    #@d
    iput-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    #@f
    .line 64
    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    #@11
    long-to-int v10, p1

    #@12
    const/4 v11, 0x0

    #@13
    aput v10, v9, v11

    #@15
    .line 65
    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    #@17
    const/16 v10, 0x20

    #@19
    ushr-long v10, p1, v10

    #@1b
    long-to-int v10, v10

    #@1c
    const/4 v11, 0x1

    #@1d
    aput v10, v9, v11

    #@1f
    .line 66
    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    #@21
    const/4 v10, 0x1

    #@22
    aget v9, v9, v10

    #@24
    if-nez v9, :cond_1

    #@26
    const/4 v9, 0x1

    #@27
    :goto_0
    iput v9, p0, Lsun/misc/FDBigInt;->nWords:I

    #@29
    .line 67
    move/from16 v3, p4

    #@2b
    .line 68
    .local v3, "i":I
    add-int/lit8 v6, p5, -0x5

    #@2d
    .local v6, "limit":I
    move v4, v3

    #@2e
    .line 70
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_3

    #@30
    .line 71
    add-int/lit8 v5, v4, 0x5

    #@32
    .line 72
    .local v5, "ilim":I
    add-int/lit8 v3, v4, 0x1

    #@34
    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v9, p3, v4

    #@36
    add-int/lit8 v8, v9, -0x30

    #@38
    .local v8, "v":I
    move v4, v3

    #@39
    .line 73
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v5, :cond_2

    #@3b
    .line 74
    mul-int/lit8 v9, v8, 0xa

    #@3d
    add-int/lit8 v3, v4, 0x1

    #@3f
    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v10, p3, v4

    #@41
    add-int/2addr v9, v10

    #@42
    add-int/lit8 v8, v9, -0x30

    #@44
    move v4, v3

    #@45
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    #@46
    .line 66
    .end local v4    # "i":I
    .end local v5    # "ilim":I
    .end local v6    # "limit":I
    .end local v8    # "v":I
    :cond_1
    const/4 v9, 0x2

    #@47
    goto :goto_0

    #@48
    .line 76
    .restart local v4    # "i":I
    .restart local v5    # "ilim":I
    .restart local v6    # "limit":I
    .restart local v8    # "v":I
    :cond_2
    const v9, 0x186a0

    #@4b
    invoke-virtual {p0, v9, v8}, Lsun/misc/FDBigInt;->multaddMe(II)V

    #@4e
    goto :goto_1

    #@4f
    .line 78
    .end local v5    # "ilim":I
    .end local v8    # "v":I
    :cond_3
    const/4 v2, 0x1

    #@50
    .line 79
    .local v2, "factor":I
    const/4 v8, 0x0

    #@51
    .line 80
    .restart local v8    # "v":I
    :goto_3
    move/from16 v0, p5

    #@53
    if-ge v4, v0, :cond_4

    #@55
    .line 81
    mul-int/lit8 v9, v8, 0xa

    #@57
    add-int/lit8 v3, v4, 0x1

    #@59
    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v10, p3, v4

    #@5b
    add-int/2addr v9, v10

    #@5c
    add-int/lit8 v8, v9, -0x30

    #@5e
    .line 82
    mul-int/lit8 v2, v2, 0xa

    #@60
    move v4, v3

    #@61
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    #@62
    .line 84
    :cond_4
    const/4 v9, 0x1

    #@63
    if-eq v2, v9, :cond_5

    #@65
    .line 85
    invoke-virtual {p0, v2, v8}, Lsun/misc/FDBigInt;->multaddMe(II)V

    #@68
    .line 60
    :cond_5
    return-void
.end method

.method public constructor <init>(Lsun/misc/FDBigInt;)V
    .locals 4
    .param p1, "other"    # Lsun/misc/FDBigInt;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iget v0, p1, Lsun/misc/FDBigInt;->nWords:I

    #@6
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    #@8
    new-array v0, v0, [I

    #@a
    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@c
    .line 52
    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    #@e
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@10
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    #@12
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@15
    .line 50
    return-void
.end method

.method private constructor <init>([II)V
    .locals 0
    .param p1, "d"    # [I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lsun/misc/FDBigInt;->data:[I

    #@5
    .line 57
    iput p2, p0, Lsun/misc/FDBigInt;->nWords:I

    #@7
    .line 55
    return-void
.end method

.method private static dataInRangeIsZero(IILsun/misc/FDBigInt;)Z
    .locals 3
    .param p0, "i"    # I
    .param p1, "m"    # I
    .param p2, "other"    # Lsun/misc/FDBigInt;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move v0, p0

    #@2
    .line 341
    .end local p0    # "i":I
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@4
    .line 342
    iget-object v1, p2, Lsun/misc/FDBigInt;->data:[I

    #@6
    add-int/lit8 p0, v0, 0x1

    #@8
    .end local v0    # "i":I
    .restart local p0    # "i":I
    aget v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 343
    return v2

    #@d
    :cond_0
    move v0, p0

    #@e
    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@f
    .line 344
    :cond_1
    const/4 v1, 0x1

    #@10
    return v1
.end method


# virtual methods
.method public add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 14
    .param p1, "other"    # Lsun/misc/FDBigInt;

    #@0
    .prologue
    .line 279
    const-wide/16 v2, 0x0

    #@2
    .line 282
    .local v2, "c":J
    iget v10, p0, Lsun/misc/FDBigInt;->nWords:I

    #@4
    iget v11, p1, Lsun/misc/FDBigInt;->nWords:I

    #@6
    if-lt v10, v11, :cond_1

    #@8
    .line 283
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@a
    .line 284
    .local v0, "a":[I
    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    #@c
    .line 285
    .local v7, "n":I
    iget-object v1, p1, Lsun/misc/FDBigInt;->data:[I

    #@e
    .line 286
    .local v1, "b":[I
    iget v6, p1, Lsun/misc/FDBigInt;->nWords:I

    #@10
    .line 293
    .local v6, "m":I
    :goto_0
    new-array v8, v7, [I

    #@12
    .line 294
    .local v8, "r":[I
    const/4 v4, 0x0

    #@13
    .local v4, "i":I
    move v5, v4

    #@14
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    #@16
    .line 295
    aget v10, v0, v5

    #@18
    int-to-long v10, v10

    #@19
    const-wide v12, 0xffffffffL

    #@1e
    and-long/2addr v10, v12

    #@1f
    add-long/2addr v2, v10

    #@20
    .line 296
    if-ge v5, v6, :cond_0

    #@22
    .line 297
    aget v10, v1, v5

    #@24
    int-to-long v10, v10

    #@25
    const-wide v12, 0xffffffffL

    #@2a
    and-long/2addr v10, v12

    #@2b
    add-long/2addr v2, v10

    #@2c
    .line 299
    :cond_0
    long-to-int v10, v2

    #@2d
    aput v10, v8, v5

    #@2f
    .line 300
    const/16 v10, 0x20

    #@31
    shr-long/2addr v2, v10

    #@32
    .line 294
    add-int/lit8 v4, v5, 0x1

    #@34
    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v5, v4

    #@35
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    #@36
    .line 288
    .end local v0    # "a":[I
    .end local v1    # "b":[I
    .end local v5    # "i":I
    .end local v6    # "m":I
    .end local v7    # "n":I
    .end local v8    # "r":[I
    :cond_1
    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    #@38
    .line 289
    .restart local v0    # "a":[I
    iget v7, p1, Lsun/misc/FDBigInt;->nWords:I

    #@3a
    .line 290
    .restart local v7    # "n":I
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@3c
    .line 291
    .restart local v1    # "b":[I
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    #@3e
    .restart local v6    # "m":I
    goto :goto_0

    #@3f
    .line 302
    .restart local v5    # "i":I
    .restart local v8    # "r":[I
    :cond_2
    const-wide/16 v10, 0x0

    #@41
    cmp-long v10, v2, v10

    #@43
    if-eqz v10, :cond_3

    #@45
    .line 304
    array-length v10, v8

    #@46
    add-int/lit8 v10, v10, 0x1

    #@48
    new-array v9, v10, [I

    #@4a
    .line 305
    .local v9, "s":[I
    array-length v10, v8

    #@4b
    const/4 v11, 0x0

    #@4c
    const/4 v12, 0x0

    #@4d
    invoke-static {v8, v11, v9, v12, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@50
    .line 306
    add-int/lit8 v4, v5, 0x1

    #@52
    .end local v5    # "i":I
    .restart local v4    # "i":I
    long-to-int v10, v2

    #@53
    aput v10, v9, v5

    #@55
    .line 307
    new-instance v10, Lsun/misc/FDBigInt;

    #@57
    invoke-direct {v10, v9, v4}, Lsun/misc/FDBigInt;-><init>([II)V

    #@5a
    return-object v10

    #@5b
    .line 309
    .end local v4    # "i":I
    .end local v9    # "s":[I
    .restart local v5    # "i":I
    :cond_3
    new-instance v10, Lsun/misc/FDBigInt;

    #@5d
    invoke-direct {v10, v8, v5}, Lsun/misc/FDBigInt;-><init>([II)V

    #@60
    return-object v10
.end method

.method public cmp(Lsun/misc/FDBigInt;)I
    .locals 8
    .param p1, "other"    # Lsun/misc/FDBigInt;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, -0x1

    #@2
    .line 356
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@4
    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    #@6
    if-le v4, v5, :cond_1

    #@8
    .line 359
    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    #@a
    add-int/lit8 v3, v4, -0x1

    #@c
    .line 360
    .local v3, "j":I
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@e
    add-int/lit8 v2, v4, -0x1

    #@10
    .local v2, "i":I
    :goto_0
    if-le v2, v3, :cond_4

    #@12
    .line 361
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    #@14
    aget v4, v4, v2

    #@16
    if-eqz v4, :cond_0

    #@18
    return v7

    #@19
    .line 360
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 362
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@1e
    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    #@20
    if-ge v4, v5, :cond_3

    #@22
    .line 365
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@24
    add-int/lit8 v3, v4, -0x1

    #@26
    .line 366
    .restart local v3    # "j":I
    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    #@28
    add-int/lit8 v2, v4, -0x1

    #@2a
    .restart local v2    # "i":I
    :goto_1
    if-le v2, v3, :cond_4

    #@2c
    .line 367
    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    #@2e
    aget v4, v4, v2

    #@30
    if-eqz v4, :cond_2

    #@32
    return v6

    #@33
    .line 366
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@35
    goto :goto_1

    #@36
    .line 369
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@38
    add-int/lit8 v2, v4, -0x1

    #@3a
    .line 371
    .restart local v2    # "i":I
    :cond_4
    :goto_2
    if-lez v2, :cond_5

    #@3c
    .line 372
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    #@3e
    aget v4, v4, v2

    #@40
    iget-object v5, p1, Lsun/misc/FDBigInt;->data:[I

    #@42
    aget v5, v5, v2

    #@44
    if-eq v4, v5, :cond_6

    #@46
    .line 376
    :cond_5
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    #@48
    aget v0, v4, v2

    #@4a
    .line 377
    .local v0, "a":I
    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    #@4c
    aget v1, v4, v2

    #@4e
    .line 378
    .local v1, "b":I
    if-gez v0, :cond_8

    #@50
    .line 380
    if-gez v1, :cond_7

    #@52
    .line 381
    sub-int v4, v0, v1

    #@54
    return v4

    #@55
    .line 371
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    #@57
    goto :goto_2

    #@58
    .line 383
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    :cond_7
    return v7

    #@59
    .line 387
    :cond_8
    if-gez v1, :cond_9

    #@5b
    .line 389
    return v6

    #@5c
    .line 391
    :cond_9
    sub-int v4, v0, v1

    #@5e
    return v4
.end method

.method public longValue()J
    .locals 6

    #@0
    .prologue
    const-wide v4, 0xffffffffL

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    .line 467
    sget-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@9
    if-nez v0, :cond_1

    #@b
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    #@d
    if-lez v0, :cond_0

    #@f
    move v0, v1

    #@10
    :goto_0
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1d
    throw v0

    #@1e
    :cond_0
    move v0, v2

    #@1f
    goto :goto_0

    #@20
    .line 469
    :cond_1
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    #@22
    if-ne v0, v1, :cond_2

    #@24
    .line 470
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@26
    aget v0, v0, v2

    #@28
    int-to-long v0, v0

    #@29
    and-long/2addr v0, v4

    #@2a
    return-wide v0

    #@2b
    .line 472
    :cond_2
    sget-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@2d
    if-nez v0, :cond_3

    #@2f
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    #@31
    const/4 v3, 0x2

    #@32
    invoke-static {v3, v0, p0}, Lsun/misc/FDBigInt;->dataInRangeIsZero(IILsun/misc/FDBigInt;)Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_3

    #@38
    new-instance v0, Ljava/lang/AssertionError;

    #@3a
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3d
    throw v0

    #@3e
    .line 473
    :cond_3
    sget-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@40
    if-nez v0, :cond_5

    #@42
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@44
    aget v0, v0, v1

    #@46
    if-ltz v0, :cond_4

    #@48
    move v0, v1

    #@49
    :goto_1
    if-nez v0, :cond_5

    #@4b
    new-instance v0, Ljava/lang/AssertionError;

    #@4d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@50
    throw v0

    #@51
    :cond_4
    move v0, v2

    #@52
    goto :goto_1

    #@53
    .line 474
    :cond_5
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    #@55
    aget v0, v0, v1

    #@57
    int-to-long v0, v0

    #@58
    const/16 v3, 0x20

    #@5a
    shl-long/2addr v0, v3

    #@5b
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    #@5d
    aget v2, v3, v2

    #@5f
    int-to-long v2, v2

    #@60
    and-long/2addr v2, v4

    #@61
    or-long/2addr v0, v2

    #@62
    return-wide v0
.end method

.method public lshiftMe(I)V
    .locals 12
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 95
    if-gtz p1, :cond_1

    #@4
    .line 96
    if-nez p1, :cond_0

    #@6
    .line 97
    return-void

    #@7
    .line 99
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v9, "negative shift count"

    #@c
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v8

    #@10
    .line 101
    :cond_1
    shr-int/lit8 v7, p1, 0x5

    #@12
    .line 102
    .local v7, "wordcount":I
    and-int/lit8 v1, p1, 0x1f

    #@14
    .line 103
    .local v1, "bitcount":I
    rsub-int/lit8 v0, v1, 0x20

    #@16
    .line 104
    .local v0, "anticount":I
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    #@18
    .line 105
    .local v4, "t":[I
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@1a
    .line 106
    .local v2, "s":[I
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@1c
    add-int/2addr v8, v7

    #@1d
    add-int/lit8 v8, v8, 0x1

    #@1f
    array-length v9, v4

    #@20
    if-le v8, v9, :cond_2

    #@22
    .line 108
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@24
    add-int/2addr v8, v7

    #@25
    add-int/lit8 v8, v8, 0x1

    #@27
    new-array v4, v8, [I

    #@29
    .line 110
    :cond_2
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@2b
    add-int v5, v8, v7

    #@2d
    .line 111
    .local v5, "target":I
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@2f
    add-int/lit8 v3, v8, -0x1

    #@31
    .line 112
    .local v3, "src":I
    if-nez v1, :cond_3

    #@33
    .line 114
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@35
    invoke-static {v2, v10, v4, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    #@38
    .line 115
    add-int/lit8 v5, v7, -0x1

    #@3a
    move v6, v5

    #@3b
    .line 123
    .end local v5    # "target":I
    .local v6, "target":I
    :goto_0
    if-ltz v6, :cond_5

    #@3d
    .line 124
    add-int/lit8 v5, v6, -0x1

    #@3f
    .end local v6    # "target":I
    .restart local v5    # "target":I
    aput v10, v4, v6

    #@41
    move v6, v5

    #@42
    .end local v5    # "target":I
    .restart local v6    # "target":I
    goto :goto_0

    #@43
    .line 117
    .end local v6    # "target":I
    .restart local v5    # "target":I
    :cond_3
    add-int/lit8 v6, v5, -0x1

    #@45
    .end local v5    # "target":I
    .restart local v6    # "target":I
    aget v8, v2, v3

    #@47
    ushr-int/2addr v8, v0

    #@48
    aput v8, v4, v5

    #@4a
    .line 118
    :goto_1
    if-lt v3, v11, :cond_4

    #@4c
    .line 119
    add-int/lit8 v5, v6, -0x1

    #@4e
    .end local v6    # "target":I
    .restart local v5    # "target":I
    aget v8, v2, v3

    #@50
    shl-int/2addr v8, v1

    #@51
    add-int/lit8 v3, v3, -0x1

    #@53
    aget v9, v2, v3

    #@55
    ushr-int/2addr v9, v0

    #@56
    or-int/2addr v8, v9

    #@57
    aput v8, v4, v6

    #@59
    move v6, v5

    #@5a
    .end local v5    # "target":I
    .restart local v6    # "target":I
    goto :goto_1

    #@5b
    .line 121
    :cond_4
    add-int/lit8 v5, v6, -0x1

    #@5d
    .end local v6    # "target":I
    .restart local v5    # "target":I
    aget v8, v2, v3

    #@5f
    shl-int/2addr v8, v1

    #@60
    aput v8, v4, v6

    #@62
    move v6, v5

    #@63
    .end local v5    # "target":I
    .restart local v6    # "target":I
    goto :goto_0

    #@64
    .line 126
    :cond_5
    iput-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    #@66
    .line 127
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@68
    add-int/lit8 v9, v7, 0x1

    #@6a
    add-int/2addr v8, v9

    #@6b
    iput v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@6d
    .line 130
    :goto_2
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@6f
    if-le v8, v11, :cond_6

    #@71
    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    #@73
    iget v9, p0, Lsun/misc/FDBigInt;->nWords:I

    #@75
    add-int/lit8 v9, v9, -0x1

    #@77
    aget v8, v8, v9

    #@79
    if-nez v8, :cond_6

    #@7b
    .line 131
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@7d
    add-int/lit8 v8, v8, -0x1

    #@7f
    iput v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@81
    goto :goto_2

    #@82
    .line 94
    :cond_6
    return-void
.end method

.method public mult(I)Lsun/misc/FDBigInt;
    .locals 12
    .param p1, "iv"    # I

    #@0
    .prologue
    const-wide v10, 0xffffffffL

    #@5
    .line 197
    int-to-long v4, p1

    #@6
    .line 202
    .local v4, "v":J
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    #@8
    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    #@a
    add-int/lit8 v7, v7, -0x1

    #@c
    aget v6, v6, v7

    #@e
    int-to-long v6, v6

    #@f
    and-long/2addr v6, v10

    #@10
    mul-long/2addr v6, v4

    #@11
    const-wide/32 v8, 0xfffffff

    #@14
    cmp-long v6, v6, v8

    #@16
    if-lez v6, :cond_0

    #@18
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    #@1a
    add-int/lit8 v6, v6, 0x1

    #@1c
    :goto_0
    new-array v1, v6, [I

    #@1e
    .line 203
    .local v1, "r":[I
    const-wide/16 v2, 0x0

    #@20
    .line 204
    .local v2, "p":J
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_1
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    #@23
    if-ge v0, v6, :cond_1

    #@25
    .line 205
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    #@27
    aget v6, v6, v0

    #@29
    int-to-long v6, v6

    #@2a
    and-long/2addr v6, v10

    #@2b
    mul-long/2addr v6, v4

    #@2c
    add-long/2addr v2, v6

    #@2d
    .line 206
    long-to-int v6, v2

    #@2e
    aput v6, v1, v0

    #@30
    .line 207
    const/16 v6, 0x20

    #@32
    ushr-long/2addr v2, v6

    #@33
    .line 204
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_1

    #@36
    .line 202
    .end local v0    # "i":I
    .end local v1    # "r":[I
    .end local v2    # "p":J
    :cond_0
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    #@38
    goto :goto_0

    #@39
    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "r":[I
    .restart local v2    # "p":J
    :cond_1
    const-wide/16 v6, 0x0

    #@3b
    cmp-long v6, v2, v6

    #@3d
    if-nez v6, :cond_2

    #@3f
    .line 210
    new-instance v6, Lsun/misc/FDBigInt;

    #@41
    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    #@43
    invoke-direct {v6, v1, v7}, Lsun/misc/FDBigInt;-><init>([II)V

    #@46
    return-object v6

    #@47
    .line 212
    :cond_2
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    #@49
    long-to-int v7, v2

    #@4a
    aput v7, v1, v6

    #@4c
    .line 213
    new-instance v6, Lsun/misc/FDBigInt;

    #@4e
    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    #@50
    add-int/lit8 v7, v7, 0x1

    #@52
    invoke-direct {v6, v1, v7}, Lsun/misc/FDBigInt;-><init>([II)V

    #@55
    return-object v6
.end method

.method public mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 14
    .param p1, "other"    # Lsun/misc/FDBigInt;

    #@0
    .prologue
    const-wide v12, 0xffffffffL

    #@5
    .line 249
    iget v5, p0, Lsun/misc/FDBigInt;->nWords:I

    #@7
    iget v8, p1, Lsun/misc/FDBigInt;->nWords:I

    #@9
    add-int/2addr v5, v8

    #@a
    new-array v4, v5, [I

    #@c
    .line 253
    .local v4, "r":[I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget v5, p0, Lsun/misc/FDBigInt;->nWords:I

    #@f
    if-ge v0, v5, :cond_1

    #@11
    .line 254
    iget-object v5, p0, Lsun/misc/FDBigInt;->data:[I

    #@13
    aget v5, v5, v0

    #@15
    int-to-long v8, v5

    #@16
    and-long v6, v8, v12

    #@18
    .line 255
    .local v6, "v":J
    const-wide/16 v2, 0x0

    #@1a
    .line 257
    .local v2, "p":J
    const/4 v1, 0x0

    #@1b
    .local v1, "j":I
    :goto_1
    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    #@1d
    if-ge v1, v5, :cond_0

    #@1f
    .line 258
    add-int v5, v0, v1

    #@21
    aget v5, v4, v5

    #@23
    int-to-long v8, v5

    #@24
    and-long/2addr v8, v12

    #@25
    iget-object v5, p1, Lsun/misc/FDBigInt;->data:[I

    #@27
    aget v5, v5, v1

    #@29
    int-to-long v10, v5

    #@2a
    and-long/2addr v10, v12

    #@2b
    mul-long/2addr v10, v6

    #@2c
    add-long/2addr v8, v10

    #@2d
    add-long/2addr v2, v8

    #@2e
    .line 259
    add-int v5, v0, v1

    #@30
    long-to-int v8, v2

    #@31
    aput v8, v4, v5

    #@33
    .line 260
    const/16 v5, 0x20

    #@35
    ushr-long/2addr v2, v5

    #@36
    .line 257
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 262
    :cond_0
    add-int v5, v0, v1

    #@3b
    long-to-int v8, v2

    #@3c
    aput v8, v4, v5

    #@3e
    .line 253
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 265
    .end local v1    # "j":I
    .end local v2    # "p":J
    .end local v6    # "v":J
    :cond_1
    array-length v5, v4

    #@42
    add-int/lit8 v0, v5, -0x1

    #@44
    :goto_2
    if-lez v0, :cond_2

    #@46
    .line 266
    aget v5, v4, v0

    #@48
    if-eqz v5, :cond_3

    #@4a
    .line 268
    :cond_2
    new-instance v5, Lsun/misc/FDBigInt;

    #@4c
    add-int/lit8 v8, v0, 0x1

    #@4e
    invoke-direct {v5, v4, v8}, Lsun/misc/FDBigInt;-><init>([II)V

    #@51
    return-object v5

    #@52
    .line 265
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_2
.end method

.method public multaddMe(II)V
    .locals 12
    .param p1, "iv"    # I
    .param p2, "addend"    # I

    #@0
    .prologue
    .line 224
    int-to-long v4, p1

    #@1
    .line 228
    .local v4, "v":J
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@3
    const/4 v6, 0x0

    #@4
    aget v1, v1, v6

    #@6
    int-to-long v6, v1

    #@7
    const-wide v8, 0xffffffffL

    #@c
    and-long/2addr v6, v8

    #@d
    mul-long/2addr v6, v4

    #@e
    int-to-long v8, p2

    #@f
    const-wide v10, 0xffffffffL

    #@14
    and-long/2addr v8, v10

    #@15
    add-long v2, v6, v8

    #@17
    .line 229
    .local v2, "p":J
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@19
    long-to-int v6, v2

    #@1a
    const/4 v7, 0x0

    #@1b
    aput v6, v1, v7

    #@1d
    .line 230
    const/16 v1, 0x20

    #@1f
    ushr-long/2addr v2, v1

    #@20
    .line 231
    const/4 v0, 0x1

    #@21
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    #@23
    if-ge v0, v1, :cond_0

    #@25
    .line 232
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@27
    aget v1, v1, v0

    #@29
    int-to-long v6, v1

    #@2a
    const-wide v8, 0xffffffffL

    #@2f
    and-long/2addr v6, v8

    #@30
    mul-long/2addr v6, v4

    #@31
    add-long/2addr v2, v6

    #@32
    .line 233
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@34
    long-to-int v6, v2

    #@35
    aput v6, v1, v0

    #@37
    .line 234
    const/16 v1, 0x20

    #@39
    ushr-long/2addr v2, v1

    #@3a
    .line 231
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 236
    :cond_0
    const-wide/16 v6, 0x0

    #@3f
    cmp-long v1, v2, v6

    #@41
    if-eqz v1, :cond_1

    #@43
    .line 237
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    #@45
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    #@47
    long-to-int v7, v2

    #@48
    aput v7, v1, v6

    #@4a
    .line 238
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    #@4c
    add-int/lit8 v1, v1, 0x1

    #@4e
    iput v1, p0, Lsun/misc/FDBigInt;->nWords:I

    #@50
    .line 223
    :cond_1
    return-void
.end method

.method public normalizeMe()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v5, -0x10000000

    #@2
    .line 148
    const/4 v3, 0x0

    #@3
    .line 149
    .local v3, "wordcount":I
    const/4 v0, 0x0

    #@4
    .line 150
    .local v0, "bitcount":I
    const/4 v2, 0x0

    #@5
    .line 151
    .local v2, "v":I
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@7
    add-int/lit8 v1, v4, -0x1

    #@9
    .local v1, "src":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    #@d
    aget v2, v4, v1

    #@f
    if-nez v2, :cond_0

    #@11
    .line 152
    add-int/lit8 v3, v3, 0x1

    #@13
    .line 151
    add-int/lit8 v1, v1, -0x1

    #@15
    goto :goto_0

    #@16
    .line 154
    :cond_0
    if-gez v1, :cond_1

    #@18
    .line 156
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v5, "zero value"

    #@1d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v4

    #@21
    .line 164
    :cond_1
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@23
    sub-int/2addr v4, v3

    #@24
    iput v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@26
    .line 170
    and-int v4, v2, v5

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 173
    const/16 v0, 0x20

    #@2c
    :goto_1
    and-int v4, v2, v5

    #@2e
    if-eqz v4, :cond_4

    #@30
    .line 174
    ushr-int/lit8 v2, v2, 0x1

    #@32
    .line 173
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_1

    #@35
    .line 176
    :cond_2
    :goto_2
    const v4, 0xfffff

    #@38
    if-gt v2, v4, :cond_3

    #@3a
    .line 178
    shl-int/lit8 v2, v2, 0x8

    #@3c
    .line 179
    add-int/lit8 v0, v0, 0x8

    #@3e
    goto :goto_2

    #@3f
    .line 181
    :cond_3
    :goto_3
    const v4, 0x7ffffff

    #@42
    if-gt v2, v4, :cond_4

    #@44
    .line 182
    shl-int/lit8 v2, v2, 0x1

    #@46
    .line 183
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_3

    #@49
    .line 186
    :cond_4
    if-eqz v0, :cond_5

    #@4b
    .line 187
    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@4e
    .line 188
    :cond_5
    return v0
.end method

.method public quoRemIteration(Lsun/misc/FDBigInt;)I
    .locals 18
    .param p1, "S"    # Lsun/misc/FDBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    move-object/from16 v0, p0

    #@2
    iget v12, v0, Lsun/misc/FDBigInt;->nWords:I

    #@4
    move-object/from16 v0, p1

    #@6
    iget v13, v0, Lsun/misc/FDBigInt;->nWords:I

    #@8
    if-eq v12, v13, :cond_0

    #@a
    .line 413
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v13, "disparate values"

    #@f
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v12

    #@13
    .line 418
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget v12, v0, Lsun/misc/FDBigInt;->nWords:I

    #@17
    add-int/lit8 v5, v12, -0x1

    #@19
    .line 419
    .local v5, "n":I
    move-object/from16 v0, p0

    #@1b
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@1d
    aget v12, v12, v5

    #@1f
    int-to-long v12, v12

    #@20
    const-wide v14, 0xffffffffL

    #@25
    and-long/2addr v12, v14

    #@26
    move-object/from16 v0, p1

    #@28
    iget-object v14, v0, Lsun/misc/FDBigInt;->data:[I

    #@2a
    aget v14, v14, v5

    #@2c
    int-to-long v14, v14

    #@2d
    div-long v8, v12, v14

    #@2f
    .line 420
    .local v8, "q":J
    const-wide/16 v2, 0x0

    #@31
    .line 421
    .local v2, "diff":J
    const/4 v4, 0x0

    #@32
    .local v4, "i":I
    :goto_0
    if-gt v4, v5, :cond_1

    #@34
    .line 422
    move-object/from16 v0, p0

    #@36
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@38
    aget v12, v12, v4

    #@3a
    int-to-long v12, v12

    #@3b
    const-wide v14, 0xffffffffL

    #@40
    and-long/2addr v12, v14

    #@41
    move-object/from16 v0, p1

    #@43
    iget-object v14, v0, Lsun/misc/FDBigInt;->data:[I

    #@45
    aget v14, v14, v4

    #@47
    int-to-long v14, v14

    #@48
    const-wide v16, 0xffffffffL

    #@4d
    and-long v14, v14, v16

    #@4f
    mul-long/2addr v14, v8

    #@50
    sub-long/2addr v12, v14

    #@51
    add-long/2addr v2, v12

    #@52
    .line 423
    move-object/from16 v0, p0

    #@54
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@56
    long-to-int v13, v2

    #@57
    aput v13, v12, v4

    #@59
    .line 424
    const/16 v12, 0x20

    #@5b
    shr-long/2addr v2, v12

    #@5c
    .line 421
    add-int/lit8 v4, v4, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 426
    :cond_1
    const-wide/16 v12, 0x0

    #@61
    cmp-long v12, v2, v12

    #@63
    if-eqz v12, :cond_6

    #@65
    .line 430
    const-wide/16 v10, 0x0

    #@67
    .line 431
    .local v10, "sum":J
    :goto_1
    const-wide/16 v12, 0x0

    #@69
    cmp-long v12, v10, v12

    #@6b
    if-nez v12, :cond_6

    #@6d
    .line 432
    const-wide/16 v10, 0x0

    #@6f
    .line 433
    const/4 v4, 0x0

    #@70
    :goto_2
    if-gt v4, v5, :cond_2

    #@72
    .line 434
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@76
    aget v12, v12, v4

    #@78
    int-to-long v12, v12

    #@79
    const-wide v14, 0xffffffffL

    #@7e
    and-long/2addr v12, v14

    #@7f
    move-object/from16 v0, p1

    #@81
    iget-object v14, v0, Lsun/misc/FDBigInt;->data:[I

    #@83
    aget v14, v14, v4

    #@85
    int-to-long v14, v14

    #@86
    const-wide v16, 0xffffffffL

    #@8b
    and-long v14, v14, v16

    #@8d
    add-long/2addr v12, v14

    #@8e
    add-long/2addr v10, v12

    #@8f
    .line 435
    move-object/from16 v0, p0

    #@91
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@93
    long-to-int v13, v10

    #@94
    aput v13, v12, v4

    #@96
    .line 436
    const/16 v12, 0x20

    #@98
    shr-long/2addr v10, v12

    #@99
    .line 433
    add-int/lit8 v4, v4, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 447
    :cond_2
    sget-boolean v12, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@9e
    if-nez v12, :cond_5

    #@a0
    const-wide/16 v12, 0x0

    #@a2
    cmp-long v12, v10, v12

    #@a4
    if-eqz v12, :cond_3

    #@a6
    const-wide/16 v12, 0x1

    #@a8
    cmp-long v12, v10, v12

    #@aa
    if-nez v12, :cond_4

    #@ac
    :cond_3
    const/4 v12, 0x1

    #@ad
    :goto_3
    if-nez v12, :cond_5

    #@af
    new-instance v12, Ljava/lang/AssertionError;

    #@b1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b4
    move-result-object v13

    #@b5
    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b8
    throw v12

    #@b9
    :cond_4
    const/4 v12, 0x0

    #@ba
    goto :goto_3

    #@bb
    .line 448
    :cond_5
    const-wide/16 v12, 0x1

    #@bd
    sub-long/2addr v8, v12

    #@be
    goto :goto_1

    #@bf
    .line 454
    .end local v10    # "sum":J
    :cond_6
    const-wide/16 v6, 0x0

    #@c1
    .line 455
    .local v6, "p":J
    const/4 v4, 0x0

    #@c2
    :goto_4
    if-gt v4, v5, :cond_7

    #@c4
    .line 456
    move-object/from16 v0, p0

    #@c6
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@c8
    aget v12, v12, v4

    #@ca
    int-to-long v12, v12

    #@cb
    const-wide v14, 0xffffffffL

    #@d0
    and-long/2addr v12, v14

    #@d1
    const-wide/16 v14, 0xa

    #@d3
    mul-long/2addr v12, v14

    #@d4
    add-long/2addr v6, v12

    #@d5
    .line 457
    move-object/from16 v0, p0

    #@d7
    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    #@d9
    long-to-int v13, v6

    #@da
    aput v13, v12, v4

    #@dc
    .line 458
    const/16 v12, 0x20

    #@de
    shr-long/2addr v6, v12

    #@df
    .line 455
    add-int/lit8 v4, v4, 0x1

    #@e1
    goto :goto_4

    #@e2
    .line 460
    :cond_7
    sget-boolean v12, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@e4
    if-nez v12, :cond_9

    #@e6
    const-wide/16 v12, 0x0

    #@e8
    cmp-long v12, v6, v12

    #@ea
    if-nez v12, :cond_8

    #@ec
    const/4 v12, 0x1

    #@ed
    :goto_5
    if-nez v12, :cond_9

    #@ef
    new-instance v12, Ljava/lang/AssertionError;

    #@f1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f4
    move-result-object v13

    #@f5
    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@f8
    throw v12

    #@f9
    :cond_8
    const/4 v12, 0x0

    #@fa
    goto :goto_5

    #@fb
    .line 461
    :cond_9
    long-to-int v12, v8

    #@fc
    return v12
.end method

.method public sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 12
    .param p1, "other"    # Lsun/misc/FDBigInt;

    #@0
    .prologue
    const-wide v10, 0xffffffffL

    #@5
    const/4 v7, 0x0

    #@6
    .line 318
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    #@8
    new-array v6, v8, [I

    #@a
    .line 320
    .local v6, "r":[I
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    #@c
    .line 321
    .local v4, "n":I
    iget v3, p1, Lsun/misc/FDBigInt;->nWords:I

    #@e
    .line 322
    .local v3, "m":I
    const/4 v5, 0x0

    #@f
    .line 323
    .local v5, "nzeros":I
    const-wide/16 v0, 0x0

    #@11
    .line 324
    .local v0, "c":J
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    #@14
    .line 325
    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    #@16
    aget v8, v8, v2

    #@18
    int-to-long v8, v8

    #@19
    and-long/2addr v8, v10

    #@1a
    add-long/2addr v0, v8

    #@1b
    .line 326
    if-ge v2, v3, :cond_0

    #@1d
    .line 327
    iget-object v8, p1, Lsun/misc/FDBigInt;->data:[I

    #@1f
    aget v8, v8, v2

    #@21
    int-to-long v8, v8

    #@22
    and-long/2addr v8, v10

    #@23
    sub-long/2addr v0, v8

    #@24
    .line 329
    :cond_0
    long-to-int v8, v0

    #@25
    aput v8, v6, v2

    #@27
    if-nez v8, :cond_1

    #@29
    .line 330
    add-int/lit8 v5, v5, 0x1

    #@2b
    .line 333
    :goto_1
    const/16 v8, 0x20

    #@2d
    shr-long/2addr v0, v8

    #@2e
    .line 324
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 332
    :cond_1
    const/4 v5, 0x0

    #@32
    goto :goto_1

    #@33
    .line 335
    :cond_2
    sget-boolean v8, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@35
    if-nez v8, :cond_4

    #@37
    const-wide/16 v8, 0x0

    #@39
    cmp-long v8, v0, v8

    #@3b
    if-nez v8, :cond_3

    #@3d
    const/4 v7, 0x1

    #@3e
    :cond_3
    if-nez v7, :cond_4

    #@40
    new-instance v7, Ljava/lang/AssertionError;

    #@42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@45
    move-result-object v8

    #@46
    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@49
    throw v7

    #@4a
    .line 336
    :cond_4
    sget-boolean v7, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    #@4c
    if-nez v7, :cond_5

    #@4e
    invoke-static {v2, v3, p1}, Lsun/misc/FDBigInt;->dataInRangeIsZero(IILsun/misc/FDBigInt;)Z

    #@51
    move-result v7

    #@52
    if-nez v7, :cond_5

    #@54
    new-instance v7, Ljava/lang/AssertionError;

    #@56
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@59
    throw v7

    #@5a
    .line 337
    :cond_5
    new-instance v7, Lsun/misc/FDBigInt;

    #@5c
    sub-int v8, v4, v5

    #@5e
    invoke-direct {v7, v6, v8}, Lsun/misc/FDBigInt;-><init>([II)V

    #@61
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 479
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    const/16 v2, 0x1e

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@8
    .line 480
    .local v1, "r":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@d
    .line 481
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    #@f
    add-int/lit8 v2, v2, -0x1

    #@11
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    #@13
    array-length v3, v3

    #@14
    add-int/lit8 v3, v3, -0x1

    #@16
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v0

    #@1a
    .line 482
    .local v0, "i":I
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    #@1c
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    #@1e
    array-length v3, v3

    #@1f
    if-le v2, v3, :cond_0

    #@21
    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "("

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    #@2f
    array-length v3, v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    const-string/jumbo v3, "<"

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    iget v3, p0, Lsun/misc/FDBigInt;->nWords:I

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, "!)"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    .line 485
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    #@51
    .line 486
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@53
    aget v2, v2, v0

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 487
    const/16 v2, 0x20

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@61
    .line 485
    add-int/lit8 v0, v0, -0x1

    #@63
    goto :goto_0

    #@64
    .line 489
    :cond_1
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    #@66
    aget v2, v2, v4

    #@68
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    .line 490
    const/16 v2, 0x5d

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@74
    .line 491
    new-instance v2, Ljava/lang/String;

    #@76
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    #@79
    return-object v2
.end method
