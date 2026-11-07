.class public Landroid/icu/impl/OlsonTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG:Z

.field private static final blacklist MAX_OFFSET_SECONDS:I = 0x15180

.field private static final blacklist SECONDS_PER_DAY:I = 0x15180

.field private static final blacklist ZONEINFORES:Ljava/lang/String; = "zoneinfo64"

.field private static final blacklist currentSerialVersion:I = 0x1

.field static final whitelist serialVersionUID:J = -0x572e1120b9848270L


# instance fields
.field private volatile blacklist canonicalID:Ljava/lang/String;

.field private blacklist finalStartMillis:D

.field private blacklist finalStartYear:I

.field private blacklist finalZone:Landroid/icu/util/SimpleTimeZone;

.field private transient blacklist finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

.field private transient blacklist firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient blacklist firstTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient blacklist firstTZTransitionIdx:I

.field private transient blacklist historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

.field private transient blacklist initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient blacklist isFrozen:Z

.field private blacklist serialVersionOnStream:I

.field private blacklist transitionCount:I

.field private transient blacklist transitionRulesInitialized:Z

.field private blacklist transitionTimes64:[J

.field private blacklist typeCount:I

.field private blacklist typeMapData:[B

.field private blacklist typeOffsets:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    nop

    .line 885
    const-string v0, "olson"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "top"    # Landroid/icu/util/UResourceBundle;
    .param p2, "res"    # Landroid/icu/util/UResourceBundle;
    .param p3, "id"    # Ljava/lang/String;

    .line 485
    invoke-direct {p0, p3}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 864
    const v0, 0x7fffffff

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 869
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 881
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 1230
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 486
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 639
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 864
    const v0, 0x7fffffff

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 869
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 881
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 1230
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 640
    const-string v0, "zoneinfo64"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 642
    .local v0, "top":Landroid/icu/util/UResourceBundle;
    invoke-static {v0, p1}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 643
    .local v1, "res":Landroid/icu/util/UResourceBundle;
    invoke-direct {p0, v0, v1, p1}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method private blacklist construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    .registers 39
    .param p1, "top"    # Landroid/icu/util/UResourceBundle;
    .param p2, "res"    # Landroid/icu/util/UResourceBundle;
    .param p3, "id"    # Ljava/lang/String;

    .line 491
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "Invalid Format"

    if-eqz v2, :cond_208

    if-eqz v3, :cond_208

    .line 494
    sget-boolean v0, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    if-eqz v0, :cond_32

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OlsonTimeZone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    :cond_32
    const/4 v5, 0x0

    move-object v6, v5

    .local v6, "transPost32":[I
    move-object v7, v5

    .local v7, "trans32":[I
    move-object v8, v5

    .line 500
    .local v8, "transPre32":[I
    const/4 v9, 0x0

    iput v9, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    .line 504
    const/4 v10, 0x2

    :try_start_3a
    const-string v0, "transPre32"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 505
    .local v0, "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v11

    move-object v8, v11

    .line 506
    array-length v11, v8

    rem-int/2addr v11, v10

    if-nez v11, :cond_51

    .line 510
    iget v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v12, v8

    div-int/2addr v12, v10

    add-int/2addr v11, v12

    iput v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    .line 513
    goto :goto_58

    .line 508
    :cond_51
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "transPost32":[I
    .end local v7    # "trans32":[I
    .end local v8    # "transPre32":[I
    .end local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    .end local p1    # "top":Landroid/icu/util/UResourceBundle;
    .end local p2    # "res":Landroid/icu/util/UResourceBundle;
    .end local p3    # "id":Ljava/lang/String;
    throw v11
    :try_end_57
    .catch Ljava/util/MissingResourceException; {:try_start_3a .. :try_end_57} :catch_57

    .line 511
    .end local v0    # "r":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "transPost32":[I
    .restart local v7    # "trans32":[I
    .restart local v8    # "transPre32":[I
    .restart local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    .restart local p1    # "top":Landroid/icu/util/UResourceBundle;
    .restart local p2    # "res":Landroid/icu/util/UResourceBundle;
    .restart local p3    # "id":Ljava/lang/String;
    :catch_57
    move-exception v0

    .line 517
    :goto_58
    :try_start_58
    const-string v0, "trans"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 518
    .restart local v0    # "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v11

    move-object v7, v11

    .line 519
    iget v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v12, v7

    add-int/2addr v11, v12

    iput v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_69
    .catch Ljava/util/MissingResourceException; {:try_start_58 .. :try_end_69} :catch_6a

    .line 522
    goto :goto_6b

    .line 520
    .end local v0    # "r":Landroid/icu/util/UResourceBundle;
    :catch_6a
    move-exception v0

    .line 526
    :goto_6b
    :try_start_6b
    const-string v0, "transPost32"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 527
    .restart local v0    # "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v11

    move-object v6, v11

    .line 528
    array-length v11, v6

    rem-int/2addr v11, v10

    if-nez v11, :cond_82

    .line 532
    iget v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v12, v6

    div-int/2addr v12, v10

    add-int/2addr v11, v12

    iput v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    .line 535
    goto :goto_89

    .line 530
    :cond_82
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "transPost32":[I
    .end local v7    # "trans32":[I
    .end local v8    # "transPre32":[I
    .end local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    .end local p1    # "top":Landroid/icu/util/UResourceBundle;
    .end local p2    # "res":Landroid/icu/util/UResourceBundle;
    .end local p3    # "id":Ljava/lang/String;
    throw v11
    :try_end_88
    .catch Ljava/util/MissingResourceException; {:try_start_6b .. :try_end_88} :catch_88

    .line 533
    .end local v0    # "r":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "transPost32":[I
    .restart local v7    # "trans32":[I
    .restart local v8    # "transPre32":[I
    .restart local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    .restart local p1    # "top":Landroid/icu/util/UResourceBundle;
    .restart local p2    # "res":Landroid/icu/util/UResourceBundle;
    .restart local p3    # "id":Ljava/lang/String;
    :catch_88
    move-exception v0

    .line 537
    :goto_89
    iget v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v11, 0x1

    if-lez v0, :cond_114

    .line 538
    iget v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v0, v0, [J

    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "idx":I
    if-eqz v8, :cond_d3

    .line 541
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_98
    const/16 v16, 0x20

    array-length v12, v8

    div-int/2addr v12, v10

    if-ge v15, v12, :cond_c9

    .line 542
    iget-object v12, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v17, v15, 0x2

    const-wide v18, 0xffffffffL

    aget v13, v8, v17

    int-to-long v13, v13

    and-long v13, v13, v18

    shl-long v13, v13, v16

    mul-int/lit8 v17, v15, 0x2

    add-int/lit8 v17, v17, 0x1

    move/from16 v20, v9

    aget v9, v8, v17

    move/from16 v17, v11

    move-object/from16 v21, v12

    int-to-long v11, v9

    and-long v11, v11, v18

    or-long/2addr v11, v13

    aput-wide v11, v21, v0

    .line 541
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v17

    move/from16 v9, v20

    goto :goto_98

    :cond_c9
    move/from16 v20, v9

    move/from16 v17, v11

    const-wide v18, 0xffffffffL

    goto :goto_de

    .line 540
    .end local v15    # "i":I
    :cond_d3
    move/from16 v20, v9

    move/from16 v17, v11

    const/16 v16, 0x20

    const-wide v18, 0xffffffffL

    .line 547
    :goto_de
    if-eqz v7, :cond_f0

    .line 548
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e1
    array-length v11, v7

    if-ge v9, v11, :cond_f0

    .line 549
    iget-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget v12, v7, v9

    int-to-long v12, v12

    aput-wide v12, v11, v0

    .line 548
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    .line 552
    .end local v9    # "i":I
    :cond_f0
    if-eqz v6, :cond_113

    .line 553
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f3
    array-length v11, v6

    div-int/2addr v11, v10

    if-ge v9, v11, :cond_113

    .line 554
    iget-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v12, v9, 0x2

    aget v12, v6, v12

    int-to-long v12, v12

    and-long v12, v12, v18

    shl-long v12, v12, v16

    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v6, v14

    int-to-long v14, v14

    and-long v14, v14, v18

    or-long/2addr v12, v14

    aput-wide v12, v11, v0

    .line 553
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 559
    .end local v0    # "idx":I
    .end local v9    # "i":I
    :cond_113
    goto :goto_11a

    .line 560
    :cond_114
    move/from16 v20, v9

    move/from16 v17, v11

    iput-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 564
    :goto_11a
    const-string v0, "typeOffsets"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 565
    .local v0, "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v9

    iput-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 566
    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v9, v9

    if-lt v9, v10, :cond_202

    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v9, v9

    const/16 v11, 0x7ffe

    if-gt v9, v11, :cond_202

    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v9, v9

    rem-int/2addr v9, v10

    if-nez v9, :cond_202

    .line 569
    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v9, v9

    div-int/2addr v9, v10

    iput v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    .line 572
    iget v9, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v9, :cond_161

    .line 573
    const-string v9, "typeMap"

    invoke-virtual {v3, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 574
    invoke-virtual {v0, v5}, Landroid/icu/util/UResourceBundle;->getBinary([B)[B

    move-result-object v9

    iput-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 575
    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v9, :cond_15b

    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v9, v9

    iget v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v9, v11, :cond_15b

    move-object v9, v0

    goto :goto_164

    .line 576
    :cond_15b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 579
    :cond_161
    iput-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    move-object v9, v0

    .line 583
    .end local v0    # "r":Landroid/icu/util/UResourceBundle;
    .local v9, "r":Landroid/icu/util/UResourceBundle;
    :goto_164
    iput-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 584
    const v0, 0x7fffffff

    iput v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 585
    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v11, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 587
    const/4 v5, 0x0

    .line 589
    .local v5, "ruleID":Ljava/lang/String;
    :try_start_173
    const-string v0, "finalRule"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 591
    const-string v0, "finalRaw"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    move-object v9, v0

    .line 592
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 593
    .local v0, "ruleRaw":I
    invoke-static {v2, v5}, Landroid/icu/impl/OlsonTimeZone;->loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    move-object v9, v11

    .line 594
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v11

    .line 596
    .local v11, "ruleData":[I
    if-eqz v11, :cond_1f0

    array-length v12, v11

    const/16 v13, 0xb

    if-ne v12, v13, :cond_1f0

    .line 599
    new-instance v21, Landroid/icu/util/SimpleTimeZone;

    aget v24, v11, v20

    aget v25, v11, v17

    aget v26, v11, v10

    const/4 v10, 0x3

    aget v10, v11, v10

    mul-int/lit16 v10, v10, 0x3e8

    const/4 v12, 0x4

    aget v28, v11, v12

    const/4 v12, 0x5

    aget v29, v11, v12

    const/4 v12, 0x6

    aget v30, v11, v12

    const/4 v12, 0x7

    aget v31, v11, v12

    const/16 v12, 0x8

    aget v12, v11, v12

    mul-int/lit16 v12, v12, 0x3e8

    const/16 v13, 0x9

    aget v33, v11, v13

    const/16 v13, 0xa

    aget v13, v11, v13

    mul-int/lit16 v13, v13, 0x3e8

    move-object/from16 v23, p3

    move/from16 v22, v0

    move/from16 v27, v10

    move/from16 v32, v12

    move/from16 v34, v13

    .end local v0    # "ruleRaw":I
    .local v22, "ruleRaw":I
    invoke-direct/range {v21 .. v34}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    move-object/from16 v0, v21

    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 608
    const-string v0, "finalYear"

    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    move-object v9, v0

    .line 609
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v0

    iput v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 627
    iget v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    move/from16 v12, v17

    move/from16 v10, v20

    invoke-static {v0, v10, v12}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v12

    const-wide/32 v14, 0x5265c00

    mul-long/2addr v12, v14

    long-to-double v12, v12

    iput-wide v12, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 634
    .end local v11    # "ruleData":[I
    .end local v22    # "ruleRaw":I
    goto :goto_1fb

    .line 596
    .restart local v0    # "ruleRaw":I
    .restart local v11    # "ruleData":[I
    :cond_1f0
    move/from16 v22, v0

    .line 597
    .end local v0    # "ruleRaw":I
    .restart local v22    # "ruleRaw":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ruleID":Ljava/lang/String;
    .end local v6    # "transPost32":[I
    .end local v7    # "trans32":[I
    .end local v8    # "transPre32":[I
    .end local v9    # "r":Landroid/icu/util/UResourceBundle;
    .end local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    .end local p1    # "top":Landroid/icu/util/UResourceBundle;
    .end local p2    # "res":Landroid/icu/util/UResourceBundle;
    .end local p3    # "id":Ljava/lang/String;
    throw v0
    :try_end_1f8
    .catch Ljava/util/MissingResourceException; {:try_start_173 .. :try_end_1f8} :catch_1f8

    .line 628
    .end local v11    # "ruleData":[I
    .end local v22    # "ruleRaw":I
    .restart local v5    # "ruleID":Ljava/lang/String;
    .restart local v6    # "transPost32":[I
    .restart local v7    # "trans32":[I
    .restart local v8    # "transPre32":[I
    .restart local v9    # "r":Landroid/icu/util/UResourceBundle;
    .restart local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    .restart local p1    # "top":Landroid/icu/util/UResourceBundle;
    .restart local p2    # "res":Landroid/icu/util/UResourceBundle;
    .restart local p3    # "id":Ljava/lang/String;
    :catch_1f8
    move-exception v0

    .line 629
    .local v0, "e":Ljava/util/MissingResourceException;
    if-nez v5, :cond_1fc

    .line 635
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :goto_1fb
    return-void

    .line 632
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    :cond_1fc
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 567
    .end local v5    # "ruleID":Ljava/lang/String;
    .end local v9    # "r":Landroid/icu/util/UResourceBundle;
    .local v0, "r":Landroid/icu/util/UResourceBundle;
    :cond_202
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 492
    .end local v0    # "r":Landroid/icu/util/UResourceBundle;
    .end local v6    # "transPost32":[I
    .end local v7    # "trans32":[I
    .end local v8    # "transPre32":[I
    :cond_208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist constructEmpty()V
    .registers 4

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 466
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 468
    const/4 v2, 0x1

    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    .line 469
    filled-new-array {v0, v0}, [I

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 470
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 471
    const v1, 0x7fffffff

    iput v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 472
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 474
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    .line 475
    return-void
.end method

.method private blacklist dstOffsetAt(I)I
    .registers 5
    .param p1, "transIdx"    # I

    .line 767
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 768
    .local v0, "typeIdx":I
    :goto_e
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    return v1
.end method

.method private blacklist getHistoricalOffset(JZII[I)V
    .registers 26
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I
    .param p6, "offsets"    # [I

    .line 679
    move-object/from16 v0, p0

    iget v1, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_ef

    .line 680
    const-wide/16 v4, 0x3e8

    move-wide/from16 v6, p1

    invoke-static {v6, v7, v4, v5}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v4

    .line 681
    .local v4, "sec":J
    if-nez p3, :cond_2c

    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v1, v2

    cmp-long v1, v4, v8

    if-gez v1, :cond_2c

    .line 683
    invoke-direct {v0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v2

    .line 684
    invoke-direct {v0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v3

    goto/16 :goto_ee

    .line 689
    :cond_2c
    iget v1, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v1, v3

    .local v1, "transIdx":I
    :goto_2f
    if-ltz v1, :cond_da

    .line 690
    iget-object v8, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v8, v1

    .line 691
    .local v8, "transition":J
    if-eqz p3, :cond_cc

    const-wide/32 v10, 0x15180

    sub-long v10, v8, v10

    cmp-long v10, v4, v10

    if-ltz v10, :cond_cc

    .line 692
    add-int/lit8 v10, v1, -0x1

    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v10

    .line 693
    .local v10, "offsetBefore":I
    add-int/lit8 v11, v1, -0x1

    invoke-direct {v0, v11}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v11

    if-eqz v11, :cond_50

    move v11, v3

    goto :goto_51

    :cond_50
    move v11, v2

    .line 695
    .local v11, "dstBefore":Z
    :goto_51
    invoke-direct {v0, v1}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v12

    .line 696
    .local v12, "offsetAfter":I
    invoke-direct {v0, v1}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v13

    if-eqz v13, :cond_5d

    move v13, v3

    goto :goto_5e

    :cond_5d
    move v13, v2

    .line 698
    .local v13, "dstAfter":Z
    :goto_5e
    if-eqz v11, :cond_64

    if-nez v13, :cond_64

    move v14, v3

    goto :goto_65

    :cond_64
    move v14, v2

    .line 699
    .local v14, "dstToStd":Z
    :goto_65
    if-nez v11, :cond_6b

    if-eqz v13, :cond_6b

    move v15, v3

    goto :goto_6c

    :cond_6b
    move v15, v2

    .line 701
    .local v15, "stdToDst":Z
    :goto_6c
    sub-int v16, v12, v10

    move/from16 v17, v2

    if-ltz v16, :cond_9f

    .line 703
    and-int/lit8 v2, p4, 0x3

    if-ne v2, v3, :cond_78

    if-nez v14, :cond_7f

    :cond_78
    and-int/lit8 v2, p4, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_82

    if-eqz v15, :cond_82

    .line 705
    :cond_7f
    int-to-long v2, v10

    add-long/2addr v8, v2

    goto :goto_ce

    .line 706
    :cond_82
    and-int/lit8 v2, p4, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_89

    if-nez v15, :cond_90

    :cond_89
    and-int/lit8 v2, p4, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_93

    if-eqz v14, :cond_93

    .line 708
    :cond_90
    int-to-long v2, v12

    add-long/2addr v8, v2

    goto :goto_ce

    .line 709
    :cond_93
    and-int/lit8 v2, p4, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9c

    .line 710
    int-to-long v2, v10

    add-long/2addr v8, v2

    goto :goto_ce

    .line 714
    :cond_9c
    int-to-long v2, v12

    add-long/2addr v8, v2

    goto :goto_ce

    .line 718
    :cond_9f
    and-int/lit8 v2, p5, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a6

    if-nez v14, :cond_ad

    :cond_a6
    and-int/lit8 v2, p5, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b0

    if-eqz v15, :cond_b0

    .line 720
    :cond_ad
    int-to-long v2, v12

    add-long/2addr v8, v2

    goto :goto_ce

    .line 721
    :cond_b0
    and-int/lit8 v2, p5, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b7

    if-nez v15, :cond_be

    :cond_b7
    and-int/lit8 v2, p5, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c1

    if-eqz v14, :cond_c1

    .line 723
    :cond_be
    int-to-long v2, v10

    add-long/2addr v8, v2

    goto :goto_ce

    .line 724
    :cond_c1
    and-int/lit8 v2, p5, 0xc

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c9

    .line 725
    int-to-long v2, v10

    add-long/2addr v8, v2

    goto :goto_ce

    .line 729
    :cond_c9
    int-to-long v2, v12

    add-long/2addr v8, v2

    goto :goto_ce

    .line 691
    .end local v10    # "offsetBefore":I
    .end local v11    # "dstBefore":Z
    .end local v12    # "offsetAfter":I
    .end local v13    # "dstAfter":Z
    .end local v14    # "dstToStd":Z
    .end local v15    # "stdToDst":Z
    :cond_cc
    move/from16 v17, v2

    .line 733
    :goto_ce
    cmp-long v2, v4, v8

    if-ltz v2, :cond_d3

    .line 734
    goto :goto_dc

    .line 689
    .end local v8    # "transition":J
    :cond_d3
    add-int/lit8 v1, v1, -0x1

    move/from16 v2, v17

    const/4 v3, 0x1

    goto/16 :goto_2f

    :cond_da
    move/from16 v17, v2

    .line 738
    :goto_dc
    invoke-direct {v0, v1}, Landroid/icu/impl/OlsonTimeZone;->rawOffsetAt(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    aput v2, p6, v17

    .line 739
    invoke-direct {v0, v1}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v18, 0x1

    aput v2, p6, v18

    .line 741
    .end local v1    # "transIdx":I
    .end local v4    # "sec":J
    :goto_ee
    goto :goto_105

    .line 743
    :cond_ef
    move-wide/from16 v6, p1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct {v0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v17

    .line 744
    invoke-direct {v0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v18

    .line 746
    :goto_105
    return-void
.end method

.method private blacklist getInt(B)I
    .registers 3
    .param p1, "val"    # B

    .line 749
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private declared-synchronized blacklist initTransitionRules()V
    .registers 20

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1109
    :try_start_3
    iget-boolean v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_194

    if-eqz v0, :cond_9

    .line 1110
    monitor-exit p0

    return-void

    .line 1113
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1114
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1115
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1116
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 1117
    const/4 v2, 0x0

    iput v2, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .line 1118
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(STD)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "stdName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(DST)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, "dstName":Ljava/lang/String;
    invoke-direct {v1}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 1127
    .local v4, "raw":I
    invoke-direct {v1}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    .line 1128
    .local v5, "dst":I
    new-instance v6, Landroid/icu/util/InitialTimeZoneRule;

    if-nez v5, :cond_57

    move-object v7, v0

    goto :goto_58

    :cond_57
    move-object v7, v3

    :goto_58
    invoke-direct {v6, v7, v4, v5}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1130
    iget v6, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v7, 0x1

    if-lez v6, :cond_11f

    .line 1136
    const/4 v6, 0x0

    .local v6, "transitionIdx":I
    :goto_63
    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v6, v8, :cond_7a

    .line 1137
    iget-object v8, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v8, v8, v6

    invoke-direct {v1, v8}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v8

    if-eqz v8, :cond_72

    .line 1138
    goto :goto_7a

    .line 1140
    :cond_72
    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/2addr v8, v7

    iput v8, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .line 1136
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 1142
    .end local p0    # "this":Landroid/icu/impl/OlsonTimeZone;
    :cond_7a
    :goto_7a
    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v6, v8, :cond_82

    move-object/from16 v18, v3

    goto/16 :goto_121

    .line 1146
    :cond_82
    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v8, v8, [J

    .line 1147
    .local v8, "times":[J
    const/4 v9, 0x0

    .local v9, "typeIdx":I
    :goto_87
    iget v10, v1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    const-wide/16 v11, 0x3e8

    if-ge v9, v10, :cond_fd

    .line 1149
    const/4 v10, 0x0

    .line 1150
    .local v10, "nTimes":I
    iget v13, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .end local v6    # "transitionIdx":I
    .local v13, "transitionIdx":I
    move v6, v13

    .end local v13    # "transitionIdx":I
    .restart local v6    # "transitionIdx":I
    :goto_91
    iget v13, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v6, v13, :cond_be

    .line 1151
    iget-object v13, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v13, v13, v6

    invoke-direct {v1, v13}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v13

    if-ne v9, v13, :cond_b4

    .line 1152
    iget-object v13, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v13, v13, v6

    mul-long/2addr v13, v11

    .line 1153
    .local v13, "tt":J
    move-wide v15, v11

    long-to-double v11, v13

    move-object/from16 v18, v3

    .end local v3    # "dstName":Ljava/lang/String;
    .local v18, "dstName":Ljava/lang/String;
    iget-wide v2, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v2, v11, v2

    if-gez v2, :cond_b7

    .line 1155
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "nTimes":I
    .local v2, "nTimes":I
    aput-wide v13, v8, v10

    move v10, v2

    goto :goto_b7

    .line 1151
    .end local v2    # "nTimes":I
    .end local v13    # "tt":J
    .end local v18    # "dstName":Ljava/lang/String;
    .restart local v3    # "dstName":Ljava/lang/String;
    .restart local v10    # "nTimes":I
    :cond_b4
    move-object/from16 v18, v3

    move-wide v15, v11

    .line 1150
    .end local v3    # "dstName":Ljava/lang/String;
    .restart local v18    # "dstName":Ljava/lang/String;
    :cond_b7
    :goto_b7
    add-int/lit8 v6, v6, 0x1

    move-wide v11, v15

    move-object/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_91

    .line 1159
    .end local v18    # "dstName":Ljava/lang/String;
    .restart local v3    # "dstName":Ljava/lang/String;
    :cond_be
    move-object/from16 v18, v3

    .end local v3    # "dstName":Ljava/lang/String;
    .restart local v18    # "dstName":Ljava/lang/String;
    if-lez v10, :cond_f7

    .line 1160
    new-array v2, v10, [J

    move-object v15, v2

    .line 1161
    .local v15, "startTimes":[J
    const/4 v2, 0x0

    invoke-static {v8, v2, v15, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v3, v9, 0x2

    aget v2, v2, v3

    mul-int/lit16 v13, v2, 0x3e8

    .line 1164
    .end local v4    # "raw":I
    .local v13, "raw":I
    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v3, v9, 0x2

    add-int/2addr v3, v7

    aget v2, v2, v3

    mul-int/lit16 v14, v2, 0x3e8

    .line 1165
    .end local v5    # "dst":I
    .local v14, "dst":I
    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v2, :cond_e4

    .line 1166
    iget v2, v1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    new-array v2, v2, [Landroid/icu/util/TimeArrayTimeZoneRule;

    iput-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 1168
    :cond_e4
    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    new-instance v11, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v14, :cond_ec

    move-object v12, v0

    goto :goto_ee

    :cond_ec
    move-object/from16 v12, v18

    :goto_ee
    const/16 v16, 0x2

    invoke-direct/range {v11 .. v16}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v11, v2, v9

    move v4, v13

    move v5, v14

    .line 1147
    .end local v10    # "nTimes":I
    .end local v13    # "raw":I
    .end local v14    # "dst":I
    .end local v15    # "startTimes":[J
    .restart local v4    # "raw":I
    .restart local v5    # "dst":I
    :cond_f7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_87

    .line 1174
    .end local v18    # "dstName":Ljava/lang/String;
    .restart local v3    # "dstName":Ljava/lang/String;
    :cond_fd
    move-object/from16 v18, v3

    move-wide v15, v11

    .end local v3    # "dstName":Ljava/lang/String;
    .restart local v18    # "dstName":Ljava/lang/String;
    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v3, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-byte v2, v2, v3

    invoke-direct {v1, v2}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v2

    .line 1175
    .end local v9    # "typeIdx":I
    .local v2, "typeIdx":I
    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget v10, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-wide v9, v9, v10

    mul-long/2addr v9, v15

    iget-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v12, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v12, v12, v2

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v3, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    goto :goto_121

    .line 1130
    .end local v2    # "typeIdx":I
    .end local v6    # "transitionIdx":I
    .end local v8    # "times":[J
    .end local v18    # "dstName":Ljava/lang/String;
    .restart local v3    # "dstName":Ljava/lang/String;
    :cond_11f
    move-object/from16 v18, v3

    .line 1181
    .end local v3    # "dstName":Ljava/lang/String;
    .restart local v18    # "dstName":Ljava/lang/String;
    :goto_121
    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_190

    .line 1183
    iget-wide v2, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v2, v2

    .line 1185
    .local v2, "startTime":J
    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v6}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_152

    .line 1194
    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v6}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/SimpleTimeZone;

    iput-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    .line 1195
    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v6, v8}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 1197
    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v3, v8}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    .line 1198
    .local v6, "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    .line 1199
    .local v8, "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v9

    move-wide v2, v9

    .line 1200
    .end local v6    # "tzt":Landroid/icu/util/TimeZoneTransition;
    goto :goto_16f

    .line 1201
    .end local v8    # "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    :cond_152
    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iput-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    .line 1202
    new-instance v8, Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v6}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    iget-object v6, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 1203
    invoke-virtual {v6}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v10

    new-array v12, v7, [J

    const/16 v17, 0x0

    aput-wide v2, v12, v17

    const/4 v13, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 1205
    .restart local v8    # "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    :goto_16f
    const/4 v6, 0x0

    .line 1206
    .local v6, "prevRule":Landroid/icu/util/TimeZoneRule;
    iget v9, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v9, :cond_184

    .line 1207
    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v10, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v11, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v11, v7

    aget-byte v10, v10, v11

    invoke-direct {v1, v10}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v10

    aget-object v9, v9, v10

    move-object v6, v9

    .line 1209
    :cond_184
    if-nez v6, :cond_189

    .line 1211
    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object v6, v9

    .line 1213
    :cond_189
    new-instance v9, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v9, v2, v3, v6, v8}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1216
    .end local v2    # "startTime":J
    .end local v6    # "prevRule":Landroid/icu/util/TimeZoneRule;
    .end local v8    # "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    :cond_190
    iput-boolean v7, v1, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_192
    .catchall {:try_start_a .. :try_end_192} :catchall_194

    .line 1217
    monitor-exit p0

    return-void

    .line 1108
    .end local v0    # "stdName":Ljava/lang/String;
    .end local v4    # "raw":I
    .end local v5    # "dst":I
    .end local v18    # "dstName":Ljava/lang/String;
    :catchall_194
    move-exception v0

    :try_start_195
    monitor-exit p0
    :try_end_196
    .catchall {:try_start_195 .. :try_end_196} :catchall_194

    throw v0
.end method

.method private blacklist initialDstOffset()I
    .registers 3

    .line 776
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private blacklist initialRawOffset()I
    .registers 3

    .line 772
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static blacklist loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 3
    .param p0, "top"    # Landroid/icu/util/UResourceBundle;
    .param p1, "ruleid"    # Ljava/lang/String;

    .line 889
    const-string v0, "Rules"

    invoke-virtual {p0, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 890
    .local v0, "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 891
    return-object v0
.end method

.method private blacklist rawOffsetAt(I)I
    .registers 4
    .param p1, "transIdx"    # I

    .line 762
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 763
    .local v0, "typeIdx":I
    :goto_e
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v1, v1, v0

    return v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1235
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_28

    .line 1238
    const/4 v0, 0x0

    .line 1239
    .local v0, "initialized":Z
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "tzid":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 1242
    :try_start_f
    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "zoneinfo64"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 1244
    .local v2, "top":Landroid/icu/util/UResourceBundle;
    invoke-static {v2, v1}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 1245
    .local v3, "res":Landroid/icu/util/UResourceBundle;
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_22

    .line 1246
    const/4 v0, 0x1

    .line 1249
    .end local v2    # "top":Landroid/icu/util/UResourceBundle;
    .end local v3    # "res":Landroid/icu/util/UResourceBundle;
    goto :goto_23

    .line 1247
    :catch_22
    move-exception v2

    .line 1251
    :cond_23
    :goto_23
    if-nez v0, :cond_28

    .line 1253
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->constructEmpty()V

    .line 1258
    .end local v0    # "initialized":Z
    .end local v1    # "tzid":Ljava/lang/String;
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    .line 1259
    return-void
.end method

.method private blacklist zoneOffsetAt(I)I
    .registers 6
    .param p1, "transIdx"    # I

    .line 757
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 758
    .local v0, "typeIdx":I
    :goto_e
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 261
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    return-object p0

    .line 264
    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 3

    .line 1286
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    .line 1287
    .local v0, "tz":Landroid/icu/impl/OlsonTimeZone;
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_14

    .line 1288
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/SimpleTimeZone;

    iput-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 1298
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 1299
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 896
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 898
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    .line 900
    .local v0, "z":Landroid/icu/impl/OlsonTimeZone;
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v2, v3, :cond_60

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v2, :cond_23

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_61

    :cond_23
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_60

    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_60

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 907
    invoke-virtual {v2, v3}, Landroid/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v2, v3, :cond_60

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v2, v3, :cond_60

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 910
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 911
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 912
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    goto :goto_61

    :cond_60
    goto :goto_62

    :cond_61
    :goto_61
    const/4 v1, 0x1

    .line 900
    :goto_62
    return v1
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 2

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 1278
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCanonicalID()Ljava/lang/String;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 444
    monitor-enter p0

    .line 445
    :try_start_5
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 446
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 448
    nop

    .line 449
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 451
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 454
    :cond_1e
    monitor-exit p0

    goto :goto_23

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0

    .line 456
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_b

    .line 379
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    return v0

    .line 381
    :cond_b
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public blacklist getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 11
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 950
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 952
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 953
    if-eqz p3, :cond_17

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_17

    .line 954
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v0

    .line 955
    :cond_17
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_31

    .line 956
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 958
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0

    .line 961
    :cond_30
    return-object v1

    .line 965
    :cond_31
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_b1

    .line 967
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 968
    .local v0, "ttidx":I
    :goto_39
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_52

    .line 969
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v1, v0

    mul-long/2addr v4, v2

    .line 970
    .local v4, "t":J
    cmp-long v1, p1, v4

    if-gtz v1, :cond_52

    if-nez p3, :cond_4f

    cmp-long v1, p1, v4

    if-nez v1, :cond_4f

    .line 971
    goto :goto_52

    .line 968
    .end local v4    # "t":J
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 974
    :cond_52
    :goto_52
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5b

    .line 975
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v1

    .line 976
    :cond_5b
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v0, v1, :cond_62

    .line 977
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v1

    .line 980
    :cond_62
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    invoke-direct {p0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v4

    aget-object v1, v1, v4

    .line 981
    .local v1, "to":Landroid/icu/util/TimeZoneRule;
    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v5, v5, v0

    invoke-direct {p0, v5}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v5

    aget-object v4, v4, v5

    .line 982
    .local v4, "from":Landroid/icu/util/TimeZoneRule;
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    mul-long/2addr v5, v2

    .line 985
    .local v5, "startTime":J
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne v2, v3, :cond_ab

    .line 986
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    if-ne v2, v3, :cond_ab

    .line 987
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v6, v2}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v2

    return-object v2

    .line 990
    :cond_ab
    new-instance v2, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v2, v5, v6, v4, v1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v2

    .line 993
    .end local v0    # "ttidx":I
    .end local v1    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v4    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v5    # "startTime":J
    :cond_b1
    return-object v1
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 16
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .line 129
    if-ltz p3, :cond_16

    const/16 v0, 0xb

    if-gt p3, v0, :cond_16

    .line 132
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "milliseconds":I
    .local v2, "era":I
    .local v3, "year":I
    .local v4, "month":I
    .local v5, "day":I
    .local v6, "dayOfWeek":I
    .local v7, "milliseconds":I
    invoke-virtual/range {v1 .. v8}, Landroid/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    move-result p1

    return p1

    .line 129
    .end local v2    # "era":I
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v6    # "dayOfWeek":I
    .end local v7    # "milliseconds":I
    .restart local p1    # "era":I
    .restart local p2    # "year":I
    .restart local p3    # "month":I
    .restart local p4    # "day":I
    .restart local p5    # "dayOfWeek":I
    .restart local p6    # "milliseconds":I
    :cond_16
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 130
    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "day":I
    .end local p5    # "dayOfWeek":I
    .end local p6    # "milliseconds":I
    .restart local v2    # "era":I
    .restart local v3    # "year":I
    .restart local v4    # "month":I
    .restart local v5    # "day":I
    .restart local v6    # "dayOfWeek":I
    .restart local v7    # "milliseconds":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Month is not in the legal range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getOffset(IIIIIII)I
    .registers 21
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dom"    # I
    .param p5, "dow"    # I
    .param p6, "millis"    # I
    .param p7, "monthLength"    # I

    .line 141
    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    const/4 v9, 0x1

    if-eq p1, v9, :cond_15

    if-nez p1, :cond_10

    goto :goto_15

    :cond_10
    move v10, v5

    move v11, v7

    move v7, v4

    goto/16 :goto_6f

    :cond_15
    :goto_15
    if-ltz v4, :cond_6c

    const/16 v1, 0xb

    if-gt v4, v1, :cond_6c

    if-lt v5, v9, :cond_6c

    if-gt v5, v8, :cond_6c

    if-lt v6, v9, :cond_6c

    const/4 v1, 0x7

    if-gt v6, v1, :cond_6c

    if-ltz v7, :cond_6c

    const v1, 0x5265c00

    if-ge v7, v1, :cond_6c

    const/16 v1, 0x1c

    if-lt v8, v1, :cond_6c

    const/16 v1, 0x1f

    if-gt v8, v1, :cond_6c

    .line 155
    if-nez p1, :cond_38

    .line 156
    neg-int v1, p2

    move v3, v1

    .end local p2    # "year":I
    .local v1, "year":I
    goto :goto_39

    .line 155
    .end local v1    # "year":I
    .restart local p2    # "year":I
    :cond_38
    move v3, p2

    .line 159
    .end local p2    # "year":I
    .local v3, "year":I
    :goto_39
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_4d

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-lt v3, v1, :cond_4d

    .line 160
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v1

    move v12, v3

    move v10, v5

    move v11, v7

    move v7, v4

    .end local v3    # "year":I
    .local v12, "year":I
    return v1

    .line 159
    .end local v12    # "year":I
    .restart local v3    # "year":I
    :cond_4d
    move v12, v3

    move v10, v5

    move v11, v7

    move v7, v4

    .line 164
    .end local v3    # "year":I
    .restart local v12    # "year":I
    invoke-static {v12, v7, v10}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    mul-long/2addr v1, v3

    int-to-long v3, v11

    add-long/2addr v1, v3

    .line 166
    .local v1, "time":J
    const/4 v3, 0x2

    new-array v6, v3, [I

    .line 167
    .local v6, "offsets":[I
    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    .line 168
    const/4 v0, 0x0

    aget v0, v6, v0

    aget v3, v6, v9

    add-int/2addr v0, v3

    return v0

    .line 141
    .end local v1    # "time":J
    .end local v6    # "offsets":[I
    .end local v12    # "year":I
    .restart local p2    # "year":I
    :cond_6c
    move v10, v5

    move v11, v7

    move v7, v4

    .line 152
    :goto_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getOffset(JZ[I)V
    .registers 13
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    .line 272
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_14

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_14

    .line 273
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    goto :goto_1e

    .line 275
    :cond_14
    const/4 v5, 0x4

    const/16 v6, 0xc

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    .end local p1    # "date":J
    .end local p3    # "local":Z
    .end local p4    # "offsets":[I
    .local v2, "date":J
    .local v4, "local":Z
    .local v7, "offsets":[I
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    .line 278
    :goto_1e
    return-void
.end method

.method public blacklist getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    .registers 15
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p4, "duplicatedTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p5, "offsets"    # [I

    .line 286
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_17

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_17

    .line 287
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "date":J
    .end local p3    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local p4    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local p5    # "offsets":[I
    .local v2, "date":J
    .local v4, "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local v5, "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local v6, "offsets":[I
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V

    move-object p1, v4

    move-object p2, v5

    .end local v4    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local v5    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local p1, "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local p2, "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    goto :goto_2c

    .line 286
    .end local v2    # "date":J
    .end local v6    # "offsets":[I
    .end local p2    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .local p1, "date":J
    .restart local p3    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .restart local p4    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .restart local p5    # "offsets":[I
    :cond_17
    move-wide v2, p1

    move-object p1, p3

    move-object p2, p4

    move-object v6, p5

    .line 289
    .end local p3    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local p4    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local p5    # "offsets":[I
    .restart local v2    # "date":J
    .restart local v6    # "offsets":[I
    .local p1, "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .restart local p2    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    move-object v8, v6

    .end local v6    # "offsets":[I
    .local v8, "offsets":[I
    invoke-static {p1}, Landroid/icu/impl/OlsonTimeZone;->getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v6

    invoke-static {p2}, Landroid/icu/impl/OlsonTimeZone;->getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v7

    const/4 v5, 0x1

    move-wide v3, v2

    move-object v2, p0

    .end local v2    # "date":J
    .local v3, "date":J
    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    move-wide v2, v3

    move-object v6, v8

    .line 291
    .end local v3    # "date":J
    .end local v8    # "offsets":[I
    .restart local v2    # "date":J
    .restart local v6    # "offsets":[I
    :goto_2c
    return-void
.end method

.method public blacklist getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .registers 11
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    .line 1001
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1003
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_32

    .line 1004
    if-eqz p3, :cond_16

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1005
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v0

    .line 1006
    :cond_16
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    .line 1007
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1009
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_2f
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v0

    .line 1016
    :cond_32
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_ad

    .line 1018
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1019
    .local v0, "ttidx":I
    :goto_3b
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const-wide/16 v3, 0x3e8

    if-lt v0, v2, :cond_54

    .line 1020
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v5, v2, v0

    mul-long/2addr v5, v3

    .line 1021
    .local v5, "t":J
    cmp-long v2, p1, v5

    if-gtz v2, :cond_54

    if-eqz p3, :cond_51

    cmp-long v2, p1, v5

    if-nez v2, :cond_51

    .line 1022
    goto :goto_54

    .line 1019
    .end local v5    # "t":J
    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    .line 1025
    :cond_54
    :goto_54
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v0, v2, :cond_59

    .line 1027
    return-object v1

    .line 1028
    :cond_59
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ne v0, v1, :cond_60

    .line 1029
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v1

    .line 1032
    :cond_60
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v2}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v2

    aget-object v1, v1, v2

    .line 1033
    .local v1, "to":Landroid/icu/util/TimeZoneRule;
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v5, v5, v6

    invoke-direct {p0, v5}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v5

    aget-object v2, v2, v5

    .line 1034
    .local v2, "from":Landroid/icu/util/TimeZoneRule;
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v5, v5, v0

    mul-long/2addr v5, v3

    .line 1037
    .local v5, "startTime":J
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    if-ne v3, v4, :cond_a7

    .line 1038
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-ne v3, v4, :cond_a7

    .line 1039
    const/4 v3, 0x0

    invoke-virtual {p0, v5, v6, v3}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v3

    return-object v3

    .line 1042
    :cond_a7
    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v3, v5, v6, v2, v1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v3

    .line 1045
    .end local v0    # "ttidx":I
    .end local v1    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v2    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v5    # "startTime":J
    :cond_ad
    return-object v1
.end method

.method public whitelist test-api getRawOffset()I
    .registers 5

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 299
    .local v0, "ret":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    .line 300
    aget v1, v0, v3

    return v1
.end method

.method public blacklist getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .registers 12

    .line 1053
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1054
    const/4 v0, 0x1

    .line 1055
    .local v0, "size":I
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v1, :cond_19

    .line 1058
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 1059
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v2, v2, v1

    if-eqz v2, :cond_16

    .line 1060
    add-int/lit8 v0, v0, 0x1

    .line 1058
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1064
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_2a

    .line 1065
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1066
    add-int/lit8 v0, v0, 0x2

    goto :goto_2a

    .line 1068
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 1072
    :cond_2a
    :goto_2a
    new-array v1, v0, [Landroid/icu/util/TimeZoneRule;

    .line 1073
    .local v1, "rules":[Landroid/icu/util/TimeZoneRule;
    const/4 v2, 0x0

    .line 1074
    .local v2, "idx":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    aput-object v4, v1, v2

    .line 1076
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v2, :cond_4f

    .line 1077
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    array-length v4, v4

    if-ge v2, v4, :cond_4f

    .line 1078
    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4c

    .line 1079
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v5, v5, v2

    aput-object v5, v1, v3

    move v3, v4

    .line 1077
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1084
    .end local v2    # "i":I
    :cond_4f
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_a2

    .line 1085
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_70

    .line 1086
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    .line 1088
    .local v2, "stzr":[Landroid/icu/util/TimeZoneRule;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    aget-object v4, v2, v4

    aput-object v4, v1, v3

    .line 1089
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    const/4 v4, 0x2

    aget-object v4, v2, v4

    aput-object v4, v1, v5

    .line 1090
    .end local v2    # "stzr":[Landroid/icu/util/TimeZoneRule;
    goto :goto_a2

    .line 1092
    :cond_70
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .local v2, "idx":I
    new-instance v5, Landroid/icu/util/TimeArrayTimeZoneRule;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(STD)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v7}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v7

    iget-wide v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v8, v8

    new-array v4, v4, [J

    const/4 v10, 0x0

    aput-wide v8, v4, v10

    const/4 v10, 0x2

    const/4 v8, 0x0

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v5, v1, v3

    move v3, v2

    .line 1096
    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    :cond_a2
    :goto_a2
    return-object v1
.end method

.method public whitelist test-api hasSameRules(Landroid/icu/util/TimeZone;)Z
    .registers 7
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    .line 399
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 400
    return v0

    .line 404
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 405
    return v2

    .line 408
    :cond_c
    instance-of v1, p1, Landroid/icu/impl/OlsonTimeZone;

    if-nez v1, :cond_11

    .line 410
    return v2

    .line 414
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/OlsonTimeZone;

    .line 415
    .local v1, "o":Landroid/icu/impl/OlsonTimeZone;
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v3, :cond_1d

    .line 416
    iget-object v3, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_32

    .line 417
    return v2

    .line 420
    :cond_1d
    iget-object v3, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_5f

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v4, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v3, v4, :cond_5f

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iget-object v4, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 422
    invoke-virtual {v3, v4}, Landroid/icu/util/SimpleTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_5f

    .line 429
    :cond_32
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v4, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v3, v4, :cond_5e

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v4, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 430
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    iget v4, v1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v3, v4, :cond_5e

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v4, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 432
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v4, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 433
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_5e

    .line 436
    :cond_5d
    return v0

    .line 434
    :cond_5e
    :goto_5e
    return v2

    .line 423
    :cond_5f
    :goto_5f
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 919
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    ushr-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    ushr-int/lit8 v1, v1, 0x6

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    const/16 v3, 0x8

    ushr-int/2addr v2, v3

    int-to-long v4, v2

    iget-wide v6, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 922
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 923
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_2c

    :cond_26
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->hashCode()I

    move-result v2

    :goto_2c
    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 924
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    xor-long/2addr v0, v4

    long-to-int v0, v0

    .line 925
    .local v0, "ret":I
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v1, :cond_50

    .line 926
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 927
    int-to-long v4, v0

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v2, v1

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v8, v2, v1

    ushr-long/2addr v8, v3

    xor-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 930
    .end local v1    # "i":I
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_51
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v2, v2

    if-ge v1, v2, :cond_64

    .line 931
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v2, v2, v1

    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v4, v4, v1

    ushr-int/2addr v4, v3

    xor-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 933
    .end local v1    # "i":I
    :cond_64
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v1, :cond_78

    .line 934
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_69
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_78

    .line 935
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 934
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 938
    .end local v1    # "i":I
    :cond_78
    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .line 389
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 390
    .local v0, "temp":[I
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    .line 391
    const/4 v1, 0x1

    aget v2, v0, v1

    if-eqz v2, :cond_11

    move v3, v1

    :cond_11
    return v3
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1269
    iget-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 10

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    .local v0, "current":J
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1b

    .line 347
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 348
    return v4

    .line 349
    :cond_13
    long-to-double v5, v0

    iget-wide v7, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_1b

    .line 350
    return v3

    .line 355
    :cond_1b
    const-wide/16 v5, 0x3e8

    invoke-static {v0, v1, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v5

    .line 356
    .local v5, "currentSec":J
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v2, v4

    .line 357
    .local v2, "trsIdx":I
    invoke-direct {p0, v2}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v7

    if-eqz v7, :cond_2b

    .line 358
    return v4

    .line 360
    :cond_2b
    :goto_2b
    if-ltz v2, :cond_42

    .line 361
    iget-object v7, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v7, v7, v2

    cmp-long v7, v7, v5

    if-gtz v7, :cond_36

    .line 362
    goto :goto_42

    .line 364
    :cond_36
    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v7}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v7

    if-eqz v7, :cond_3f

    .line 365
    return v4

    .line 367
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 369
    :cond_42
    :goto_42
    return v3
.end method

.method public whitelist test-api setID(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 651
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 656
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 657
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 658
    nop

    .line 659
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 661
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 665
    :cond_1f
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_28

    .line 666
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 668
    :cond_28
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    .line 670
    return-void

    .line 652
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 20
    .param p1, "offsetMillis"    # I

    .line 176
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_f2

    .line 180
    invoke-virtual {v0}, Landroid/icu/impl/OlsonTimeZone;->getRawOffset()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 181
    return-void

    .line 183
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .local v2, "current":J
    long-to-double v4, v2

    iget-wide v6, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_e9

    .line 186
    new-instance v4, Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v6}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 188
    .local v4, "stz":Landroid/icu/util/SimpleTimeZone;
    invoke-virtual {v0}, Landroid/icu/impl/OlsonTimeZone;->useDaylightTime()Z

    move-result v6

    .line 189
    .local v6, "bDst":Z
    const/4 v7, 0x1

    if-eqz v6, :cond_c9

    .line 190
    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    .line 191
    .local v8, "currentRules":[Landroid/icu/util/TimeZoneRule;
    array-length v9, v8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_46

    .line 196
    invoke-virtual {v0, v2, v3, v5}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v9

    .line 197
    .local v9, "tzt":Landroid/icu/util/TimeZoneTransition;
    if-eqz v9, :cond_46

    .line 198
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    invoke-virtual {v0, v11, v12}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    .line 201
    .end local v9    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :cond_46
    array-length v9, v8

    if-ne v9, v10, :cond_b5

    aget-object v9, v8, v7

    instance-of v9, v9, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v9, :cond_b5

    const/4 v9, 0x2

    aget-object v10, v8, v9

    instance-of v10, v10, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_b5

    .line 205
    aget-object v10, v8, v7

    check-cast v10, Landroid/icu/util/AnnualTimeZoneRule;

    .line 206
    .local v10, "r1":Landroid/icu/util/AnnualTimeZoneRule;
    aget-object v9, v8, v9

    check-cast v9, Landroid/icu/util/AnnualTimeZoneRule;

    .line 208
    .local v9, "r2":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    add-int/2addr v11, v12

    .line 209
    .local v11, "offset1":I
    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v12

    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v13

    add-int/2addr v12, v13

    .line 211
    .local v12, "offset2":I
    if-le v11, v12, :cond_7d

    .line 212
    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v13

    .line 213
    .local v13, "start":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v14

    .line 214
    .local v14, "end":Landroid/icu/util/DateTimeRule;
    sub-int v15, v11, v12

    .local v15, "sav":I
    goto :goto_87

    .line 216
    .end local v13    # "start":Landroid/icu/util/DateTimeRule;
    .end local v14    # "end":Landroid/icu/util/DateTimeRule;
    .end local v15    # "sav":I
    :cond_7d
    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v13

    .line 217
    .restart local v13    # "start":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v14

    .line 218
    .restart local v14    # "end":Landroid/icu/util/DateTimeRule;
    sub-int v15, v12, v11

    .line 221
    .restart local v15    # "sav":I
    :goto_87
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v5

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v7

    move/from16 v16, v6

    .end local v6    # "bDst":Z
    .local v16, "bDst":Z
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v6

    .line 222
    move-object/from16 v17, v8

    .end local v8    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .local v17, "currentRules":[Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v8

    .line 221
    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 223
    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v5

    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v6

    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v7

    .line 224
    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v8

    .line 223
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 226
    invoke-virtual {v4, v15}, Landroid/icu/util/SimpleTimeZone;->setDSTSavings(I)V

    .line 227
    .end local v9    # "r2":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v10    # "r1":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v11    # "offset1":I
    .end local v12    # "offset2":I
    .end local v13    # "start":Landroid/icu/util/DateTimeRule;
    .end local v14    # "end":Landroid/icu/util/DateTimeRule;
    .end local v15    # "sav":I
    goto :goto_cb

    .line 201
    .end local v16    # "bDst":Z
    .end local v17    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .restart local v6    # "bDst":Z
    .restart local v8    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    :cond_b5
    move/from16 v16, v6

    move-object/from16 v17, v8

    .line 234
    .end local v6    # "bDst":Z
    .end local v8    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .restart local v16    # "bDst":Z
    .restart local v17    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    .line 235
    const/16 v5, 0x1f

    const v6, 0x5265bff

    const/16 v7, 0xb

    invoke-virtual {v4, v7, v5, v6}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    goto :goto_cb

    .line 189
    .end local v16    # "bDst":Z
    .end local v17    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .restart local v6    # "bDst":Z
    :cond_c9
    move/from16 v16, v6

    .line 239
    .end local v6    # "bDst":Z
    .restart local v16    # "bDst":Z
    :goto_cb
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v5

    .line 241
    .local v5, "fields":[I
    const/4 v6, 0x0

    aget v7, v5, v6

    iput v7, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 242
    aget v7, v5, v6

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v7

    long-to-double v6, v7

    iput-wide v6, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 244
    if-eqz v16, :cond_e6

    .line 247
    iget v6, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v4, v6}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 250
    :cond_e6
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 252
    .end local v4    # "stz":Landroid/icu/util/SimpleTimeZone;
    .end local v5    # "fields":[I
    .end local v16    # "bDst":Z
    goto :goto_ee

    .line 253
    :cond_e9
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v4, v1}, Landroid/icu/util/SimpleTimeZone;->setRawOffset(I)V

    .line 256
    :goto_ee
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    .line 257
    return-void

    .line 177
    .end local v2    # "current":J
    :cond_f2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transitionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",typeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v2, ",transitionTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/16 v3, 0x2c

    const/16 v4, 0x5d

    const-string v5, "null"

    if-eqz v2, :cond_70

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    iget-object v6, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v6, v6

    if-ge v2, v6, :cond_6c

    .line 791
    if-lez v2, :cond_5e

    .line 792
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    :cond_5e
    iget-object v6, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 796
    .end local v2    # "i":I
    :cond_6c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 798
    :cond_70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :goto_73
    const-string v2, ",typeOffsets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    if-eqz v2, :cond_9c

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_80
    iget-object v6, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v6, v6

    if-ge v2, v6, :cond_98

    .line 804
    if-lez v2, :cond_8a

    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    :cond_8a
    iget-object v6, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 809
    .end local v2    # "i":I
    :cond_98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 811
    :cond_9c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :goto_9f
    const-string v2, ",typeMapData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v2, :cond_c5

    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ac
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_c4

    .line 817
    if-lez v1, :cond_b6

    .line 818
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_b6
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .end local v1    # "i":I
    :cond_c4
    goto :goto_c8

    .line 823
    :cond_c5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :goto_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalStartYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalStartMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 14

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, "current":J
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1f

    long-to-double v5, v0

    iget-wide v7, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_1f

    .line 316
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_1e

    move v3, v4

    :cond_1e
    return v3

    .line 319
    :cond_1f
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v2

    .line 322
    .local v2, "fields":[I
    aget v5, v2, v3

    invoke-static {v5, v3, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v5

    const-wide/32 v7, 0x15180

    mul-long/2addr v5, v7

    .line 323
    .local v5, "start":J
    aget v9, v2, v3

    add-int/2addr v9, v4

    invoke-static {v9, v3, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v9

    mul-long/2addr v9, v7

    .line 327
    .local v9, "limit":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_37
    iget v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v7, v8, :cond_68

    .line 328
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v11, v8, v7

    cmp-long v8, v11, v9

    if-ltz v8, :cond_44

    .line 329
    goto :goto_68

    .line 331
    :cond_44
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v11, v8, v7

    cmp-long v8, v11, v5

    if-ltz v8, :cond_52

    invoke-direct {p0, v7}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v8

    if-nez v8, :cond_64

    :cond_52
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v11, v8, v7

    cmp-long v8, v11, v5

    if-lez v8, :cond_65

    if-lez v7, :cond_65

    add-int/lit8 v8, v7, -0x1

    .line 332
    invoke-direct {p0, v8}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v8

    if-eqz v8, :cond_65

    .line 333
    :cond_64
    return v4

    .line 327
    :cond_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 336
    .end local v7    # "i":I
    :cond_68
    :goto_68
    return v3
.end method
