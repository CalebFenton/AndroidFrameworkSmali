.class public final Landroid/icu/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollationKey$BoundMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/CollationKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MERGE_SEPERATOR_:I = 0x2


# instance fields
.field private m_hashCode_:I

.field private m_key_:[B

.field private m_length_:I

.field private m_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/CollationKey;

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
    sput-boolean v0, Landroid/icu/text/CollationKey;->-assertionsDisabled:Z

    #@b
    .line 88
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/text/RawCollationKey;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 180
    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    #@6
    .line 181
    iget v0, p2, Landroid/icu/text/RawCollationKey;->size:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@c
    .line 182
    invoke-virtual {p2}, Landroid/icu/text/RawCollationKey;->releaseBytes()[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@12
    .line 183
    sget-boolean v0, Landroid/icu/text/CollationKey;->-assertionsDisabled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@18
    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@1a
    aget-byte v0, v0, v2

    #@1c
    if-nez v0, :cond_0

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_1

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_0
    move v0, v1

    #@28
    goto :goto_0

    #@29
    .line 184
    :cond_1
    iput v1, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    #@2b
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # [B

    #@0
    .prologue
    .line 152
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    #@4
    .line 150
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "length"    # I

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 161
    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    #@5
    .line 162
    iput-object p2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@7
    .line 163
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    #@a
    .line 164
    iput p3, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@c
    .line 159
    return-void
.end method

.method private getLength()I
    .locals 3

    #@0
    .prologue
    .line 620
    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@2
    if-ltz v2, :cond_0

    #@4
    .line 621
    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@6
    return v2

    #@7
    .line 623
    :cond_0
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@9
    array-length v1, v2

    #@a
    .line 624
    .local v1, "length":I
    const/4 v0, 0x0

    #@b
    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@d
    .line 625
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@f
    aget-byte v2, v2, v0

    #@11
    if-nez v2, :cond_2

    #@13
    .line 626
    move v1, v0

    #@14
    .line 630
    :cond_1
    iput v1, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@16
    .line 631
    iget v2, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@18
    return v2

    #@19
    .line 624
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/CollationKey;)I
    .locals 5
    .param p1, "target"    # Landroid/icu/text/CollationKey;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 260
    const/4 v0, 0x0

    #@2
    .line 261
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@4
    aget-byte v3, v3, v0

    #@6
    and-int/lit16 v1, v3, 0xff

    #@8
    .line 262
    .local v1, "l":I
    iget-object v3, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@a
    aget-byte v3, v3, v0

    #@c
    and-int/lit16 v2, v3, 0xff

    #@e
    .line 263
    .local v2, "r":I
    if-ge v1, v2, :cond_0

    #@10
    .line 264
    const/4 v3, -0x1

    #@11
    return v3

    #@12
    .line 265
    :cond_0
    if-le v1, v2, :cond_1

    #@14
    .line 266
    const/4 v3, 0x1

    #@15
    return v3

    #@16
    .line 267
    :cond_1
    if-nez v1, :cond_2

    #@18
    .line 268
    return v4

    #@19
    .line 260
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 258
    check-cast p1, Landroid/icu/text/CollationKey;

    #@2
    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Landroid/icu/text/CollationKey;)Z
    .locals 6
    .param p1, "target"    # Landroid/icu/text/CollationKey;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 315
    if-ne p0, p1, :cond_0

    #@4
    .line 316
    return v5

    #@5
    .line 318
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 319
    return v4

    #@8
    .line 321
    :cond_1
    move-object v1, p1

    #@9
    .line 322
    .local v1, "other":Landroid/icu/text/CollationKey;
    const/4 v0, 0x0

    #@a
    .line 324
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@c
    aget-byte v2, v2, v0

    #@e
    iget-object v3, v1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@10
    aget-byte v3, v3, v0

    #@12
    if-eq v2, v3, :cond_2

    #@14
    .line 325
    return v4

    #@15
    .line 327
    :cond_2
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@17
    aget-byte v2, v2, v0

    #@19
    if-nez v2, :cond_3

    #@1b
    .line 332
    return v5

    #@1c
    .line 330
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 291
    instance-of v0, p1, Landroid/icu/text/CollationKey;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 292
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 295
    :cond_0
    check-cast p1, Landroid/icu/text/CollationKey;

    #@8
    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->equals(Landroid/icu/text/CollationKey;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getBound(II)Landroid/icu/text/CollationKey;
    .locals 8
    .param p1, "boundType"    # I
    .param p2, "noOfLevels"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 429
    const/4 v1, 0x0

    #@3
    .line 430
    .local v1, "offset":I
    const/4 v0, 0x0

    #@4
    .line 432
    .local v0, "keystrength":I
    if-lez p2, :cond_5

    #@6
    .line 433
    :goto_0
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@8
    array-length v4, v4

    #@9
    if-ge v1, v4, :cond_1

    #@b
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@d
    aget-byte v4, v4, v1

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 434
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@13
    add-int/lit8 v2, v1, 0x1

    #@15
    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v4, v4, v1

    #@17
    .line 435
    const/4 v5, 0x1

    #@18
    .line 434
    if-ne v4, v5, :cond_3

    #@1a
    .line 436
    add-int/lit8 v0, v0, 0x1

    #@1c
    .line 437
    add-int/lit8 p2, p2, -0x1

    #@1e
    .line 438
    if-eqz p2, :cond_0

    #@20
    .line 439
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@22
    array-length v4, v4

    #@23
    if-ne v2, v4, :cond_2

    #@25
    .line 440
    :cond_0
    add-int/lit8 v1, v2, -0x1

    #@27
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v2, v1

    #@28
    .line 447
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    if-lez p2, :cond_4

    #@2a
    .line 448
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2c
    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v6, "Source collation key has only "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 451
    const-string/jumbo v6, " strength level. Call getBound() again "

    #@3f
    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    .line 452
    const-string/jumbo v6, " with noOfLevels < "

    #@46
    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 448
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v4

    #@56
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_1
    move v2, v1

    #@57
    .line 433
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    #@58
    .line 439
    :cond_2
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@5a
    aget-byte v4, v4, v2

    #@5c
    if-eqz v4, :cond_0

    #@5e
    :cond_3
    move v1, v2

    #@5f
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0

    #@60
    .line 458
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    add-int v4, v2, p1

    #@62
    add-int/lit8 v4, v4, 0x1

    #@64
    new-array v3, v4, [B

    #@66
    .line 459
    .local v3, "resultkey":[B
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@68
    invoke-static {v4, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6b
    .line 460
    packed-switch p1, :pswitch_data_0

    #@6e
    .line 474
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@70
    .line 475
    const-string/jumbo v5, "Illegal boundType argument"

    #@73
    .line 474
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v4

    #@77
    :pswitch_0
    move v1, v2

    #@78
    .line 477
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :goto_2
    aput-byte v6, v3, v1

    #@7a
    .line 478
    new-instance v4, Landroid/icu/text/CollationKey;

    #@7c
    const/4 v5, 0x0

    #@7d
    invoke-direct {v4, v5, v3, v1}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    #@80
    return-object v4

    #@81
    .line 466
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    #@83
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    const/4 v4, 0x2

    #@84
    aput-byte v4, v3, v2

    #@86
    goto :goto_2

    #@87
    .line 470
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    #@89
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aput-byte v7, v3, v2

    #@8b
    .line 471
    add-int/lit8 v2, v1, 0x1

    #@8d
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aput-byte v7, v3, v1

    #@8f
    move v1, v2

    #@90
    .line 472
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_2

    #@91
    .end local v3    # "resultkey":[B
    :cond_5
    move v2, v1

    #@92
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    #@93
    .line 460
    nop

    #@94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSourceString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 347
    iget v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    #@2
    if-nez v3, :cond_0

    #@4
    .line 348
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@6
    if-nez v3, :cond_1

    #@8
    .line 349
    const/4 v3, 0x1

    #@9
    iput v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    #@b
    .line 365
    :cond_0
    :goto_0
    iget v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    #@d
    return v3

    #@e
    .line 352
    :cond_1
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@10
    array-length v3, v3

    #@11
    shr-int/lit8 v2, v3, 0x1

    #@13
    .line 353
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@18
    .line 354
    .local v1, "key":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@19
    .line 355
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@1b
    aget-byte v3, v3, v0

    #@1d
    if-eqz v3, :cond_2

    #@1f
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@21
    add-int/lit8 v4, v0, 0x1

    #@23
    aget-byte v3, v3, v4

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 356
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@29
    aget-byte v3, v3, v0

    #@2b
    shl-int/lit8 v3, v3, 0x8

    #@2d
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@2f
    add-int/lit8 v5, v0, 0x1

    #@31
    aget-byte v4, v4, v5

    #@33
    and-int/lit16 v4, v4, 0xff

    #@35
    or-int/2addr v3, v4

    #@36
    int-to-char v3, v3

    #@37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 357
    add-int/lit8 v0, v0, 0x2

    #@3c
    goto :goto_1

    #@3d
    .line 359
    :cond_2
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@3f
    aget-byte v3, v3, v0

    #@41
    if-eqz v3, :cond_3

    #@43
    .line 360
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@45
    aget-byte v3, v3, v0

    #@47
    shl-int/lit8 v3, v3, 0x8

    #@49
    int-to-char v3, v3

    #@4a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 362
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@54
    move-result v3

    #@55
    iput v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    #@57
    goto :goto_0
.end method

.method public merge(Landroid/icu/text/CollationKey;)Landroid/icu/text/CollationKey;
    .locals 14
    .param p1, "source"    # Landroid/icu/text/CollationKey;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v12, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    .line 526
    if-eqz p1, :cond_0

    #@6
    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    #@9
    move-result v10

    #@a
    if-nez v10, :cond_1

    #@c
    .line 527
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@e
    .line 528
    const-string/jumbo v9, "CollationKey argument can not be null or of 0 length"

    #@11
    .line 527
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v8

    #@15
    .line 533
    :cond_1
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    #@18
    move-result v10

    #@19
    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    #@1c
    move-result v11

    #@1d
    add-int/2addr v10, v11

    #@1e
    add-int/lit8 v10, v10, 0x2

    #@20
    new-array v3, v10, [B

    #@22
    .line 536
    .local v3, "result":[B
    const/4 v4, 0x0

    #@23
    .line 537
    .local v4, "rindex":I
    const/4 v0, 0x0

    #@24
    .line 538
    .local v0, "index":I
    const/4 v6, 0x0

    #@25
    .line 542
    .local v6, "sourceindex":I
    :goto_0
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@27
    aget-byte v10, v10, v0

    #@29
    if-ltz v10, :cond_2

    #@2b
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@2d
    aget-byte v10, v10, v0

    #@2f
    if-lt v10, v12, :cond_3

    #@31
    .line 543
    :cond_2
    add-int/lit8 v5, v4, 0x1

    #@33
    .end local v4    # "rindex":I
    .local v5, "rindex":I
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@35
    add-int/lit8 v1, v0, 0x1

    #@37
    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v10, v10, v0

    #@39
    aput-byte v10, v3, v4

    #@3b
    move v0, v1

    #@3c
    .end local v1    # "index":I
    .restart local v0    # "index":I
    move v4, v5

    #@3d
    .end local v5    # "rindex":I
    .restart local v4    # "rindex":I
    goto :goto_0

    #@3e
    .line 547
    :cond_3
    add-int/lit8 v5, v4, 0x1

    #@40
    .end local v4    # "rindex":I
    .restart local v5    # "rindex":I
    aput-byte v12, v3, v4

    #@42
    move v4, v5

    #@43
    .line 550
    .end local v5    # "rindex":I
    .restart local v4    # "rindex":I
    :goto_1
    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@45
    aget-byte v10, v10, v6

    #@47
    if-ltz v10, :cond_4

    #@49
    .line 551
    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@4b
    aget-byte v10, v10, v6

    #@4d
    if-lt v10, v12, :cond_5

    #@4f
    .line 552
    :cond_4
    add-int/lit8 v5, v4, 0x1

    #@51
    .end local v4    # "rindex":I
    .restart local v5    # "rindex":I
    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@53
    add-int/lit8 v7, v6, 0x1

    #@55
    .end local v6    # "sourceindex":I
    .local v7, "sourceindex":I
    aget-byte v10, v10, v6

    #@57
    aput-byte v10, v3, v4

    #@59
    move v6, v7

    #@5a
    .end local v7    # "sourceindex":I
    .restart local v6    # "sourceindex":I
    move v4, v5

    #@5b
    .end local v5    # "rindex":I
    .restart local v4    # "rindex":I
    goto :goto_1

    #@5c
    .line 557
    :cond_5
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@5e
    aget-byte v10, v10, v0

    #@60
    if-ne v10, v8, :cond_6

    #@62
    .line 558
    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@64
    aget-byte v10, v10, v6

    #@66
    if-ne v10, v8, :cond_6

    #@68
    .line 560
    add-int/lit8 v0, v0, 0x1

    #@6a
    .line 561
    add-int/lit8 v6, v6, 0x1

    #@6c
    .line 562
    add-int/lit8 v5, v4, 0x1

    #@6e
    .end local v4    # "rindex":I
    .restart local v5    # "rindex":I
    aput-byte v8, v3, v4

    #@70
    move v4, v5

    #@71
    .end local v5    # "rindex":I
    .restart local v4    # "rindex":I
    goto :goto_0

    #@72
    .line 573
    :cond_6
    iget v10, p0, Landroid/icu/text/CollationKey;->m_length_:I

    #@74
    sub-int v2, v10, v0

    #@76
    .local v2, "remainingLength":I
    if-lez v2, :cond_8

    #@78
    .line 574
    iget-object v10, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@7a
    invoke-static {v10, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7d
    .line 575
    add-int/2addr v4, v2

    #@7e
    .line 581
    :cond_7
    :goto_2
    aput-byte v9, v3, v4

    #@80
    .line 583
    sget-boolean v10, Landroid/icu/text/CollationKey;->-assertionsDisabled:Z

    #@82
    if-nez v10, :cond_a

    #@84
    array-length v10, v3

    #@85
    add-int/lit8 v10, v10, -0x1

    #@87
    if-ne v4, v10, :cond_9

    #@89
    :goto_3
    if-nez v8, :cond_a

    #@8b
    new-instance v8, Ljava/lang/AssertionError;

    #@8d
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@90
    throw v8

    #@91
    .line 577
    :cond_8
    iget v10, p1, Landroid/icu/text/CollationKey;->m_length_:I

    #@93
    sub-int v2, v10, v6

    #@95
    if-lez v2, :cond_7

    #@97
    .line 578
    iget-object v10, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    #@99
    invoke-static {v10, v6, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9c
    .line 579
    add-int/2addr v4, v2

    #@9d
    goto :goto_2

    #@9e
    :cond_9
    move v8, v9

    #@9f
    .line 583
    goto :goto_3

    #@a0
    .line 584
    :cond_a
    new-instance v8, Landroid/icu/text/CollationKey;

    #@a2
    invoke-direct {v8, v13, v3, v4}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    #@a5
    return-object v8
.end method

.method public toByteArray()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 232
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    #@4
    move-result v2

    #@5
    add-int/lit8 v0, v2, 0x1

    #@7
    .line 233
    .local v0, "length":I
    new-array v1, v0, [B

    #@9
    .line 234
    .local v1, "result":[B
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    #@b
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 235
    return-object v1
.end method
