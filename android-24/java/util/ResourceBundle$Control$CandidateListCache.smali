.class Ljava/util/ResourceBundle$Control$CandidateListCache;
.super Lsun/util/locale/LocaleObjectCache;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateListCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Lsun/util/locale/BaseLocale;",
        "Ljava/util/List",
        "<",
        "Ljava/util/Locale;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2311
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ResourceBundle$Control$CandidateListCache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>()V

    #@3
    return-void
.end method

.method private static getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 2376
    const/4 v4, 0x0

    #@3
    .line 2378
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    if-lez v5, :cond_0

    #@9
    .line 2379
    new-instance v4, Ljava/util/LinkedList;

    #@b
    .end local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    #@e
    .line 2380
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    .line 2381
    .local v0, "idx":I
    :goto_0
    const/4 v5, -0x1

    #@13
    if-eq v0, v5, :cond_0

    #@15
    .line 2382
    invoke-virtual {p3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 2383
    const/16 v5, 0x5f

    #@1e
    add-int/lit8 v0, v0, -0x1

    #@20
    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->lastIndexOf(II)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 2387
    .end local v0    # "idx":I
    .end local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    #@27
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@2a
    .line 2389
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-eqz v4, :cond_1

    #@2c
    .line 2390
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v3

    #@30
    .local v3, "v$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/lang/String;

    #@3c
    .line 2391
    .local v2, "v":Ljava/lang/String;
    invoke-static {p0, p1, p2, v2, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_1

    #@44
    .line 2394
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "v$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@47
    move-result v5

    #@48
    if-lez v5, :cond_2

    #@4a
    .line 2395
    const-string/jumbo v5, ""

    #@4d
    invoke-static {p0, p1, p2, v5, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@50
    move-result-object v5

    #@51
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    .line 2397
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@57
    move-result v5

    #@58
    if-lez v5, :cond_4

    #@5a
    .line 2398
    const-string/jumbo v5, ""

    #@5d
    const-string/jumbo v6, ""

    #@60
    invoke-static {p0, p1, v5, v6, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@63
    move-result-object v5

    #@64
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@67
    .line 2402
    if-eqz v4, :cond_3

    #@69
    .line 2403
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v3

    #@6d
    .restart local v3    # "v$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v5

    #@71
    if-eqz v5, :cond_3

    #@73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v2

    #@77
    check-cast v2, Ljava/lang/String;

    #@79
    .line 2404
    .restart local v2    # "v":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@7c
    invoke-static {p0, v5, p2, v2, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@7f
    move-result-object v5

    #@80
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@83
    goto :goto_2

    #@84
    .line 2407
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "v$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@87
    move-result v5

    #@88
    if-lez v5, :cond_4

    #@8a
    .line 2408
    const-string/jumbo v5, ""

    #@8d
    const-string/jumbo v6, ""

    #@90
    invoke-static {p0, v5, p2, v6, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@93
    move-result-object v5

    #@94
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@97
    .line 2411
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9a
    move-result v5

    #@9b
    if-lez v5, :cond_5

    #@9d
    .line 2412
    const-string/jumbo v5, ""

    #@a0
    const-string/jumbo v6, ""

    #@a3
    const-string/jumbo v7, ""

    #@a6
    invoke-static {p0, v5, v6, v7, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@a9
    move-result-object v5

    #@aa
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ad
    .line 2415
    :cond_5
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@af
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b2
    .line 2417
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2312
    check-cast p1, Lsun/util/locale/BaseLocale;

    #@2
    .end local p1    # "base":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle$Control$CandidateListCache;->createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;
    .locals 18
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/locale/BaseLocale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2313
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v7

    #@4
    .line 2314
    .local v7, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    #@7
    move-result-object v10

    #@8
    .line 2315
    .local v10, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    #@b
    move-result-object v9

    #@c
    .line 2316
    .local v9, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    #@f
    move-result-object v12

    #@10
    .line 2319
    .local v12, "variant":Ljava/lang/String;
    const/4 v3, 0x0

    #@11
    .line 2320
    .local v3, "isNorwegianBokmal":Z
    const/4 v4, 0x0

    #@12
    .line 2321
    .local v4, "isNorwegianNynorsk":Z
    const-string/jumbo v13, "no"

    #@15
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v13

    #@19
    if-eqz v13, :cond_0

    #@1b
    .line 2322
    const-string/jumbo v13, "NO"

    #@1e
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v13

    #@22
    if-eqz v13, :cond_3

    #@24
    const-string/jumbo v13, "NY"

    #@27
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v13

    #@2b
    if-eqz v13, :cond_3

    #@2d
    .line 2323
    const-string/jumbo v12, ""

    #@30
    .line 2324
    const/4 v4, 0x1

    #@31
    .line 2329
    :cond_0
    :goto_0
    const-string/jumbo v13, "nb"

    #@34
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v13

    #@38
    if-nez v13, :cond_1

    #@3a
    if-eqz v3, :cond_5

    #@3c
    .line 2330
    :cond_1
    const-string/jumbo v13, "nb"

    #@3f
    invoke-static {v13, v10, v9, v12}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@42
    move-result-object v11

    #@43
    .line 2332
    .local v11, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    new-instance v0, Ljava/util/LinkedList;

    #@45
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@48
    .line 2333
    .local v0, "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v6

    #@4c
    .local v6, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v13

    #@50
    if-eqz v13, :cond_2

    #@52
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v5

    #@56
    check-cast v5, Ljava/util/Locale;

    #@58
    .line 2334
    .local v5, "l":Ljava/util/Locale;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 2335
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5e
    move-result-object v13

    #@5f
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@62
    move-result v13

    #@63
    if-nez v13, :cond_4

    #@65
    .line 2341
    .end local v5    # "l":Ljava/util/Locale;
    :cond_2
    return-object v0

    #@66
    .line 2326
    .end local v0    # "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "l$iterator":Ljava/util/Iterator;
    .end local v11    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_3
    const/4 v3, 0x1

    #@67
    goto :goto_0

    #@68
    .line 2338
    .restart local v0    # "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v5    # "l":Ljava/util/Locale;
    .restart local v6    # "l$iterator":Ljava/util/Iterator;
    .restart local v11    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_4
    const-string/jumbo v13, "no"

    #@6b
    invoke-virtual {v5}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@6e
    move-result-object v14

    #@6f
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@72
    move-result-object v15

    #@73
    .line 2339
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@76
    move-result-object v16

    #@77
    const/16 v17, 0x0

    #@79
    .line 2338
    invoke-static/range {v13 .. v17}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    #@7c
    move-result-object v13

    #@7d
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_1

    #@81
    .line 2342
    .end local v0    # "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "l$iterator":Ljava/util/Iterator;
    .end local v11    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_5
    const-string/jumbo v13, "nn"

    #@84
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v13

    #@88
    if-nez v13, :cond_6

    #@8a
    if-eqz v4, :cond_7

    #@8c
    .line 2344
    :cond_6
    const-string/jumbo v13, "nn"

    #@8f
    invoke-static {v13, v10, v9, v12}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@92
    move-result-object v8

    #@93
    .line 2345
    .local v8, "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@96
    move-result v13

    #@97
    add-int/lit8 v1, v13, -0x1

    #@99
    .line 2346
    .local v1, "idx":I
    add-int/lit8 v2, v1, 0x1

    #@9b
    .end local v1    # "idx":I
    .local v2, "idx":I
    const-string/jumbo v13, "no"

    #@9e
    const-string/jumbo v14, "NO"

    #@a1
    const-string/jumbo v15, "NY"

    #@a4
    invoke-static {v13, v14, v15}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@a7
    move-result-object v13

    #@a8
    invoke-interface {v8, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@ab
    .line 2347
    add-int/lit8 v1, v2, 0x1

    #@ad
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    const-string/jumbo v13, "no"

    #@b0
    const-string/jumbo v14, "NO"

    #@b3
    const-string/jumbo v15, ""

    #@b6
    invoke-static {v13, v14, v15}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@b9
    move-result-object v13

    #@ba
    invoke-interface {v8, v2, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@bd
    .line 2348
    add-int/lit8 v2, v1, 0x1

    #@bf
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    const-string/jumbo v13, "no"

    #@c2
    const-string/jumbo v14, ""

    #@c5
    const-string/jumbo v15, ""

    #@c8
    invoke-static {v13, v14, v15}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    #@cb
    move-result-object v13

    #@cc
    invoke-interface {v8, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@cf
    .line 2349
    return-object v8

    #@d0
    .line 2352
    .end local v2    # "idx":I
    .end local v8    # "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_7
    const-string/jumbo v13, "zh"

    #@d3
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v13

    #@d7
    if-eqz v13, :cond_9

    #@d9
    .line 2353
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@dc
    move-result v13

    #@dd
    if-nez v13, :cond_c

    #@df
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@e2
    move-result v13

    #@e3
    if-lez v13, :cond_c

    #@e5
    .line 2356
    const-string/jumbo v13, "TW"

    #@e8
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v13

    #@ec
    if-nez v13, :cond_8

    #@ee
    const-string/jumbo v13, "HK"

    #@f1
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f4
    move-result v13

    #@f5
    if-nez v13, :cond_8

    #@f7
    const-string/jumbo v13, "MO"

    #@fa
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fd
    move-result v13

    #@fe
    if-eqz v13, :cond_a

    #@100
    .line 2357
    :cond_8
    const-string/jumbo v10, "Hant"

    #@103
    .line 2372
    :cond_9
    :goto_2
    invoke-static {v7, v10, v9, v12}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@106
    move-result-object v13

    #@107
    return-object v13

    #@108
    .line 2358
    :cond_a
    const-string/jumbo v13, "CN"

    #@10b
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10e
    move-result v13

    #@10f
    if-nez v13, :cond_b

    #@111
    const-string/jumbo v13, "SG"

    #@114
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@117
    move-result v13

    #@118
    if-eqz v13, :cond_9

    #@11a
    .line 2359
    :cond_b
    const-string/jumbo v10, "Hans"

    #@11d
    goto :goto_2

    #@11e
    .line 2361
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@121
    move-result v13

    #@122
    if-lez v13, :cond_9

    #@124
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@127
    move-result v13

    #@128
    if-nez v13, :cond_9

    #@12a
    .line 2364
    const-string/jumbo v13, "Hans"

    #@12d
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@130
    move-result v13

    #@131
    if-eqz v13, :cond_d

    #@133
    .line 2365
    const-string/jumbo v9, "CN"

    #@136
    goto :goto_2

    #@137
    .line 2366
    :cond_d
    const-string/jumbo v13, "Hant"

    #@13a
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v13

    #@13e
    if-eqz v13, :cond_9

    #@140
    .line 2367
    const-string/jumbo v9, "TW"

    #@143
    goto :goto_2
.end method
