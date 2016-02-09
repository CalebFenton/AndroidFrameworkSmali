.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final codesToCurrencies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final localesToCurrencies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    #@7
    .line 32
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    sput-object v0, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    #@e
    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@5
    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-static {v1, p1}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 39
    .local v0, "symbol":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Unsupported ISO 4217 currency code: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 36
    :cond_0
    return-void
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    new-instance v2, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 100
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCurrencyCodes()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 101
    .local v1, "currencyCodes":[Ljava/lang/String;
    const/4 v3, 0x0

    #@a
    array-length v4, v1

    #@b
    :goto_0
    if-ge v3, v4, :cond_0

    #@d
    aget-object v0, v1, v3

    #@f
    .line 102
    .local v0, "currencyCode":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16
    .line 101
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 104
    .end local v0    # "currencyCode":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .locals 3
    .param p0, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    sget-object v2, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 52
    :try_start_0
    sget-object v1, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Currency;

    #@b
    .line 53
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    #@d
    .line 54
    new-instance v0, Ljava/util/Currency;

    #@f
    .end local v0    # "currency":Ljava/util/Currency;
    invoke-direct {v0, p0}, Ljava/util/Currency;-><init>(Ljava/lang/String;)V

    #@12
    .line 55
    .restart local v0    # "currency":Ljava/util/Currency;
    sget-object v1, Ljava/util/Currency;->codesToCurrencies:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 57
    return-object v0

    #@19
    .line 51
    .end local v0    # "currency":Ljava/util/Currency;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 67
    sget-object v6, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    #@3
    monitor-enter v6

    #@4
    .line 68
    if-nez p0, :cond_0

    #@6
    .line 69
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v7, "locale == null"

    #@b
    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 67
    :catchall_0
    move-exception v5

    #@10
    monitor-exit v6

    #@11
    throw v5

    #@12
    .line 71
    :cond_0
    :try_start_1
    sget-object v5, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    #@14
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/Currency;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 72
    .local v1, "currency":Ljava/util/Currency;
    if-eqz v1, :cond_1

    #@1c
    monitor-exit v6

    #@1d
    .line 73
    return-object v1

    #@1e
    .line 75
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 76
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    .line 77
    .local v4, "variant":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_3

    #@2c
    const-string/jumbo v5, "EURO"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_2

    #@35
    const-string/jumbo v5, "HK"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-nez v5, :cond_2

    #@3e
    .line 78
    const-string/jumbo v5, "PREEURO"

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    .line 77
    if-eqz v5, :cond_3

    #@47
    .line 79
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    const-string/jumbo v7, "_"

    #@53
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    .line 82
    :cond_3
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    .line 83
    .local v2, "currencyCode":Ljava/lang/String;
    if-nez v2, :cond_4

    #@65
    .line 84
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@67
    new-instance v7, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v8, "Unsupported ISO 3166 country: "

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v5

    #@7f
    .line 85
    :cond_4
    const-string/jumbo v5, "XXX"

    #@82
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_5

    #@88
    monitor-exit v6

    #@89
    .line 86
    return-object v8

    #@8a
    .line 88
    :cond_5
    :try_start_3
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@8d
    move-result-object v3

    #@8e
    .line 89
    .local v3, "result":Ljava/util/Currency;
    sget-object v5, Ljava/util/Currency;->localesToCurrencies:Ljava/util/HashMap;

    #@90
    invoke-virtual {v5, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@93
    monitor-exit v6

    #@94
    .line 90
    return-object v3
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 2

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "XXX"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 177
    const/4 v0, -0x1

    #@c
    return v0

    #@d
    .line 179
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@f
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyFractionDigits(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@2
    invoke-static {p1, v0}, Llibcore/icu/ICU;->getCurrencyDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 152
    if-nez p1, :cond_0

    #@2
    .line 153
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "locale == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 156
    :cond_0
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@e
    move-result-object v0

    #@f
    .line 157
    .local v0, "localeData":Llibcore/icu/LocaleData;
    iget-object v2, v0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    #@11
    iget-object v3, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 158
    iget-object v2, v0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    #@1b
    return-object v2

    #@1c
    .line 162
    :cond_1
    iget-object v2, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@1e
    invoke-static {p1, v2}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 163
    .local v1, "symbol":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@24
    .end local v1    # "symbol":Ljava/lang/String;
    :goto_0
    return-object v1

    #@25
    .restart local v1    # "symbol":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@27
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@2
    return-object v0
.end method
