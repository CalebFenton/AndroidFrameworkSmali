.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;,
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static calculateMatchingScore(Landroid/icu/util/ULocale;Landroid/os/LocaleList;[B)Z
    .locals 7
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/os/LocaleList;
    .param p2, "out"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 94
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 95
    return v4

    #@8
    .line 98
    :cond_0
    const/4 v1, 0x1

    #@9
    .line 99
    .local v1, "allZeros":Z
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    #@c
    move-result v0

    #@d
    .line 100
    .local v0, "N":I
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@10
    .line 101
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@13
    move-result-object v3

    #@14
    .line 103
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_2

    #@22
    .line 105
    aput-byte v4, p2, v2

    #@24
    .line 100
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 108
    :cond_2
    invoke-static {v3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@2a
    move-result-object v5

    #@2b
    invoke-static {v5}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@2e
    move-result-object v5

    #@2f
    .line 107
    invoke-static {p0, v5}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    #@32
    move-result v5

    #@33
    aput-byte v5, p2, v2

    #@35
    .line 109
    if-eqz v1, :cond_1

    #@37
    aget-byte v5, p2, v2

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 110
    const/4 v1, 0x0

    #@3c
    goto :goto_1

    #@3d
    .line 114
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_3
    if-eqz v1, :cond_4

    #@3f
    :goto_2
    return v4

    #@40
    :cond_4
    const/4 v4, 0x1

    #@41
    goto :goto_2
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 55
    return v3

    #@8
    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 61
    .local v1, "supportedScript":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 66
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 67
    .local v0, "supportedCountry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_2

    #@26
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 72
    return v3

    #@31
    .line 63
    .end local v0    # "supportedCountry":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    #@32
    return v2

    #@33
    .line 68
    .restart local v0    # "supportedCountry":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    #@34
    return v2
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 12
    .param p2, "preferredLanguages"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
            "<TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "extractor":Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;, "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<TT;>;"
    .local p3, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v7, Ljava/util/HashMap;

    #@2
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 200
    .local v7, "scoreboard":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;>;"
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    #@8
    move-result v9

    #@9
    new-array v6, v9, [B

    #@b
    .line 202
    .local v6, "score":[B
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@e
    move-result v8

    #@f
    .line 203
    .local v8, "sourceSize":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_2

    #@12
    .line 204
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v9

    #@16
    invoke-interface {p1, v9}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    #@19
    move-result-object v4

    #@1a
    .line 205
    .local v4, "locale":Ljava/util/Locale;
    if-eqz v4, :cond_0

    #@1c
    .line 206
    invoke-static {v4}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@1f
    move-result-object v9

    #@20
    invoke-static {v9}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@23
    move-result-object v9

    #@24
    invoke-static {v9, p2, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingScore(Landroid/icu/util/ULocale;Landroid/os/LocaleList;[B)Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_0

    #@2a
    .line 211
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 212
    .local v3, "lang":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    #@34
    .line 213
    .local v0, "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    if-nez v0, :cond_1

    #@36
    .line 214
    new-instance v9, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    #@38
    invoke-direct {v9, v6, v2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    #@3b
    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 203
    .end local v0    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .end local v3    # "lang":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 216
    .restart local v0    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .restart local v3    # "lang":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v6, v2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    #@44
    goto :goto_1

    #@45
    .line 220
    .end local v0    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    #@4c
    move-result v10

    #@4d
    new-array v10, v10, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    #@4f
    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@52
    move-result-object v5

    #@53
    check-cast v5, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    #@55
    .line 221
    .local v5, "result":[Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@58
    .line 222
    const/4 v9, 0x0

    #@59
    array-length v10, v5

    #@5a
    :goto_2
    if-ge v9, v10, :cond_3

    #@5c
    aget-object v1, v5, v9

    #@5e
    .line 223
    .local v1, "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    iget v11, v1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    #@60
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v11

    #@64
    invoke-virtual {p3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    .line 222
    add-int/lit8 v9, v9, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 198
    .end local v1    # "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    :cond_3
    return-void
.end method
