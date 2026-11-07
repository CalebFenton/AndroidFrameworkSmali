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


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist built:Landroid/icu/util/LocalePriorityList;

.field private blacklist hasWeights:Z

.field private greylist-max-o languageToWeight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    const-class v0, Landroid/icu/util/LocalePriorityList;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 229
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 230
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/LocalePriorityList-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/LocalePriorityList$Builder;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/util/LocalePriorityList;)V
    .registers 8
    .param p1, "list"    # Landroid/icu/util/LocalePriorityList;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 233
    iput-object p1, p0, Landroid/icu/util/LocalePriorityList$Builder;->built:Landroid/icu/util/LocalePriorityList;

    .line 234
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->-$$Nest$fgetlanguagesAndWeights(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 235
    .local v1, "value":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 236
    .local v2, "weight":D
    nop

    .line 237
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_2f

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 239
    goto :goto_30

    .line 241
    .end local v1    # "value":Ljava/lang/Double;
    .end local v2    # "weight":D
    :cond_2f
    goto :goto_14

    .line 242
    :cond_30
    :goto_30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocalePriorityList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 7
    .param p1, "list"    # Landroid/icu/util/LocalePriorityList;

    .line 312
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->-$$Nest$fgetlanguagesAndWeights(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    .line 314
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    goto :goto_c

    .line 315
    :cond_2c
    return-object p0
.end method

.method public greylist-max-o add(Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 325
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "weight"    # D

    .line 352
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 354
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->built:Landroid/icu/util/LocalePriorityList;

    invoke-static {v1}, Landroid/icu/util/LocalePriorityList;->-$$Nest$fgetlanguagesAndWeights(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->built:Landroid/icu/util/LocalePriorityList;

    .line 357
    :cond_14
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 358
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_21
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_28

    .line 362
    return-object p0

    .line 363
    :cond_28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_33

    .line 364
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-$$Nest$sfgetD1()Ljava/lang/Double;

    move-result-object v0

    .local v0, "value":Ljava/lang/Double;
    goto :goto_3a

    .line 366
    .end local v0    # "value":Ljava/lang/Double;
    :cond_33
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 367
    .restart local v0    # "value":Ljava/lang/Double;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 369
    :goto_3a
    iget-object v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-object p0
.end method

.method public greylist-max-o add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 12
    .param p1, "acceptLanguageList"    # Ljava/lang/String;

    .line 380
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-$$Nest$sfgetlanguageSplitter()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "items":[Ljava/lang/String;
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-$$Nest$sfgetweightSplitter()Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 382
    .local v1, "itemMatcher":Ljava/util/regex/Matcher;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_75

    aget-object v4, v0, v3

    .line 383
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 384
    new-instance v5, Landroid/icu/util/ULocale;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 385
    .local v5, "language":Landroid/icu/util/ULocale;
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 386
    .local v6, "weight":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v8, v6

    if-gtz v8, :cond_49

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_49

    .line 390
    invoke-virtual {p0, v5, v6, v7}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    .end local v5    # "language":Landroid/icu/util/ULocale;
    .end local v6    # "weight":D
    goto :goto_71

    .line 387
    .restart local v5    # "language":Landroid/icu/util/ULocale;
    .restart local v6    # "weight":D
    :cond_49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal weight, must be 0..1: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v5    # "language":Landroid/icu/util/ULocale;
    .end local v6    # "weight":D
    :cond_62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_71

    .line 392
    new-instance v5, Landroid/icu/util/ULocale;

    invoke-direct {v5, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    goto :goto_72

    .line 391
    :cond_71
    :goto_71
    nop

    .line 382
    .end local v4    # "item":Ljava/lang/String;
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 395
    :cond_75
    return-object p0
.end method

.method public varargs blacklist add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 7
    .param p1, "locales"    # [Landroid/icu/util/ULocale;

    .line 335
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 336
    .local v2, "languageCode":Landroid/icu/util/ULocale;
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    .line 335
    .end local v2    # "languageCode":Landroid/icu/util/ULocale;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    :cond_e
    return-object p0
.end method

.method public greylist-max-o build()Landroid/icu/util/LocalePriorityList;
    .registers 2

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/util/LocalePriorityList$Builder;->build(Z)Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o build(Z)Landroid/icu/util/LocalePriorityList;
    .registers 9
    .param p1, "preserveWeights"    # Z

    .line 261
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->built:Landroid/icu/util/LocalePriorityList;

    if-eqz v0, :cond_7

    .line 264
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->built:Landroid/icu/util/LocalePriorityList;

    return-object v0

    .line 267
    :cond_7
    iget-boolean v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    if-eqz v0, :cond_b0

    .line 269
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-$$Nest$sfgetmyDescendingDouble()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 271
    .local v0, "weightToLanguages":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Double;Ljava/util/List<Landroid/icu/util/ULocale;>;>;"
    iget-object v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 272
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    .line 273
    .local v3, "lang":Landroid/icu/util/ULocale;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 274
    .local v4, "weight":Ljava/lang/Double;
    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 275
    .local v5, "s":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    if-nez v5, :cond_47

    .line 276
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move-object v5, v6

    invoke-virtual {v0, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_47
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    .end local v3    # "lang":Landroid/icu/util/ULocale;
    .end local v4    # "weight":Ljava/lang/Double;
    .end local v5    # "s":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/ULocale;>;"
    goto :goto_1e

    .line 282
    :cond_4b
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6e

    .line 284
    iget-object v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 285
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_af

    .line 286
    :cond_6a
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    goto :goto_af

    .line 289
    .end local v1    # "temp":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    :cond_6e
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 290
    .restart local v1    # "temp":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 291
    .local v3, "langEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/util/List<Landroid/icu/util/ULocale;>;>;"
    if-eqz p1, :cond_90

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    goto :goto_94

    :cond_90
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->-$$Nest$sfgetD1()Ljava/lang/Double;

    move-result-object v4

    .line 292
    .restart local v4    # "weight":Ljava/lang/Double;
    :goto_94
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/ULocale;

    .line 293
    .local v6, "lang":Landroid/icu/util/ULocale;
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v6    # "lang":Landroid/icu/util/ULocale;
    goto :goto_9e

    .line 295
    .end local v3    # "langEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/util/List<Landroid/icu/util/ULocale;>;>;"
    .end local v4    # "weight":Ljava/lang/Double;
    :cond_ae
    goto :goto_7b

    .line 297
    .end local v0    # "weightToLanguages":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Double;Ljava/util/List<Landroid/icu/util/ULocale;>;>;"
    :cond_af
    :goto_af
    goto :goto_b2

    .line 299
    .end local v1    # "temp":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    :cond_b0
    iget-object v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 301
    .restart local v1    # "temp":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    :goto_b2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 302
    new-instance v2, Landroid/icu/util/LocalePriorityList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;Landroid/icu/util/LocalePriorityList-IA;)V

    iput-object v2, p0, Landroid/icu/util/LocalePriorityList$Builder;->built:Landroid/icu/util/LocalePriorityList;

    return-object v2
.end method
