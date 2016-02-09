.class public Landroid/icu/util/LocalePriorityList$Builder;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocalePriorityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final languageToWeight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 209
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    .line 208
    iput-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    #@a
    .line 214
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/LocalePriorityList$Builder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/util/LocalePriorityList$Builder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 4
    .param p1, "languagePriorityList"    # Landroid/icu/util/LocalePriorityList;

    #@0
    .prologue
    .line 269
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->-get2(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "language$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/icu/util/ULocale;

    #@18
    .line 271
    .local v0, "language":Landroid/icu/util/ULocale;
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->-get2(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/Double;

    #@22
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@25
    move-result-wide v2

    #@26
    invoke-virtual {p0, v0, v2, v3}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    #@29
    goto :goto_0

    #@2a
    .line 273
    .end local v0    # "language":Landroid/icu/util/ULocale;
    :cond_0
    return-object p0
.end method

.method public add(Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2
    .param p1, "languageCode"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 284
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get0()Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@7
    move-result-wide v0

    #@8
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2
    .param p1, "languageCode"    # Landroid/icu/util/ULocale;
    .param p2, "weight"    # D

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 313
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 315
    :cond_0
    const-wide/16 v0, 0x0

    #@f
    cmpg-double v0, p2, v0

    #@11
    if-gtz v0, :cond_1

    #@13
    .line 316
    return-object p0

    #@14
    .line 317
    :cond_1
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get0()Ljava/lang/Double;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@1b
    move-result-wide v0

    #@1c
    cmpl-double v0, p2, v0

    #@1e
    if-lez v0, :cond_2

    #@20
    .line 318
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get0()Ljava/lang/Double;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@27
    move-result-wide p2

    #@28
    .line 320
    :cond_2
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    #@2a
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 321
    return-object p0
.end method

.method public add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 14
    .param p1, "acceptLanguageList"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 332
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get1()Ljava/util/regex/Pattern;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v9

    #@a
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 333
    .local v2, "items":[Ljava/lang/String;
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get4()Ljava/util/regex/Pattern;

    #@11
    move-result-object v6

    #@12
    const-string/jumbo v9, ""

    #@15
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@18
    move-result-object v1

    #@19
    .line 334
    .local v1, "itemMatcher":Ljava/util/regex/Matcher;
    array-length v10, v2

    #@1a
    move v9, v8

    #@1b
    :goto_0
    if-ge v9, v10, :cond_4

    #@1d
    aget-object v0, v2, v9

    #@1f
    .line 335
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 336
    new-instance v3, Landroid/icu/util/ULocale;

    #@2b
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-direct {v3, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@32
    .line 337
    .local v3, "language":Landroid/icu/util/ULocale;
    const/4 v6, 0x2

    #@33
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3a
    move-result-wide v4

    #@3b
    .line 338
    .local v4, "weight":D
    const-wide/16 v12, 0x0

    #@3d
    cmpl-double v6, v4, v12

    #@3f
    if-ltz v6, :cond_0

    #@41
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get0()Ljava/lang/Double;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    #@48
    move-result-wide v12

    #@49
    cmpg-double v6, v4, v12

    #@4b
    if-gtz v6, :cond_0

    #@4d
    move v6, v7

    #@4e
    :goto_1
    if-nez v6, :cond_1

    #@50
    .line 339
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@52
    new-instance v7, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v8, "Illegal weight, must be 0..1: "

    #@5a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v6

    #@6a
    :cond_0
    move v6, v8

    #@6b
    .line 338
    goto :goto_1

    #@6c
    .line 342
    :cond_1
    invoke-virtual {p0, v3, v4, v5}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    #@6f
    .line 334
    .end local v3    # "language":Landroid/icu/util/ULocale;
    .end local v4    # "weight":D
    :cond_2
    :goto_2
    add-int/lit8 v6, v9, 0x1

    #@71
    move v9, v6

    #@72
    goto :goto_0

    #@73
    .line 343
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_2

    #@79
    .line 344
    new-instance v6, Landroid/icu/util/ULocale;

    #@7b
    invoke-direct {v6, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@7e
    invoke-virtual {p0, v6}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    #@81
    goto :goto_2

    #@82
    .line 347
    .end local v0    # "item":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public varargs add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 6
    .param p1, "languageCodes"    # [Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 295
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p1, v1

    #@6
    .line 296
    .local v0, "languageCode":Landroid/icu/util/ULocale;
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get0()Ljava/lang/Double;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    #@d
    move-result-wide v4

    #@e
    invoke-virtual {p0, v0, v4, v5}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    #@11
    .line 295
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 298
    .end local v0    # "languageCode":Landroid/icu/util/ULocale;
    :cond_0
    return-object p0
.end method

.method public build()Landroid/icu/util/LocalePriorityList;
    .locals 1

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/util/LocalePriorityList$Builder;->build(Z)Landroid/icu/util/LocalePriorityList;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public build(Z)Landroid/icu/util/LocalePriorityList;
    .locals 11
    .param p1, "preserveWeights"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 238
    new-instance v0, Ljava/util/TreeMap;

    #@3
    .line 239
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get3()Ljava/util/Comparator;

    #@6
    move-result-object v8

    #@7
    .line 238
    invoke-direct {v0, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@a
    .line 240
    .local v0, "doubleCheck":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;>;"
    iget-object v8, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    #@c
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@f
    move-result-object v8

    #@10
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "lang$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_1

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/icu/util/ULocale;

    #@20
    .line 241
    .local v1, "lang":Landroid/icu/util/ULocale;
    iget-object v8, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    #@22
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Ljava/lang/Double;

    #@28
    .line 242
    .local v7, "weight":Ljava/lang/Double;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Ljava/util/Set;

    #@2e
    .line 243
    .local v5, "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    if-nez v5, :cond_0

    #@30
    .line 244
    new-instance v5, Ljava/util/LinkedHashSet;

    #@32
    .end local v5    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    #@35
    .restart local v5    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 246
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 250
    .end local v1    # "lang":Landroid/icu/util/ULocale;
    .end local v5    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    .end local v7    # "weight":Ljava/lang/Double;
    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    #@3e
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    #@41
    .line 251
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@44
    move-result-object v8

    #@45
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v4

    #@49
    .local v4, "langEntry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_4

    #@4f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Ljava/util/Map$Entry;

    #@55
    .line 252
    .local v3, "langEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@58
    move-result-object v7

    #@59
    check-cast v7, Ljava/lang/Double;

    #@5b
    .line 253
    .restart local v7    # "weight":Ljava/lang/Double;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5e
    move-result-object v8

    #@5f
    check-cast v8, Ljava/util/Set;

    #@61
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v2

    #@65
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v8

    #@69
    if-eqz v8, :cond_2

    #@6b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Landroid/icu/util/ULocale;

    #@71
    .line 254
    .restart local v1    # "lang":Landroid/icu/util/ULocale;
    if-eqz p1, :cond_3

    #@73
    move-object v8, v7

    #@74
    :goto_2
    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    goto :goto_1

    #@78
    :cond_3
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-get0()Ljava/lang/Double;

    #@7b
    move-result-object v8

    #@7c
    goto :goto_2

    #@7d
    .line 257
    .end local v1    # "lang":Landroid/icu/util/ULocale;
    .end local v3    # "langEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;>;"
    .end local v7    # "weight":Ljava/lang/Double;
    :cond_4
    new-instance v8, Landroid/icu/util/LocalePriorityList;

    #@7f
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@82
    move-result-object v9

    #@83
    invoke-direct {v8, v9, v10}, Landroid/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;Landroid/icu/util/LocalePriorityList;)V

    #@86
    return-object v8
.end method
