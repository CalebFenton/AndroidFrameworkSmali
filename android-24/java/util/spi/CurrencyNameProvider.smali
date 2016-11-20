.class public abstract Ljava/util/spi/CurrencyNameProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "CurrencyNameProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 96
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 97
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v3

    #@b
    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@e
    move-result-object v2

    #@f
    .line 102
    .local v2, "charray":[C
    array-length v3, v2

    #@10
    const/4 v4, 0x3

    #@11
    if-eq v3, v4, :cond_2

    #@13
    .line 103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v4, "The currencyCode is not in the form of three upper-case letters."

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 105
    :cond_2
    const/4 v3, 0x0

    #@1d
    array-length v4, v2

    #@1e
    :goto_0
    if-ge v3, v4, :cond_5

    #@20
    aget-char v1, v2, v3

    #@22
    .line 106
    .local v1, "c":C
    const/16 v5, 0x41

    #@24
    if-lt v1, v5, :cond_3

    #@26
    const/16 v5, 0x5a

    #@28
    if-le v1, v5, :cond_4

    #@2a
    .line 107
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v4, "The currencyCode is not in the form of three upper-case letters."

    #@2f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 105
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 112
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {p0}, Ljava/util/spi/LocaleServiceProvider;->getAvailableLocales()[Ljava/util/Locale;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3d
    move-result-object v0

    #@3e
    .line 113
    .local v0, "avail":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_6

    #@44
    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v4, "The locale is not available"

    #@49
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 117
    :cond_6
    return-object v6
.end method

.method public abstract getSymbol(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
.end method
