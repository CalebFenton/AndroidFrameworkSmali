.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$EntryIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedHashMapEntry;,
        Ljava/util/LinkedHashMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field private transient header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/LinkedHashMap;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 217
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 218
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@6
    .line 216
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 208
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@3
    .line 209
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@6
    .line 207
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 196
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@3
    .line 197
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@6
    .line 195
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "accessOrder"    # Z

    #@0
    .prologue
    .line 249
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    #@3
    .line 250
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@5
    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 231
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@3
    .line 232
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    #@6
    .line 230
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@2
    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@4
    .line 451
    .local v0, "eldest":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 453
    iget v2, p0, Ljava/util/LinkedHashMap;->size:I

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    iput v2, p0, Ljava/util/LinkedHashMap;->size:I

    #@e
    .line 455
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    .line 457
    .local v1, "removeEldest":Z
    iget v2, p0, Ljava/util/LinkedHashMap;->size:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Ljava/util/LinkedHashMap;->size:I

    #@18
    .line 459
    if-eqz v1, :cond_0

    #@1a
    .line 460
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    #@1c
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@1f
    .line 464
    .end local v1    # "removeEldest":Z
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    #@22
    .line 443
    return-void

    #@23
    .line 456
    :catchall_0
    move-exception v2

    #@24
    .line 457
    iget v3, p0, Ljava/util/LinkedHashMap;->size:I

    #@26
    add-int/lit8 v3, v3, -0x1

    #@28
    iput v3, p0, Ljava/util/LinkedHashMap;->size:I

    #@2a
    .line 456
    throw v2
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 330
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    #@3
    .line 331
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@5
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@7
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@9
    iput-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@b
    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@d
    .line 329
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v2, 0x1

    #@1
    .line 290
    if-nez p1, :cond_1

    #@3
    .line 291
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@5
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@7
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    :goto_0
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@9
    if-eq v0, v1, :cond_3

    #@b
    .line 292
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 293
    return v2

    #@10
    .line 291
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@12
    goto :goto_0

    #@13
    .line 295
    .end local v0    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    :cond_1
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@15
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@17
    .restart local v0    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    :goto_1
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@19
    if-eq v0, v1, :cond_3

    #@1b
    .line 296
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    #@1d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 297
    return v2

    #@24
    .line 295
    :cond_2
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@26
    goto :goto_1

    #@27
    .line 299
    :cond_3
    const/4 v1, 0x0

    #@28
    return v1
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 484
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    aget-object v1, v2, p4

    #@4
    .line 485
    .local v1, "old":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@6
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    #@9
    .line 486
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/LinkedHashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@b
    aput-object v0, v2, p4

    #@d
    .line 487
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@f
    invoke-static {v0, v2}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->-wrap0(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    #@12
    .line 488
    iget v2, p0, Ljava/util/LinkedHashMap;->size:I

    #@14
    add-int/lit8 v2, v2, 0x1

    #@16
    iput v2, p0, Ljava/util/LinkedHashMap;->size:I

    #@18
    .line 483
    return-void
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 475
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@2
    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@4
    .line 476
    .local v0, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .end local v0    # "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return-object v0

    #@9
    .restart local v0    # "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 543
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 544
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 545
    :cond_0
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@a
    .line 547
    .local v1, "mc":I
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@c
    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@e
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_0
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@10
    if-ne v2, v1, :cond_1

    #@12
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@14
    if-eq v0, v2, :cond_1

    #@16
    .line 548
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    #@18
    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    #@1a
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1d
    .line 547
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@1f
    goto :goto_0

    #@20
    .line 549
    :cond_1
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@22
    if-eq v2, v1, :cond_2

    #@24
    .line 550
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@26
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@29
    throw v2

    #@2a
    .line 542
    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 318
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@7
    .line 319
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@9
    .line 320
    return-object v1

    #@a
    .line 321
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    #@d
    .line 322
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    #@f
    return-object v1
.end method

.method init()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 260
    new-instance v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, v1, v2, v2, v2}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    #@7
    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@9
    .line 261
    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@b
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@d
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@f
    iput-object v1, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@11
    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@13
    .line 259
    return-void
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 436
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$EntryIterator;)V

    #@6
    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 434
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$KeyIterator;)V

    #@6
    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 435
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$ValueIterator;)V

    #@6
    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 538
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 554
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 555
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 556
    :cond_0
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@a
    .line 558
    .local v1, "mc":I
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@c
    iget-object v0, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@e
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_0
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@10
    if-ne v2, v1, :cond_1

    #@12
    iget-object v2, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@14
    if-eq v0, v2, :cond_1

    #@16
    .line 559
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    #@18
    iget-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    #@1a
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    #@20
    .line 558
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@22
    goto :goto_0

    #@23
    .line 560
    :cond_1
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    #@25
    if-eq v2, v1, :cond_2

    #@27
    .line 561
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@29
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2c
    throw v2

    #@2d
    .line 553
    :cond_2
    return-void
.end method

.method transfer([Ljava/util/HashMap$HashMapEntry;)V
    .locals 4
    .param p1, "newTable"    # [Ljava/util/HashMap$HashMapEntry;

    #@0
    .prologue
    .line 271
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    array-length v2, p1

    #@1
    .line 272
    .local v2, "newCapacity":I
    iget-object v3, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@3
    iget-object v0, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@5
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_0
    iget-object v3, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@7
    if-eq v0, v3, :cond_0

    #@9
    .line 273
    iget v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->hash:I

    #@b
    invoke-static {v3, v2}, Ljava/util/LinkedHashMap;->indexFor(II)I

    #@e
    move-result v1

    #@f
    .line 274
    .local v1, "index":I
    aget-object v3, p1, v1

    #@11
    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@13
    .line 275
    aput-object v0, p1, v1

    #@15
    .line 272
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@17
    goto :goto_0

    #@18
    .line 270
    .end local v1    # "index":I
    :cond_0
    return-void
.end method
