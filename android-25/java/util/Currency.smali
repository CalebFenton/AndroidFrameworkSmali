.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static available:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static instances:Ljava/util/HashMap; = null
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

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final transient icuCurrency:Landroid/icu/util/Currency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    #@7
    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/Currency;)V
    .locals 1
    .param p1, "icuCurrency"    # Landroid/icu/util/Currency;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@5
    .line 80
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@b
    .line 78
    return-void
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 7
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
    .line 159
    const-class v5, Ljava/util/Currency;

    #@2
    monitor-enter v5

    #@3
    .line 160
    :try_start_0
    sget-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    #@5
    if-nez v4, :cond_1

    #@7
    .line 162
    invoke-static {}, Landroid/icu/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    #@a
    move-result-object v1

    #@b
    .line 163
    .local v1, "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    new-instance v4, Ljava/util/HashSet;

    #@d
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@10
    sput-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    #@12
    .line 164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .local v3, "icuCurrency$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/icu/util/Currency;

    #@22
    .line 165
    .local v2, "icuCurrency":Landroid/icu/util/Currency;
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@29
    move-result-object v0

    #@2a
    .line 166
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    #@2c
    .line 167
    new-instance v0, Ljava/util/Currency;

    #@2e
    .end local v0    # "currency":Ljava/util/Currency;
    invoke-direct {v0, v2}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    #@31
    .line 168
    .restart local v0    # "currency":Ljava/util/Currency;
    sget-object v4, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    #@33
    iget-object v6, v0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@35
    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 170
    :cond_0
    sget-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    #@3a
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 159
    .end local v0    # "currency":Ljava/util/Currency;
    .end local v2    # "icuCurrency":Landroid/icu/util/Currency;
    .end local v3    # "icuCurrency$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@3f
    monitor-exit v5

    #@40
    throw v4

    #@41
    .line 173
    .restart local v3    # "icuCurrency$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v4, Ljava/util/Currency;->available:Ljava/util/HashSet;

    #@43
    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    monitor-exit v5

    #@4a
    return-object v4
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .locals 5
    .param p0, "currencyCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 93
    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    #@3
    monitor-enter v3

    #@4
    .line 94
    :try_start_0
    sget-object v2, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/util/Currency;

    #@c
    .line 95
    .local v1, "instance":Ljava/util/Currency;
    if-nez v1, :cond_1

    #@e
    .line 97
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    .line 98
    .local v0, "icuInstance":Landroid/icu/util/Currency;
    if-nez v0, :cond_0

    #@14
    monitor-exit v3

    #@15
    .line 99
    return-object v4

    #@16
    .line 101
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Currency;

    #@18
    .end local v1    # "instance":Ljava/util/Currency;
    invoke-direct {v1, v0}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    #@1b
    .line 102
    .restart local v1    # "instance":Ljava/util/Currency;
    sget-object v2, Ljava/util/Currency;->instances:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .end local v0    # "icuInstance":Landroid/icu/util/Currency;
    :cond_1
    monitor-exit v3

    #@21
    .line 104
    return-object v1

    #@22
    .line 93
    .end local v1    # "instance":Ljava/util/Currency;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 131
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;

    #@4
    move-result-object v2

    #@5
    .line 132
    .local v2, "icuInstance":Landroid/icu/util/Currency;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 133
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 134
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    const-string/jumbo v4, "EURO"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    const-string/jumbo v4, "HK"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_0

    #@25
    .line 135
    const-string/jumbo v4, "PREEURO"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    .line 134
    if-eqz v4, :cond_1

    #@2e
    .line 136
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "_"

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 138
    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 139
    .local v1, "currencyCode":Ljava/lang/String;
    if-nez v1, :cond_2

    #@4c
    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4e
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "Unsupported ISO 3166 country: "

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v4

    #@66
    .line 142
    :cond_2
    if-eqz v2, :cond_3

    #@68
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    const-string/jumbo v5, "XXX"

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_4

    #@75
    .line 143
    :cond_3
    return-object v6

    #@76
    .line 145
    :cond_4
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    #@79
    move-result-object v4

    #@7a
    return-object v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 282
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
    .line 183
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 2

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "XXX"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 227
    const/4 v0, -0x1

    #@10
    return v0

    #@11
    .line 229
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@13
    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDisplayName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumericCode()I
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Currency;->getNumericCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Currency;->getSymbol()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 210
    if-nez p1, :cond_0

    #@2
    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 213
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@d
    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/Currency;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
