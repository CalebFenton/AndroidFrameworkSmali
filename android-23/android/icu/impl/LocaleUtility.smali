.class public Landroid/icu/impl/LocaleUtility;
.super Ljava/lang/Object;
.source "LocaleUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fallback(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 6
    .param p0, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 119
    const/4 v2, 0x3

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v1, v3

    #@c
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    aput-object v2, v1, v4

    #@12
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v1, v5

    #@18
    .line 121
    .local v1, "parts":[Ljava/lang/String;
    const/4 v0, 0x2

    #@19
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@1b
    .line 122
    aget-object v2, v1, v0

    #@1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 123
    const-string/jumbo v2, ""

    #@26
    aput-object v2, v1, v0

    #@28
    .line 127
    :cond_0
    if-gez v0, :cond_2

    #@2a
    .line 128
    const/4 v2, 0x0

    #@2b
    return-object v2

    #@2c
    .line 121
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 130
    :cond_2
    new-instance v2, Ljava/util/Locale;

    #@31
    aget-object v3, v1, v3

    #@33
    aget-object v4, v1, v4

    #@35
    aget-object v5, v1, v5

    #@37
    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    return-object v2
.end method

.method public static getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x5f

    #@2
    const/4 v5, 0x0

    #@3
    .line 24
    const-string/jumbo v3, ""

    #@6
    .line 25
    .local v3, "language":Ljava/lang/String;
    const-string/jumbo v0, ""

    #@9
    .line 26
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@c
    .line 28
    .local v4, "variant":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v1

    #@10
    .line 29
    .local v1, "i1":I
    if-gez v1, :cond_0

    #@12
    .line 30
    move-object v3, p0

    #@13
    .line 43
    :goto_0
    new-instance v5, Ljava/util/Locale;

    #@15
    invoke-direct {v5, v3, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    return-object v5

    #@19
    .line 32
    :cond_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 33
    add-int/lit8 v1, v1, 0x1

    #@1f
    .line 34
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    #@22
    move-result v2

    #@23
    .line 35
    .local v2, "i2":I
    if-gez v2, :cond_1

    #@25
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    goto :goto_0

    #@2a
    .line 38
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 39
    add-int/lit8 v5, v2, 0x1

    #@30
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    goto :goto_0
.end method

.method public static isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "parent"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 53
    return v2

    #@9
    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    .line 56
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    if-eq v0, v3, :cond_1

    #@13
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    const/16 v4, 0x5f

    #@19
    if-ne v3, v4, :cond_2

    #@1b
    .line 56
    :cond_1
    :goto_0
    return v1

    #@1c
    :cond_2
    move v1, v2

    #@1d
    .line 57
    goto :goto_0
.end method

.method public static isFallbackOf(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 2
    .param p0, "parent"    # Ljava/util/Locale;
    .param p1, "child"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
