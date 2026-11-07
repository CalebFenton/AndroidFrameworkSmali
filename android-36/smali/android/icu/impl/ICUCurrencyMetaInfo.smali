.class public Landroid/icu/impl/ICUCurrencyMetaInfo;
.super Landroid/icu/text/CurrencyMetaInfo;
.source "ICUCurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    }
.end annotation


# static fields
.field private static final blacklist Currency:I = 0x2

.field private static final blacklist Date:I = 0x4

.field private static final blacklist Everything:I = 0x7fffffff

.field private static final blacklist MASK:J = 0xffffffffL

.field private static final blacklist Region:I = 0x1

.field private static final blacklist Tender:I = 0x8


# instance fields
.field private blacklist digitInfo:Landroid/icu/impl/ICUResourceBundle;

.field private blacklist regionInfo:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    .line 30
    const-string v0, "supplementalData"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudata/curr"

    invoke-static {v2, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 33
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "CurrencyMap"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    .line 34
    const-string v1, "CurrencyMeta"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    .line 35
    return-void
.end method

.method private blacklist collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 8
    .param p2, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
            "TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 78
    .local p1, "collector":Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;, "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<TT;>;"
    if-nez p2, :cond_6

    .line 79
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p2

    .line 81
    :cond_6
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collects()I

    move-result v0

    .line 82
    .local v0, "needed":I
    iget-object v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 83
    or-int/lit8 v0, v0, 0x1

    .line 85
    :cond_10
    iget-object v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 86
    or-int/lit8 v0, v0, 0x2

    .line 88
    :cond_16
    iget-wide v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_29

    iget-wide v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2b

    .line 89
    :cond_29
    or-int/lit8 v0, v0, 0x4

    .line 91
    :cond_2b
    iget-boolean v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v1, :cond_31

    .line 92
    or-int/lit8 v0, v0, 0x8

    .line 95
    :cond_31
    if-eqz v0, :cond_5a

    .line 96
    iget-object v1, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 97
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    iget-object v2, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 98
    .local v1, "b":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_44

    .line 99
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    .line 101
    .end local v1    # "b":Landroid/icu/impl/ICUResourceBundle;
    :cond_44
    goto :goto_5a

    .line 102
    :cond_45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 103
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 108
    .end local v1    # "i":I
    :cond_5a
    :goto_5a
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V
    .registers 29
    .param p2, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .param p3, "needed"    # I
    .param p4, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
            "TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            "I",
            "Landroid/icu/impl/ICUResourceBundle;",
            ")V"
        }
    .end annotation

    .line 114
    .local p1, "collector":Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;, "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "region":Ljava/lang/String;
    const/4 v12, 0x1

    if-ne v2, v12, :cond_20

    .line 116
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v14

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v13, p1

    invoke-interface/range {v13 .. v21}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    .line 117
    return-void

    .line 120
    :cond_20
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_22
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-ge v10, v3, :cond_ce

    .line 121
    move-object/from16 v13, p4

    invoke-virtual {v13, v10}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v14

    .line 122
    .local v14, "r":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v14}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    if-nez v3, :cond_37

    .line 126
    move v15, v12

    goto/16 :goto_c9

    .line 128
    :cond_37
    const/4 v3, 0x0

    .line 129
    .local v3, "currency":Ljava/lang/String;
    const-wide/high16 v5, -0x8000000000000000L

    .line 130
    .local v5, "from":J
    const-wide v7, 0x7fffffffffffffffL

    .line 131
    .local v7, "to":J
    const/4 v9, 0x1

    .line 133
    .local v9, "tender":Z
    and-int/lit8 v11, v2, 0x2

    if-eqz v11, :cond_5d

    .line 134
    const-string v11, "id"

    invoke-virtual {v14, v11}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v11

    .line 135
    .local v11, "currBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v15, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v15, :cond_5d

    iget-object v15, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5d

    .line 137
    move v15, v12

    goto/16 :goto_c9

    .line 141
    .end local v11    # "currBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_5d
    and-int/lit8 v11, v2, 0x4

    const/4 v15, 0x0

    if-eqz v11, :cond_93

    .line 142
    const-string v11, "from"

    invoke-virtual {v14, v11}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v11

    const-wide/high16 v12, -0x8000000000000000L

    invoke-direct {v0, v11, v12, v13, v15}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v5

    .line 143
    const-string v11, "to"

    invoke-virtual {v14, v11}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v11

    const-wide v12, 0x7fffffffffffffffL

    const/4 v15, 0x1

    invoke-direct {v0, v11, v12, v13, v15}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    move-result-wide v7

    .line 148
    iget-wide v11, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v11, v11, v7

    if-lez v11, :cond_85

    .line 149
    goto :goto_c9

    .line 151
    :cond_85
    iget-wide v11, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v11, v11, v5

    if-gez v11, :cond_8c

    .line 152
    goto :goto_c9

    .line 151
    :cond_8c
    move-wide/from16 v22, v5

    move v5, v9

    move-wide v8, v7

    move-wide/from16 v6, v22

    goto :goto_9a

    .line 141
    :cond_93
    move v15, v12

    move-wide/from16 v22, v5

    move v5, v9

    move-wide v8, v7

    move-wide/from16 v6, v22

    .line 155
    .end local v7    # "to":J
    .end local v9    # "tender":Z
    .local v5, "tender":Z
    .local v6, "from":J
    .local v8, "to":J
    :goto_9a
    and-int/lit8 v11, v2, 0x8

    if-eqz v11, :cond_c2

    .line 156
    const-string v11, "tender"

    invoke-virtual {v14, v11}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v11

    .line 157
    .local v11, "tenderBundle":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v11, :cond_b6

    const-string v12, "true"

    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b3

    goto :goto_b6

    :cond_b3
    const/16 v17, 0x0

    goto :goto_b8

    :cond_b6
    :goto_b6
    move/from16 v17, v15

    .line 158
    .end local v5    # "tender":Z
    .local v17, "tender":Z
    :goto_b8
    iget-boolean v5, v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-eqz v5, :cond_bf

    if-nez v17, :cond_bf

    .line 159
    goto :goto_c9

    .line 164
    .end local v11    # "tenderBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_bf
    move/from16 v11, v17

    goto :goto_c3

    .line 155
    .end local v17    # "tender":Z
    .restart local v5    # "tender":Z
    :cond_c2
    move v11, v5

    .line 164
    .end local v5    # "tender":Z
    .local v11, "tender":Z
    :goto_c3
    move-object v5, v3

    move-object/from16 v3, p1

    .end local v3    # "currency":Ljava/lang/String;
    .local v5, "currency":Ljava/lang/String;
    invoke-interface/range {v3 .. v11}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    .line 120
    .end local v5    # "currency":Ljava/lang/String;
    .end local v6    # "from":J
    .end local v8    # "to":J
    .end local v11    # "tender":Z
    .end local v14    # "r":Landroid/icu/impl/ICUResourceBundle;
    :goto_c9
    add-int/lit8 v10, v10, 0x1

    move v12, v15

    goto/16 :goto_22

    .line 166
    .end local v10    # "i":I
    :cond_ce
    return-void
.end method

.method private blacklist getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J
    .registers 12
    .param p1, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "defaultValue"    # J
    .param p4, "endOfDay"    # Z

    .line 170
    if-nez p1, :cond_3

    .line 171
    return-wide p2

    .line 173
    :cond_3
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object v0

    .line 174
    .local v0, "values":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method public blacklist currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 4
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo-IA;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 54
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v0

    return-object v0
.end method

.method public blacklist currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .registers 8
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyPurpose"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 59
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 60
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    if-nez v0, :cond_10

    .line 61
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    const-string v2, "DEFAULT"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 63
    :cond_10
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object v1

    .line 64
    .local v1, "data":[I
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p2, v2, :cond_24

    .line 65
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 v3, 0x2

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object v2

    .line 66
    :cond_24
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_34

    .line 67
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget v4, v1, v4

    aget v3, v1, v3

    invoke-direct {v2, v4, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object v2

    .line 69
    :cond_34
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    aget v4, v1, v4

    aget v3, v1, v3

    invoke-direct {v2, v4, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    return-object v2
.end method

.method public blacklist currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 4
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo-IA;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 4
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo-IA;)V

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
