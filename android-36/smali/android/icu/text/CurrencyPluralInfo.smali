.class public Landroid/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final greylist-max-o defaultCurrencyPluralPatternChar:[C

.field private static final whitelist serialVersionUID:J = 0x1L

.field private static final greylist-max-o tripleCurrencySign:[C

.field private static final greylist-max-o tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private greylist-max-o pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o pluralRules:Landroid/icu/text/PluralRules;

.field private greylist-max-o ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_24

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    .line 304
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    .line 307
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_2c

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    .line 309
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    return-void

    :array_24
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    nop

    :array_2c
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

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 322
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 325
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 47
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    .line 48
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 322
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 325
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 63
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 322
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 325
    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 55
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    .line 56
    return-void
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/CurrencyPluralInfo;
    .registers 1

    .line 72
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 92
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyPluralInfo;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 82
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private greylist-max-o initialize(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "uloc"    # Landroid/icu/util/ULocale;

    .line 260
    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 261
    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 262
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V

    .line 263
    return-void
.end method

.method private greylist-max-o setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V
    .registers 19
    .param p1, "uloc"    # Landroid/icu/util/ULocale;

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 268
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "numberStylePattern":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 271
    .local v5, "separatorIndex":I
    const/4 v6, 0x0

    .line 272
    .local v6, "negNumberPattern":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v5, v7, :cond_24

    .line 273
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 276
    :cond_24
    sget-object v2, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v8, 0x1

    invoke-interface {v2, v1, v8}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v2

    .line 277
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_37
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 278
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 279
    .local v10, "pluralCount":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 283
    .local v11, "pattern":Ljava/lang/String;
    const-string v12, "{0}"

    invoke-virtual {v11, v12, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 284
    .local v13, "patternWithNumber":Ljava/lang/String;
    sget-object v14, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    const-string v15, "{1}"

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 285
    .local v14, "patternWithCurrencySign":Ljava/lang/String;
    if-eq v5, v7, :cond_7c

    .line 286
    move-object/from16 v16, v11

    .line 287
    .local v16, "negPattern":Ljava/lang/String;
    move-object/from16 v7, v16

    .end local v16    # "negPattern":Ljava/lang/String;
    .local v7, "negPattern":Ljava/lang/String;
    invoke-virtual {v7, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "negWithNumber":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    invoke-virtual {v12, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "negWithCurrSign":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .local v15, "posNegPatterns":Ljava/lang/StringBuilder;
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 294
    .end local v1    # "negWithCurrSign":Ljava/lang/String;
    .end local v7    # "negPattern":Ljava/lang/String;
    .end local v12    # "negWithNumber":Ljava/lang/String;
    .end local v15    # "posNegPatterns":Ljava/lang/StringBuilder;
    :cond_7c
    iget-object v1, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "pluralCount":Ljava/lang/String;
    .end local v11    # "pattern":Ljava/lang/String;
    .end local v13    # "patternWithNumber":Ljava/lang/String;
    .end local v14    # "patternWithCurrencySign":Ljava/lang/String;
    move-object/from16 v1, p1

    const/4 v7, -0x1

    goto :goto_37

    .line 296
    :cond_85
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 182
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    .line 184
    .local v0, "other":Landroid/icu/text/CurrencyPluralInfo;
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    iput-object v1, v0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 190
    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, "pluralCount":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    .local v3, "currencyPattern":Ljava/lang/String;
    iget-object v4, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3a} :catch_3d

    .line 193
    nop

    .end local v2    # "pluralCount":Ljava/lang/String;
    .end local v3    # "currencyPattern":Ljava/lang/String;
    goto :goto_21

    .line 194
    :cond_3c
    return-object v0

    .line 195
    .end local v0    # "other":Landroid/icu/text/CurrencyPluralInfo;
    :catch_3d
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "a"    # Ljava/lang/Object;

    .line 205
    instance-of v0, p1, Landroid/icu/text/CurrencyPluralInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 206
    move-object v0, p1

    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    .line 207
    .local v0, "other":Landroid/icu/text/CurrencyPluralInfo;
    iget-object v2, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v3, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2, v3}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object v3, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    .line 208
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 207
    :goto_1f
    return v1

    .line 210
    .end local v0    # "other":Landroid/icu/text/CurrencyPluralInfo;
    :cond_20
    return v1
.end method

.method public whitelist test-api getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pluralCount"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "currencyPluralPattern":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 115
    const-string v1, "other"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 116
    iget-object v2, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 118
    :cond_1b
    if-nez v0, :cond_1f

    .line 124
    sget-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    .line 127
    :cond_1f
    return-object v0
.end method

.method public whitelist test-api getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getPluralRules()Landroid/icu/text/PluralRules;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 220
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 221
    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 222
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 220
    return v0
.end method

.method public greylist-max-o pluralPatternIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o select(D)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .registers 3
    .param p1, "numberInfo"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setCurrencyPluralPattern(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pluralCount"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public whitelist test-api setLocale(Landroid/icu/util/ULocale;)V
    .registers 2
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 172
    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    .line 173
    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    .line 174
    return-void
.end method

.method public whitelist test-api setPluralRules(Ljava/lang/String;)V
    .registers 3
    .param p1, "ruleDescription"    # Ljava/lang/String;

    .line 146
    invoke-static {p1}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    .line 147
    return-void
.end method
