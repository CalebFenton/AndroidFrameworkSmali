.class public Landroid/icu/text/CompactDecimalFormat;
.super Landroid/icu/text/DecimalFormat;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CompactDecimalFormat$CompactStyle;,
        Landroid/icu/text/CompactDecimalFormat$Amount;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_CompactDecimalFormat$CompactStyleSwitchesValues:[I = null

.field private static final cache:Landroid/icu/text/CompactDecimalDataCache;

.field private static final serialVersionUID:J = 0x4173a3c399851eb2L


# instance fields
.field private final divisor:[J

.field private final pluralRules:Landroid/icu/text/PluralRules;

.field private final pluralToCurrencyAffixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final units:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid_icu_text_CompactDecimalFormat$CompactStyleSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/CompactDecimalFormat;->-android_icu_text_CompactDecimalFormat$CompactStyleSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/CompactDecimalFormat;->-android_icu_text_CompactDecimalFormat$CompactStyleSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/text/CompactDecimalFormat;->-android_icu_text_CompactDecimalFormat$CompactStyleSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 58
    new-instance v0, Landroid/icu/text/CompactDecimalDataCache;

    #@2
    invoke-direct {v0}, Landroid/icu/text/CompactDecimalDataCache;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/CompactDecimalFormat;->cache:Landroid/icu/text/CompactDecimalDataCache;

    #@7
    .line 53
    return-void
.end method

.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;-><init>()V

    #@3
    .line 117
    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@9
    .line 118
    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/icu/text/DecimalFormat;

    #@f
    .line 119
    .local v1, "format":Landroid/icu/text/DecimalFormat;
    invoke-direct {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->getData(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalDataCache$Data;

    #@12
    move-result-object v0

    #@13
    .line 120
    .local v0, "data":Landroid/icu/text/CompactDecimalDataCache$Data;
    iget-object v2, v0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    #@15
    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@17
    .line 121
    iget-object v2, v0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    #@19
    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    #@1b
    .line 122
    const/4 v2, 0x0

    #@1c
    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@1e
    .line 133
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@25
    move-result-object v3

    #@26
    invoke-direct {p0, p2, v2, v3}, Landroid/icu/text/CompactDecimalFormat;->finishInit(Landroid/icu/text/CompactDecimalFormat$CompactStyle;Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@29
    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/text/PluralRules;[JLjava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;
    .param p5, "divisor"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/DecimalFormatSymbols;",
            "Landroid/icu/text/CompactDecimalFormat$CompactStyle;",
            "Landroid/icu/text/PluralRules;",
            "[J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 162
    .local p6, "pluralAffixes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[[Ljava/lang/String;>;"
    .local p7, "currencyAffixes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .local p8, "debugCreationErrors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;-><init>()V

    #@3
    .line 167
    iput-object p4, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@5
    .line 168
    move-object/from16 v0, p8

    #@7
    invoke-direct {p0, p6, p5, v0}, Landroid/icu/text/CompactDecimalFormat;->otherPluralVariant(Ljava/util/Map;[JLjava/util/Collection;)Ljava/util/Map;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@d
    .line 169
    invoke-virtual {p4}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@10
    move-result-object v4

    #@11
    iget-object v5, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@13
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Missmatch in pluralCategories, should be: "

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p4}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, ", was actually "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    iget-object v5, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@3a
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    move-object/from16 v0, p8

    #@48
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@4b
    .line 172
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4e
    move-result-object v4

    #@4f
    check-cast v4, [J

    #@51
    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    #@53
    .line 173
    if-nez p7, :cond_2

    #@55
    .line 174
    const/4 v4, 0x0

    #@56
    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@58
    .line 182
    :cond_1
    invoke-direct {p0, p3, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->finishInit(Landroid/icu/text/CompactDecimalFormat$CompactStyle;Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@5b
    .line 165
    return-void

    #@5c
    .line 176
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    #@5e
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@61
    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@63
    .line 177
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@66
    move-result-object v4

    #@67
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v3

    #@6b
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_1

    #@71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v2

    #@75
    check-cast v2, Ljava/util/Map$Entry;

    #@77
    .line 178
    .local v2, "s":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7a
    move-result-object v1

    #@7b
    check-cast v1, [Ljava/lang/String;

    #@7d
    .line 179
    .local v1, "pair":[Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@7f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@82
    move-result-object v4

    #@83
    check-cast v4, Ljava/lang/String;

    #@85
    new-instance v6, Landroid/icu/text/DecimalFormat$Unit;

    #@87
    const/4 v7, 0x0

    #@88
    aget-object v7, v1, v7

    #@8a
    const/4 v8, 0x1

    #@8b
    aget-object v8, v1, v8

    #@8d
    invoke-direct {v6, v7, v8}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@90
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93
    goto :goto_0
.end method

.method private finishInit(Landroid/icu/text/CompactDecimalFormat$CompactStyle;Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "formatSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 186
    invoke-virtual {p0, p2}, Landroid/icu/text/CompactDecimalFormat;->applyPattern(Ljava/lang/String;)V

    #@3
    .line 187
    invoke-virtual {p0, p3}, Landroid/icu/text/CompactDecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@6
    .line 188
    const/4 v0, 0x2

    #@7
    invoke-virtual {p0, v0}, Landroid/icu/text/CompactDecimalFormat;->setMaximumSignificantDigits(I)V

    #@a
    .line 189
    const/4 v0, 0x1

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/CompactDecimalFormat;->setSignificantDigitsUsed(Z)V

    #@e
    .line 190
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@10
    if-ne p1, v0, :cond_0

    #@12
    .line 191
    const/4 v0, 0x0

    #@13
    invoke-virtual {p0, v0}, Landroid/icu/text/CompactDecimalFormat;->setGroupingUsed(Z)V

    #@16
    .line 193
    :cond_0
    const/4 v0, 0x0

    #@17
    invoke-virtual {p0, v0}, Landroid/icu/text/CompactDecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@1a
    .line 185
    return-void
.end method

.method private getData(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalDataCache$Data;
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@0
    .prologue
    .line 442
    sget-object v1, Landroid/icu/text/CompactDecimalFormat;->cache:Landroid/icu/text/CompactDecimalDataCache;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/text/CompactDecimalDataCache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    #@5
    move-result-object v0

    #@6
    .line 443
    .local v0, "bundle":Landroid/icu/text/CompactDecimalDataCache$DataBundle;
    invoke-static {}, Landroid/icu/text/CompactDecimalFormat;->-getandroid_icu_text_CompactDecimalFormat$CompactStyleSwitchesValues()[I

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p2}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->ordinal()I

    #@d
    move-result v2

    #@e
    aget v1, v1, v2

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 449
    iget-object v1, v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->shortData:Landroid/icu/text/CompactDecimalDataCache$Data;

    #@15
    return-object v1

    #@16
    .line 445
    :pswitch_0
    iget-object v1, v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->shortData:Landroid/icu/text/CompactDecimalDataCache$Data;

    #@18
    return-object v1

    #@19
    .line 447
    :pswitch_1
    iget-object v1, v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->longData:Landroid/icu/text/CompactDecimalDataCache$Data;

    #@1b
    return-object v1

    #@1c
    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@0
    .prologue
    .line 93
    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "style"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    #@0
    .prologue
    .line 105
    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    #@2
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    #@9
    return-object v0
.end method

.method private getPluralForm(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1
    .param p1, "fixedDecimal"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 429
    const-string/jumbo v0, "other"

    #@7
    return-object v0

    #@8
    .line 431
    :cond_0
    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private mapsAreEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "lhs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    .local p2, "rhs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    const/4 v5, 0x0

    #@1
    .line 216
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@4
    move-result v3

    #@5
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@8
    move-result v4

    #@9
    if-eq v3, v4, :cond_0

    #@b
    .line 217
    return v5

    #@c
    .line 220
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_3

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/util/Map$Entry;

    #@20
    .line 221
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, [Landroid/icu/text/DecimalFormat$Unit;

    #@2a
    .line 222
    .local v2, "value":[Landroid/icu/text/DecimalFormat$Unit;
    if-eqz v2, :cond_2

    #@2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, [Ljava/lang/Object;

    #@32
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_1

    #@38
    .line 223
    :cond_2
    return v5

    #@39
    .line 226
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    .end local v2    # "value":[Landroid/icu/text/DecimalFormat$Unit;
    :cond_3
    const/4 v3, 0x1

    #@3a
    return v3
.end method

.method private otherPluralVariant(Ljava/util/Map;[JLjava/util/Collection;)Ljava/util/Map;
    .locals 26
    .param p2, "divisor"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;[J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 359
    .local p1, "pluralCategoryToPower10ToAffix":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[[Ljava/lang/String;>;"
    .local p3, "debugCreationErrors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    #@2
    array-length v0, v0

    #@3
    move/from16 v21, v0

    #@5
    const/16 v22, 0xf

    #@7
    move/from16 v0, v21

    #@9
    move/from16 v1, v22

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 360
    const-string/jumbo v21, "Must have at least 15 prefix items."

    #@10
    move-object/from16 v0, p0

    #@12
    move-object/from16 v1, p3

    #@14
    move-object/from16 v2, v21

    #@16
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@19
    .line 362
    :cond_0
    const-wide/16 v10, 0x0

    #@1b
    .line 363
    .local v10, "oldDivisor":J
    const/4 v5, 0x0

    #@1c
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p2

    #@1e
    array-length v0, v0

    #@1f
    move/from16 v21, v0

    #@21
    move/from16 v0, v21

    #@23
    if-ge v5, v0, :cond_4

    #@25
    .line 366
    aget-wide v22, p2, v5

    #@27
    move-wide/from16 v0, v22

    #@29
    long-to-double v0, v0

    #@2a
    move-wide/from16 v22, v0

    #@2c
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log10(D)D

    #@2f
    move-result-wide v22

    #@30
    move-wide/from16 v0, v22

    #@32
    double-to-int v7, v0

    #@33
    .line 367
    .local v7, "log":I
    if-le v7, v5, :cond_1

    #@35
    .line 368
    new-instance v21, Ljava/lang/StringBuilder;

    #@37
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v22, "Divisor["

    #@3d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v21

    #@41
    move-object/from16 v0, v21

    #@43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v21

    #@47
    const-string/jumbo v22, "] must be less than or equal to 10^"

    #@4a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v21

    #@4e
    move-object/from16 v0, v21

    #@50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v21

    #@54
    .line 369
    const-string/jumbo v22, ", but is: "

    #@57
    .line 368
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v21

    #@5b
    .line 369
    aget-wide v22, p2, v5

    #@5d
    .line 368
    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v21

    #@61
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v21

    #@65
    move-object/from16 v0, p0

    #@67
    move-object/from16 v1, p3

    #@69
    move-object/from16 v2, v21

    #@6b
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@6e
    .line 371
    :cond_1
    int-to-double v0, v7

    #@6f
    move-wide/from16 v22, v0

    #@71
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    #@73
    move-wide/from16 v0, v24

    #@75
    move-wide/from16 v2, v22

    #@77
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@7a
    move-result-wide v22

    #@7b
    move-wide/from16 v0, v22

    #@7d
    double-to-long v0, v0

    #@7e
    move-wide/from16 v18, v0

    #@80
    .line 372
    .local v18, "roundTrip":J
    aget-wide v22, p2, v5

    #@82
    cmp-long v21, v18, v22

    #@84
    if-eqz v21, :cond_2

    #@86
    .line 373
    new-instance v21, Ljava/lang/StringBuilder;

    #@88
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v22, "Divisor["

    #@8e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v21

    #@92
    move-object/from16 v0, v21

    #@94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v21

    #@98
    const-string/jumbo v22, "] must be a power of 10, but is: "

    #@9b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v21

    #@9f
    aget-wide v22, p2, v5

    #@a1
    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v21

    #@a5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v21

    #@a9
    move-object/from16 v0, p0

    #@ab
    move-object/from16 v1, p3

    #@ad
    move-object/from16 v2, v21

    #@af
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@b2
    .line 376
    :cond_2
    aget-wide v22, p2, v5

    #@b4
    cmp-long v21, v22, v10

    #@b6
    if-gez v21, :cond_3

    #@b8
    .line 377
    new-instance v21, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v22, "Bad divisor, the divisor for 10E"

    #@c0
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v21

    #@c4
    move-object/from16 v0, v21

    #@c6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v21

    #@ca
    const-string/jumbo v22, "("

    #@cd
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v21

    #@d1
    aget-wide v22, p2, v5

    #@d3
    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v21

    #@d7
    .line 378
    const-string/jumbo v22, ") is less than the divisor for the divisor for 10E"

    #@da
    .line 377
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v21

    #@de
    .line 378
    add-int/lit8 v22, v5, -0x1

    #@e0
    .line 377
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v21

    #@e4
    .line 378
    const-string/jumbo v22, "("

    #@e7
    .line 377
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v21

    #@eb
    move-object/from16 v0, v21

    #@ed
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v21

    #@f1
    .line 378
    const-string/jumbo v22, ")"

    #@f4
    .line 377
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v21

    #@f8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v21

    #@fc
    move-object/from16 v0, p0

    #@fe
    move-object/from16 v1, p3

    #@100
    move-object/from16 v2, v21

    #@102
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@105
    .line 380
    :cond_3
    aget-wide v10, p2, v5

    #@107
    .line 363
    add-int/lit8 v5, v5, 0x1

    #@109
    goto/16 :goto_0

    #@10b
    .line 383
    .end local v7    # "log":I
    .end local v18    # "roundTrip":J
    :cond_4
    new-instance v16, Ljava/util/HashMap;

    #@10d
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    #@110
    .line 384
    .local v16, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    new-instance v17, Ljava/util/HashMap;

    #@112
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    #@115
    .line 386
    .local v17, "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v21, "other"

    #@118
    move-object/from16 v0, p1

    #@11a
    move-object/from16 v1, v21

    #@11c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    move-result-object v4

    #@120
    check-cast v4, [[Ljava/lang/String;

    #@122
    .line 388
    .local v4, "defaultPower10ToAffix":[[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@125
    move-result-object v21

    #@126
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@129
    move-result-object v14

    #@12a
    .local v14, "pluralCategoryAndPower10ToAffix$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@12d
    move-result v21

    #@12e
    if-eqz v21, :cond_c

    #@130
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@133
    move-result-object v13

    #@134
    check-cast v13, Ljava/util/Map$Entry;

    #@136
    .line 389
    .local v13, "pluralCategoryAndPower10ToAffix":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@139
    move-result-object v12

    #@13a
    check-cast v12, Ljava/lang/String;

    #@13c
    .line 390
    .local v12, "pluralCategory":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@13f
    move-result-object v15

    #@140
    check-cast v15, [[Ljava/lang/String;

    #@142
    .line 393
    .local v15, "power10ToAffix":[[Ljava/lang/String;
    array-length v0, v15

    #@143
    move/from16 v21, v0

    #@145
    move-object/from16 v0, p2

    #@147
    array-length v0, v0

    #@148
    move/from16 v22, v0

    #@14a
    move/from16 v0, v21

    #@14c
    move/from16 v1, v22

    #@14e
    if-eq v0, v1, :cond_5

    #@150
    .line 394
    new-instance v21, Ljava/lang/StringBuilder;

    #@152
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v22, "Prefixes & suffixes must be present for all divisors "

    #@158
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v21

    #@15c
    move-object/from16 v0, v21

    #@15e
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v21

    #@162
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v21

    #@166
    move-object/from16 v0, p0

    #@168
    move-object/from16 v1, p3

    #@16a
    move-object/from16 v2, v21

    #@16c
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@16f
    .line 396
    :cond_5
    array-length v0, v15

    #@170
    move/from16 v21, v0

    #@172
    move/from16 v0, v21

    #@174
    new-array v0, v0, [Landroid/icu/text/DecimalFormat$Unit;

    #@176
    move-object/from16 v20, v0

    #@178
    .line 397
    .local v20, "units":[Landroid/icu/text/DecimalFormat$Unit;
    const/4 v5, 0x0

    #@179
    :goto_2
    array-length v0, v15

    #@17a
    move/from16 v21, v0

    #@17c
    move/from16 v0, v21

    #@17e
    if-ge v5, v0, :cond_b

    #@180
    .line 398
    aget-object v9, v15, v5

    #@182
    .line 399
    .local v9, "pair":[Ljava/lang/String;
    if-nez v9, :cond_6

    #@184
    .line 400
    aget-object v9, v4, v5

    #@186
    .line 404
    :cond_6
    array-length v0, v9

    #@187
    move/from16 v21, v0

    #@189
    const/16 v22, 0x2

    #@18b
    move/from16 v0, v21

    #@18d
    move/from16 v1, v22

    #@18f
    if-ne v0, v1, :cond_7

    #@191
    const/16 v21, 0x0

    #@193
    aget-object v21, v9, v21

    #@195
    if-nez v21, :cond_8

    #@197
    .line 405
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    #@199
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@19c
    const-string/jumbo v22, "Prefix or suffix is null for "

    #@19f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v21

    #@1a3
    move-object/from16 v0, v21

    #@1a5
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v21

    #@1a9
    const-string/jumbo v22, ", "

    #@1ac
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v21

    #@1b0
    move-object/from16 v0, v21

    #@1b2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v21

    #@1b6
    const-string/jumbo v22, ", "

    #@1b9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v21

    #@1bd
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1c0
    move-result-object v22

    #@1c1
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v21

    #@1c5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v21

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    move-object/from16 v1, p3

    #@1cd
    move-object/from16 v2, v21

    #@1cf
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@1d2
    .line 397
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@1d4
    goto :goto_2

    #@1d5
    .line 404
    :cond_8
    const/16 v21, 0x1

    #@1d7
    aget-object v21, v9, v21

    #@1d9
    if-eqz v21, :cond_7

    #@1db
    .line 410
    aget-wide v22, p2, v5

    #@1dd
    move-wide/from16 v0, v22

    #@1df
    long-to-double v0, v0

    #@1e0
    move-wide/from16 v22, v0

    #@1e2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log10(D)D

    #@1e5
    move-result-wide v22

    #@1e6
    move-wide/from16 v0, v22

    #@1e8
    double-to-int v7, v0

    #@1e9
    .line 411
    .restart local v7    # "log":I
    new-instance v21, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const/16 v22, 0x0

    #@1f0
    aget-object v22, v9, v22

    #@1f2
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v21

    #@1f6
    const-string/jumbo v22, "\uffff"

    #@1f9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v21

    #@1fd
    const/16 v22, 0x1

    #@1ff
    aget-object v22, v9, v22

    #@201
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v21

    #@205
    const-string/jumbo v22, "\uffff"

    #@208
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v21

    #@20c
    sub-int v22, v5, v7

    #@20e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@211
    move-result-object v21

    #@212
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v6

    #@216
    .line 412
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    #@218
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21b
    move-result-object v8

    #@21c
    check-cast v8, Ljava/lang/Integer;

    #@21e
    .line 413
    .local v8, "old":Ljava/lang/Integer;
    if-nez v8, :cond_a

    #@220
    .line 414
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@223
    move-result-object v21

    #@224
    move-object/from16 v0, v17

    #@226
    move-object/from16 v1, v21

    #@228
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22b
    .line 420
    :cond_9
    :goto_4
    new-instance v21, Landroid/icu/text/DecimalFormat$Unit;

    #@22d
    const/16 v22, 0x0

    #@22f
    aget-object v22, v9, v22

    #@231
    const/16 v23, 0x1

    #@233
    aget-object v23, v9, v23

    #@235
    invoke-direct/range {v21 .. v23}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@238
    aput-object v21, v20, v5

    #@23a
    goto :goto_3

    #@23b
    .line 415
    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@23e
    move-result v21

    #@23f
    move/from16 v0, v21

    #@241
    if-eq v0, v5, :cond_9

    #@243
    .line 416
    new-instance v21, Ljava/lang/StringBuilder;

    #@245
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@248
    const-string/jumbo v22, "Collision between values for "

    #@24b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v21

    #@24f
    move-object/from16 v0, v21

    #@251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@254
    move-result-object v21

    #@255
    const-string/jumbo v22, " and "

    #@258
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v21

    #@25c
    move-object/from16 v0, v21

    #@25e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v21

    #@262
    .line 417
    const-string/jumbo v22, " for [prefix/suffix/index-log(divisor)"

    #@265
    .line 416
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v21

    #@269
    .line 417
    const v22, 0xffff

    #@26c
    const/16 v23, 0x3b

    #@26e
    move/from16 v0, v22

    #@270
    move/from16 v1, v23

    #@272
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@275
    move-result-object v22

    #@276
    .line 416
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v21

    #@27a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27d
    move-result-object v21

    #@27e
    move-object/from16 v0, p0

    #@280
    move-object/from16 v1, p3

    #@282
    move-object/from16 v2, v21

    #@284
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    #@287
    goto :goto_4

    #@288
    .line 422
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "log":I
    .end local v8    # "old":Ljava/lang/Integer;
    .end local v9    # "pair":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v16

    #@28a
    move-object/from16 v1, v20

    #@28c
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28f
    goto/16 :goto_1

    #@291
    .line 424
    .end local v12    # "pluralCategory":Ljava/lang/String;
    .end local v13    # "pluralCategoryAndPower10ToAffix":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[Ljava/lang/String;>;"
    .end local v15    # "power10ToAffix":[[Ljava/lang/String;
    .end local v20    # "units":[Landroid/icu/text/DecimalFormat$Unit;
    :cond_c
    return-object v16
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

.method private recordError(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 346
    .local p1, "creationErrors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 349
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@b
    .line 345
    return-void
.end method

.method private toAmount(DLandroid/icu/util/Output;)Landroid/icu/text/CompactDecimalFormat$Amount;
    .locals 7
    .param p1, "number"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)",
            "Landroid/icu/text/CompactDecimalFormat$Amount;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p3, "currencyUnit":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->isNumberNegative(D)Z

    #@3
    move-result v1

    #@4
    .line 326
    .local v1, "negative":Z
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->adjustNumberAsInFormatting(D)D

    #@7
    move-result-wide p1

    #@8
    .line 327
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@a
    cmpg-double v3, p1, v4

    #@c
    if-gtz v3, :cond_3

    #@e
    const/4 v0, 0x0

    #@f
    .line 328
    .local v0, "base":I
    :goto_0
    const/16 v3, 0xf

    #@11
    if-lt v0, v3, :cond_0

    #@13
    .line 329
    const/16 v0, 0xe

    #@15
    .line 331
    :cond_0
    iget-object v3, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    #@17
    aget-wide v4, v3, v0

    #@19
    long-to-double v4, v4

    #@1a
    div-double/2addr p1, v4

    #@1b
    .line 332
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->toDigitList(D)Landroid/icu/text/DigitList;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/text/CompactDecimalFormat;->getFixedDecimal(DLandroid/icu/text/DigitList;)Landroid/icu/text/PluralRules$FixedDecimal;

    #@22
    move-result-object v3

    #@23
    invoke-direct {p0, v3}, Landroid/icu/text/CompactDecimalFormat;->getPluralForm(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 333
    .local v2, "pluralVariant":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@29
    if-eqz v3, :cond_1

    #@2b
    if-eqz p3, :cond_1

    #@2d
    .line 334
    iget-object v3, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@2f
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/icu/text/DecimalFormat$Unit;

    #@35
    iput-object v3, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@37
    .line 336
    :cond_1
    if-eqz v1, :cond_2

    #@39
    .line 337
    neg-double p1, p1

    #@3a
    .line 339
    :cond_2
    new-instance v3, Landroid/icu/text/CompactDecimalFormat$Amount;

    #@3c
    .line 341
    iget-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@3e
    invoke-static {v4, v2, v0}, Landroid/icu/text/CompactDecimalDataCache;->getUnit(Ljava/util/Map;Ljava/lang/String;I)Landroid/icu/text/DecimalFormat$Unit;

    #@41
    move-result-object v4

    #@42
    .line 339
    invoke-direct {v3, p1, p2, v4}, Landroid/icu/text/CompactDecimalFormat$Amount;-><init>(DLandroid/icu/text/DecimalFormat$Unit;)V

    #@45
    return-object v3

    #@46
    .line 327
    .end local v0    # "base":I
    .end local v2    # "pluralVariant":Ljava/lang/String;
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    #@49
    move-result-wide v4

    #@4a
    double-to-int v0, v4

    #@4b
    .restart local v0    # "base":I
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 202
    if-nez p1, :cond_0

    #@3
    .line 203
    return v1

    #@4
    .line 204
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 205
    return v1

    #@b
    :cond_1
    move-object v0, p1

    #@c
    .line 206
    check-cast v0, Landroid/icu/text/CompactDecimalFormat;

    #@e
    .line 207
    .local v0, "other":Landroid/icu/text/CompactDecimalFormat;
    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@10
    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    #@12
    invoke-direct {p0, v2, v3}, Landroid/icu/text/CompactDecimalFormat;->mapsAreEqual(Ljava/util/Map;Ljava/util/Map;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 208
    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    #@1a
    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    #@1c
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    #@1f
    move-result v2

    #@20
    .line 207
    if-eqz v2, :cond_3

    #@22
    .line 209
    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@24
    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@26
    if-eq v2, v3, :cond_2

    #@28
    .line 210
    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@2a
    if-eqz v2, :cond_3

    #@2c
    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@2e
    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    #@30
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    .line 207
    if-eqz v2, :cond_3

    #@36
    .line 211
    :cond_2
    iget-object v1, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@38
    iget-object v2, v0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@3a
    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    #@3d
    move-result v1

    #@3e
    .line 207
    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "number"    # D
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 235
    new-instance v1, Landroid/icu/util/Output;

    #@2
    invoke-direct {v1}, Landroid/icu/util/Output;-><init>()V

    #@5
    .line 236
    .local v1, "currencyUnit":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/text/DecimalFormat$Unit;>;"
    invoke-direct {p0, p1, p2, v1}, Landroid/icu/text/CompactDecimalFormat;->toAmount(DLandroid/icu/util/Output;)Landroid/icu/text/CompactDecimalFormat$Amount;

    #@8
    move-result-object v0

    #@9
    .line 237
    .local v0, "amount":Landroid/icu/text/CompactDecimalFormat$Amount;
    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 238
    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@f
    check-cast v3, Landroid/icu/text/DecimalFormat$Unit;

    #@11
    invoke-virtual {v3, p3}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    #@14
    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getUnit()Landroid/icu/text/DecimalFormat$Unit;

    #@17
    move-result-object v2

    #@18
    .line 241
    .local v2, "unit":Landroid/icu/text/DecimalFormat$Unit;
    invoke-virtual {v2, p3}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    #@1b
    .line 242
    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getQty()D

    #@1e
    move-result-wide v4

    #@1f
    invoke-super {p0, v4, v5, p3, p4}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@22
    .line 243
    invoke-virtual {v2, p3}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    #@25
    .line 244
    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 245
    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@2b
    check-cast v3, Landroid/icu/text/DecimalFormat$Unit;

    #@2d
    invoke-virtual {v3, p3}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    #@30
    .line 247
    :cond_1
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 270
    long-to-double v0, p1

    #@1
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Landroid/icu/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 256
    instance-of v2, p1, Ljava/lang/Number;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v2

    #@a
    :cond_0
    move-object v1, p1

    #@b
    .line 259
    check-cast v1, Ljava/lang/Number;

    #@d
    .line 260
    .local v1, "number":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    #@10
    move-result-wide v2

    #@11
    const/4 v4, 0x0

    #@12
    invoke-direct {p0, v2, v3, v4}, Landroid/icu/text/CompactDecimalFormat;->toAmount(DLandroid/icu/util/Output;)Landroid/icu/text/CompactDecimalFormat$Amount;

    #@15
    move-result-object v0

    #@16
    .line 261
    .local v0, "amount":Landroid/icu/text/CompactDecimalFormat$Amount;
    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getQty()D

    #@19
    move-result-wide v2

    #@1a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getUnit()Landroid/icu/text/DecimalFormat$Unit;

    #@21
    move-result-object v3

    #@22
    invoke-super {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat$Unit;)Ljava/text/AttributedCharacterIterator;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
