.class public Lcom/android/internal/app/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 198
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 9
    .param p0, "locales"    # Landroid/os/LocaleList;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "maxLocales"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 164
    if-nez p1, :cond_0

    #@3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    .line 166
    .local v0, "dispLocale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    #@a
    move-result v8

    #@b
    if-le v8, p2, :cond_1

    #@d
    const/4 v1, 0x1

    #@e
    .line 168
    .local v1, "ellipsisNeeded":Z
    :goto_1
    if-eqz v1, :cond_2

    #@10
    .line 169
    move v5, p2

    #@11
    .line 170
    .local v5, "localeCount":I
    add-int/lit8 v4, p2, 0x1

    #@13
    .line 174
    .local v4, "listCount":I
    :goto_2
    new-array v6, v4, [Ljava/lang/String;

    #@15
    .line 175
    .local v6, "localeNames":[Ljava/lang/String;
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_3
    if-ge v2, v5, :cond_3

    #@18
    .line 176
    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@1b
    move-result-object v8

    #@1c
    invoke-static {v8, v0, v7}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    aput-object v8, v6, v2

    #@22
    .line 175
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_3

    #@25
    .line 164
    .end local v0    # "dispLocale":Ljava/util/Locale;
    .end local v1    # "ellipsisNeeded":Z
    .end local v2    # "i":I
    .end local v4    # "listCount":I
    .end local v5    # "localeCount":I
    .end local v6    # "localeNames":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    #@26
    .restart local v0    # "dispLocale":Ljava/util/Locale;
    goto :goto_0

    #@27
    :cond_1
    move v1, v7

    #@28
    .line 166
    goto :goto_1

    #@29
    .line 172
    .restart local v1    # "ellipsisNeeded":Z
    :cond_2
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    #@2c
    move-result v5

    #@2d
    .restart local v5    # "localeCount":I
    move v4, v5

    #@2e
    .restart local v4    # "listCount":I
    goto :goto_2

    #@2f
    .line 178
    .restart local v2    # "i":I
    .restart local v6    # "localeNames":[Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    #@31
    .line 184
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    #@33
    aput-object v7, v6, p2

    #@35
    .line 187
    :cond_4
    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    #@38
    move-result-object v3

    #@39
    .line 188
    .local v3, "lfn":Landroid/icu/text/ListFormatter;
    invoke-virtual {v3, v6}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    return-object v7
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "sentenceCase"    # Z

    #@0
    .prologue
    .line 113
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "displayULocale":Landroid/icu/util/ULocale;
    invoke-static {p0}, Lcom/android/internal/app/LocaleHelper;->shouldUseDialectName(Ljava/util/Locale;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 115
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 117
    .local v1, "result":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    #@14
    invoke-static {v1, p1}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1

    #@19
    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2, v0}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "sentenceCase"    # Z

    #@0
    .prologue
    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static shouldUseDialectName(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "lang":Ljava/lang/String;
    const-string/jumbo v1, "fa"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 100
    const-string/jumbo v1, "ro"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 99
    if-nez v1, :cond_0

    #@16
    .line 101
    const-string/jumbo v1, "zh"

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 99
    :goto_0
    return v1

    #@1e
    :cond_0
    const/4 v1, 0x1

    #@1f
    goto :goto_0
.end method

.method public static toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 69
    return-object p0

    #@8
    .line 71
    :cond_0
    const/4 v1, 0x1

    #@9
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    #@c
    move-result v0

    #@d
    .line 72
    .local v0, "firstCodePointLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method
