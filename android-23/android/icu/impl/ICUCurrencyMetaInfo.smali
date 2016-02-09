.class public Landroid/icu/impl/ICUCurrencyMetaInfo;
.super Landroid/icu/text/CurrencyMetaInfo;
.source "ICUCurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;,
        Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;
    }
.end annotation


# static fields
.field private static final Currency:I = 0x2

.field private static final Date:I = 0x4

.field private static final Everything:I = 0x7fffffff

.field private static final MASK:J = 0xffffffffL

.field private static final Region:I = 0x1

.field private static final Tender:I = 0x8


# instance fields
.field private digitInfo:Landroid/icu/impl/ICUResourceBundle;

.field private regionInfo:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    #@3
    .line 27
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/curr"

    #@6
    const-string/jumbo v2, "supplementalData"

    #@9
    .line 28
    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@b
    .line 26
    invoke-static {v1, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@11
    .line 29
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v1, "CurrencyMap"

    #@14
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    #@1a
    .line 30
    const-string/jumbo v1, "CurrencyMeta"

    #@1d
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    #@23
    .line 25
    return-void
.end method

.method private collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 8
    .param p2, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector",
            "<TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p1, "collector":Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;, "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector<TT;>;"
    if-nez p2, :cond_0

    #@2
    .line 75
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    #@5
    move-result-object p2

    #@6
    .line 77
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collects()I

    #@9
    move-result v2

    #@a
    .line 78
    .local v2, "needed":I
    iget-object v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 79
    or-int/lit8 v2, v2, 0x1

    #@10
    .line 81
    :cond_1
    iget-object v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 82
    or-int/lit8 v2, v2, 0x2

    #@16
    .line 84
    :cond_2
    iget-wide v4, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@18
    const-wide/high16 v6, -0x8000000000000000L

    #@1a
    cmp-long v3, v4, v6

    #@1c
    if-nez v3, :cond_3

    #@1e
    iget-wide v4, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@20
    const-wide v6, 0x7fffffffffffffffL

    #@25
    cmp-long v3, v4, v6

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 85
    :cond_3
    or-int/lit8 v2, v2, 0x4

    #@2b
    .line 87
    :cond_4
    iget-boolean v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@2d
    if-eqz v3, :cond_5

    #@2f
    .line 88
    or-int/lit8 v2, v2, 0x8

    #@31
    .line 91
    :cond_5
    if-eqz v2, :cond_6

    #@33
    .line 92
    iget-object v3, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@35
    if-eqz v3, :cond_7

    #@37
    .line 93
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    #@39
    iget-object v4, p2, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    #@3b
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3e
    move-result-object v0

    #@3f
    .line 94
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v0, :cond_6

    #@41
    .line 95
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    #@44
    .line 104
    .end local v0    # "b":Landroid/icu/impl/ICUResourceBundle;
    :cond_6
    invoke-interface {p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->getList()Ljava/util/List;

    #@47
    move-result-object v3

    #@48
    return-object v3

    #@49
    .line 98
    :cond_7
    const/4 v1, 0x0

    #@4a
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    #@4c
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@4f
    move-result v3

    #@50
    if-ge v1, v3, :cond_6

    #@52
    .line 99
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->regionInfo:Landroid/icu/impl/ICUResourceBundle;

    #@54
    invoke-virtual {v3, v1}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@57
    move-result-object v3

    #@58
    invoke-direct {p0, p1, p2, v2, v3}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V

    #@5b
    .line 98
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_0
.end method

.method private collectRegion(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;ILandroid/icu/impl/ICUResourceBundle;)V
    .locals 17
    .param p2, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .param p3, "needed"    # I
    .param p4, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector",
            "<TT;>;",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            "I",
            "Landroid/icu/impl/ICUResourceBundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p1, "collector":Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;, "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector<TT;>;"
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 111
    .local v4, "region":Ljava/lang/String;
    const/4 v3, 0x1

    #@5
    move/from16 v0, p3

    #@7
    if-ne v0, v3, :cond_0

    #@9
    .line 112
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .end local v4    # "region":Ljava/lang/String;
    const-wide/16 v6, 0x0

    #@f
    const-wide/16 v8, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    const/4 v10, -0x1

    #@13
    const/4 v11, 0x0

    #@14
    move-object/from16 v3, p1

    #@16
    invoke-interface/range {v3 .. v11}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    #@19
    .line 113
    return-void

    #@1a
    .line 116
    .restart local v4    # "region":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    #@1b
    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@1e
    move-result v3

    #@1f
    if-ge v10, v3, :cond_7

    #@21
    .line 117
    move-object/from16 v0, p4

    #@23
    invoke-virtual {v0, v10}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@26
    move-result-object v12

    #@27
    .line 118
    .local v12, "r":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_2

    #@2d
    .line 116
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 124
    :cond_2
    const/4 v5, 0x0

    #@31
    .line 125
    .local v5, "currency":Ljava/lang/String;
    const-wide/high16 v6, -0x8000000000000000L

    #@33
    .line 126
    .local v6, "from":J
    const-wide v8, 0x7fffffffffffffffL

    #@38
    .line 127
    .local v8, "to":J
    const/4 v11, 0x1

    #@39
    .line 129
    .local v11, "tender":Z
    and-int/lit8 v3, p3, 0x2

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 130
    const-string/jumbo v3, "id"

    #@40
    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@43
    move-result-object v2

    #@44
    .line 131
    .local v2, "currBundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 132
    .local v5, "currency":Ljava/lang/String;
    move-object/from16 v0, p2

    #@4a
    iget-object v3, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@4c
    if-eqz v3, :cond_3

    #@4e
    move-object/from16 v0, p2

    #@50
    iget-object v3, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    #@52
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v3

    #@56
    if-eqz v3, :cond_1

    #@58
    .line 137
    .end local v2    # "currBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "currency":Ljava/lang/String;
    :cond_3
    and-int/lit8 v3, p3, 0x4

    #@5a
    if-eqz v3, :cond_4

    #@5c
    .line 138
    const-string/jumbo v3, "from"

    #@5f
    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@62
    move-result-object v3

    #@63
    const-wide/high16 v14, -0x8000000000000000L

    #@65
    const/16 v16, 0x0

    #@67
    move-object/from16 v0, p0

    #@69
    move/from16 v1, v16

    #@6b
    invoke-direct {v0, v3, v14, v15, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    #@6e
    move-result-wide v6

    #@6f
    .line 139
    const-string/jumbo v3, "to"

    #@72
    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@75
    move-result-object v3

    #@76
    const-wide v14, 0x7fffffffffffffffL

    #@7b
    const/16 v16, 0x1

    #@7d
    move-object/from16 v0, p0

    #@7f
    move/from16 v1, v16

    #@81
    invoke-direct {v0, v3, v14, v15, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J

    #@84
    move-result-wide v8

    #@85
    .line 144
    move-object/from16 v0, p2

    #@87
    iget-wide v14, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    #@89
    cmp-long v3, v14, v8

    #@8b
    if-gtz v3, :cond_1

    #@8d
    .line 147
    move-object/from16 v0, p2

    #@8f
    iget-wide v14, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    #@91
    cmp-long v3, v14, v6

    #@93
    if-ltz v3, :cond_1

    #@95
    .line 151
    :cond_4
    and-int/lit8 v3, p3, 0x8

    #@97
    if-eqz v3, :cond_5

    #@99
    .line 152
    const-string/jumbo v3, "tender"

    #@9c
    invoke-virtual {v12, v3}, Landroid/icu/impl/ICUResourceBundle;->at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@9f
    move-result-object v13

    #@a0
    .line 153
    .local v13, "tenderBundle":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v13, :cond_6

    #@a2
    const-string/jumbo v3, "true"

    #@a5
    invoke-virtual {v13}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@a8
    move-result-object v14

    #@a9
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v11

    #@ad
    .line 154
    .end local v11    # "tender":Z
    :goto_2
    move-object/from16 v0, p2

    #@af
    iget-boolean v3, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    #@b1
    if-eqz v3, :cond_5

    #@b3
    if-eqz v11, :cond_1

    #@b5
    .end local v13    # "tenderBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_5
    move-object/from16 v3, p1

    #@b7
    .line 160
    invoke-interface/range {v3 .. v11}, Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;->collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    #@ba
    goto/16 :goto_1

    #@bc
    .line 153
    .restart local v11    # "tender":Z
    .restart local v13    # "tenderBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_6
    const/4 v11, 0x1

    #@bd
    goto :goto_2

    #@be
    .line 108
    .end local v6    # "from":J
    .end local v8    # "to":J
    .end local v11    # "tender":Z
    .end local v12    # "r":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "tenderBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_7
    return-void
.end method

.method private getDate(Landroid/icu/impl/ICUResourceBundle;JZ)J
    .locals 8
    .param p1, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "defaultValue"    # J
    .param p4, "endOfDay"    # Z

    #@0
    .prologue
    .line 166
    if-nez p1, :cond_0

    #@2
    .line 167
    return-wide p2

    #@3
    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    #@6
    move-result-object v0

    #@7
    .line 170
    .local v0, "values":[I
    const/4 v1, 0x0

    #@8
    aget v1, v0, v1

    #@a
    int-to-long v2, v1

    #@b
    const/16 v1, 0x20

    #@d
    shl-long/2addr v2, v1

    #@e
    const/4 v1, 0x1

    #@f
    aget v1, v0, v1

    #@11
    int-to-long v4, v1

    #@12
    const-wide v6, 0xffffffffL

    #@17
    and-long/2addr v4, v6

    #@18
    or-long/2addr v2, v4

    #@19
    return-wide v2
.end method


# virtual methods
.method public currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;)V

    #@6
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 6
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyPurpose"    # Landroid/icu/util/Currency$CurrencyUsage;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 55
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    #@4
    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@7
    move-result-object v0

    #@8
    .line 56
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    if-nez v0, :cond_0

    #@a
    .line 57
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyMetaInfo;->digitInfo:Landroid/icu/impl/ICUResourceBundle;

    #@c
    const-string/jumbo v3, "DEFAULT"

    #@f
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@12
    move-result-object v0

    #@13
    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    #@16
    move-result-object v1

    #@17
    .line 60
    .local v1, "data":[I
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    #@19
    if-ne p2, v2, :cond_1

    #@1b
    .line 61
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@1d
    const/4 v3, 0x2

    #@1e
    aget v3, v1, v3

    #@20
    const/4 v4, 0x3

    #@21
    aget v4, v1, v4

    #@23
    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    #@26
    return-object v2

    #@27
    .line 62
    :cond_1
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@29
    if-ne p2, v2, :cond_2

    #@2b
    .line 63
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@2d
    aget v3, v1, v4

    #@2f
    aget v4, v1, v5

    #@31
    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    #@34
    return-object v2

    #@35
    .line 65
    :cond_2
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@37
    aget v3, v1, v4

    #@39
    aget v4, v1, v5

    #@3b
    invoke-direct {v2, v3, v4}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    #@3e
    return-object v2
.end method

.method public currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;)V

    #@6
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>(Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;)V

    #@6
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo;->collect(Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
