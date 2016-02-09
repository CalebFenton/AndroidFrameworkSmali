.class public Landroid/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# static fields
.field private static cachedLocaleData:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedStringData:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithmic:Z

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 332
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    #@7
    .line 337
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@9
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@c
    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/ICUCache;

    #@e
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/16 v0, 0xa

    #@5
    iput v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    #@7
    .line 43
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    #@a
    .line 44
    const-string/jumbo v0, "0123456789"

    #@d
    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    #@f
    .line 45
    const-string/jumbo v0, "latn"

    #@12
    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    #@14
    .line 41
    return-void
.end method

.method public static getAvailableNames()[Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 243
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@3
    const-string/jumbo v7, "numberingSystems"

    #@6
    invoke-static {v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@9
    move-result-object v3

    #@a
    .line 244
    .local v3, "numberingSystemsInfo":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v6, "numberingSystems"

    #@d
    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v1

    #@11
    .line 248
    .local v1, "nsCurrent":Landroid/icu/util/UResourceBundle;
    new-instance v4, Ljava/util/ArrayList;

    #@13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 249
    .local v4, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@19
    move-result-object v0

    #@1a
    .line 250
    .local v0, "it":Landroid/icu/util/UResourceBundleIterator;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 251
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@23
    move-result-object v5

    #@24
    .line 252
    .local v5, "temp":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 253
    .local v2, "nsName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 255
    .end local v2    # "nsName":Ljava/lang/String;
    .end local v5    # "temp":Landroid/icu/util/UResourceBundle;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v6

    #@30
    new-array v6, v6, [Ljava/lang/String;

    #@32
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v6

    #@36
    check-cast v6, [Ljava/lang/String;

    #@38
    return-object v6
.end method

.method public static getInstance()Landroid/icu/text/NumberingSystem;
    .locals 1

    #@0
    .prologue
    .line 190
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 1
    .param p0, "radix_in"    # I
    .param p1, "isAlgorithmic_in"    # Z
    .param p2, "desc_in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;
    .locals 15
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 114
    const/4 v10, 0x3

    #@3
    new-array v0, v10, [Ljava/lang/String;

    #@5
    const-string/jumbo v10, "native"

    #@8
    aput-object v10, v0, v11

    #@a
    const-string/jumbo v10, "traditional"

    #@d
    aput-object v10, v0, v14

    #@f
    const-string/jumbo v10, "finance"

    #@12
    const/4 v12, 0x2

    #@13
    aput-object v10, v0, v12

    #@15
    .line 117
    .local v0, "OTHER_NS_KEYWORDS":[Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@18
    move-result-object v5

    #@19
    .line 120
    .local v5, "nsResolved":Ljava/lang/Boolean;
    const-string/jumbo v10, "numbers"

    #@1c
    invoke-virtual {p0, v10}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 121
    .local v6, "numbersKeyword":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@22
    .line 122
    array-length v12, v0

    #@23
    move v10, v11

    #@24
    :goto_0
    if-ge v10, v12, :cond_0

    #@26
    aget-object v3, v0, v10

    #@28
    .line 123
    .local v3, "keyword":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v13

    #@2c
    if-eqz v13, :cond_1

    #@2e
    .line 124
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@31
    move-result-object v5

    #@32
    .line 133
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@35
    move-result v10

    #@36
    if-eqz v10, :cond_4

    #@38
    .line 134
    invoke-static {v6}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    #@3b
    move-result-object v4

    #@3c
    .line 135
    .local v4, "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v4, :cond_3

    #@3e
    .line 136
    return-object v4

    #@3f
    .line 122
    .end local v4    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v3    # "keyword":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@41
    goto :goto_0

    #@42
    .line 129
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "default"

    #@45
    .line 130
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@48
    move-result-object v5

    #@49
    goto :goto_1

    #@4a
    .line 138
    .restart local v4    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_3
    const-string/jumbo v6, "default"

    #@4d
    .line 139
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@50
    move-result-object v5

    #@51
    .line 144
    .end local v4    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 145
    .local v1, "baseName":Ljava/lang/String;
    sget-object v10, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    #@57
    new-instance v11, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v11

    #@60
    const-string/jumbo v12, "@numbers="

    #@63
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v11

    #@67
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v11

    #@6b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v11

    #@6f
    invoke-interface {v10, v11}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    check-cast v4, Landroid/icu/text/NumberingSystem;

    #@75
    .line 146
    .restart local v4    # "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v4, :cond_5

    #@77
    .line 147
    return-object v4

    #@78
    .line 152
    :cond_5
    move-object v7, v6

    #@79
    .line 153
    .local v7, "originalNumbersKeyword":Ljava/lang/String;
    const/4 v9, 0x0

    #@7a
    .line 154
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@7d
    move-result v10

    #@7e
    if-nez v10, :cond_9

    #@80
    .line 156
    :try_start_0
    const-string/jumbo v10, "android/icu/impl/data/icudt55b"

    #@83
    invoke-static {v10, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@86
    move-result-object v8

    #@87
    check-cast v8, Landroid/icu/impl/ICUResourceBundle;

    #@89
    .line 157
    .local v8, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v10, "NumberElements"

    #@8c
    invoke-virtual {v8, v10}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@8f
    move-result-object v8

    #@90
    .line 158
    invoke-virtual {v8, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    .line 159
    .local v9, "resolvedNumberingSystem":Ljava/lang/String;
    const/4 v10, 0x1

    #@95
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@98
    move-result-object v5

    #@99
    goto :goto_2

    #@9a
    .line 160
    .end local v8    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v9    # "resolvedNumberingSystem":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@9b
    .line 161
    .local v2, "ex":Ljava/util/MissingResourceException;
    const-string/jumbo v10, "native"

    #@9e
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v10

    #@a2
    if-nez v10, :cond_6

    #@a4
    const-string/jumbo v10, "finance"

    #@a7
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v10

    #@ab
    if-eqz v10, :cond_7

    #@ad
    .line 162
    :cond_6
    const-string/jumbo v6, "default"

    #@b0
    goto :goto_2

    #@b1
    .line 163
    :cond_7
    const-string/jumbo v10, "traditional"

    #@b4
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v10

    #@b8
    if-eqz v10, :cond_8

    #@ba
    .line 164
    const-string/jumbo v6, "native"

    #@bd
    goto :goto_2

    #@be
    .line 166
    :cond_8
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c1
    move-result-object v5

    #@c2
    goto :goto_2

    #@c3
    .line 171
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    :cond_9
    if-eqz v9, :cond_a

    #@c5
    .line 172
    invoke-static {v9}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    #@c8
    move-result-object v4

    #@c9
    .line 175
    :cond_a
    if-nez v4, :cond_b

    #@cb
    .line 176
    new-instance v4, Landroid/icu/text/NumberingSystem;

    #@cd
    .end local v4    # "ns":Landroid/icu/text/NumberingSystem;
    invoke-direct {v4}, Landroid/icu/text/NumberingSystem;-><init>()V

    #@d0
    .line 179
    .restart local v4    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_b
    sget-object v10, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    #@d2
    new-instance v11, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v11

    #@db
    const-string/jumbo v12, "@numbers="

    #@de
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v11

    #@e2
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v11

    #@e6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v11

    #@ea
    invoke-interface {v10, v11, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@ed
    .line 180
    return-object v4
.end method

.method private static getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 3
    .param p0, "name_in"    # Ljava/lang/String;
    .param p1, "radix_in"    # I
    .param p2, "isAlgorithmic_in"    # Z
    .param p3, "desc_in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const/4 v1, 0x2

    #@1
    if-ge p1, v1, :cond_0

    #@3
    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Invalid radix for numbering system"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 87
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 88
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    if-ne v1, p1, :cond_2

    #@14
    invoke-static {p3}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 92
    :cond_1
    new-instance v0, Landroid/icu/text/NumberingSystem;

    #@1c
    invoke-direct {v0}, Landroid/icu/text/NumberingSystem;-><init>()V

    #@1f
    .line 93
    .local v0, "ns":Landroid/icu/text/NumberingSystem;
    iput p1, v0, Landroid/icu/text/NumberingSystem;->radix:I

    #@21
    .line 94
    iput-boolean p2, v0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    #@23
    .line 95
    iput-object p3, v0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    #@25
    .line 96
    iput-object p0, v0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    #@27
    .line 97
    return-object v0

    #@28
    .line 89
    .end local v0    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v2, "Invalid digit string for numbering system"

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberingSystem;
    .locals 1
    .param p0, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 105
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 209
    sget-object v11, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/ICUCache;

    #@3
    invoke-interface {v11, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Landroid/icu/text/NumberingSystem;

    #@9
    .line 210
    .local v4, "ns":Landroid/icu/text/NumberingSystem;
    if-eqz v4, :cond_0

    #@b
    .line 211
    return-object v4

    #@c
    .line 215
    :cond_0
    :try_start_0
    const-string/jumbo v11, "android/icu/impl/data/icudt55b"

    #@f
    const-string/jumbo v12, "numberingSystems"

    #@12
    invoke-static {v11, v12}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@15
    move-result-object v9

    #@16
    .line 216
    .local v9, "numberingSystemsInfo":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v11, "numberingSystems"

    #@19
    invoke-virtual {v9, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1c
    move-result-object v6

    #@1d
    .line 217
    .local v6, "nsCurrent":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@20
    move-result-object v8

    #@21
    .line 219
    .local v8, "nsTop":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v11, "desc"

    #@24
    invoke-virtual {v8, v11}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 220
    .local v1, "description":Ljava/lang/String;
    const-string/jumbo v11, "radix"

    #@2b
    invoke-virtual {v8, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@2e
    move-result-object v7

    #@2f
    .line 221
    .local v7, "nsRadixBundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v11, "algorithmic"

    #@32
    invoke-virtual {v8, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@35
    move-result-object v5

    #@36
    .line 222
    .local v5, "nsAlgBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getInt()I

    #@39
    move-result v10

    #@3a
    .line 223
    .local v10, "radix":I
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getInt()I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    move-result v0

    #@3e
    .line 225
    .local v0, "algorithmic":I
    const/4 v11, 0x1

    #@3f
    if-ne v0, v11, :cond_1

    #@41
    const/4 v3, 0x1

    #@42
    .line 231
    .local v3, "isAlgorithmic":Z
    :goto_0
    invoke-static {p0, v10, v3, v1}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    #@45
    move-result-object v4

    #@46
    .line 232
    sget-object v11, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/ICUCache;

    #@48
    invoke-interface {v11, p0, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4b
    .line 233
    return-object v4

    #@4c
    .line 225
    .end local v3    # "isAlgorithmic":Z
    :cond_1
    const/4 v3, 0x0

    #@4d
    .restart local v3    # "isAlgorithmic":Z
    goto :goto_0

    #@4e
    .line 227
    .end local v0    # "algorithmic":I
    .end local v1    # "description":Ljava/lang/String;
    .end local v3    # "isAlgorithmic":Z
    .end local v5    # "nsAlgBundle":Landroid/icu/util/UResourceBundle;
    .end local v6    # "nsCurrent":Landroid/icu/util/UResourceBundle;
    .end local v7    # "nsRadixBundle":Landroid/icu/util/UResourceBundle;
    .end local v8    # "nsTop":Landroid/icu/util/UResourceBundle;
    .end local v9    # "numberingSystemsInfo":Landroid/icu/util/UResourceBundle;
    .end local v10    # "radix":I
    :catch_0
    move-exception v2

    #@4f
    .line 228
    .local v2, "ex":Ljava/util/MissingResourceException;
    return-object v13
.end method

.method public static isValidDigitString(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 268
    const/4 v1, 0x0

    #@2
    .line 269
    .local v1, "i":I
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@5
    move-result-object v2

    #@6
    .line 271
    .local v2, "it":Landroid/icu/text/UCharacterIterator;
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    #@9
    .line 272
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@c
    move-result v0

    #@d
    .local v0, "c":I
    const/4 v3, -0x1

    #@e
    if-eq v0, v3, :cond_1

    #@10
    .line 273
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isSupplementary(I)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 274
    return v4

    #@17
    .line 276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 278
    :cond_1
    const/16 v3, 0xa

    #@1c
    if-eq v1, v3, :cond_2

    #@1e
    .line 279
    return v4

    #@1f
    .line 281
    :cond_2
    const/4 v3, 0x1

    #@20
    return v3
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRadix()I
    .locals 1

    #@0
    .prologue
    .line 289
    iget v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    #@2
    return v0
.end method

.method public isAlgorithmic()Z
    .locals 1

    #@0
    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    #@2
    return v0
.end method
