.class public final Landroid/media/internal/exo/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;,
        Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;,
        Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;,
        Landroid/media/internal/exo/extractor/VorbisUtil$Mode;
    }
.end annotation


# direct methods
.method public static blacklist iLog(I)I
    .registers 2

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method private static blacklist mapType1QuantValues(JJ)J
    .registers 6

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    long-to-double p2, p2

    div-double/2addr v0, p2

    .line 548
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method private static blacklist readBook(Landroid/media/internal/exo/extractor/VorbisBitArray;)Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 485
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b7

    const/16 v1, 0x10

    .line 490
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 491
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 492
    new-array v7, v6, [J

    .line 494
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-nez v9, :cond_48

    .line 496
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    :goto_27
    if-ge v4, v6, :cond_6a

    if-eqz v10, :cond_3d

    .line 499
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 500
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v8

    int-to-long v11, v11

    aput-wide v11, v7, v4

    goto :goto_45

    .line 502
    :cond_3a
    aput-wide v0, v7, v4

    goto :goto_45

    .line 505
    :cond_3d
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v8

    int-to-long v11, v11

    aput-wide v11, v7, v4

    :goto_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 509
    :cond_48
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    move v10, v4

    :goto_4e
    if-ge v10, v6, :cond_6a

    sub-int v11, v6, v10

    .line 511
    invoke-static {v11}, Landroid/media/internal/exo/extractor/VorbisUtil;->iLog(I)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    move v12, v4

    :goto_5b
    if-ge v12, v11, :cond_67

    if-ge v10, v6, :cond_67

    int-to-long v13, v2

    .line 513
    aput-wide v13, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_6a
    const/4 v2, 0x4

    move v4, v8

    .line 519
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v8

    const/4 v10, 0x2

    if-gt v8, v10, :cond_a1

    if-eq v8, v4, :cond_77

    if-ne v8, v10, :cond_9b

    :cond_77
    const/16 v3, 0x20

    .line 524
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 525
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 526
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 527
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    if-ne v8, v4, :cond_92

    if-eqz v5, :cond_95

    int-to-long v0, v6

    int-to-long v3, v5

    .line 531
    invoke-static {v0, v1, v3, v4}, Landroid/media/internal/exo/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_95

    :cond_92
    int-to-long v0, v6

    int-to-long v3, v5

    mul-long/2addr v0, v3

    :cond_95
    :goto_95
    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 539
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 541
    :cond_9b
    new-instance v4, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;

    invoke-direct/range {v4 .. v9}, Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object v4

    .line 521
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 486
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 486
    invoke-static {p0, v3}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist readFloors(Landroid/media/internal/exo/extractor/VorbisBitArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 430
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_aa

    const/16 v5, 0x10

    .line 432
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_89

    if-ne v6, v2, :cond_72

    const/4 v5, 0x5

    .line 446
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 448
    new-array v6, v5, [I

    const/4 v9, -0x1

    move v10, v3

    :goto_21
    if-ge v10, v5, :cond_2f

    .line 450
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v6, v10

    if-le v11, v9, :cond_2c

    move v9, v11

    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_2f
    add-int/lit8 v9, v9, 0x1

    .line 455
    new-array v10, v9, [I

    move v11, v3

    :goto_34
    const/4 v12, 0x2

    if-ge v11, v9, :cond_56

    const/4 v13, 0x3

    .line 457
    invoke-virtual {p0, v13}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 458
    invoke-virtual {p0, v12}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    if-lez v12, :cond_48

    .line 460
    invoke-virtual {p0, v8}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    :cond_48
    move v13, v3

    :goto_49
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_53

    .line 463
    invoke-virtual {p0, v8}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_34

    .line 466
    :cond_56
    invoke-virtual {p0, v12}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 467
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    move v8, v3

    move v9, v8

    move v11, v9

    :goto_60
    if-ge v8, v5, :cond_a6

    .line 470
    aget v12, v6, v8

    .line 471
    aget v12, v10, v12

    add-int/2addr v9, v12

    :goto_67
    if-ge v11, v9, :cond_6f

    .line 473
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_67

    :cond_6f
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 478
    :cond_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 435
    :cond_89
    invoke-virtual {p0, v8}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 436
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 437
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 438
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 439
    invoke-virtual {p0, v8}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 440
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    move v6, v3

    :goto_9e
    if-ge v6, v5, :cond_a6

    .line 442
    invoke-virtual {p0, v8}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_aa
    return-void
.end method

.method private static blacklist readMappings(ILandroid/media/internal/exo/extractor/VorbisBitArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 356
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v0, :cond_87

    const/16 v4, 0x10

    .line 358
    invoke-virtual {p1, v4}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_2a

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroid/media/internal/exo/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 364
    :cond_2a
    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_37

    .line 365
    invoke-virtual {p1, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_38

    :cond_37
    move v4, v1

    .line 370
    :goto_38
    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5b

    .line 371
    invoke-virtual {p1, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    move v8, v2

    :goto_46
    if-ge v8, v6, :cond_5b

    add-int/lit8 v9, p0, -0x1

    .line 373
    invoke-static {v9}, Landroid/media/internal/exo/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 374
    invoke-static {v9}, Landroid/media/internal/exo/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_5b
    const/4 v6, 0x2

    .line 379
    invoke-virtual {p1, v6}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_7f

    if-le v4, v1, :cond_6d

    move v6, v2

    :goto_65
    if-ge v6, p0, :cond_6d

    .line 385
    invoke-virtual {p1, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_6d
    move v5, v2

    :goto_6e
    if-ge v5, v4, :cond_7c

    .line 389
    invoke-virtual {p1, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 390
    invoke-virtual {p1, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 391
    invoke-virtual {p1, v7}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 380
    :cond_7f
    const-string p0, "to reserved bits must be zero after mapping coupling steps"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_87
    return-void
.end method

.method private static blacklist readModes(Landroid/media/internal/exo/extractor/VorbisBitArray;)[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;
    .registers 9

    const/4 v0, 0x6

    .line 343
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 344
    new-array v1, v0, [Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2a

    .line 346
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    .line 347
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 348
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    .line 349
    invoke-virtual {p0, v6}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 350
    new-instance v7, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Landroid/media/internal/exo/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method private static blacklist readResidues(Landroid/media/internal/exo/extractor/VorbisBitArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 397
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_68

    const/16 v5, 0x10

    .line 399
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_60

    const/16 v5, 0x18

    .line 404
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 405
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 406
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 407
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 408
    invoke-virtual {p0, v6}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    .line 409
    new-array v7, v5, [I

    move v8, v3

    :goto_2c
    if-ge v8, v5, :cond_47

    const/4 v9, 0x3

    .line 412
    invoke-virtual {p0, v9}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 413
    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v10, 0x5

    .line 414
    invoke-virtual {p0, v10}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_40

    :cond_3f
    move v10, v3

    :goto_40
    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 416
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_47
    move v8, v3

    :goto_48
    if-ge v8, v5, :cond_5d

    move v9, v3

    :goto_4b
    if-ge v9, v6, :cond_5a

    .line 420
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_57

    .line 421
    invoke-virtual {p0, v6}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    :cond_57
    add-int/lit8 v9, v9, 0x1

    goto :goto_4b

    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 401
    :cond_60
    const-string p0, "residueType greater than 2 is not decodable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_68
    return-void
.end method

.method public static blacklist readVorbisCommentHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    invoke-static {p0, v0, v0}, Landroid/media/internal/exo/extractor/VorbisUtil;->readVorbisCommentHeader(Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readVorbisCommentHeader(Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 225
    invoke-static {p1, p0, v0}, Landroid/media/internal/exo/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroid/media/internal/exo/util/ParsableByteArray;Z)Z

    .line 229
    :cond_7
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 231
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 234
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    .line 235
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    :goto_1d
    int-to-long v5, v0

    cmp-long v5, v5, v2

    if-gez v5, :cond_37

    .line 238
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v1, v1, 0x4

    .line 240
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 241
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_37
    if-eqz p2, :cond_4a

    .line 243
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_42

    goto :goto_4a

    .line 244
    :cond_42
    const-string p0, "framing bit expected to be set"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    .line 248
    new-instance p0, Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    invoke-direct {p0, p1, v4, v1}, Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static blacklist readVorbisIdentificationHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-static {v0, p0, v1}, Landroid/media/internal/exo/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroid/media/internal/exo/util/ParsableByteArray;Z)Z

    .line 155
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v3

    .line 156
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 157
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 158
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const/4 v6, -0x1

    if-gtz v2, :cond_19

    move v2, v6

    .line 162
    :cond_19
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    if-gtz v7, :cond_20

    move v7, v6

    .line 166
    :cond_20
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    if-gtz v8, :cond_27

    move v8, v6

    .line 170
    :cond_27
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v9, v6, 0xf

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 171
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v9, v9

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-double v13, v6

    .line 172
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    .line 174
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/2addr v6, v0

    if-lez v6, :cond_48

    move v11, v0

    goto :goto_49

    :cond_48
    move v11, v1

    .line 176
    :goto_49
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    move v6, v2

    .line 178
    new-instance v2, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    invoke-direct/range {v2 .. v12}, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v2
.end method

.method public static blacklist readVorbisModes(Landroid/media/internal/exo/util/ParsableByteArray;I)[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 312
    invoke-static {v0, p0, v1}, Landroid/media/internal/exo/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroid/media/internal/exo/util/ParsableByteArray;Z)Z

    .line 314
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 316
    new-instance v2, Landroid/media/internal/exo/extractor/VorbisBitArray;

    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/internal/exo/extractor/VorbisBitArray;-><init>([B)V

    .line 317
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->skipBits(I)V

    move p0, v1

    :goto_1e
    if-ge p0, v0, :cond_26

    .line 320
    invoke-static {v2}, Landroid/media/internal/exo/extractor/VorbisUtil;->readBook(Landroid/media/internal/exo/extractor/VorbisBitArray;)Landroid/media/internal/exo/extractor/VorbisUtil$CodeBook;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1e

    :cond_26
    const/4 p0, 0x6

    .line 323
    invoke-virtual {v2, p0}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_2d
    const/4 v0, 0x0

    if-ge v1, p0, :cond_42

    const/16 v3, 0x10

    .line 325
    invoke-virtual {v2, v3}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    if-nez v3, :cond_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 326
    :cond_3b
    const-string p0, "placeholder of time domain transforms not zeroed out"

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 330
    :cond_42
    invoke-static {v2}, Landroid/media/internal/exo/extractor/VorbisUtil;->readFloors(Landroid/media/internal/exo/extractor/VorbisBitArray;)V

    .line 331
    invoke-static {v2}, Landroid/media/internal/exo/extractor/VorbisUtil;->readResidues(Landroid/media/internal/exo/extractor/VorbisBitArray;)V

    .line 332
    invoke-static {p1, v2}, Landroid/media/internal/exo/extractor/VorbisUtil;->readMappings(ILandroid/media/internal/exo/extractor/VorbisBitArray;)V

    .line 334
    invoke-static {v2}, Landroid/media/internal/exo/extractor/VorbisUtil;->readModes(Landroid/media/internal/exo/extractor/VorbisBitArray;)[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

    move-result-object p0

    .line 335
    invoke-virtual {v2}, Landroid/media/internal/exo/extractor/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_56

    return-object p0

    .line 336
    :cond_56
    const-string p0, "framing bit after modes not set as expected"

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist verifyVorbisHeaderCapturePattern(ILandroid/media/internal/exo/util/ParsableByteArray;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_26

    if-eqz p2, :cond_c

    return v3

    .line 267
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "too short header: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {p0, v2}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 272
    :cond_26
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_49

    if-eqz p2, :cond_2f

    return v3

    .line 276
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected header type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-static {p0, v2}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 281
    :cond_49
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_7c

    .line 282
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_7c

    .line 283
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_7c

    .line 284
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_7c

    .line 285
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_7c

    .line 286
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_7a

    goto :goto_7c

    :cond_7a
    const/4 p0, 0x1

    return p0

    :cond_7c
    :goto_7c
    if-eqz p2, :cond_7f

    return v3

    .line 290
    :cond_7f
    const-string p0, "expected characters \'vorbis\'"

    invoke-static {p0, v2}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method
