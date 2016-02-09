.class public Landroid/icu/impl/OlsonTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z

.field private static final MAX_OFFSET_SECONDS:I = 0x15180

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final ZONEINFORES:Ljava/lang/String; = "zoneinfo64"

.field private static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x572e1120b9848270L


# instance fields
.field private volatile canonicalID:Ljava/lang/String;

.field private finalStartMillis:D

.field private finalStartYear:I

.field private finalZone:Landroid/icu/util/SimpleTimeZone;

.field private transient finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

.field private transient firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient firstTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient firstTZTransitionIdx:I

.field private transient historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

.field private transient initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private serialVersionOnStream:I

.field private transitionCount:I

.field private transient transitionRulesInitialized:Z

.field private transitionTimes64:[J

.field private typeCount:I

.field private typeMapData:[B

.field private typeOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/OlsonTimeZone;

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
    sput-boolean v0, Landroid/icu/impl/OlsonTimeZone;->-assertionsDisabled:Z

    #@b
    .line 884
    const-string/jumbo v0, "olson"

    #@e
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    sput-boolean v0, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    #@14
    .line 115
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "top"    # Landroid/icu/util/UResourceBundle;
    .param p2, "res"    # Landroid/icu/util/UResourceBundle;
    .param p3, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 481
    invoke-direct {p0, p3}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@4
    .line 863
    const v0, 0x7fffffff

    #@7
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@9
    .line 868
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@e
    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@10
    .line 874
    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@12
    .line 880
    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@14
    .line 1229
    const/4 v0, 0x1

    #@15
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    #@17
    .line 1264
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    #@1a
    .line 482
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    #@1d
    .line 480
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 635
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@4
    .line 863
    const v2, 0x7fffffff

    #@7
    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@9
    .line 868
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@e
    iput-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@10
    .line 874
    iput-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@12
    .line 880
    iput-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@14
    .line 1229
    const/4 v2, 0x1

    #@15
    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    #@17
    .line 1264
    const/4 v2, 0x0

    #@18
    iput-boolean v2, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    #@1a
    .line 636
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@1d
    .line 637
    const-string/jumbo v3, "zoneinfo64"

    #@20
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@22
    .line 636
    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@25
    move-result-object v1

    #@26
    .line 638
    .local v1, "top":Landroid/icu/util/UResourceBundle;
    invoke-static {v1, p1}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@29
    move-result-object v0

    #@2a
    .line 639
    .local v0, "res":Landroid/icu/util/UResourceBundle;
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    #@2d
    .line 640
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2f
    if-eqz v2, :cond_0

    #@31
    .line 641
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@33
    invoke-virtual {v2, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    #@36
    .line 634
    :cond_0
    return-void
.end method

.method private construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V
    .locals 25
    .param p1, "top"    # Landroid/icu/util/UResourceBundle;
    .param p2, "res"    # Landroid/icu/util/UResourceBundle;

    #@0
    .prologue
    .line 487
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 488
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v2

    #@a
    .line 490
    :cond_1
    sget-boolean v2, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "OlsonTimeZone("

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ")"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 494
    :cond_2
    const/16 v23, 0x0

    #@34
    .local v23, "transPost32":[I
    const/16 v22, 0x0

    #@36
    .local v22, "trans32":[I
    const/16 v24, 0x0

    #@38
    .line 496
    .local v24, "transPre32":[I
    const/4 v2, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@3d
    .line 500
    :try_start_0
    const-string/jumbo v2, "transPre32"

    #@40
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@45
    move-result-object v19

    #@46
    .line 501
    .local v19, "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@49
    move-result-object v24

    #@4a
    .line 502
    .local v24, "transPre32":[I
    move-object/from16 v0, v24

    #@4c
    array-length v2, v0

    #@4d
    rem-int/lit8 v2, v2, 0x2

    #@4f
    if-eqz v2, :cond_3

    #@51
    .line 504
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v4, "Invalid Format"

    #@56
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 507
    .end local v19    # "r":Landroid/icu/util/UResourceBundle;
    .end local v24    # "transPre32":[I
    :catch_0
    move-exception v16

    #@5b
    .line 513
    :goto_0
    :try_start_1
    const-string/jumbo v2, "trans"

    #@5e
    move-object/from16 v0, p2

    #@60
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@63
    move-result-object v19

    #@64
    .line 514
    .restart local v19    # "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@67
    move-result-object v22

    #@68
    .line 515
    .local v22, "trans32":[I
    move-object/from16 v0, p0

    #@6a
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@6c
    move-object/from16 v0, v22

    #@6e
    array-length v4, v0

    #@6f
    add-int/2addr v2, v4

    #@70
    move-object/from16 v0, p0

    #@72
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    #@74
    .line 522
    .end local v19    # "r":Landroid/icu/util/UResourceBundle;
    .end local v22    # "trans32":[I
    :goto_1
    :try_start_2
    const-string/jumbo v2, "transPost32"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@7c
    move-result-object v19

    #@7d
    .line 523
    .restart local v19    # "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@80
    move-result-object v23

    #@81
    .line 524
    .local v23, "transPost32":[I
    move-object/from16 v0, v23

    #@83
    array-length v2, v0

    #@84
    rem-int/lit8 v2, v2, 0x2

    #@86
    if-eqz v2, :cond_4

    #@88
    .line 526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8a
    const-string/jumbo v4, "Invalid Format"

    #@8d
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@90
    throw v2
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    #@91
    .line 529
    .end local v19    # "r":Landroid/icu/util/UResourceBundle;
    .end local v23    # "transPost32":[I
    :catch_1
    move-exception v16

    #@92
    .line 533
    :goto_2
    move-object/from16 v0, p0

    #@94
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@96
    if-lez v2, :cond_7

    #@98
    .line 534
    move-object/from16 v0, p0

    #@9a
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@9c
    new-array v2, v2, [J

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@a2
    .line 535
    const/16 v18, 0x0

    #@a4
    .line 536
    .local v18, "idx":I
    if-eqz v24, :cond_5

    #@a6
    .line 537
    const/16 v17, 0x0

    #@a8
    .local v17, "i":I
    :goto_3
    move-object/from16 v0, v24

    #@aa
    array-length v2, v0

    #@ab
    div-int/lit8 v2, v2, 0x2

    #@ad
    move/from16 v0, v17

    #@af
    if-ge v0, v2, :cond_5

    #@b1
    .line 538
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@b5
    .line 539
    mul-int/lit8 v4, v17, 0x2

    #@b7
    aget v4, v24, v4

    #@b9
    int-to-long v4, v4

    #@ba
    const-wide v6, 0xffffffffL

    #@bf
    and-long/2addr v4, v6

    #@c0
    const/16 v6, 0x20

    #@c2
    shl-long/2addr v4, v6

    #@c3
    .line 540
    mul-int/lit8 v6, v17, 0x2

    #@c5
    add-int/lit8 v6, v6, 0x1

    #@c7
    aget v6, v24, v6

    #@c9
    int-to-long v6, v6

    #@ca
    const-wide v8, 0xffffffffL

    #@cf
    and-long/2addr v6, v8

    #@d0
    .line 539
    or-long/2addr v4, v6

    #@d1
    .line 538
    aput-wide v4, v2, v18

    #@d3
    .line 537
    add-int/lit8 v17, v17, 0x1

    #@d5
    add-int/lit8 v18, v18, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 506
    .end local v17    # "i":I
    .end local v18    # "idx":I
    .restart local v19    # "r":Landroid/icu/util/UResourceBundle;
    .local v22, "trans32":[I
    .local v23, "transPost32":[I
    .restart local v24    # "transPre32":[I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    #@da
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@dc
    move-object/from16 v0, v24

    #@de
    array-length v4, v0

    #@df
    div-int/lit8 v4, v4, 0x2

    #@e1
    add-int/2addr v2, v4

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    #@e6
    goto/16 :goto_0

    #@e8
    .line 528
    .end local v22    # "trans32":[I
    .end local v24    # "transPre32":[I
    .local v23, "transPost32":[I
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    #@ea
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@ec
    move-object/from16 v0, v23

    #@ee
    array-length v4, v0

    #@ef
    div-int/lit8 v4, v4, 0x2

    #@f1
    add-int/2addr v2, v4

    #@f2
    move-object/from16 v0, p0

    #@f4
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_1

    #@f6
    goto :goto_2

    #@f7
    .line 543
    .end local v19    # "r":Landroid/icu/util/UResourceBundle;
    .end local v23    # "transPost32":[I
    .restart local v18    # "idx":I
    :cond_5
    if-eqz v22, :cond_6

    #@f9
    .line 544
    const/16 v17, 0x0

    #@fb
    .restart local v17    # "i":I
    :goto_4
    move-object/from16 v0, v22

    #@fd
    array-length v2, v0

    #@fe
    move/from16 v0, v17

    #@100
    if-ge v0, v2, :cond_6

    #@102
    .line 545
    move-object/from16 v0, p0

    #@104
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@106
    aget v4, v22, v17

    #@108
    int-to-long v4, v4

    #@109
    aput-wide v4, v2, v18

    #@10b
    .line 544
    add-int/lit8 v17, v17, 0x1

    #@10d
    add-int/lit8 v18, v18, 0x1

    #@10f
    goto :goto_4

    #@110
    .line 548
    .end local v17    # "i":I
    :cond_6
    if-eqz v23, :cond_8

    #@112
    .line 549
    const/16 v17, 0x0

    #@114
    .restart local v17    # "i":I
    :goto_5
    move-object/from16 v0, v23

    #@116
    array-length v2, v0

    #@117
    div-int/lit8 v2, v2, 0x2

    #@119
    move/from16 v0, v17

    #@11b
    if-ge v0, v2, :cond_8

    #@11d
    .line 550
    move-object/from16 v0, p0

    #@11f
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@121
    .line 551
    mul-int/lit8 v4, v17, 0x2

    #@123
    aget v4, v23, v4

    #@125
    int-to-long v4, v4

    #@126
    const-wide v6, 0xffffffffL

    #@12b
    and-long/2addr v4, v6

    #@12c
    const/16 v6, 0x20

    #@12e
    shl-long/2addr v4, v6

    #@12f
    .line 552
    mul-int/lit8 v6, v17, 0x2

    #@131
    add-int/lit8 v6, v6, 0x1

    #@133
    aget v6, v23, v6

    #@135
    int-to-long v6, v6

    #@136
    const-wide v8, 0xffffffffL

    #@13b
    and-long/2addr v6, v8

    #@13c
    .line 551
    or-long/2addr v4, v6

    #@13d
    .line 550
    aput-wide v4, v2, v18

    #@13f
    .line 549
    add-int/lit8 v17, v17, 0x1

    #@141
    add-int/lit8 v18, v18, 0x1

    #@143
    goto :goto_5

    #@144
    .line 556
    .end local v17    # "i":I
    .end local v18    # "idx":I
    :cond_7
    const/4 v2, 0x0

    #@145
    move-object/from16 v0, p0

    #@147
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@149
    .line 560
    :cond_8
    const-string/jumbo v2, "typeOffsets"

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@151
    move-result-object v19

    #@152
    .line 561
    .restart local v19    # "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@155
    move-result-object v2

    #@156
    move-object/from16 v0, p0

    #@158
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@15a
    .line 562
    move-object/from16 v0, p0

    #@15c
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@15e
    array-length v2, v2

    #@15f
    const/4 v4, 0x2

    #@160
    if-lt v2, v4, :cond_9

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@166
    array-length v2, v2

    #@167
    const/16 v4, 0x7ffe

    #@169
    if-le v2, v4, :cond_a

    #@16b
    .line 563
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16d
    const-string/jumbo v4, "Invalid Format"

    #@170
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@173
    throw v2

    #@174
    .line 562
    :cond_a
    move-object/from16 v0, p0

    #@176
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@178
    array-length v2, v2

    #@179
    rem-int/lit8 v2, v2, 0x2

    #@17b
    if-nez v2, :cond_9

    #@17d
    .line 565
    move-object/from16 v0, p0

    #@17f
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@181
    array-length v2, v2

    #@182
    div-int/lit8 v2, v2, 0x2

    #@184
    move-object/from16 v0, p0

    #@186
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@188
    .line 568
    move-object/from16 v0, p0

    #@18a
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@18c
    if-lez v2, :cond_b

    #@18e
    .line 569
    const-string/jumbo v2, "typeMap"

    #@191
    move-object/from16 v0, p2

    #@193
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@196
    move-result-object v19

    #@197
    .line 570
    const/4 v2, 0x0

    #@198
    move-object/from16 v0, v19

    #@19a
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->getBinary([B)[B

    #@19d
    move-result-object v2

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@1a2
    .line 571
    move-object/from16 v0, p0

    #@1a4
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@1a6
    array-length v2, v2

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@1ab
    if-eq v2, v4, :cond_c

    #@1ad
    .line 572
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1af
    const-string/jumbo v4, "Invalid Format"

    #@1b2
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b5
    throw v2

    #@1b6
    .line 575
    :cond_b
    const/4 v2, 0x0

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@1bb
    .line 579
    :cond_c
    const/4 v2, 0x0

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1c0
    .line 580
    const v2, 0x7fffffff

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@1c7
    .line 581
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iput-wide v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@1d0
    .line 583
    const/16 v21, 0x0

    #@1d2
    .line 585
    .local v21, "ruleID":Ljava/lang/String;
    :try_start_5
    const-string/jumbo v2, "finalRule"

    #@1d5
    move-object/from16 v0, p2

    #@1d7
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1da
    move-result-object v21

    #@1db
    .line 587
    .local v21, "ruleID":Ljava/lang/String;
    const-string/jumbo v2, "finalRaw"

    #@1de
    move-object/from16 v0, p2

    #@1e0
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1e3
    move-result-object v19

    #@1e4
    .line 588
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getInt()I

    #@1e7
    move-result v2

    #@1e8
    mul-int/lit16 v3, v2, 0x3e8

    #@1ea
    .line 589
    .local v3, "ruleRaw":I
    move-object/from16 v0, p1

    #@1ec
    move-object/from16 v1, v21

    #@1ee
    invoke-static {v0, v1}, Landroid/icu/impl/OlsonTimeZone;->loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1f1
    move-result-object v19

    #@1f2
    .line 590
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@1f5
    move-result-object v20

    #@1f6
    .line 592
    .local v20, "ruleData":[I
    if-eqz v20, :cond_d

    #@1f8
    move-object/from16 v0, v20

    #@1fa
    array-length v2, v0

    #@1fb
    const/16 v4, 0xb

    #@1fd
    if-eq v2, v4, :cond_e

    #@1ff
    .line 593
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@201
    const-string/jumbo v4, "Invalid Format"

    #@204
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@207
    throw v2
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_2

    #@208
    .line 624
    .end local v3    # "ruleRaw":I
    .end local v20    # "ruleData":[I
    .end local v21    # "ruleID":Ljava/lang/String;
    :catch_2
    move-exception v16

    #@209
    .line 625
    .local v16, "e":Ljava/util/MissingResourceException;
    if-eqz v21, :cond_f

    #@20b
    .line 628
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20d
    const-string/jumbo v4, "Invalid Format"

    #@210
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@213
    throw v2

    #@214
    .line 595
    .end local v16    # "e":Ljava/util/MissingResourceException;
    .restart local v3    # "ruleRaw":I
    .restart local v20    # "ruleData":[I
    .restart local v21    # "ruleID":Ljava/lang/String;
    :cond_e
    :try_start_6
    new-instance v2, Landroid/icu/util/SimpleTimeZone;

    #@216
    const-string/jumbo v4, ""

    #@219
    .line 596
    const/4 v5, 0x0

    #@21a
    aget v5, v20, v5

    #@21c
    const/4 v6, 0x1

    #@21d
    aget v6, v20, v6

    #@21f
    const/4 v7, 0x2

    #@220
    aget v7, v20, v7

    #@222
    .line 597
    const/4 v8, 0x3

    #@223
    aget v8, v20, v8

    #@225
    mul-int/lit16 v8, v8, 0x3e8

    #@227
    .line 598
    const/4 v9, 0x4

    #@228
    aget v9, v20, v9

    #@22a
    .line 599
    const/4 v10, 0x5

    #@22b
    aget v10, v20, v10

    #@22d
    const/4 v11, 0x6

    #@22e
    aget v11, v20, v11

    #@230
    const/4 v12, 0x7

    #@231
    aget v12, v20, v12

    #@233
    .line 600
    const/16 v13, 0x8

    #@235
    aget v13, v20, v13

    #@237
    mul-int/lit16 v13, v13, 0x3e8

    #@239
    .line 601
    const/16 v14, 0x9

    #@23b
    aget v14, v20, v14

    #@23d
    .line 602
    const/16 v15, 0xa

    #@23f
    aget v15, v20, v15

    #@241
    mul-int/lit16 v15, v15, 0x3e8

    #@243
    .line 595
    invoke-direct/range {v2 .. v15}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    #@246
    move-object/from16 v0, p0

    #@248
    iput-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@24a
    .line 604
    const-string/jumbo v2, "finalYear"

    #@24d
    move-object/from16 v0, p2

    #@24f
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@252
    move-result-object v19

    #@253
    .line 605
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/UResourceBundle;->getInt()I

    #@256
    move-result v2

    #@257
    move-object/from16 v0, p0

    #@259
    iput v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@25b
    .line 623
    move-object/from16 v0, p0

    #@25d
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@25f
    const/4 v4, 0x0

    #@260
    const/4 v5, 0x1

    #@261
    invoke-static {v2, v4, v5}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@264
    move-result-wide v4

    #@265
    const-wide/32 v6, 0x5265c00

    #@268
    mul-long/2addr v4, v6

    #@269
    long-to-double v4, v4

    #@26a
    move-object/from16 v0, p0

    #@26c
    iput-wide v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_2

    #@26e
    .line 485
    .end local v3    # "ruleRaw":I
    .end local v20    # "ruleData":[I
    .end local v21    # "ruleID":Ljava/lang/String;
    :cond_f
    return-void

    #@26f
    .line 516
    .end local v19    # "r":Landroid/icu/util/UResourceBundle;
    .local v23, "transPost32":[I
    :catch_3
    move-exception v16

    #@270
    .restart local v16    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_1
.end method

.method private constructEmpty()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 460
    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@4
    .line 461
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@6
    .line 462
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@8
    .line 464
    const/4 v0, 0x1

    #@9
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@b
    .line 465
    filled-new-array {v2, v2}, [I

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@11
    .line 466
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@13
    .line 467
    const v0, 0x7fffffff

    #@16
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@18
    .line 468
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@1d
    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@1f
    .line 470
    iput-boolean v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    #@21
    .line 459
    return-void
.end method

.method private dstOffsetAt(I)I
    .locals 3
    .param p1, "transIdx"    # I

    #@0
    .prologue
    .line 766
    if-ltz p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@4
    aget-byte v1, v1, p1

    #@6
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@9
    move-result v1

    #@a
    mul-int/lit8 v0, v1, 0x2

    #@c
    .line 767
    .local v0, "typeIdx":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@e
    add-int/lit8 v2, v0, 0x1

    #@10
    aget v1, v1, v2

    #@12
    return v1

    #@13
    .line 766
    .end local v0    # "typeIdx":I
    :cond_0
    const/4 v0, 0x0

    #@14
    .restart local v0    # "typeIdx":I
    goto :goto_0
.end method

.method private getHistoricalOffset(JZII[I)V
    .locals 17
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I
    .param p6, "offsets"    # [I

    #@0
    .prologue
    .line 678
    move-object/from16 v0, p0

    #@2
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@4
    if-eqz v11, :cond_18

    #@6
    .line 679
    const-wide/16 v14, 0x3e8

    #@8
    move-wide/from16 v0, p1

    #@a
    invoke-static {v0, v1, v14, v15}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    #@d
    move-result-wide v8

    #@e
    .line 680
    .local v8, "sec":J
    if-nez p3, :cond_0

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@14
    const/4 v14, 0x0

    #@15
    aget-wide v14, v11, v14

    #@17
    cmp-long v11, v8, v14

    #@19
    if-gez v11, :cond_0

    #@1b
    .line 682
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    #@1e
    move-result v11

    #@1f
    mul-int/lit16 v11, v11, 0x3e8

    #@21
    const/4 v14, 0x0

    #@22
    aput v11, p6, v14

    #@24
    .line 683
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    #@27
    move-result v11

    #@28
    mul-int/lit16 v11, v11, 0x3e8

    #@2a
    const/4 v14, 0x1

    #@2b
    aput v11, p6, v14

    #@2d
    .line 677
    .end local v8    # "sec":J
    :goto_0
    return-void

    #@2e
    .line 688
    .restart local v8    # "sec":J
    :cond_0
    move-object/from16 v0, p0

    #@30
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@32
    add-int/lit8 v10, v11, -0x1

    #@34
    .local v10, "transIdx":I
    :goto_1
    if-ltz v10, :cond_5

    #@36
    .line 689
    move-object/from16 v0, p0

    #@38
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@3a
    aget-wide v12, v11, v10

    #@3c
    .line 690
    .local v12, "transition":J
    if-eqz p3, :cond_4

    #@3e
    const-wide/32 v14, 0x15180

    #@41
    sub-long v14, v12, v14

    #@43
    cmp-long v11, v8, v14

    #@45
    if-ltz v11, :cond_4

    #@47
    .line 691
    add-int/lit8 v11, v10, -0x1

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-direct {v0, v11}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    #@4e
    move-result v6

    #@4f
    .line 692
    .local v6, "offsetBefore":I
    add-int/lit8 v11, v10, -0x1

    #@51
    move-object/from16 v0, p0

    #@53
    invoke-direct {v0, v11}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@56
    move-result v11

    #@57
    if-eqz v11, :cond_6

    #@59
    const/4 v3, 0x1

    #@5a
    .line 694
    .local v3, "dstBefore":Z
    :goto_2
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    #@5f
    move-result v5

    #@60
    .line 695
    .local v5, "offsetAfter":I
    move-object/from16 v0, p0

    #@62
    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@65
    move-result v11

    #@66
    if-eqz v11, :cond_7

    #@68
    const/4 v2, 0x1

    #@69
    .line 697
    .local v2, "dstAfter":Z
    :goto_3
    if-eqz v3, :cond_1

    #@6b
    if-eqz v2, :cond_8

    #@6d
    :cond_1
    const/4 v4, 0x0

    #@6e
    .line 698
    .local v4, "dstToStd":Z
    :goto_4
    if-nez v3, :cond_9

    #@70
    move v7, v2

    #@71
    .line 700
    :goto_5
    sub-int v11, v5, v6

    #@73
    if-ltz v11, :cond_f

    #@75
    .line 702
    and-int/lit8 v11, p4, 0x3

    #@77
    const/4 v14, 0x1

    #@78
    if-ne v11, v14, :cond_2

    #@7a
    if-nez v4, :cond_3

    #@7c
    .line 703
    :cond_2
    and-int/lit8 v11, p4, 0x3

    #@7e
    const/4 v14, 0x3

    #@7f
    if-ne v11, v14, :cond_a

    #@81
    .line 702
    if-eqz v7, :cond_a

    #@83
    .line 704
    :cond_3
    int-to-long v14, v6

    #@84
    add-long/2addr v12, v14

    #@85
    .line 732
    .end local v2    # "dstAfter":Z
    .end local v3    # "dstBefore":Z
    .end local v4    # "dstToStd":Z
    .end local v5    # "offsetAfter":I
    .end local v6    # "offsetBefore":I
    :cond_4
    :goto_6
    cmp-long v11, v8, v12

    #@87
    if-ltz v11, :cond_17

    #@89
    .line 737
    .end local v12    # "transition":J
    :cond_5
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->rawOffsetAt(I)I

    #@8e
    move-result v11

    #@8f
    mul-int/lit16 v11, v11, 0x3e8

    #@91
    const/4 v14, 0x0

    #@92
    aput v11, p6, v14

    #@94
    .line 738
    move-object/from16 v0, p0

    #@96
    invoke-direct {v0, v10}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@99
    move-result v11

    #@9a
    mul-int/lit16 v11, v11, 0x3e8

    #@9c
    const/4 v14, 0x1

    #@9d
    aput v11, p6, v14

    #@9f
    goto :goto_0

    #@a0
    .line 692
    .restart local v6    # "offsetBefore":I
    .restart local v12    # "transition":J
    :cond_6
    const/4 v3, 0x0

    #@a1
    .restart local v3    # "dstBefore":Z
    goto :goto_2

    #@a2
    .line 695
    .restart local v5    # "offsetAfter":I
    :cond_7
    const/4 v2, 0x0

    #@a3
    .restart local v2    # "dstAfter":Z
    goto :goto_3

    #@a4
    .line 697
    :cond_8
    const/4 v4, 0x1

    #@a5
    .restart local v4    # "dstToStd":Z
    goto :goto_4

    #@a6
    .line 698
    :cond_9
    const/4 v7, 0x0

    #@a7
    .local v7, "stdToDst":Z
    goto :goto_5

    #@a8
    .line 705
    .end local v7    # "stdToDst":Z
    :cond_a
    and-int/lit8 v11, p4, 0x3

    #@aa
    const/4 v14, 0x1

    #@ab
    if-ne v11, v14, :cond_b

    #@ad
    if-nez v7, :cond_c

    #@af
    .line 706
    :cond_b
    and-int/lit8 v11, p4, 0x3

    #@b1
    const/4 v14, 0x3

    #@b2
    if-ne v11, v14, :cond_d

    #@b4
    .line 705
    if-eqz v4, :cond_d

    #@b6
    .line 707
    :cond_c
    int-to-long v14, v5

    #@b7
    add-long/2addr v12, v14

    #@b8
    goto :goto_6

    #@b9
    .line 708
    :cond_d
    and-int/lit8 v11, p4, 0xc

    #@bb
    const/16 v14, 0xc

    #@bd
    if-ne v11, v14, :cond_e

    #@bf
    .line 709
    int-to-long v14, v6

    #@c0
    add-long/2addr v12, v14

    #@c1
    goto :goto_6

    #@c2
    .line 713
    :cond_e
    int-to-long v14, v5

    #@c3
    add-long/2addr v12, v14

    #@c4
    goto :goto_6

    #@c5
    .line 717
    :cond_f
    and-int/lit8 v11, p5, 0x3

    #@c7
    const/4 v14, 0x1

    #@c8
    if-ne v11, v14, :cond_10

    #@ca
    if-nez v4, :cond_11

    #@cc
    .line 718
    :cond_10
    and-int/lit8 v11, p5, 0x3

    #@ce
    const/4 v14, 0x3

    #@cf
    if-ne v11, v14, :cond_12

    #@d1
    .line 717
    if-eqz v7, :cond_12

    #@d3
    .line 719
    :cond_11
    int-to-long v14, v5

    #@d4
    add-long/2addr v12, v14

    #@d5
    goto :goto_6

    #@d6
    .line 720
    :cond_12
    and-int/lit8 v11, p5, 0x3

    #@d8
    const/4 v14, 0x1

    #@d9
    if-ne v11, v14, :cond_13

    #@db
    if-nez v7, :cond_14

    #@dd
    .line 721
    :cond_13
    and-int/lit8 v11, p5, 0x3

    #@df
    const/4 v14, 0x3

    #@e0
    if-ne v11, v14, :cond_15

    #@e2
    .line 720
    if-eqz v4, :cond_15

    #@e4
    .line 722
    :cond_14
    int-to-long v14, v6

    #@e5
    add-long/2addr v12, v14

    #@e6
    goto :goto_6

    #@e7
    .line 723
    :cond_15
    and-int/lit8 v11, p5, 0xc

    #@e9
    const/4 v14, 0x4

    #@ea
    if-ne v11, v14, :cond_16

    #@ec
    .line 724
    int-to-long v14, v6

    #@ed
    add-long/2addr v12, v14

    #@ee
    goto :goto_6

    #@ef
    .line 728
    :cond_16
    int-to-long v14, v5

    #@f0
    add-long/2addr v12, v14

    #@f1
    goto :goto_6

    #@f2
    .line 688
    .end local v2    # "dstAfter":Z
    .end local v3    # "dstBefore":Z
    .end local v4    # "dstToStd":Z
    .end local v5    # "offsetAfter":I
    .end local v6    # "offsetBefore":I
    :cond_17
    add-int/lit8 v10, v10, -0x1

    #@f4
    goto/16 :goto_1

    #@f6
    .line 742
    .end local v8    # "sec":J
    .end local v10    # "transIdx":I
    .end local v12    # "transition":J
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    #@f9
    move-result v11

    #@fa
    mul-int/lit16 v11, v11, 0x3e8

    #@fc
    const/4 v14, 0x0

    #@fd
    aput v11, p6, v14

    #@ff
    .line 743
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    #@102
    move-result v11

    #@103
    mul-int/lit16 v11, v11, 0x3e8

    #@105
    const/4 v14, 0x1

    #@106
    aput v11, p6, v14

    #@108
    goto/16 :goto_0
.end method

.method private getInt(B)I
    .locals 1
    .param p1, "val"    # B

    #@0
    .prologue
    .line 748
    and-int/lit16 v0, p1, 0xff

    #@2
    return v0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 28

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1108
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-boolean v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v4, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 1109
    return-void

    #@9
    .line 1112
    :cond_0
    const/4 v4, 0x0

    #@a
    :try_start_1
    move-object/from16 v0, p0

    #@c
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@e
    .line 1113
    const/4 v4, 0x0

    #@f
    move-object/from16 v0, p0

    #@11
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@13
    .line 1114
    const/4 v4, 0x0

    #@14
    move-object/from16 v0, p0

    #@16
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@18
    .line 1115
    const/4 v4, 0x0

    #@19
    move-object/from16 v0, p0

    #@1b
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1d
    .line 1116
    const/4 v4, 0x0

    #@1e
    move-object/from16 v0, p0

    #@20
    iput v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@22
    .line 1117
    const/4 v4, 0x0

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@27
    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    const-string/jumbo v5, "(STD)"

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v19

    #@3f
    .line 1120
    .local v19, "stdName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    const-string/jumbo v5, "(DST)"

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v15

    #@57
    .line 1125
    .local v15, "dstName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    #@5a
    move-result v4

    #@5b
    mul-int/lit16 v6, v4, 0x3e8

    #@5d
    .line 1126
    .local v6, "raw":I
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    #@60
    move-result v4

    #@61
    mul-int/lit16 v7, v4, 0x3e8

    #@63
    .line 1127
    .local v7, "dst":I
    new-instance v5, Landroid/icu/util/InitialTimeZoneRule;

    #@65
    if-nez v7, :cond_6

    #@67
    move-object/from16 v4, v19

    #@69
    :goto_0
    invoke-direct {v5, v4, v6, v7}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@70
    .line 1129
    move-object/from16 v0, p0

    #@72
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@74
    if-lez v4, :cond_2

    #@76
    .line 1135
    const/16 v23, 0x0

    #@78
    .local v23, "transitionIdx":I
    :goto_1
    move-object/from16 v0, p0

    #@7a
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@7c
    move/from16 v0, v23

    #@7e
    if-ge v0, v4, :cond_1

    #@80
    .line 1136
    move-object/from16 v0, p0

    #@82
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@84
    aget-byte v4, v4, v23

    #@86
    move-object/from16 v0, p0

    #@88
    invoke-direct {v0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_7

    #@8e
    .line 1141
    :cond_1
    move-object/from16 v0, p0

    #@90
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@92
    move/from16 v0, v23

    #@94
    if-ne v0, v4, :cond_8

    #@96
    .line 1180
    .end local v23    # "transitionIdx":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@9a
    if-eqz v4, :cond_5

    #@9c
    .line 1182
    move-object/from16 v0, p0

    #@9e
    iget-wide v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@a0
    double-to-long v0, v4

    #@a1
    move-wide/from16 v20, v0

    #@a3
    .line 1184
    .local v20, "startTime":J
    move-object/from16 v0, p0

    #@a5
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@a7
    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_e

    #@ad
    .line 1193
    move-object/from16 v0, p0

    #@af
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@b1
    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    #@b4
    move-result-object v4

    #@b5
    check-cast v4, Landroid/icu/util/SimpleTimeZone;

    #@b7
    move-object/from16 v0, p0

    #@b9
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@bb
    .line 1194
    move-object/from16 v0, p0

    #@bd
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget v5, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@c3
    invoke-virtual {v4, v5}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    #@c6
    .line 1196
    move-object/from16 v0, p0

    #@c8
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@ca
    const/4 v5, 0x0

    #@cb
    move-wide/from16 v0, v20

    #@cd
    invoke-virtual {v4, v0, v1, v5}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@d0
    move-result-object v27

    #@d1
    .line 1197
    .local v27, "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@d4
    move-result-object v9

    #@d5
    .line 1198
    .local v9, "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@d8
    move-result-wide v20

    #@d9
    .line 1204
    .end local v27    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :goto_3
    const/16 v18, 0x0

    #@db
    .line 1205
    .local v18, "prevRule":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, p0

    #@dd
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@df
    if-lez v4, :cond_3

    #@e1
    .line 1206
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v10, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@ed
    add-int/lit8 v10, v10, -0x1

    #@ef
    aget-byte v5, v5, v10

    #@f1
    move-object/from16 v0, p0

    #@f3
    invoke-direct {v0, v5}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@f6
    move-result v5

    #@f7
    aget-object v18, v4, v5

    #@f9
    .line 1208
    .end local v18    # "prevRule":Landroid/icu/util/TimeZoneRule;
    :cond_3
    if-nez v18, :cond_4

    #@fb
    .line 1210
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@ff
    move-object/from16 v18, v0

    #@101
    .line 1212
    :cond_4
    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    #@103
    move-wide/from16 v0, v20

    #@105
    move-object/from16 v2, v18

    #@107
    invoke-direct {v4, v0, v1, v2, v9}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@10a
    move-object/from16 v0, p0

    #@10c
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@10e
    .line 1215
    .end local v9    # "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    .end local v20    # "startTime":J
    :cond_5
    const/4 v4, 0x1

    #@10f
    move-object/from16 v0, p0

    #@111
    iput-boolean v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@113
    monitor-exit p0

    #@114
    .line 1107
    return-void

    #@115
    :cond_6
    move-object v4, v15

    #@116
    .line 1127
    goto/16 :goto_0

    #@118
    .line 1139
    .restart local v23    # "transitionIdx":I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    #@11a
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@11c
    add-int/lit8 v4, v4, 0x1

    #@11e
    move-object/from16 v0, p0

    #@120
    iput v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@122
    .line 1135
    add-int/lit8 v23, v23, 0x1

    #@124
    goto/16 :goto_1

    #@126
    .line 1145
    :cond_8
    move-object/from16 v0, p0

    #@128
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@12a
    new-array v0, v4, [J

    #@12c
    move-object/from16 v22, v0

    #@12e
    .line 1146
    .local v22, "times":[J
    const/16 v26, 0x0

    #@130
    .local v26, "typeIdx":I
    :goto_4
    move-object/from16 v0, p0

    #@132
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@134
    move/from16 v0, v26

    #@136
    if-ge v0, v4, :cond_d

    #@138
    .line 1148
    const/16 v16, 0x0

    #@13a
    .line 1149
    .local v16, "nTimes":I
    move-object/from16 v0, p0

    #@13c
    iget v0, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@13e
    move/from16 v23, v0

    #@140
    move/from16 v17, v16

    #@142
    .end local v16    # "nTimes":I
    .local v17, "nTimes":I
    :goto_5
    move-object/from16 v0, p0

    #@144
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@146
    move/from16 v0, v23

    #@148
    if-ge v0, v4, :cond_9

    #@14a
    .line 1150
    move-object/from16 v0, p0

    #@14c
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@14e
    aget-byte v4, v4, v23

    #@150
    move-object/from16 v0, p0

    #@152
    invoke-direct {v0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@155
    move-result v4

    #@156
    move/from16 v0, v26

    #@158
    if-ne v0, v4, :cond_f

    #@15a
    .line 1151
    move-object/from16 v0, p0

    #@15c
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@15e
    aget-wide v4, v4, v23

    #@160
    const-wide/16 v10, 0x3e8

    #@162
    mul-long v24, v4, v10

    #@164
    .line 1152
    .local v24, "tt":J
    move-wide/from16 v0, v24

    #@166
    long-to-double v4, v0

    #@167
    move-object/from16 v0, p0

    #@169
    iget-wide v10, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@16b
    cmpg-double v4, v4, v10

    #@16d
    if-gez v4, :cond_f

    #@16f
    .line 1154
    add-int/lit8 v16, v17, 0x1

    #@171
    .end local v17    # "nTimes":I
    .restart local v16    # "nTimes":I
    aput-wide v24, v22, v17

    #@173
    .line 1149
    .end local v24    # "tt":J
    :goto_6
    add-int/lit8 v23, v23, 0x1

    #@175
    move/from16 v17, v16

    #@177
    .end local v16    # "nTimes":I
    .restart local v17    # "nTimes":I
    goto :goto_5

    #@178
    .line 1158
    :cond_9
    if-lez v17, :cond_b

    #@17a
    .line 1159
    move/from16 v0, v17

    #@17c
    new-array v8, v0, [J

    #@17e
    .line 1160
    .local v8, "startTimes":[J
    const/4 v4, 0x0

    #@17f
    const/4 v5, 0x0

    #@180
    move-object/from16 v0, v22

    #@182
    move/from16 v1, v17

    #@184
    invoke-static {v0, v4, v8, v5, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@187
    .line 1162
    move-object/from16 v0, p0

    #@189
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@18b
    mul-int/lit8 v5, v26, 0x2

    #@18d
    aget v4, v4, v5

    #@18f
    mul-int/lit16 v6, v4, 0x3e8

    #@191
    .line 1163
    move-object/from16 v0, p0

    #@193
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@195
    mul-int/lit8 v5, v26, 0x2

    #@197
    add-int/lit8 v5, v5, 0x1

    #@199
    aget v4, v4, v5

    #@19b
    mul-int/lit16 v7, v4, 0x3e8

    #@19d
    .line 1164
    move-object/from16 v0, p0

    #@19f
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1a1
    if-nez v4, :cond_a

    #@1a3
    .line 1165
    move-object/from16 v0, p0

    #@1a5
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@1a7
    new-array v4, v4, [Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1ad
    .line 1167
    :cond_a
    move-object/from16 v0, p0

    #@1af
    iget-object v10, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1b1
    new-instance v4, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1b3
    if-nez v7, :cond_c

    #@1b5
    move-object/from16 v5, v19

    #@1b7
    .line 1168
    :goto_7
    const/4 v9, 0x2

    #@1b8
    .line 1167
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@1bb
    aput-object v4, v10, v26

    #@1bd
    .line 1146
    .end local v8    # "startTimes":[J
    :cond_b
    add-int/lit8 v26, v26, 0x1

    #@1bf
    goto/16 :goto_4

    #@1c1
    .restart local v8    # "startTimes":[J
    :cond_c
    move-object v5, v15

    #@1c2
    .line 1167
    goto :goto_7

    #@1c3
    .line 1173
    .end local v8    # "startTimes":[J
    .end local v17    # "nTimes":I
    :cond_d
    move-object/from16 v0, p0

    #@1c5
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget v5, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@1cb
    aget-byte v4, v4, v5

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    invoke-direct {v0, v4}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@1d2
    move-result v26

    #@1d3
    .line 1174
    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget v10, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@1dd
    aget-wide v10, v5, v10

    #@1df
    const-wide/16 v12, 0x3e8

    #@1e1
    mul-long/2addr v10, v12

    #@1e2
    .line 1175
    move-object/from16 v0, p0

    #@1e4
    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@1ea
    aget-object v12, v12, v26

    #@1ec
    .line 1174
    invoke-direct {v4, v10, v11, v5, v12}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f3
    goto/16 :goto_2

    #@1f5
    .end local v6    # "raw":I
    .end local v7    # "dst":I
    .end local v15    # "dstName":Ljava/lang/String;
    .end local v19    # "stdName":Ljava/lang/String;
    .end local v22    # "times":[J
    .end local v23    # "transitionIdx":I
    .end local v26    # "typeIdx":I
    :catchall_0
    move-exception v4

    #@1f6
    monitor-exit p0

    #@1f7
    throw v4

    #@1f8
    .line 1200
    .restart local v6    # "raw":I
    .restart local v7    # "dst":I
    .restart local v15    # "dstName":Ljava/lang/String;
    .restart local v19    # "stdName":Ljava/lang/String;
    .restart local v20    # "startTime":J
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    #@1fa
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@200
    .line 1201
    new-instance v9, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@202
    move-object/from16 v0, p0

    #@204
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@206
    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@209
    move-result-object v10

    #@20a
    .line 1202
    move-object/from16 v0, p0

    #@20c
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@20e
    invoke-virtual {v4}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@211
    move-result v11

    #@212
    const/4 v4, 0x1

    #@213
    new-array v13, v4, [J

    #@215
    const/4 v4, 0x0

    #@216
    aput-wide v20, v13, v4

    #@218
    const/4 v12, 0x0

    #@219
    const/4 v14, 0x2

    #@21a
    .line 1201
    invoke-direct/range {v9 .. v14}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21d
    .restart local v9    # "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    goto/16 :goto_3

    #@21f
    .end local v9    # "firstFinalRule":Landroid/icu/util/TimeZoneRule;
    .end local v20    # "startTime":J
    .restart local v17    # "nTimes":I
    .restart local v22    # "times":[J
    .restart local v23    # "transitionIdx":I
    .restart local v26    # "typeIdx":I
    :cond_f
    move/from16 v16, v17

    #@221
    .end local v17    # "nTimes":I
    .restart local v16    # "nTimes":I
    goto/16 :goto_6
.end method

.method private initialDstOffset()I
    .locals 2

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@2
    const/4 v1, 0x1

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method private initialRawOffset()I
    .locals 2

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method private static loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .param p0, "top"    # Landroid/icu/util/UResourceBundle;
    .param p1, "ruleid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 888
    const-string/jumbo v1, "Rules"

    #@3
    invoke-virtual {p0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 889
    .local v0, "r":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@a
    move-result-object v0

    #@b
    .line 890
    return-object v0
.end method

.method private rawOffsetAt(I)I
    .locals 2
    .param p1, "transIdx"    # I

    #@0
    .prologue
    .line 761
    if-ltz p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@4
    aget-byte v1, v1, p1

    #@6
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@9
    move-result v1

    #@a
    mul-int/lit8 v0, v1, 0x2

    #@c
    .line 762
    .local v0, "typeIdx":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@e
    aget v1, v1, v0

    #@10
    return v1

    #@11
    .line 761
    .end local v0    # "typeIdx":I
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "typeIdx":I
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1232
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1234
    iget v5, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    #@5
    const/4 v6, 0x1

    #@6
    if-ge v5, v6, :cond_2

    #@8
    .line 1237
    const/4 v1, 0x0

    #@9
    .line 1238
    .local v1, "initialized":Z
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1239
    .local v4, "tzid":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@f
    .line 1241
    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt55b"

    #@12
    .line 1242
    const-string/jumbo v6, "zoneinfo64"

    #@15
    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@17
    .line 1241
    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@1a
    move-result-object v3

    #@1b
    .line 1243
    .local v3, "top":Landroid/icu/util/UResourceBundle;
    invoke-static {v3, v4}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1e
    move-result-object v2

    #@1f
    .line 1244
    .local v2, "res":Landroid/icu/util/UResourceBundle;
    invoke-direct {p0, v3, v2}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    #@22
    .line 1245
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@24
    if-eqz v5, :cond_0

    #@26
    .line 1246
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@28
    invoke-virtual {v5, v4}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1248
    :cond_0
    const/4 v1, 0x1

    #@2c
    .line 1253
    .end local v2    # "res":Landroid/icu/util/UResourceBundle;
    .end local v3    # "top":Landroid/icu/util/UResourceBundle;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    #@2e
    .line 1255
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->constructEmpty()V

    #@31
    .line 1260
    .end local v1    # "initialized":Z
    .end local v4    # "tzid":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@32
    iput-boolean v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    #@34
    .line 1231
    return-void

    #@35
    .line 1249
    .restart local v1    # "initialized":Z
    .restart local v4    # "tzid":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@36
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private zoneOffsetAt(I)I
    .locals 4
    .param p1, "transIdx"    # I

    #@0
    .prologue
    .line 756
    if-ltz p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@4
    aget-byte v1, v1, p1

    #@6
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@9
    move-result v1

    #@a
    mul-int/lit8 v0, v1, 0x2

    #@c
    .line 757
    .local v0, "typeIdx":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@e
    aget v1, v1, v0

    #@10
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@12
    add-int/lit8 v3, v0, 0x1

    #@14
    aget v2, v2, v3

    #@16
    add-int/2addr v1, v2

    #@17
    return v1

    #@18
    .line 756
    .end local v0    # "typeIdx":I
    :cond_0
    const/4 v0, 0x0

    #@19
    .restart local v0    # "typeIdx":I
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 258
    return-object p0

    #@7
    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    #@0
    .prologue
    .line 1285
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    #@6
    .line 1286
    .local v0, "tz":Landroid/icu/impl/OlsonTimeZone;
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1288
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@c
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    #@13
    .line 1289
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@15
    invoke-virtual {v1}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/icu/util/SimpleTimeZone;

    #@1b
    iput-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1d
    .line 1299
    :cond_0
    const/4 v1, 0x0

    #@1e
    iput-boolean v1, v0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    #@20
    .line 1300
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 895
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    return v2

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 897
    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    #@c
    .line 899
    .local v0, "z":Landroid/icu/impl/OlsonTimeZone;
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@e
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@10
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 902
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@18
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@1a
    if-ne v3, v4, :cond_4

    #@1c
    .line 904
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1e
    if-nez v3, :cond_2

    #@20
    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@22
    if-nez v3, :cond_2

    #@24
    .line 899
    :cond_1
    :goto_0
    return v1

    #@25
    .line 905
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@27
    if-eqz v1, :cond_3

    #@29
    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 906
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2f
    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@31
    invoke-virtual {v1, v3}, Landroid/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 905
    if-eqz v1, :cond_3

    #@37
    .line 907
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@39
    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@3b
    if-ne v1, v3, :cond_3

    #@3d
    .line 908
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@3f
    iget v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@41
    if-ne v1, v3, :cond_3

    #@43
    .line 909
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@45
    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@47
    invoke-static {v1, v3}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    .line 905
    if-eqz v1, :cond_3

    #@4d
    .line 910
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@4f
    iget-object v3, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@51
    invoke-static {v1, v3}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    #@54
    move-result v1

    #@55
    .line 905
    if-eqz v1, :cond_3

    #@57
    .line 911
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@59
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@5b
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    goto :goto_0

    #@60
    :cond_3
    move v1, v2

    #@61
    .line 905
    goto :goto_0

    #@62
    :cond_4
    move v1, v2

    #@63
    .line 902
    goto :goto_0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 1277
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    #@3
    .line 1278
    return-object p0
.end method

.method public getCanonicalID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@2
    if-nez v0, :cond_3

    #@4
    .line 440
    monitor-enter p0

    #@5
    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@7
    if-nez v0, :cond_2

    #@9
    .line 442
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@13
    .line 444
    sget-boolean v0, Landroid/icu/impl/OlsonTimeZone;->-assertionsDisabled:Z

    #@15
    if-nez v0, :cond_1

    #@17
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@19
    if-eqz v0, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_0
    if-nez v0, :cond_1

    #@1e
    new-instance v0, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 440
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0

    #@27
    .line 444
    :cond_0
    const/4 v0, 0x0

    #@28
    goto :goto_0

    #@29
    .line 445
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@2b
    if-nez v0, :cond_2

    #@2d
    .line 447
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :cond_2
    monitor-exit p0

    #@34
    .line 452
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@36
    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 375
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@6
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 377
    :cond_0
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 17
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    .line 949
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    #@3
    .line 951
    move-object/from16 v0, p0

    #@5
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@7
    if-eqz v11, :cond_2

    #@9
    .line 952
    if-eqz p3, :cond_0

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@f
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@12
    move-result-wide v12

    #@13
    cmp-long v11, p1, v12

    #@15
    if-nez v11, :cond_0

    #@17
    .line 953
    move-object/from16 v0, p0

    #@19
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@1b
    return-object v11

    #@1c
    .line 954
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@20
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@23
    move-result-wide v12

    #@24
    cmp-long v11, p1, v12

    #@26
    if-ltz v11, :cond_2

    #@28
    .line 955
    move-object/from16 v0, p0

    #@2a
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2c
    invoke-virtual {v11}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_1

    #@32
    .line 957
    move-object/from16 v0, p0

    #@34
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@36
    move-wide/from16 v0, p1

    #@38
    move/from16 v2, p3

    #@3a
    invoke-virtual {v11, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@3d
    move-result-object v11

    #@3e
    return-object v11

    #@3f
    .line 960
    :cond_1
    const/4 v11, 0x0

    #@40
    return-object v11

    #@41
    .line 964
    :cond_2
    move-object/from16 v0, p0

    #@43
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@45
    if-eqz v11, :cond_8

    #@47
    .line 966
    move-object/from16 v0, p0

    #@49
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@4b
    add-int/lit8 v10, v11, -0x1

    #@4d
    .line 967
    .local v10, "ttidx":I
    :goto_0
    move-object/from16 v0, p0

    #@4f
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@51
    if-lt v10, v11, :cond_3

    #@53
    .line 968
    move-object/from16 v0, p0

    #@55
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@57
    aget-wide v12, v11, v10

    #@59
    const-wide/16 v14, 0x3e8

    #@5b
    mul-long v8, v12, v14

    #@5d
    .line 969
    .local v8, "t":J
    cmp-long v11, p1, v8

    #@5f
    if-gtz v11, :cond_3

    #@61
    if-nez p3, :cond_4

    #@63
    cmp-long v11, p1, v8

    #@65
    if-nez v11, :cond_4

    #@67
    .line 973
    .end local v8    # "t":J
    :cond_3
    move-object/from16 v0, p0

    #@69
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@6b
    add-int/lit8 v11, v11, -0x1

    #@6d
    if-ne v10, v11, :cond_5

    #@6f
    .line 974
    move-object/from16 v0, p0

    #@71
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@73
    return-object v11

    #@74
    .line 967
    .restart local v8    # "t":J
    :cond_4
    add-int/lit8 v10, v10, -0x1

    #@76
    goto :goto_0

    #@77
    .line 975
    .end local v8    # "t":J
    :cond_5
    move-object/from16 v0, p0

    #@79
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@7b
    if-ge v10, v11, :cond_6

    #@7d
    .line 976
    move-object/from16 v0, p0

    #@7f
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@81
    return-object v11

    #@82
    .line 979
    :cond_6
    move-object/from16 v0, p0

    #@84
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@8a
    add-int/lit8 v13, v10, 0x1

    #@8c
    aget-byte v12, v12, v13

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@93
    move-result v12

    #@94
    aget-object v5, v11, v12

    #@96
    .line 980
    .local v5, "to":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, p0

    #@98
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@9e
    aget-byte v12, v12, v10

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@a5
    move-result v12

    #@a6
    aget-object v4, v11, v12

    #@a8
    .line 981
    .local v4, "from":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, p0

    #@aa
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@ac
    add-int/lit8 v12, v10, 0x1

    #@ae
    aget-wide v12, v11, v12

    #@b0
    const-wide/16 v14, 0x3e8

    #@b2
    mul-long v6, v12, v14

    #@b4
    .line 984
    .local v6, "startTime":J
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@b7
    move-result-object v11

    #@b8
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@bb
    move-result-object v12

    #@bc
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v11

    #@c0
    if-eqz v11, :cond_7

    #@c2
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@c5
    move-result v11

    #@c6
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@c9
    move-result v12

    #@ca
    if-ne v11, v12, :cond_7

    #@cc
    .line 985
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@cf
    move-result v11

    #@d0
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@d3
    move-result v12

    #@d4
    if-ne v11, v12, :cond_7

    #@d6
    .line 986
    const/4 v11, 0x0

    #@d7
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v6, v7, v11}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@dc
    move-result-object v11

    #@dd
    return-object v11

    #@de
    .line 989
    :cond_7
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@e0
    invoke-direct {v11, v6, v7, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@e3
    return-object v11

    #@e4
    .line 992
    .end local v4    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v5    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v6    # "startTime":J
    .end local v10    # "ttidx":I
    :cond_8
    const/4 v11, 0x0

    #@e5
    return-object v11
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    #@0
    .prologue
    .line 125
    if-ltz p3, :cond_0

    #@2
    const/16 v0, 0xb

    #@4
    if-le p3, v0, :cond_1

    #@6
    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Month is not in the legal range: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 128
    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    #@23
    move-result v7

    #@24
    move-object v0, p0

    #@25
    move v1, p1

    #@26
    move v2, p2

    #@27
    move v3, p3

    #@28
    move v4, p4

    #@29
    move v5, p5

    #@2a
    move v6, p6

    #@2b
    invoke-virtual/range {v0 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    #@2e
    move-result v0

    #@2f
    return v0
.end method

.method public getOffset(IIIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dom"    # I
    .param p5, "dow"    # I
    .param p6, "millis"    # I
    .param p7, "monthLength"    # I

    #@0
    .prologue
    .line 137
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_1

    #@3
    if-eqz p1, :cond_1

    #@5
    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 138
    :cond_1
    if-ltz p3, :cond_0

    #@d
    .line 139
    const/16 v0, 0xb

    #@f
    if-gt p3, v0, :cond_0

    #@11
    .line 140
    const/4 v0, 0x1

    #@12
    if-lt p4, v0, :cond_0

    #@14
    .line 141
    if-gt p4, p7, :cond_0

    #@16
    .line 142
    const/4 v0, 0x1

    #@17
    if-lt p5, v0, :cond_0

    #@19
    .line 143
    const/4 v0, 0x7

    #@1a
    if-gt p5, v0, :cond_0

    #@1c
    .line 144
    if-ltz p6, :cond_0

    #@1e
    .line 145
    const v0, 0x5265c00

    #@21
    if-ge p6, v0, :cond_0

    #@23
    .line 146
    const/16 v0, 0x1c

    #@25
    if-lt p7, v0, :cond_0

    #@27
    .line 147
    const/16 v0, 0x1f

    #@29
    if-gt p7, v0, :cond_0

    #@2b
    .line 151
    if-nez p1, :cond_2

    #@2d
    .line 152
    neg-int p2, p2

    #@2e
    .line 155
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@30
    if-eqz v0, :cond_3

    #@32
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@34
    if-lt p2, v0, :cond_3

    #@36
    .line 156
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@38
    move v1, p1

    #@39
    move v2, p2

    #@3a
    move v3, p3

    #@3b
    move v4, p4

    #@3c
    move v5, p5

    #@3d
    move v6, p6

    #@3e
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    #@41
    move-result v0

    #@42
    return v0

    #@43
    .line 160
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@46
    move-result-wide v0

    #@47
    const-wide/32 v4, 0x5265c00

    #@4a
    mul-long/2addr v0, v4

    #@4b
    int-to-long v4, p6

    #@4c
    add-long v2, v0, v4

    #@4e
    .line 162
    .local v2, "time":J
    const/4 v0, 0x2

    #@4f
    new-array v7, v0, [I

    #@51
    .line 163
    .local v7, "offsets":[I
    const/4 v4, 0x1

    #@52
    const/4 v5, 0x3

    #@53
    const/4 v6, 0x1

    #@54
    move-object v1, p0

    #@55
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    #@58
    .line 164
    const/4 v0, 0x0

    #@59
    aget v0, v7, v0

    #@5b
    const/4 v1, 0x1

    #@5c
    aget v1, v7, v1

    #@5e
    add-int/2addr v0, v1

    #@5f
    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 9
    .param p1, "date"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2
    if-eqz v0, :cond_0

    #@4
    long-to-double v0, p1

    #@5
    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@7
    cmpl-double v0, v0, v2

    #@9
    if-ltz v0, :cond_0

    #@b
    .line 269
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@d
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    #@10
    .line 267
    :goto_0
    return-void

    #@11
    .line 272
    :cond_0
    const/4 v5, 0x4

    #@12
    const/16 v6, 0xc

    #@14
    move-object v1, p0

    #@15
    move-wide v2, p1

    #@16
    move v4, p3

    #@17
    move-object v7, p4

    #@18
    .line 271
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    #@1b
    goto :goto_0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # I
    .param p4, "duplicatedTimeOpt"    # I
    .param p5, "offsets"    # [I

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2
    if-eqz v0, :cond_0

    #@4
    long-to-double v0, p1

    #@5
    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@7
    cmpl-double v0, v0, v2

    #@9
    if-ltz v0, :cond_0

    #@b
    .line 283
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@d
    move-wide v2, p1

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    move-object v6, p5

    #@11
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffsetFromLocal(JII[I)V

    #@14
    .line 281
    :goto_0
    return-void

    #@15
    .line 285
    :cond_0
    const/4 v4, 0x1

    #@16
    move-object v1, p0

    #@17
    move-wide v2, p1

    #@18
    move v5, p3

    #@19
    move v6, p4

    #@1a
    move-object v7, p5

    #@1b
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    #@1e
    goto :goto_0
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 17
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    .line 1000
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    #@3
    .line 1002
    move-object/from16 v0, p0

    #@5
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@7
    if-eqz v11, :cond_2

    #@9
    .line 1003
    if-eqz p3, :cond_0

    #@b
    move-object/from16 v0, p0

    #@d
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@f
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@12
    move-result-wide v12

    #@13
    cmp-long v11, p1, v12

    #@15
    if-nez v11, :cond_0

    #@17
    .line 1004
    move-object/from16 v0, p0

    #@19
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@1b
    return-object v11

    #@1c
    .line 1005
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@20
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@23
    move-result-wide v12

    #@24
    cmp-long v11, p1, v12

    #@26
    if-lez v11, :cond_2

    #@28
    .line 1006
    move-object/from16 v0, p0

    #@2a
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2c
    invoke-virtual {v11}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_1

    #@32
    .line 1008
    move-object/from16 v0, p0

    #@34
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@36
    move-wide/from16 v0, p1

    #@38
    move/from16 v2, p3

    #@3a
    invoke-virtual {v11, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@3d
    move-result-object v11

    #@3e
    return-object v11

    #@3f
    .line 1010
    :cond_1
    move-object/from16 v0, p0

    #@41
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@43
    return-object v11

    #@44
    .line 1015
    :cond_2
    move-object/from16 v0, p0

    #@46
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@48
    if-eqz v11, :cond_8

    #@4a
    .line 1017
    move-object/from16 v0, p0

    #@4c
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@4e
    add-int/lit8 v10, v11, -0x1

    #@50
    .line 1018
    .local v10, "ttidx":I
    :goto_0
    move-object/from16 v0, p0

    #@52
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@54
    if-lt v10, v11, :cond_3

    #@56
    .line 1019
    move-object/from16 v0, p0

    #@58
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@5a
    aget-wide v12, v11, v10

    #@5c
    const-wide/16 v14, 0x3e8

    #@5e
    mul-long v8, v12, v14

    #@60
    .line 1020
    .local v8, "t":J
    cmp-long v11, p1, v8

    #@62
    if-gtz v11, :cond_3

    #@64
    if-eqz p3, :cond_4

    #@66
    cmp-long v11, p1, v8

    #@68
    if-nez v11, :cond_4

    #@6a
    .line 1024
    .end local v8    # "t":J
    :cond_3
    move-object/from16 v0, p0

    #@6c
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@6e
    if-ge v10, v11, :cond_5

    #@70
    .line 1026
    const/4 v11, 0x0

    #@71
    return-object v11

    #@72
    .line 1018
    .restart local v8    # "t":J
    :cond_4
    add-int/lit8 v10, v10, -0x1

    #@74
    goto :goto_0

    #@75
    .line 1027
    .end local v8    # "t":J
    :cond_5
    move-object/from16 v0, p0

    #@77
    iget v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    #@79
    if-ne v10, v11, :cond_6

    #@7b
    .line 1028
    move-object/from16 v0, p0

    #@7d
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    #@7f
    return-object v11

    #@80
    .line 1031
    :cond_6
    move-object/from16 v0, p0

    #@82
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@88
    aget-byte v12, v12, v10

    #@8a
    move-object/from16 v0, p0

    #@8c
    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@8f
    move-result v12

    #@90
    aget-object v5, v11, v12

    #@92
    .line 1032
    .local v5, "to":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, p0

    #@94
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@96
    move-object/from16 v0, p0

    #@98
    iget-object v12, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@9a
    add-int/lit8 v13, v10, -0x1

    #@9c
    aget-byte v12, v12, v13

    #@9e
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v0, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    #@a3
    move-result v12

    #@a4
    aget-object v4, v11, v12

    #@a6
    .line 1033
    .local v4, "from":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, p0

    #@a8
    iget-object v11, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@aa
    aget-wide v12, v11, v10

    #@ac
    const-wide/16 v14, 0x3e8

    #@ae
    mul-long v6, v12, v14

    #@b0
    .line 1036
    .local v6, "startTime":J
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@b3
    move-result-object v11

    #@b4
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@b7
    move-result-object v12

    #@b8
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v11

    #@bc
    if-eqz v11, :cond_7

    #@be
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@c1
    move-result v11

    #@c2
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@c5
    move-result v12

    #@c6
    if-ne v11, v12, :cond_7

    #@c8
    .line 1037
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@cb
    move-result v11

    #@cc
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@cf
    move-result v12

    #@d0
    if-ne v11, v12, :cond_7

    #@d2
    .line 1038
    const/4 v11, 0x0

    #@d3
    move-object/from16 v0, p0

    #@d5
    invoke-virtual {v0, v6, v7, v11}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@d8
    move-result-object v11

    #@d9
    return-object v11

    #@da
    .line 1041
    :cond_7
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@dc
    invoke-direct {v11, v6, v7, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@df
    return-object v11

    #@e0
    .line 1044
    .end local v4    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v5    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v6    # "startTime":J
    .end local v10    # "ttidx":I
    :cond_8
    const/4 v11, 0x0

    #@e1
    return-object v11
.end method

.method public getRawOffset()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 294
    const/4 v1, 0x2

    #@2
    new-array v0, v1, [I

    #@4
    .line 295
    .local v0, "ret":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    #@b
    .line 296
    aget v1, v0, v4

    #@d
    return v1
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 14

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1052
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    #@6
    .line 1053
    const/4 v10, 0x1

    #@7
    .line 1054
    .local v10, "size":I
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1057
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@e
    array-length v0, v0

    #@f
    if-ge v6, v0, :cond_1

    #@11
    .line 1058
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@13
    aget-object v0, v0, v6

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1059
    add-int/lit8 v10, v10, 0x1

    #@19
    .line 1057
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1063
    .end local v6    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 1064
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@22
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_4

    #@28
    .line 1065
    add-int/lit8 v10, v10, 0x2

    #@2a
    .line 1071
    :cond_2
    :goto_1
    new-array v9, v10, [Landroid/icu/util/TimeZoneRule;

    #@2c
    .line 1073
    .local v9, "rules":[Landroid/icu/util/TimeZoneRule;
    const/4 v7, 0x1

    #@2d
    .local v7, "idx":I
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@2f
    aput-object v0, v9, v3

    #@31
    .line 1075
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 1076
    const/4 v6, 0x0

    #@36
    .restart local v6    # "i":I
    :goto_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@38
    array-length v0, v0

    #@39
    if-ge v6, v0, :cond_5

    #@3b
    .line 1077
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@3d
    aget-object v0, v0, v6

    #@3f
    if-eqz v0, :cond_3

    #@41
    .line 1078
    add-int/lit8 v8, v7, 0x1

    #@43
    .end local v7    # "idx":I
    .local v8, "idx":I
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    #@45
    aget-object v0, v0, v6

    #@47
    aput-object v0, v9, v7

    #@49
    move v7, v8

    #@4a
    .line 1076
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 1067
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v9    # "rules":[Landroid/icu/util/TimeZoneRule;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 1083
    .restart local v7    # "idx":I
    .restart local v9    # "rules":[Landroid/icu/util/TimeZoneRule;
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@52
    if-eqz v0, :cond_6

    #@54
    .line 1084
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@56
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_7

    #@5c
    .line 1085
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    #@5e
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    #@61
    move-result-object v11

    #@62
    .line 1087
    .local v11, "stzr":[Landroid/icu/util/TimeZoneRule;
    add-int/lit8 v8, v7, 0x1

    #@64
    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    aget-object v0, v11, v4

    #@66
    aput-object v0, v9, v7

    #@68
    .line 1088
    add-int/lit8 v7, v8, 0x1

    #@6a
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    aget-object v0, v11, v5

    #@6c
    aput-object v0, v9, v8

    #@6e
    .line 1095
    .end local v11    # "stzr":[Landroid/icu/util/TimeZoneRule;
    :cond_6
    :goto_3
    return-object v9

    #@6f
    .line 1091
    :cond_7
    add-int/lit8 v8, v7, 0x1

    #@71
    .end local v7    # "idx":I
    .restart local v8    # "idx":I
    new-instance v0, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@73
    new-instance v1, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, "(STD)"

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@8d
    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    #@90
    move-result v2

    #@91
    .line 1092
    new-array v4, v4, [J

    #@93
    iget-wide v12, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@95
    double-to-long v12, v12

    #@96
    aput-wide v12, v4, v3

    #@98
    .line 1091
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@9b
    aput-object v0, v9, v7

    #@9d
    move v7, v8

    #@9e
    .end local v8    # "idx":I
    .restart local v7    # "idx":I
    goto :goto_3
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 5
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 395
    if-ne p0, p1, :cond_0

    #@4
    .line 396
    return v4

    #@5
    .line 400
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 401
    return v3

    #@c
    .line 404
    :cond_1
    instance-of v1, p1, Landroid/icu/impl/OlsonTimeZone;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 406
    return v3

    #@11
    :cond_2
    move-object v0, p1

    #@12
    .line 410
    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    #@14
    .line 411
    .local v0, "o":Landroid/icu/impl/OlsonTimeZone;
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@16
    if-nez v1, :cond_3

    #@18
    .line 412
    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1a
    if-eqz v1, :cond_6

    #@1c
    .line 413
    return v3

    #@1d
    .line 416
    :cond_3
    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@1f
    if-eqz v1, :cond_4

    #@21
    .line 417
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@23
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@25
    if-eq v1, v2, :cond_5

    #@27
    .line 419
    :cond_4
    return v3

    #@28
    .line 418
    :cond_5
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2a
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@2c
    invoke-virtual {v1, v2}, Landroid/icu/util/SimpleTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 425
    :cond_6
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@34
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@36
    if-ne v1, v2, :cond_7

    #@38
    .line 426
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@3a
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@3c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_7

    #@42
    .line 427
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@44
    iget v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@46
    if-eq v1, v2, :cond_8

    #@48
    .line 430
    :cond_7
    return v3

    #@49
    .line 428
    :cond_8
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@4b
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@4d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_7

    #@53
    .line 429
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@55
    iget-object v2, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@57
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_7

    #@5d
    .line 432
    return v4
.end method

.method public hashCode()I
    .locals 9

    #@0
    .prologue
    .line 918
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@2
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@4
    ushr-int/lit8 v3, v3, 0x4

    #@6
    .line 919
    iget v4, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@8
    .line 918
    add-int/2addr v3, v4

    #@9
    xor-int/2addr v2, v3

    #@a
    .line 919
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@c
    ushr-int/lit8 v3, v3, 0x6

    #@e
    .line 920
    iget v4, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@10
    .line 919
    add-int/2addr v3, v4

    #@11
    .line 918
    xor-int/2addr v2, v3

    #@12
    int-to-long v4, v2

    #@13
    .line 920
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@15
    ushr-int/lit8 v2, v2, 0x8

    #@17
    int-to-long v2, v2

    #@18
    .line 921
    iget-wide v6, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@1a
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1d
    move-result-wide v6

    #@1e
    .line 920
    add-long/2addr v6, v2

    #@1f
    .line 922
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@21
    if-nez v2, :cond_0

    #@23
    const/4 v2, 0x0

    #@24
    :goto_0
    int-to-long v2, v2

    #@25
    .line 920
    add-long/2addr v2, v6

    #@26
    .line 923
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    #@29
    move-result v6

    #@2a
    int-to-long v6, v6

    #@2b
    .line 920
    add-long/2addr v2, v6

    #@2c
    .line 918
    xor-long/2addr v2, v4

    #@2d
    long-to-int v1, v2

    #@2e
    .line 924
    .local v1, "ret":I
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 925
    const/4 v0, 0x0

    #@33
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@35
    array-length v2, v2

    #@36
    if-ge v0, v2, :cond_1

    #@38
    .line 926
    int-to-long v2, v1

    #@39
    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@3b
    aget-wide v4, v4, v0

    #@3d
    iget-object v6, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@3f
    aget-wide v6, v6, v0

    #@41
    const/16 v8, 0x8

    #@43
    ushr-long/2addr v6, v8

    #@44
    xor-long/2addr v4, v6

    #@45
    add-long/2addr v2, v4

    #@46
    long-to-int v1, v2

    #@47
    .line 925
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 922
    .end local v0    # "i":I
    .end local v1    # "ret":I
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@4c
    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->hashCode()I

    #@4f
    move-result v2

    #@50
    goto :goto_0

    #@51
    .line 929
    .restart local v1    # "ret":I
    :cond_1
    const/4 v0, 0x0

    #@52
    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@54
    array-length v2, v2

    #@55
    if-ge v0, v2, :cond_2

    #@57
    .line 930
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@59
    aget v2, v2, v0

    #@5b
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@5d
    aget v3, v3, v0

    #@5f
    ushr-int/lit8 v3, v3, 0x8

    #@61
    xor-int/2addr v2, v3

    #@62
    add-int/2addr v1, v2

    #@63
    .line 929
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_2

    #@66
    .line 932
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@68
    if-eqz v2, :cond_3

    #@6a
    .line 933
    const/4 v0, 0x0

    #@6b
    :goto_3
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@6d
    array-length v2, v2

    #@6e
    if-ge v0, v2, :cond_3

    #@70
    .line 934
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@72
    aget-byte v2, v2, v0

    #@74
    and-int/lit16 v2, v2, 0xff

    #@76
    add-int/2addr v1, v2

    #@77
    .line 933
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_3

    #@7a
    .line 937
    :cond_3
    return v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 385
    const/4 v3, 0x2

    #@3
    new-array v0, v3, [I

    #@5
    .line 386
    .local v0, "temp":[I
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@8
    move-result-wide v4

    #@9
    invoke-virtual {p0, v4, v5, v2, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    #@c
    .line 387
    aget v3, v0, v1

    #@e
    if-eqz v3, :cond_0

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    move v1, v2

    #@12
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1270
    iget-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    #@2
    return v0
.end method

.method public observesDaylightTime()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    .line 342
    .local v0, "current":J
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@8
    if-eqz v5, :cond_1

    #@a
    .line 343
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@c
    invoke-virtual {v5}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 344
    return v11

    #@13
    .line 345
    :cond_0
    long-to-double v6, v0

    #@14
    iget-wide v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@16
    cmpl-double v5, v6, v8

    #@18
    if-ltz v5, :cond_1

    #@1a
    .line 346
    return v10

    #@1b
    .line 351
    :cond_1
    const-wide/16 v6, 0x3e8

    #@1d
    invoke-static {v0, v1, v6, v7}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    #@20
    move-result-wide v2

    #@21
    .line 352
    .local v2, "currentSec":J
    iget v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@23
    add-int/lit8 v4, v5, -0x1

    #@25
    .line 353
    .local v4, "trsIdx":I
    invoke-direct {p0, v4}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 354
    return v11

    #@2c
    .line 363
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@2e
    .line 356
    :cond_3
    if-ltz v4, :cond_4

    #@30
    .line 357
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@32
    aget-wide v6, v5, v4

    #@34
    cmp-long v5, v6, v2

    #@36
    if-gtz v5, :cond_5

    #@38
    .line 365
    :cond_4
    return v10

    #@39
    .line 360
    :cond_5
    add-int/lit8 v5, v4, -0x1

    #@3b
    invoke-direct {p0, v5}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_2

    #@41
    .line 361
    return v11
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 650
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 651
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify a frozen OlsonTimeZone instance."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 655
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@12
    if-nez v0, :cond_3

    #@14
    .line 656
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@1e
    .line 657
    sget-boolean v0, Landroid/icu/impl/OlsonTimeZone;->-assertionsDisabled:Z

    #@20
    if-nez v0, :cond_2

    #@22
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@24
    if-eqz v0, :cond_1

    #@26
    const/4 v0, 0x1

    #@27
    :goto_0
    if-nez v0, :cond_2

    #@29
    new-instance v0, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v0

    #@2f
    :cond_1
    move v0, v1

    #@30
    goto :goto_0

    #@31
    .line 658
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@33
    if-nez v0, :cond_3

    #@35
    .line 660
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    #@3b
    .line 664
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@3d
    if-eqz v0, :cond_4

    #@3f
    .line 665
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@41
    invoke-virtual {v0, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    #@44
    .line 667
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    #@47
    .line 668
    iput-boolean v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    #@49
    .line 649
    return-void
.end method

.method public setRawOffset(I)V
    .locals 24
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    #@3
    move-result v20

    #@4
    if-eqz v20, :cond_0

    #@6
    .line 173
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v21, "Attempt to modify a frozen OlsonTimeZone instance."

    #@b
    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v20

    #@f
    .line 176
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getRawOffset()I

    #@12
    move-result v20

    #@13
    move/from16 v0, v20

    #@15
    move/from16 v1, p1

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 177
    return-void

    #@1a
    .line 179
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1d
    move-result-wide v8

    #@1e
    .line 181
    .local v8, "current":J
    long-to-double v0, v8

    #@1f
    move-wide/from16 v20, v0

    #@21
    move-object/from16 v0, p0

    #@23
    iget-wide v0, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@25
    move-wide/from16 v22, v0

    #@27
    cmpg-double v20, v20, v22

    #@29
    if-gez v20, :cond_7

    #@2b
    .line 182
    new-instance v18, Landroid/icu/util/SimpleTimeZone;

    #@2d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    #@30
    move-result-object v20

    #@31
    move-object/from16 v0, v18

    #@33
    move/from16 v1, p1

    #@35
    move-object/from16 v2, v20

    #@37
    invoke-direct {v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@3a
    .line 184
    .local v18, "stz":Landroid/icu/util/SimpleTimeZone;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->useDaylightTime()Z

    #@3d
    move-result v6

    #@3e
    .line 185
    .local v6, "bDst":Z
    if-eqz v6, :cond_3

    #@40
    .line 186
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v8, v9}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    #@45
    move-result-object v7

    #@46
    .line 187
    .local v7, "currentRules":[Landroid/icu/util/TimeZoneRule;
    array-length v0, v7

    #@47
    move/from16 v20, v0

    #@49
    const/16 v21, 0x3

    #@4b
    move/from16 v0, v20

    #@4d
    move/from16 v1, v21

    #@4f
    if-eq v0, v1, :cond_2

    #@51
    .line 192
    const/16 v20, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    move/from16 v1, v20

    #@57
    invoke-virtual {v0, v8, v9, v1}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@5a
    move-result-object v19

    #@5b
    .line 193
    .local v19, "tzt":Landroid/icu/util/TimeZoneTransition;
    if-eqz v19, :cond_2

    #@5d
    .line 194
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@60
    move-result-wide v20

    #@61
    const-wide/16 v22, 0x1

    #@63
    sub-long v20, v20, v22

    #@65
    move-object/from16 v0, p0

    #@67
    move-wide/from16 v1, v20

    #@69
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    #@6c
    move-result-object v7

    #@6d
    .line 197
    .end local v19    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :cond_2
    array-length v0, v7

    #@6e
    move/from16 v20, v0

    #@70
    const/16 v21, 0x3

    #@72
    move/from16 v0, v20

    #@74
    move/from16 v1, v21

    #@76
    if-ne v0, v1, :cond_6

    #@78
    .line 198
    const/16 v20, 0x1

    #@7a
    aget-object v20, v7, v20

    #@7c
    move-object/from16 v0, v20

    #@7e
    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    #@80
    move/from16 v20, v0

    #@82
    .line 197
    if-eqz v20, :cond_6

    #@84
    .line 199
    const/16 v20, 0x2

    #@86
    aget-object v20, v7, v20

    #@88
    move-object/from16 v0, v20

    #@8a
    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    #@8c
    move/from16 v20, v0

    #@8e
    .line 197
    if-eqz v20, :cond_6

    #@90
    .line 201
    const/16 v20, 0x1

    #@92
    aget-object v14, v7, v20

    #@94
    check-cast v14, Landroid/icu/util/AnnualTimeZoneRule;

    #@96
    .line 202
    .local v14, "r1":Landroid/icu/util/AnnualTimeZoneRule;
    const/16 v20, 0x2

    #@98
    aget-object v15, v7, v20

    #@9a
    check-cast v15, Landroid/icu/util/AnnualTimeZoneRule;

    #@9c
    .line 204
    .local v15, "r2":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@9f
    move-result v20

    #@a0
    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@a3
    move-result v21

    #@a4
    add-int v12, v20, v21

    #@a6
    .line 205
    .local v12, "offset1":I
    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@a9
    move-result v20

    #@aa
    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@ad
    move-result v21

    #@ae
    add-int v13, v20, v21

    #@b0
    .line 207
    .local v13, "offset2":I
    if-le v12, v13, :cond_5

    #@b2
    .line 208
    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@b5
    move-result-object v17

    #@b6
    .line 209
    .local v17, "start":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@b9
    move-result-object v10

    #@ba
    .line 210
    .local v10, "end":Landroid/icu/util/DateTimeRule;
    sub-int v16, v12, v13

    #@bc
    .line 217
    .local v16, "sav":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@bf
    move-result v20

    #@c0
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    #@c3
    move-result v21

    #@c4
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@c7
    move-result v22

    #@c8
    .line 218
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    #@cb
    move-result v23

    #@cc
    .line 217
    move-object/from16 v0, v18

    #@ce
    move/from16 v1, v20

    #@d0
    move/from16 v2, v21

    #@d2
    move/from16 v3, v22

    #@d4
    move/from16 v4, v23

    #@d6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    #@d9
    .line 219
    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    #@dc
    move-result v20

    #@dd
    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    #@e0
    move-result v21

    #@e1
    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    #@e4
    move-result v22

    #@e5
    .line 220
    invoke-virtual {v10}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    #@e8
    move-result v23

    #@e9
    .line 219
    move-object/from16 v0, v18

    #@eb
    move/from16 v1, v20

    #@ed
    move/from16 v2, v21

    #@ef
    move/from16 v3, v22

    #@f1
    move/from16 v4, v23

    #@f3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    #@f6
    .line 222
    move-object/from16 v0, v18

    #@f8
    move/from16 v1, v16

    #@fa
    invoke-virtual {v0, v1}, Landroid/icu/util/SimpleTimeZone;->setDSTSavings(I)V

    #@fd
    .line 235
    .end local v7    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .end local v10    # "end":Landroid/icu/util/DateTimeRule;
    .end local v12    # "offset1":I
    .end local v13    # "offset2":I
    .end local v14    # "r1":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v15    # "r2":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v16    # "sav":I
    .end local v17    # "start":Landroid/icu/util/DateTimeRule;
    :cond_3
    :goto_1
    const/16 v20, 0x0

    #@ff
    move-object/from16 v0, v20

    #@101
    invoke-static {v8, v9, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@104
    move-result-object v11

    #@105
    .line 237
    .local v11, "fields":[I
    const/16 v20, 0x0

    #@107
    aget v20, v11, v20

    #@109
    move/from16 v0, v20

    #@10b
    move-object/from16 v1, p0

    #@10d
    iput v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@10f
    .line 238
    const/16 v20, 0x0

    #@111
    aget v20, v11, v20

    #@113
    const/16 v21, 0x0

    #@115
    const/16 v22, 0x1

    #@117
    invoke-static/range {v20 .. v22}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@11a
    move-result-wide v20

    #@11b
    move-wide/from16 v0, v20

    #@11d
    long-to-double v0, v0

    #@11e
    move-wide/from16 v20, v0

    #@120
    move-wide/from16 v0, v20

    #@122
    move-object/from16 v2, p0

    #@124
    iput-wide v0, v2, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@126
    .line 240
    if-eqz v6, :cond_4

    #@128
    .line 243
    move-object/from16 v0, p0

    #@12a
    iget v0, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@12c
    move/from16 v20, v0

    #@12e
    move-object/from16 v0, v18

    #@130
    move/from16 v1, v20

    #@132
    invoke-virtual {v0, v1}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    #@135
    .line 246
    :cond_4
    move-object/from16 v0, v18

    #@137
    move-object/from16 v1, p0

    #@139
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@13b
    .line 252
    .end local v6    # "bDst":Z
    .end local v11    # "fields":[I
    .end local v18    # "stz":Landroid/icu/util/SimpleTimeZone;
    :goto_2
    const/16 v20, 0x0

    #@13d
    move/from16 v0, v20

    #@13f
    move-object/from16 v1, p0

    #@141
    iput-boolean v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    #@143
    .line 171
    return-void

    #@144
    .line 212
    .restart local v6    # "bDst":Z
    .restart local v7    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .restart local v12    # "offset1":I
    .restart local v13    # "offset2":I
    .restart local v14    # "r1":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v15    # "r2":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v18    # "stz":Landroid/icu/util/SimpleTimeZone;
    :cond_5
    invoke-virtual {v15}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@147
    move-result-object v17

    #@148
    .line 213
    .restart local v17    # "start":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v14}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@14b
    move-result-object v10

    #@14c
    .line 214
    .restart local v10    # "end":Landroid/icu/util/DateTimeRule;
    sub-int v16, v13, v12

    #@14e
    .restart local v16    # "sav":I
    goto/16 :goto_0

    #@150
    .line 230
    .end local v10    # "end":Landroid/icu/util/DateTimeRule;
    .end local v12    # "offset1":I
    .end local v13    # "offset2":I
    .end local v14    # "r1":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v15    # "r2":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v16    # "sav":I
    .end local v17    # "start":Landroid/icu/util/DateTimeRule;
    :cond_6
    const/16 v20, 0x0

    #@152
    const/16 v21, 0x1

    #@154
    const/16 v22, 0x0

    #@156
    move-object/from16 v0, v18

    #@158
    move/from16 v1, v20

    #@15a
    move/from16 v2, v21

    #@15c
    move/from16 v3, v22

    #@15e
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    #@161
    .line 231
    const/16 v20, 0xb

    #@163
    const/16 v21, 0x1f

    #@165
    const v22, 0x5265bff

    #@168
    move-object/from16 v0, v18

    #@16a
    move/from16 v1, v20

    #@16c
    move/from16 v2, v21

    #@16e
    move/from16 v3, v22

    #@170
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    #@173
    goto :goto_1

    #@174
    .line 249
    .end local v6    # "bDst":Z
    .end local v7    # "currentRules":[Landroid/icu/util/TimeZoneRule;
    .end local v18    # "stz":Landroid/icu/util/SimpleTimeZone;
    :cond_7
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@178
    move-object/from16 v20, v0

    #@17a
    move-object/from16 v0, v20

    #@17c
    move/from16 v1, p1

    #@17e
    invoke-virtual {v0, v1}, Landroid/icu/util/SimpleTimeZone;->setRawOffset(I)V

    #@181
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x5d

    #@2
    const/16 v5, 0x2c

    #@4
    const/16 v4, 0x5b

    #@6
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 782
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 783
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 784
    const-string/jumbo v2, "transitionCount="

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 785
    const-string/jumbo v2, ",typeCount="

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 786
    const-string/jumbo v2, ",transitionTimes="

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 787
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 788
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 789
    const/4 v1, 0x0

    #@3b
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@3d
    array-length v2, v2

    #@3e
    if-ge v1, v2, :cond_1

    #@40
    .line 790
    if-lez v1, :cond_0

    #@42
    .line 791
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 793
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@47
    aget-wide v2, v2, v1

    #@49
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 789
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 795
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 799
    .end local v1    # "i":I
    :goto_1
    const-string/jumbo v2, ",typeOffsets="

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 800
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@5e
    if-eqz v2, :cond_6

    #@60
    .line 801
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    .line 802
    const/4 v1, 0x0

    #@64
    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@66
    array-length v2, v2

    #@67
    if-ge v1, v2, :cond_4

    #@69
    .line 803
    if-lez v1, :cond_2

    #@6b
    .line 804
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    .line 806
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    #@70
    aget v2, v2, v1

    #@72
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 802
    add-int/lit8 v1, v1, 0x1

    #@7b
    goto :goto_2

    #@7c
    .line 797
    .end local v1    # "i":I
    :cond_3
    const-string/jumbo v2, "null"

    #@7f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    goto :goto_1

    #@83
    .line 808
    .restart local v1    # "i":I
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    .line 812
    .end local v1    # "i":I
    :goto_3
    const-string/jumbo v2, ",typeMapData="

    #@89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 813
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@8e
    if-eqz v2, :cond_7

    #@90
    .line 814
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@93
    .line 815
    const/4 v1, 0x0

    #@94
    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@96
    array-length v2, v2

    #@97
    if-ge v1, v2, :cond_8

    #@99
    .line 816
    if-lez v1, :cond_5

    #@9b
    .line 817
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9e
    .line 819
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    #@a0
    aget-byte v2, v2, v1

    #@a2
    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 815
    add-int/lit8 v1, v1, 0x1

    #@ab
    goto :goto_4

    #@ac
    .line 810
    .end local v1    # "i":I
    :cond_6
    const-string/jumbo v2, "null"

    #@af
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_3

    #@b3
    .line 822
    :cond_7
    const-string/jumbo v2, "null"

    #@b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 824
    :cond_8
    const-string/jumbo v2, ",finalStartYear="

    #@bc
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v2

    #@c0
    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    .line 825
    const-string/jumbo v2, ",finalStartMillis="

    #@c8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    iget-wide v4, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@ce
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@d1
    .line 826
    const-string/jumbo v2, ",finalZone="

    #@d4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@da
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    .line 827
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e0
    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v2

    #@e4
    return-object v2
.end method

.method public useDaylightTime()Z
    .locals 12

    #@0
    .prologue
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 311
    .local v0, "current":J
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@6
    if-eqz v8, :cond_1

    #@8
    long-to-double v8, v0

    #@9
    iget-wide v10, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    #@b
    cmpl-double v8, v8, v10

    #@d
    if-ltz v8, :cond_1

    #@f
    .line 312
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@11
    if-eqz v8, :cond_0

    #@13
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    #@15
    invoke-virtual {v8}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    #@18
    move-result v8

    #@19
    :goto_0
    return v8

    #@1a
    :cond_0
    const/4 v8, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 315
    :cond_1
    const/4 v8, 0x0

    #@1d
    invoke-static {v0, v1, v8}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@20
    move-result-object v2

    #@21
    .line 318
    .local v2, "fields":[I
    const/4 v8, 0x0

    #@22
    aget v8, v2, v8

    #@24
    const/4 v9, 0x0

    #@25
    const/4 v10, 0x1

    #@26
    invoke-static {v8, v9, v10}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@29
    move-result-wide v8

    #@2a
    const-wide/32 v10, 0x15180

    #@2d
    mul-long v6, v8, v10

    #@2f
    .line 319
    .local v6, "start":J
    const/4 v8, 0x0

    #@30
    aget v8, v2, v8

    #@32
    add-int/lit8 v8, v8, 0x1

    #@34
    const/4 v9, 0x0

    #@35
    const/4 v10, 0x1

    #@36
    invoke-static {v8, v9, v10}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@39
    move-result-wide v8

    #@3a
    const-wide/32 v10, 0x15180

    #@3d
    mul-long v4, v8, v10

    #@3f
    .line 323
    .local v4, "limit":J
    const/4 v3, 0x0

    #@40
    .local v3, "i":I
    :goto_1
    iget v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    #@42
    if-ge v3, v8, :cond_2

    #@44
    .line 324
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@46
    aget-wide v8, v8, v3

    #@48
    cmp-long v8, v8, v4

    #@4a
    if-ltz v8, :cond_3

    #@4c
    .line 332
    :cond_2
    const/4 v8, 0x0

    #@4d
    return v8

    #@4e
    .line 327
    :cond_3
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@50
    aget-wide v8, v8, v3

    #@52
    cmp-long v8, v8, v6

    #@54
    if-ltz v8, :cond_5

    #@56
    invoke-direct {p0, v3}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@59
    move-result v8

    #@5a
    if-eqz v8, :cond_5

    #@5c
    .line 329
    :cond_4
    const/4 v8, 0x1

    #@5d
    return v8

    #@5e
    .line 328
    :cond_5
    iget-object v8, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    #@60
    aget-wide v8, v8, v3

    #@62
    cmp-long v8, v8, v6

    #@64
    if-lez v8, :cond_6

    #@66
    if-lez v3, :cond_6

    #@68
    add-int/lit8 v8, v3, -0x1

    #@6a
    invoke-direct {p0, v8}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    #@6d
    move-result v8

    #@6e
    if-nez v8, :cond_4

    #@70
    .line 323
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@72
    goto :goto_1
.end method
