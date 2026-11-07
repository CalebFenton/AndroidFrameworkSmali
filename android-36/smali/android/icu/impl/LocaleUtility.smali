.class public Landroid/icu/impl/LocaleUtility;
.super Ljava/lang/Object;
.source "LocaleUtility.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fallback(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 7
    .param p0, "loc"    # Ljava/util/Locale;

    .line 122
    nop

    .line 123
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_24

    .line 126
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    .line 127
    const-string v2, ""

    aput-object v2, v0, v1

    .line 128
    goto :goto_24

    .line 125
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 131
    :cond_24
    :goto_24
    if-gez v1, :cond_28

    .line 132
    const/4 v2, 0x0

    return-object v2

    .line 134
    :cond_28
    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static blacklist getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-string v0, ""

    .line 29
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 30
    .local v1, "country":Ljava/lang/String;
    const-string v2, ""

    .line 32
    .local v2, "variant":Ljava/lang/String;
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 33
    .local v4, "i1":I
    if-gez v4, :cond_10

    .line 34
    move-object v0, p0

    goto :goto_2c

    .line 36
    :cond_10
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 39
    .local v3, "i2":I
    if-gez v3, :cond_22

    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 42
    :cond_22
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .end local v3    # "i2":I
    :goto_2c
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static blacklist isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "parent"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 57
    return v1

    .line 59
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 60
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1a

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    .line 60
    :cond_1b
    return v1
.end method

.method public static blacklist isFallbackOf(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4
    .param p0, "parent"    # Ljava/util/Locale;
    .param p1, "child"    # Ljava/util/Locale;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
