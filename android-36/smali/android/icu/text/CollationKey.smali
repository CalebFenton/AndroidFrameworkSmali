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
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/CollationKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o MERGE_SEPERATOR_:I = 0x2


# instance fields
.field private greylist-max-o m_hashCode_:I

.field private greylist-max-o m_key_:[B

.field private greylist-max-o m_length_:I

.field private greylist-max-o m_source_:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 87
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/text/RawCollationKey;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    .line 177
    iget v0, p2, Landroid/icu/text/RawCollationKey;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    .line 178
    invoke-virtual {p2}, Landroid/icu/text/RawCollationKey;->releaseBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    .line 179
    nop

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    .line 181
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 148
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "length"    # I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    .line 160
    iput p3, p0, Landroid/icu/text/CollationKey;->m_length_:I

    .line 161
    return-void
.end method

.method private greylist-max-o getLength()I
    .registers 4

    .line 603
    iget v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    if-ltz v0, :cond_7

    .line 604
    iget v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return v0

    .line 606
    :cond_7
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v0, v0

    .line 607
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_b
    if-ge v1, v0, :cond_18

    .line 608
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_15

    .line 609
    move v0, v1

    .line 610
    goto :goto_18

    .line 607
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 613
    .end local v1    # "index":I
    :cond_18
    :goto_18
    iput v0, p0, Landroid/icu/text/CollationKey;->m_length_:I

    .line 614
    iget v1, p0, Landroid/icu/text/CollationKey;->m_length_:I

    return v1
.end method


# virtual methods
.method public whitelist test-api compareTo(Landroid/icu/text/CollationKey;)I
    .registers 6
    .param p1, "target"    # Landroid/icu/text/CollationKey;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 256
    .local v1, "l":I
    iget-object v2, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 257
    .local v2, "r":I
    if-ge v1, v2, :cond_11

    .line 258
    const/4 v3, -0x1

    return v3

    .line 259
    :cond_11
    if-le v1, v2, :cond_15

    .line 260
    const/4 v3, 0x1

    return v3

    .line 261
    :cond_15
    if-nez v1, :cond_19

    .line 262
    const/4 v3, 0x0

    return v3

    .line 254
    .end local v1    # "l":I
    .end local v2    # "r":I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    check-cast p1, Landroid/icu/text/CollationKey;

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationKey;->compareTo(Landroid/icu/text/CollationKey;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Landroid/icu/text/CollationKey;)Z
    .registers 8
    .param p1, "target"    # Landroid/icu/text/CollationKey;

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 307
    return v0

    .line 309
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 310
    return v1

    .line 312
    :cond_8
    move-object v2, p1

    .line 313
    .local v2, "other":Landroid/icu/text/CollationKey;
    const/4 v3, 0x0

    .line 315
    .local v3, "i":I
    :goto_a
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v3

    iget-object v5, v2, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_15

    .line 316
    return v1

    .line 318
    :cond_15
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v3

    if-nez v4, :cond_1d

    .line 319
    nop

    .line 323
    return v0

    .line 321
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 285
    instance-of v0, p1, Landroid/icu/text/CollationKey;

    if-nez v0, :cond_6

    .line 286
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/text/CollationKey;

    invoke-virtual {p0, v0}, Landroid/icu/text/CollationKey;->equals(Landroid/icu/text/CollationKey;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getBound(II)Landroid/icu/text/CollationKey;
    .registers 9
    .param p1, "boundType"    # I
    .param p2, "noOfLevels"    # I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 416
    .local v1, "keystrength":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez p2, :cond_32

    .line 417
    :goto_6
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v4, v4

    if-ge v0, v4, :cond_32

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v4, v4, v0

    if-eqz v4, :cond_32

    .line 418
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "offset":I
    .local v5, "offset":I
    aget-byte v0, v4, v0

    if-ne v0, v3, :cond_30

    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 421
    add-int/lit8 p2, p2, -0x1

    .line 422
    if-eqz p2, :cond_2d

    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v0, v0

    if-eq v5, v0, :cond_2d

    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v0, v0, v5

    if-nez v0, :cond_2b

    goto :goto_2d

    :cond_2b
    move v0, v5

    goto :goto_6

    .line 424
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v5, -0x1

    .line 425
    .end local v5    # "offset":I
    .restart local v0    # "offset":I
    goto :goto_32

    .line 418
    .end local v0    # "offset":I
    .restart local v5    # "offset":I
    :cond_30
    move v0, v5

    goto :goto_6

    .line 431
    .end local v5    # "offset":I
    .restart local v0    # "offset":I
    :cond_32
    :goto_32
    if-gtz p2, :cond_64

    .line 442
    add-int v4, v0, p1

    add-int/2addr v4, v3

    new-array v3, v4, [B

    .line 443
    .local v3, "resultkey":[B
    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    packed-switch p1, :pswitch_data_88

    .line 458
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal boundType argument"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :pswitch_4a
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    aput-byte v2, v3, v0

    .line 455
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "offset":I
    .restart local v0    # "offset":I
    aput-byte v2, v3, v4

    .line 456
    goto :goto_5b

    .line 450
    :pswitch_53
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    const/4 v4, 0x2

    aput-byte v4, v3, v0

    .line 451
    move v0, v2

    goto :goto_5b

    .line 447
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :pswitch_5a
    nop

    .line 461
    :goto_5b
    aput-byte v5, v3, v0

    .line 462
    new-instance v2, Landroid/icu/text/CollationKey;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object v2

    .line 432
    .end local v3    # "resultkey":[B
    :cond_64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source collation key has only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " strength level. Call getBound() again  with noOfLevels < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_53
        :pswitch_4a
    .end packed-switch
.end method

.method public whitelist test-api getSourceString()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_source_:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 338
    iget v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    if-nez v0, :cond_54

    .line 339
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 340
    iput v1, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    goto :goto_54

    .line 343
    :cond_c
    iget-object v0, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    array-length v0, v0

    shr-int/2addr v0, v1

    .line 344
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .local v1, "key":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 346
    .local v2, "i":I
    :goto_16
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    if-eqz v3, :cond_3a

    .line 347
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v2

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v2, v2, 0x2

    goto :goto_16

    .line 350
    :cond_3a
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_4a

    .line 351
    iget-object v3, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v3, v3, v2

    shl-int/lit8 v3, v3, 0x8

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iput v3, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    .line 356
    .end local v0    # "size":I
    .end local v1    # "key":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_54
    :goto_54
    iget v0, p0, Landroid/icu/text/CollationKey;->m_hashCode_:I

    return v0
.end method

.method public whitelist test-api merge(Landroid/icu/text/CollationKey;)Landroid/icu/text/CollationKey;
    .registers 10
    .param p1, "source"    # Landroid/icu/text/CollationKey;

    .line 509
    if-eqz p1, :cond_8a

    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 516
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v0

    invoke-direct {p1}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 519
    .local v0, "result":[B
    const/4 v2, 0x0

    .line 520
    .local v2, "rindex":I
    const/4 v3, 0x0

    .line 521
    .local v3, "index":I
    const/4 v4, 0x0

    .line 525
    .local v4, "sourceindex":I
    :goto_18
    iget-object v5, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v5, v5, v3

    if-ltz v5, :cond_7d

    iget-object v5, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v5, v5, v3

    if-lt v5, v1, :cond_25

    goto :goto_7d

    .line 530
    :cond_25
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "rindex":I
    .local v5, "rindex":I
    aput-byte v1, v0, v2

    .line 533
    :goto_29
    iget-object v2, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v4

    if-ltz v2, :cond_70

    iget-object v2, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v4

    if-lt v2, v1, :cond_36

    goto :goto_70

    .line 540
    :cond_36
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4c

    iget-object v2, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    aget-byte v2, v2, v4

    if-ne v2, v6, :cond_4c

    .line 543
    add-int/lit8 v3, v3, 0x1

    .line 544
    add-int/lit8 v4, v4, 0x1

    .line 545
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "rindex":I
    .restart local v2    # "rindex":I
    aput-byte v6, v0, v5

    goto :goto_18

    .line 556
    .end local v2    # "rindex":I
    .restart local v5    # "rindex":I
    :cond_4c
    iget v1, p0, Landroid/icu/text/CollationKey;->m_length_:I

    sub-int/2addr v1, v3

    move v2, v1

    .local v2, "remainingLength":I
    if-lez v1, :cond_59

    .line 557
    iget-object v1, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {v1, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    add-int/2addr v5, v2

    goto :goto_65

    .line 560
    :cond_59
    iget v1, p1, Landroid/icu/text/CollationKey;->m_length_:I

    sub-int/2addr v1, v4

    move v2, v1

    if-lez v1, :cond_65

    .line 561
    iget-object v1, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    add-int/2addr v5, v2

    .line 564
    :cond_65
    :goto_65
    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 566
    nop

    .line 567
    new-instance v1, Landroid/icu/text/CollationKey;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v0, v5}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;[BI)V

    return-object v1

    .line 535
    .end local v2    # "remainingLength":I
    :cond_70
    :goto_70
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "rindex":I
    .local v2, "rindex":I
    iget-object v6, p1, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "sourceindex":I
    .local v7, "sourceindex":I
    aget-byte v4, v6, v4

    aput-byte v4, v0, v5

    move v5, v2

    move v4, v7

    goto :goto_29

    .line 526
    .end local v7    # "sourceindex":I
    .restart local v4    # "sourceindex":I
    :cond_7d
    :goto_7d
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "rindex":I
    .restart local v5    # "rindex":I
    iget-object v6, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    aget-byte v3, v6, v3

    aput-byte v3, v0, v2

    move v2, v5

    move v3, v7

    goto :goto_18

    .line 510
    .end local v0    # "result":[B
    .end local v4    # "sourceindex":I
    .end local v5    # "rindex":I
    .end local v7    # "index":I
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CollationKey argument can not be null or of 0 length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toByteArray()[B
    .registers 5

    .line 226
    invoke-direct {p0}, Landroid/icu/text/CollationKey;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 227
    .local v0, "length":I
    new-array v1, v0, [B

    .line 228
    .local v1, "result":[B
    iget-object v2, p0, Landroid/icu/text/CollationKey;->m_key_:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-object v1
.end method
