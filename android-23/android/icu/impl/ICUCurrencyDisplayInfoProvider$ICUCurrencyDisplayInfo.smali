.class Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.super Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCurrencyDisplayInfo"
.end annotation


# instance fields
.field private _nameMapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _symbolMapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final currencies:Landroid/icu/impl/ICUResourceBundle;

.field private final fallback:Z

.field private final plurals:Landroid/icu/impl/ICUResourceBundle;

.field private final rb:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>(Landroid/icu/impl/ICUResourceBundle;Z)V
    .locals 1
    .param p1, "rb"    # Landroid/icu/impl/ICUResourceBundle;
    .param p2, "fallback"    # Z

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    #@3
    .line 53
    iput-boolean p2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    #@5
    .line 54
    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    #@7
    .line 55
    const-string/jumbo v0, "Currencies"

    #@a
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->currencies:Landroid/icu/impl/ICUResourceBundle;

    #@10
    .line 56
    const-string/jumbo v0, "CurrencyPlurals"

    #@13
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->plurals:Landroid/icu/impl/ICUResourceBundle;

    #@19
    .line 52
    return-void
.end method

.method private _createNameMap()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    new-instance v14, Ljava/util/TreeMap;

    #@2
    sget-object v17, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@4
    move-object/from16 v0, v17

    #@6
    invoke-direct {v14, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@9
    .line 234
    .local v14, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashSet;

    #@b
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    #@e
    .line 235
    .local v15, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    #@10
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 236
    .local v16, "visitedPlurals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    #@17
    move-object/from16 v17, v0

    #@19
    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@1c
    move-result-object v7

    #@1d
    .local v7, "locale":Landroid/icu/util/ULocale;
    :goto_0
    if-eqz v7, :cond_6

    #@1f
    .line 238
    const-string/jumbo v17, "android/icu/impl/data/icudt55b/curr"

    #@22
    move-object/from16 v0, v17

    #@24
    invoke-static {v0, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@27
    move-result-object v1

    #@28
    .line 237
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@2a
    .line 239
    .local v1, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v17, "Currencies"

    #@2d
    move-object/from16 v0, v17

    #@2f
    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@32
    move-result-object v2

    #@33
    .line 240
    .local v2, "curr":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v2, :cond_1

    #@35
    .line 241
    const/4 v3, 0x0

    #@36
    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@39
    move-result v17

    #@3a
    move/from16 v0, v17

    #@3c
    if-ge v3, v0, :cond_1

    #@3e
    .line 242
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@41
    move-result-object v5

    #@42
    .line 243
    .local v5, "item":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 244
    .local v4, "isoCode":Ljava/lang/String;
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@49
    move-result v17

    #@4a
    if-nez v17, :cond_0

    #@4c
    .line 245
    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4f
    .line 247
    const/16 v17, 0x1

    #@51
    move/from16 v0, v17

    #@53
    invoke-virtual {v5, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    .line 248
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v14, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 241
    .end local v8    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 253
    .end local v3    # "i":I
    .end local v4    # "isoCode":Ljava/lang/String;
    .end local v5    # "item":Landroid/icu/impl/ICUResourceBundle;
    :cond_1
    const-string/jumbo v17, "CurrencyPlurals"

    #@60
    move-object/from16 v0, v17

    #@62
    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@65
    move-result-object v13

    #@66
    .line 254
    .local v13, "plurals":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v13, :cond_5

    #@68
    .line 255
    const/4 v3, 0x0

    #@69
    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v13}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@6c
    move-result v17

    #@6d
    move/from16 v0, v17

    #@6f
    if-ge v3, v0, :cond_5

    #@71
    .line 256
    invoke-virtual {v13, v3}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@74
    move-result-object v5

    #@75
    .line 257
    .restart local v5    # "item":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    .line 258
    .restart local v4    # "isoCode":Ljava/lang/String;
    move-object/from16 v0, v16

    #@7b
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v11

    #@7f
    check-cast v11, Ljava/util/Set;

    #@81
    .line 259
    .local v11, "pluralSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v11, :cond_2

    #@83
    .line 260
    new-instance v11, Ljava/util/HashSet;

    #@85
    .end local v11    # "pluralSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@88
    .line 261
    .restart local v11    # "pluralSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@8a
    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 263
    :cond_2
    const/4 v6, 0x0

    #@8e
    .local v6, "j":I
    :goto_3
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@91
    move-result v17

    #@92
    move/from16 v0, v17

    #@94
    if-ge v6, v0, :cond_4

    #@96
    .line 264
    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@99
    move-result-object v9

    #@9a
    .line 265
    .local v9, "plural":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@9d
    move-result-object v12

    #@9e
    .line 266
    .local v12, "pluralType":Ljava/lang/String;
    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a1
    move-result v17

    #@a2
    if-nez v17, :cond_3

    #@a4
    .line 267
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@a7
    move-result-object v10

    #@a8
    .line 268
    .local v10, "pluralName":Ljava/lang/String;
    invoke-interface {v14, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 269
    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ae
    .line 263
    .end local v10    # "pluralName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@b0
    goto :goto_3

    #@b1
    .line 255
    .end local v9    # "plural":Landroid/icu/impl/ICUResourceBundle;
    .end local v12    # "pluralType":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@b3
    goto :goto_2

    #@b4
    .line 236
    .end local v3    # "i":I
    .end local v4    # "isoCode":Ljava/lang/String;
    .end local v5    # "item":Landroid/icu/impl/ICUResourceBundle;
    .end local v6    # "j":I
    .end local v11    # "pluralSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    #@b7
    move-result-object v7

    #@b8
    goto/16 :goto_0

    #@ba
    .line 276
    .end local v1    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "curr":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "plurals":Landroid/icu/impl/ICUResourceBundle;
    :cond_6
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@bd
    move-result-object v17

    #@be
    return-object v17
.end method

.method private _createSymbolMap()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    new-instance v6, Ljava/util/HashMap;

    #@2
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 207
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    #@7
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@a
    move-result-object v5

    #@b
    .local v5, "locale":Landroid/icu/util/ULocale;
    :goto_0
    if-eqz v5, :cond_3

    #@d
    .line 209
    const-string/jumbo v8, "android/icu/impl/data/icudt55b/curr"

    #@10
    invoke-static {v8, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v0

    #@14
    .line 208
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@16
    .line 210
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v8, "Currencies"

    #@19
    invoke-virtual {v0, v8}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@1c
    move-result-object v1

    #@1d
    .line 211
    .local v1, "curr":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_1

    #@1f
    .line 207
    :cond_0
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    #@22
    move-result-object v5

    #@23
    goto :goto_0

    #@24
    .line 214
    :cond_1
    const/4 v2, 0x0

    #@25
    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@28
    move-result v8

    #@29
    if-ge v2, v8, :cond_0

    #@2b
    .line 215
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@2e
    move-result-object v4

    #@2f
    .line 216
    .local v4, "item":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 217
    .local v3, "isoCode":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-nez v8, :cond_2

    #@39
    .line 219
    invoke-interface {v6, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 221
    const/4 v8, 0x0

    #@3d
    invoke-virtual {v4, v8}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 222
    .local v7, "symbol":Ljava/lang/String;
    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 214
    .end local v7    # "symbol":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_1

    #@47
    .line 227
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "curr":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "i":I
    .end local v3    # "isoCode":Ljava/lang/String;
    .end local v4    # "item":Landroid/icu/impl/ICUResourceBundle;
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@4a
    move-result-object v8

    #@4b
    return-object v8
.end method

.method private getName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "symbolName"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 75
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->currencies:Landroid/icu/impl/ICUResourceBundle;

    #@3
    if-eqz v3, :cond_3

    #@5
    .line 76
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->currencies:Landroid/icu/impl/ICUResourceBundle;

    #@7
    invoke-virtual {v3, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@a
    move-result-object v0

    #@b
    .line 77
    .local v0, "result":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v0, :cond_3

    #@d
    .line 78
    iget-boolean v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    #@f
    if-nez v3, :cond_1

    #@11
    .line 79
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getLoadingStatus()I

    #@14
    move-result v1

    #@15
    .line 80
    .local v1, "status":I
    const/4 v3, 0x3

    #@16
    if-eq v1, v3, :cond_0

    #@18
    .line 81
    const/4 v3, 0x2

    #@19
    if-ne v1, v3, :cond_1

    #@1b
    .line 82
    :cond_0
    return-object v2

    #@1c
    .line 85
    .end local v1    # "status":I
    :cond_1
    if-eqz p2, :cond_2

    #@1e
    const/4 v2, 0x0

    #@1f
    :goto_0
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    :cond_2
    const/4 v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 89
    .end local v0    # "result":Landroid/icu/impl/ICUResourceBundle;
    :cond_3
    iget-boolean v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    #@28
    if-eqz v3, :cond_4

    #@2a
    .end local p1    # "isoCode":Ljava/lang/String;
    :goto_1
    return-object p1

    #@2b
    .restart local p1    # "isoCode":Ljava/lang/String;
    :cond_4
    move-object p1, v2

    #@2c
    goto :goto_1
.end method


# virtual methods
.method public getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .locals 8
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    .line 169
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->currencies:Landroid/icu/impl/ICUResourceBundle;

    #@5
    invoke-virtual {v4, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@8
    move-result-object v0

    #@9
    .line 170
    .local v0, "crb":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@e
    move-result v4

    #@f
    if-le v4, v6, :cond_0

    #@11
    .line 171
    invoke-virtual {v0, v6}, Landroid/icu/impl/ICUResourceBundle;->at(I)Landroid/icu/impl/ICUResourceBundle;

    #@14
    move-result-object v0

    #@15
    .line 172
    if-eqz v0, :cond_0

    #@17
    .line 173
    invoke-virtual {v0, v5}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 174
    .local v2, "pattern":Ljava/lang/String;
    const/4 v4, 0x1

    #@1c
    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v3

    #@24
    .line 175
    .local v3, "separator":C
    invoke-virtual {v0, v6}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    .line 176
    .local v1, "groupingSeparator":C
    new-instance v4, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    #@2e
    invoke-direct {v4, v2, v3, v1}, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;-><init>(Ljava/lang/String;CC)V

    #@31
    return-object v4

    #@32
    .line 179
    .end local v1    # "groupingSeparator":C
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "separator":C
    :cond_0
    return-object v7
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getName(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "pluralKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->plurals:Landroid/icu/impl/ICUResourceBundle;

    #@3
    if-eqz v3, :cond_2

    #@5
    .line 96
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->plurals:Landroid/icu/impl/ICUResourceBundle;

    #@7
    invoke-virtual {v3, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@a
    move-result-object v1

    #@b
    .line 97
    .local v1, "pluralsBundle":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_2

    #@d
    .line 98
    invoke-virtual {v1, p2}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 99
    .local v0, "pluralName":Ljava/lang/String;
    if-nez v0, :cond_1

    #@13
    .line 100
    iget-boolean v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    #@15
    if-nez v3, :cond_0

    #@17
    .line 101
    return-object v2

    #@18
    .line 103
    :cond_0
    const-string/jumbo v2, "other"

    #@1b
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 104
    if-nez v0, :cond_1

    #@21
    .line 105
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 108
    :cond_1
    return-object v0

    #@27
    .line 112
    .end local v0    # "pluralName":Ljava/lang/String;
    .end local v1    # "pluralsBundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_2
    iget-boolean v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    #@29
    if-eqz v3, :cond_3

    #@2b
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    :cond_3
    return-object v2
.end method

.method public getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .locals 12

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 184
    iget-object v10, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    #@3
    const-string/jumbo v11, "currencySpacing"

    #@6
    invoke-virtual {v10, v11}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@9
    move-result-object v9

    #@a
    .line 185
    .local v9, "srb":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v9, :cond_0

    #@c
    .line 186
    const-string/jumbo v10, "beforeCurrency"

    #@f
    invoke-virtual {v9, v10}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@12
    move-result-object v8

    #@13
    .line 187
    .local v8, "brb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v10, "afterCurrency"

    #@16
    invoke-virtual {v9, v10}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@19
    move-result-object v7

    #@1a
    .line 188
    .local v7, "arb":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v7, :cond_0

    #@1c
    if-eqz v8, :cond_0

    #@1e
    .line 189
    const-string/jumbo v0, "currencyMatch"

    #@21
    invoke-virtual {v8, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 190
    .local v1, "beforeCurrencyMatch":Ljava/lang/String;
    const-string/jumbo v0, "surroundingMatch"

    #@28
    invoke-virtual {v8, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 191
    .local v2, "beforeContextMatch":Ljava/lang/String;
    const-string/jumbo v0, "insertBetween"

    #@2f
    invoke-virtual {v8, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 192
    .local v3, "beforeInsert":Ljava/lang/String;
    const-string/jumbo v0, "currencyMatch"

    #@36
    invoke-virtual {v7, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 193
    .local v4, "afterCurrencyMatch":Ljava/lang/String;
    const-string/jumbo v0, "surroundingMatch"

    #@3d
    invoke-virtual {v7, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 194
    .local v5, "afterContextMatch":Ljava/lang/String;
    const-string/jumbo v0, "insertBetween"

    #@44
    invoke-virtual {v7, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 196
    .local v6, "afterInsert":Ljava/lang/String;
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@4a
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    return-object v0

    #@4e
    .line 201
    .end local v1    # "beforeCurrencyMatch":Ljava/lang/String;
    .end local v2    # "beforeContextMatch":Ljava/lang/String;
    .end local v3    # "beforeInsert":Ljava/lang/String;
    .end local v4    # "afterCurrencyMatch":Ljava/lang/String;
    .end local v5    # "afterContextMatch":Ljava/lang/String;
    .end local v6    # "afterInsert":Ljava/lang/String;
    .end local v7    # "arb":Landroid/icu/impl/ICUResourceBundle;
    .end local v8    # "brb":Landroid/icu/impl/ICUResourceBundle;
    :cond_0
    iget-boolean v10, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    #@50
    if-eqz v10, :cond_1

    #@52
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    #@54
    :cond_1
    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getName(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUnitPatterns()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    new-instance v6, Ljava/util/HashMap;

    #@2
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 141
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    #@7
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@a
    move-result-object v4

    #@b
    .line 142
    .local v4, "locale":Landroid/icu/util/ULocale;
    :goto_0
    if-eqz v4, :cond_3

    #@d
    .line 144
    const-string/jumbo v8, "android/icu/impl/data/icudt55b/curr"

    #@10
    .line 143
    invoke-static {v8, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@16
    .line 145
    .local v5, "r":Landroid/icu/impl/ICUResourceBundle;
    if-nez v5, :cond_1

    #@18
    .line 142
    :cond_0
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    #@1b
    move-result-object v4

    #@1c
    goto :goto_0

    #@1d
    .line 148
    :cond_1
    const-string/jumbo v8, "CurrencyUnitPatterns"

    #@20
    invoke-virtual {v5, v8}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@23
    move-result-object v1

    #@24
    .line 149
    .local v1, "cr":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_0

    #@26
    .line 152
    const/4 v2, 0x0

    #@27
    .local v2, "index":I
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@2a
    move-result v7

    #@2b
    .local v7, "size":I
    :goto_1
    if-ge v2, v7, :cond_0

    #@2d
    .line 153
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@33
    .line 154
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 155
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_2

    #@3d
    .line 152
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 158
    :cond_2
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    goto :goto_2

    #@48
    .line 164
    .end local v0    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "cr":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "index":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "r":Landroid/icu/impl/ICUResourceBundle;
    .end local v7    # "size":I
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@4b
    move-result-object v8

    #@4c
    return-object v8
.end method

.method public nameMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_nameMapRef:Ljava/lang/ref/SoftReference;

    #@2
    if-nez v1, :cond_1

    #@4
    const/4 v0, 0x0

    #@5
    .line 129
    :goto_0
    if-nez v0, :cond_0

    #@7
    .line 130
    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_createNameMap()Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    .line 132
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@d
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@10
    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_nameMapRef:Ljava/lang/ref/SoftReference;

    #@12
    .line 134
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    #@13
    .line 128
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_nameMapRef:Ljava/lang/ref/SoftReference;

    #@15
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map;

    #@1b
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public symbolMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_symbolMapRef:Ljava/lang/ref/SoftReference;

    #@2
    if-nez v1, :cond_1

    #@4
    const/4 v0, 0x0

    #@5
    .line 118
    :goto_0
    if-nez v0, :cond_0

    #@7
    .line 119
    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_createSymbolMap()Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    .line 121
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@d
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@10
    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_symbolMapRef:Ljava/lang/ref/SoftReference;

    #@12
    .line 123
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    #@13
    .line 117
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->_symbolMapRef:Ljava/lang/ref/SoftReference;

    #@15
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map;

    #@1b
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method
