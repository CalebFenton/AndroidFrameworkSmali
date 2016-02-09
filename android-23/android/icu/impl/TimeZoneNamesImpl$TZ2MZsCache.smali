.class Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZ2MZsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>()V

    #@3
    return-void
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 18
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 626
    const/4 v10, 0x0

    #@1
    .local v10, "year":I
    const/4 v8, 0x0

    #@2
    .local v8, "month":I
    const/4 v4, 0x0

    #@3
    .local v4, "day":I
    const/4 v5, 0x0

    #@4
    .local v5, "hour":I
    const/4 v7, 0x0

    #@5
    .line 631
    .local v7, "min":I
    const/4 v6, 0x0

    #@6
    .local v6, "idx":I
    :goto_0
    const/4 v11, 0x3

    #@7
    if-gt v6, v11, :cond_1

    #@9
    .line 632
    move-object/from16 v0, p0

    #@b
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v11

    #@f
    add-int/lit8 v9, v11, -0x30

    #@11
    .line 633
    .local v9, "n":I
    if-ltz v9, :cond_0

    #@13
    const/16 v11, 0xa

    #@15
    if-ge v9, v11, :cond_0

    #@17
    .line 634
    mul-int/lit8 v11, v10, 0xa

    #@19
    add-int v10, v11, v9

    #@1b
    .line 631
    add-int/lit8 v6, v6, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 636
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v12, "Bad year"

    #@23
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v11

    #@27
    .line 640
    .end local v9    # "n":I
    :cond_1
    const/4 v6, 0x5

    #@28
    :goto_1
    const/4 v11, 0x6

    #@29
    if-gt v6, v11, :cond_3

    #@2b
    .line 641
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v11

    #@31
    add-int/lit8 v9, v11, -0x30

    #@33
    .line 642
    .restart local v9    # "n":I
    if-ltz v9, :cond_2

    #@35
    const/16 v11, 0xa

    #@37
    if-ge v9, v11, :cond_2

    #@39
    .line 643
    mul-int/lit8 v11, v8, 0xa

    #@3b
    add-int v8, v11, v9

    #@3d
    .line 640
    add-int/lit8 v6, v6, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 645
    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@42
    const-string/jumbo v12, "Bad month"

    #@45
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v11

    #@49
    .line 649
    .end local v9    # "n":I
    :cond_3
    const/16 v6, 0x8

    #@4b
    :goto_2
    const/16 v11, 0x9

    #@4d
    if-gt v6, v11, :cond_5

    #@4f
    .line 650
    move-object/from16 v0, p0

    #@51
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@54
    move-result v11

    #@55
    add-int/lit8 v9, v11, -0x30

    #@57
    .line 651
    .restart local v9    # "n":I
    if-ltz v9, :cond_4

    #@59
    const/16 v11, 0xa

    #@5b
    if-ge v9, v11, :cond_4

    #@5d
    .line 652
    mul-int/lit8 v11, v4, 0xa

    #@5f
    add-int v4, v11, v9

    #@61
    .line 649
    add-int/lit8 v6, v6, 0x1

    #@63
    goto :goto_2

    #@64
    .line 654
    :cond_4
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@66
    const-string/jumbo v12, "Bad day"

    #@69
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v11

    #@6d
    .line 658
    .end local v9    # "n":I
    :cond_5
    const/16 v6, 0xb

    #@6f
    :goto_3
    const/16 v11, 0xc

    #@71
    if-gt v6, v11, :cond_7

    #@73
    .line 659
    move-object/from16 v0, p0

    #@75
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@78
    move-result v11

    #@79
    add-int/lit8 v9, v11, -0x30

    #@7b
    .line 660
    .restart local v9    # "n":I
    if-ltz v9, :cond_6

    #@7d
    const/16 v11, 0xa

    #@7f
    if-ge v9, v11, :cond_6

    #@81
    .line 661
    mul-int/lit8 v11, v5, 0xa

    #@83
    add-int v5, v11, v9

    #@85
    .line 658
    add-int/lit8 v6, v6, 0x1

    #@87
    goto :goto_3

    #@88
    .line 663
    :cond_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@8a
    const-string/jumbo v12, "Bad hour"

    #@8d
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@90
    throw v11

    #@91
    .line 667
    .end local v9    # "n":I
    :cond_7
    const/16 v6, 0xe

    #@93
    :goto_4
    const/16 v11, 0xf

    #@95
    if-gt v6, v11, :cond_9

    #@97
    .line 668
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@9c
    move-result v11

    #@9d
    add-int/lit8 v9, v11, -0x30

    #@9f
    .line 669
    .restart local v9    # "n":I
    if-ltz v9, :cond_8

    #@a1
    const/16 v11, 0xa

    #@a3
    if-ge v9, v11, :cond_8

    #@a5
    .line 670
    mul-int/lit8 v11, v7, 0xa

    #@a7
    add-int v7, v11, v9

    #@a9
    .line 667
    add-int/lit8 v6, v6, 0x1

    #@ab
    goto :goto_4

    #@ac
    .line 672
    :cond_8
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@ae
    const-string/jumbo v12, "Bad minute"

    #@b1
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v11

    #@b5
    .line 676
    .end local v9    # "n":I
    :cond_9
    add-int/lit8 v11, v8, -0x1

    #@b7
    invoke-static {v10, v11, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@ba
    move-result-wide v12

    #@bb
    const-wide/32 v14, 0x5265c00

    #@be
    mul-long/2addr v12, v14

    #@bf
    .line 677
    int-to-long v14, v5

    #@c0
    const-wide/32 v16, 0x36ee80

    #@c3
    mul-long v14, v14, v16

    #@c5
    .line 676
    add-long/2addr v12, v14

    #@c6
    .line 677
    int-to-long v14, v7

    #@c7
    const-wide/32 v16, 0xea60

    #@ca
    mul-long v14, v14, v16

    #@cc
    .line 676
    add-long v2, v12, v14

    #@ce
    .line 678
    .local v2, "date":J
    return-wide v2
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 585
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 586
    const/4 v14, 0x0

    #@1
    .line 588
    .local v14, "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@4
    const-string/jumbo v19, "metaZones"

    #@7
    move-object/from16 v0, v19

    #@9
    invoke-static {v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@c
    move-result-object v8

    #@d
    .line 589
    .local v8, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v2, "metazoneInfo"

    #@10
    invoke-virtual {v8, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v11

    #@14
    .line 591
    .local v11, "metazoneInfoBundle":Landroid/icu/util/UResourceBundle;
    const/16 v2, 0x2f

    #@16
    const/16 v19, 0x3a

    #@18
    move-object/from16 v0, p2

    #@1a
    move/from16 v1, v19

    #@1c
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1f
    move-result-object v17

    #@20
    .line 593
    .local v17, "tzkey":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v17

    #@22
    invoke-virtual {v11, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@25
    move-result-object v18

    #@26
    .line 595
    .local v18, "zoneBundle":Landroid/icu/util/UResourceBundle;
    new-instance v15, Ljava/util/ArrayList;

    #@28
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@2b
    move-result v2

    #@2c
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 596
    .end local v14    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .local v15, "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    const/4 v10, 0x0

    #@30
    .local v10, "idx":I
    :goto_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@33
    move-result v2

    #@34
    if-ge v10, v2, :cond_1

    #@36
    .line 597
    move-object/from16 v0, v18

    #@38
    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@3b
    move-result-object v13

    #@3c
    .line 598
    .local v13, "mz":Landroid/icu/util/UResourceBundle;
    const/4 v2, 0x0

    #@3d
    invoke-virtual {v13, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 599
    .local v3, "mzid":Ljava/lang/String;
    const-string/jumbo v9, "1970-01-01 00:00"

    #@44
    .line 600
    .local v9, "fromStr":Ljava/lang/String;
    const-string/jumbo v16, "9999-12-31 23:59"

    #@47
    .line 601
    .local v16, "toStr":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@4a
    move-result v2

    #@4b
    const/16 v19, 0x3

    #@4d
    move/from16 v0, v19

    #@4f
    if-ne v2, v0, :cond_0

    #@51
    .line 602
    const/4 v2, 0x1

    #@52
    invoke-virtual {v13, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    .line 603
    const/4 v2, 0x2

    #@57
    invoke-virtual {v13, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@5a
    move-result-object v16

    #@5b
    .line 606
    :cond_0
    invoke-static {v9}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    #@5e
    move-result-wide v4

    #@5f
    .line 607
    .local v4, "from":J
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    #@62
    move-result-wide v6

    #@63
    .line 608
    .local v6, "to":J
    new-instance v2, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    #@65
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;-><init>(Ljava/lang/String;JJ)V

    #@68
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@6b
    .line 596
    add-int/lit8 v10, v10, 0x1

    #@6d
    goto :goto_0

    #@6e
    .end local v3    # "mzid":Ljava/lang/String;
    .end local v4    # "from":J
    .end local v6    # "to":J
    .end local v9    # "fromStr":Ljava/lang/String;
    .end local v13    # "mz":Landroid/icu/util/UResourceBundle;
    .end local v16    # "toStr":Ljava/lang/String;
    :cond_1
    move-object v14, v15

    #@6f
    .line 614
    .end local v10    # "idx":I
    .end local v15    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .end local v18    # "zoneBundle":Landroid/icu/util/UResourceBundle;
    .local v14, "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    :goto_1
    return-object v14

    #@70
    .line 611
    .local v14, "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    :catch_0
    move-exception v12

    #@71
    .line 612
    .end local v14    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .local v12, "mre":Ljava/util/MissingResourceException;
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@74
    move-result-object v14

    #@75
    .local v14, "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    goto :goto_1

    #@76
    .line 611
    .end local v12    # "mre":Ljava/util/MissingResourceException;
    .end local v14    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .restart local v10    # "idx":I
    .restart local v15    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .restart local v18    # "zoneBundle":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v12

    #@77
    .restart local v12    # "mre":Ljava/util/MissingResourceException;
    move-object v14, v15

    #@78
    .end local v15    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    .restart local v14    # "mzMaps":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;>;"
    goto :goto_2
.end method
