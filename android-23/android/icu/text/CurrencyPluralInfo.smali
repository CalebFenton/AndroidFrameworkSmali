.class public Landroid/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final defaultCurrencyPluralPatternChar:[C

.field private static final serialVersionUID:J = 0x1L

.field private static final tripleCurrencySign:[C

.field private static final tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pluralRules:Landroid/icu/text/PluralRules;

.field private ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/icu/text/CurrencyPluralInfo;

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
    sput-boolean v0, Landroid/icu/text/CurrencyPluralInfo;->-assertionsDisabled:Z

    #@b
    .line 309
    const/4 v0, 0x3

    #@c
    new-array v0, v0, [C

    #@e
    fill-array-data v0, :array_0

    #@11
    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    #@13
    .line 311
    new-instance v0, Ljava/lang/String;

    #@15
    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    #@17
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@1a
    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    #@1c
    .line 314
    const/16 v0, 0x8

    #@1e
    new-array v0, v0, [C

    #@20
    fill-array-data v0, :array_1

    #@23
    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    #@25
    .line 316
    new-instance v0, Ljava/lang/String;

    #@27
    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    #@29
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@2c
    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    #@2e
    .line 38
    return-void

    #@2f
    :cond_0
    const/4 v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 309
    nop

    #@32
    :array_0
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    #@39
    .line 314
    nop

    #@3a
    :array_1
    .array-data 2
        0x0s
        0x2es
        0x23s
        0x23s
        0x20s
        0xa4s
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 321
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@6
    .line 329
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 332
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@a
    .line 47
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@c
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    #@13
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 321
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@6
    .line 329
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 332
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@a
    .line 65
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    #@d
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 321
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@6
    .line 329
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 332
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@a
    .line 56
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    #@11
    .line 55
    return-void
.end method

.method public static getInstance()Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    #@0
    .prologue
    .line 75
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    #@2
    invoke-direct {v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>()V

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 97
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyPluralInfo;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 86
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    #@5
    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "uloc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 267
    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@2
    .line 268
    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 269
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V

    #@b
    .line 266
    return-void
.end method

.method private setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V
    .locals 19
    .param p1, "uloc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 273
    new-instance v17, Ljava/util/HashMap;

    #@2
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    #@5
    move-object/from16 v0, v17

    #@7
    move-object/from16 v1, p0

    #@9
    iput-object v0, v1, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@b
    .line 275
    const/16 v17, 0x0

    #@d
    move-object/from16 v0, p1

    #@f
    move/from16 v1, v17

    #@11
    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    #@14
    move-result-object v10

    #@15
    .line 277
    .local v10, "numberStylePattern":Ljava/lang/String;
    const-string/jumbo v17, ";"

    #@18
    move-object/from16 v0, v17

    #@1a
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1d
    move-result v16

    #@1e
    .line 278
    .local v16, "separatorIndex":I
    const/4 v6, 0x0

    #@1f
    .line 279
    .local v6, "negNumberPattern":Ljava/lang/String;
    const/16 v17, -0x1

    #@21
    move/from16 v0, v16

    #@23
    move/from16 v1, v17

    #@25
    if-eq v0, v1, :cond_0

    #@27
    .line 280
    add-int/lit8 v17, v16, 0x1

    #@29
    move/from16 v0, v17

    #@2b
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 281
    .local v6, "negNumberPattern":Ljava/lang/String;
    const/16 v17, 0x0

    #@31
    move/from16 v0, v17

    #@33
    move/from16 v1, v16

    #@35
    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    .line 283
    .end local v6    # "negNumberPattern":Ljava/lang/String;
    :cond_0
    sget-object v17, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@3b
    const/16 v18, 0x1

    #@3d
    move-object/from16 v0, v17

    #@3f
    move-object/from16 v1, p1

    #@41
    move/from16 v2, v18

    #@43
    invoke-interface {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@46
    move-result-object v17

    #@47
    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    #@4a
    move-result-object v5

    #@4b
    .line 284
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@4e
    move-result-object v17

    #@4f
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v4

    #@53
    .local v4, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v17

    #@57
    if-eqz v17, :cond_2

    #@59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    check-cast v3, Ljava/util/Map$Entry;

    #@5f
    .line 285
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@62
    move-result-object v14

    #@63
    check-cast v14, Ljava/lang/String;

    #@65
    .line 286
    .local v14, "pluralCount":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@68
    move-result-object v11

    #@69
    check-cast v11, Ljava/lang/String;

    #@6b
    .line 290
    .local v11, "pattern":Ljava/lang/String;
    const-string/jumbo v17, "{0}"

    #@6e
    move-object/from16 v0, v17

    #@70
    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@73
    move-result-object v13

    #@74
    .line 291
    .local v13, "patternWithNumber":Ljava/lang/String;
    const-string/jumbo v17, "{1}"

    #@77
    sget-object v18, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    #@79
    move-object/from16 v0, v17

    #@7b
    move-object/from16 v1, v18

    #@7d
    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@80
    move-result-object v12

    #@81
    .line 292
    .local v12, "patternWithCurrencySign":Ljava/lang/String;
    const/16 v17, -0x1

    #@83
    move/from16 v0, v16

    #@85
    move/from16 v1, v17

    #@87
    if-eq v0, v1, :cond_1

    #@89
    .line 293
    move-object v7, v11

    #@8a
    .line 294
    .local v7, "negPattern":Ljava/lang/String;
    const-string/jumbo v17, "{0}"

    #@8d
    move-object/from16 v0, v17

    #@8f
    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@92
    move-result-object v9

    #@93
    .line 295
    .local v9, "negWithNumber":Ljava/lang/String;
    const-string/jumbo v17, "{1}"

    #@96
    sget-object v18, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    #@98
    move-object/from16 v0, v17

    #@9a
    move-object/from16 v1, v18

    #@9c
    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    .line 296
    .local v8, "negWithCurrSign":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a5
    .line 297
    .local v15, "posNegPatterns":Ljava/lang/StringBuilder;
    const-string/jumbo v17, ";"

    #@a8
    move-object/from16 v0, v17

    #@aa
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 298
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 299
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v12

    #@b4
    .line 301
    .end local v7    # "negPattern":Ljava/lang/String;
    .end local v8    # "negWithCurrSign":Ljava/lang/String;
    .end local v9    # "negWithNumber":Ljava/lang/String;
    .end local v15    # "posNegPatterns":Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@b8
    move-object/from16 v17, v0

    #@ba
    move-object/from16 v0, v17

    #@bc
    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    goto :goto_0

    #@c0
    .line 272
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pattern":Ljava/lang/String;
    .end local v12    # "patternWithCurrencySign":Ljava/lang/String;
    .end local v13    # "patternWithNumber":Ljava/lang/String;
    .end local v14    # "pluralCount":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 191
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Landroid/icu/text/CurrencyPluralInfo;

    #@6
    .line 193
    .local v2, "other":Landroid/icu/text/CurrencyPluralInfo;
    iget-object v5, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@8
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->clone()Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Landroid/icu/util/ULocale;

    #@e
    iput-object v5, v2, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@10
    .line 198
    new-instance v5, Ljava/util/HashMap;

    #@12
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object v5, v2, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@17
    .line 199
    iget-object v5, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@19
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v4

    #@21
    .local v4, "pluralCount$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_0

    #@27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/lang/String;

    #@2d
    .line 200
    .local v3, "pluralCount":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@2f
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/lang/String;

    #@35
    .line 201
    .local v0, "currencyPattern":Ljava/lang/String;
    iget-object v5, v2, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@37
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    goto :goto_0

    #@3b
    .line 204
    .end local v0    # "currencyPattern":Ljava/lang/String;
    .end local v2    # "other":Landroid/icu/text/CurrencyPluralInfo;
    .end local v3    # "pluralCount":Ljava/lang/String;
    .end local v4    # "pluralCount$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@3c
    .line 205
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Landroid/icu/util/ICUCloneNotSupportedException;

    #@3e
    invoke-direct {v5, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v5

    #@42
    .line 203
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "other":Landroid/icu/text/CurrencyPluralInfo;
    .restart local v4    # "pluralCount$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 215
    instance-of v2, p1, Landroid/icu/text/CurrencyPluralInfo;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 216
    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    #@8
    .line 217
    .local v0, "other":Landroid/icu/text/CurrencyPluralInfo;
    iget-object v2, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@a
    iget-object v3, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@c
    invoke-virtual {v2, v3}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 218
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@14
    iget-object v2, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@16
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    .line 217
    :cond_0
    return v1

    #@1b
    .line 220
    .end local v0    # "other":Landroid/icu/text/CurrencyPluralInfo;
    :cond_1
    return v1
.end method

.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pluralCount"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 120
    .local v0, "currencyPluralPattern":Ljava/lang/String;
    if-nez v0, :cond_1

    #@a
    .line 122
    const-string/jumbo v1, "other"

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 123
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@15
    const-string/jumbo v2, "other"

    #@18
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .end local v0    # "currencyPluralPattern":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@1e
    .line 125
    .restart local v0    # "currencyPluralPattern":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    #@20
    .line 131
    sget-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    #@22
    .line 134
    :cond_1
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getPluralRules()Landroid/icu/text/PluralRules;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 231
    sget-boolean v0, Landroid/icu/text/CurrencyPluralInfo;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 232
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method pluralPatternIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method select(D)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1
    .param p1, "numberInfo"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setCurrencyPluralPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluralCount"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 168
    return-void
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    #@2
    .line 181
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    #@5
    .line 179
    return-void
.end method

.method public setPluralRules(Ljava/lang/String;)V
    .locals 1
    .param p1, "ruleDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-static {p1}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    #@6
    .line 155
    return-void
.end method
