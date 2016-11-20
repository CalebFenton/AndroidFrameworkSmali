.class final Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
.super Landroid/icu/impl/UResource$TableSink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoneStringsLoader"
.end annotation


# static fields
.field private static final INITIAL_NUM_ZONES:I = 0x12c


# instance fields
.field private keyToLoader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/impl/UResource$Key;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/icu/impl/TimeZoneNamesImpl;


# direct methods
.method private constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/icu/impl/TimeZoneNamesImpl;

    #@0
    .prologue
    .line 299
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    #@2
    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    #@5
    .line 306
    new-instance v0, Ljava/util/HashMap;

    #@7
    const/16 v1, 0x12c

    #@9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@c
    .line 305
    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    #@e
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    const/16 v1, 0x20

    #@12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@15
    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@17
    .line 299
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/TimeZoneNamesImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;)V

    #@3
    return-void
.end method

.method private mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 372
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 373
    const-string/jumbo v1, "meta:"

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    #@10
    move-result v1

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 374
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@15
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 373
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 376
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method private tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 380
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 381
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 382
    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 383
    .local v0, "c":C
    const/16 v2, 0x3a

    #@13
    if-ne v0, v2, :cond_0

    #@15
    .line 384
    const/16 v0, 0x2f

    #@17
    .line 386
    .end local v0    # "c":C
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 381
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 388
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 6
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "initialSize"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 331
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@9
    .line 332
    .local v0, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    if-eqz v0, :cond_1

    #@b
    .line 333
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@e
    move-result-object v4

    #@f
    if-ne v0, v4, :cond_0

    #@11
    .line 334
    return-object v5

    #@12
    .line 336
    :cond_0
    return-object v0

    #@13
    .line 338
    :cond_1
    const/4 v2, 0x0

    #@14
    .line 339
    .local v2, "result":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    const-string/jumbo v4, "meta:"

    #@17
    invoke-virtual {p1, v4}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 340
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 341
    .local v1, "mzID":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    #@23
    invoke-static {v4}, Landroid/icu/impl/TimeZoneNamesImpl;->-get1(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_2

    #@2d
    .line 343
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@30
    move-result-object v0

    #@31
    .line 356
    .end local v1    # "mzID":Ljava/lang/String;
    .end local v2    # "result":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    #@33
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 357
    return-object v2

    #@3b
    .line 345
    .restart local v1    # "mzID":Ljava/lang/String;
    .restart local v2    # "result":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    :cond_2
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@3e
    move-result-object v0

    #@3f
    move-object v2, v0

    #@40
    .local v2, "result":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    goto :goto_0

    #@41
    .line 348
    .end local v1    # "mzID":Ljava/lang/String;
    .local v2, "result":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 349
    .local v3, "tzID":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    #@47
    invoke-static {v4}, Landroid/icu/impl/TimeZoneNamesImpl;->-get2(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_4

    #@51
    .line 351
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@54
    move-result-object v0

    #@55
    goto :goto_0

    #@56
    .line 353
    :cond_4
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forTimeZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@59
    move-result-object v0

    #@5a
    move-object v2, v0

    #@5b
    .local v2, "result":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    goto :goto_0
.end method

.method load()V
    .locals 10

    #@0
    .prologue
    .line 311
    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    #@2
    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl;->-get3(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;

    #@5
    move-result-object v8

    #@6
    const-string/jumbo v9, ""

    #@9
    invoke-virtual {v8, v9, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V

    #@c
    .line 312
    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    #@e
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v8

    #@12
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 313
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/UResource$Key;Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/icu/impl/UResource$Key;

    #@28
    .line 314
    .local v2, "key":Landroid/icu/impl/UResource$Key;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@2e
    .line 315
    .local v3, "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@31
    move-result-object v8

    #@32
    if-eq v3, v8, :cond_0

    #@34
    .line 317
    const-string/jumbo v8, "meta:"

    #@37
    invoke-virtual {v2, v8}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_1

    #@3d
    .line 318
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 319
    .local v4, "mzID":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-wrap0(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    const/4 v9, 0x0

    #@4a
    invoke-static {v8, v9}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@4d
    move-result-object v5

    #@4e
    .line 320
    .local v5, "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    #@50
    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl;->-get1(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    goto :goto_0

    #@58
    .line 322
    .end local v4    # "mzID":Ljava/lang/String;
    .end local v5    # "mzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_1
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .line 323
    .local v6, "tzID":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-wrap0(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-static {v8, v6}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@67
    move-result-object v7

    #@68
    .line 324
    .local v7, "tzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    iget-object v8, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    #@6a
    invoke-static {v8}, Landroid/icu/impl/TimeZoneNamesImpl;->-get2(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    #@6d
    move-result-object v8

    #@6e
    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    goto :goto_0

    #@72
    .line 310
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/UResource$Key;Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;>;"
    .end local v2    # "key":Landroid/icu/impl/UResource$Key;
    .end local v3    # "loader":Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .end local v6    # "tzID":Ljava/lang/String;
    .end local v7    # "tzNames":Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :cond_2
    return-void
.end method

.method public putNoFallback(Landroid/icu/impl/UResource$Key;)V
    .locals 3
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 363
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    #@a
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    #@d
    move-result-object v1

    #@e
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 361
    :cond_0
    return-void
.end method
