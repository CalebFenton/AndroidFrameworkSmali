.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$EntrySpliterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapEntry;,
        Ljava/util/HashMap$HashMapSpliterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$KeySpliterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$ValueSpliterator;,
        Ljava/util/HashMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x4

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<**>;"
        }
    .end annotation
.end field

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    #@3
    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@5
    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x4

    #@1
    const/high16 v1, 0x3f400000    # 0.75f

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    #@6
    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 232
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    #@5
    .line 231
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 201
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 159
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@5
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@7
    .line 181
    const/high16 v0, 0x3f400000    # 0.75f

    #@9
    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    #@b
    .line 1166
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    #@e
    .line 202
    if-gez p1, :cond_0

    #@10
    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Illegal initial capacity: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 205
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    #@2c
    if-le p1, v0, :cond_3

    #@2e
    .line 206
    const/high16 p1, 0x40000000    # 2.0f

    #@30
    .line 211
    :cond_1
    :goto_0
    const/4 v0, 0x0

    #@31
    cmpg-float v0, p2, v0

    #@33
    if-lez v0, :cond_2

    #@35
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4

    #@3b
    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v2, "Illegal load factor: "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0

    #@55
    .line 207
    :cond_3
    const/4 v0, 0x4

    #@56
    if-ge p1, v0, :cond_1

    #@58
    .line 208
    const/4 p1, 0x4

    #@59
    goto :goto_0

    #@5a
    .line 220
    :cond_4
    iput p1, p0, Ljava/util/HashMap;->threshold:I

    #@5c
    .line 221
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    #@5f
    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v2, 0x3f400000    # 0.75f

    #@2
    .line 253
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    div-float/2addr v0, v2

    #@8
    float-to-int v0, v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 254
    const/4 v1, 0x4

    #@c
    .line 253
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    invoke-direct {p0, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    #@13
    .line 255
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    #@15
    invoke-direct {p0, v0}, Ljava/util/HashMap;->inflateTable(I)V

    #@18
    .line 257
    invoke-direct {p0, p1}, Ljava/util/HashMap;->putAllForCreate(Ljava/util/Map;)V

    #@1b
    .line 252
    return-void
.end method

.method private containsNullValue()Z
    .locals 4

    #@0
    .prologue
    .line 691
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    .line 692
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@4
    if-ge v1, v3, :cond_2

    #@6
    .line 693
    aget-object v0, v2, v1

    #@8
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_1

    #@a
    .line 694
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@c
    if-nez v3, :cond_0

    #@e
    .line 695
    const/4 v3, 0x1

    #@f
    return v3

    #@10
    .line 693
    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@12
    goto :goto_1

    #@13
    .line 692
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 696
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_2
    const/4 v3, 0x0

    #@17
    return v3
.end method

.method private entrySet0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1303
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    #@3
    .line 1304
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$EntrySet;

    #@8
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$EntrySet;)V

    #@b
    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    #@d
    goto :goto_0
.end method

.method private getForNullKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 361
    iget v1, p0, Ljava/util/HashMap;->size:I

    #@4
    if-nez v1, :cond_0

    #@6
    .line 362
    return-object v2

    #@7
    .line 364
    :cond_0
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@9
    aget-object v0, v1, v3

    #@b
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@d
    .line 365
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 366
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@13
    return-object v1

    #@14
    .line 364
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@16
    goto :goto_0

    #@17
    .line 368
    :cond_2
    return-object v2
.end method

.method static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    #@0
    .prologue
    .line 307
    add-int/lit8 v0, p1, -0x1

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method

.method private inflateTable(I)V
    .locals 4
    .param p1, "toSize"    # I

    #@0
    .prologue
    .line 276
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->roundUpToPowerOf2(I)I

    #@3
    move-result v0

    #@4
    .line 281
    .local v0, "capacity":I
    int-to-float v2, v0

    #@5
    const/high16 v3, 0x3f400000    # 0.75f

    #@7
    mul-float v1, v2, v3

    #@9
    .line 282
    .local v1, "thresholdFloat":F
    const/high16 v2, 0x4e800000

    #@b
    cmpl-float v2, v1, v2

    #@d
    if-lez v2, :cond_0

    #@f
    .line 283
    const/high16 v1, 0x4e800000

    #@11
    .line 286
    :cond_0
    float-to-int v2, v1

    #@12
    iput v2, p0, Ljava/util/HashMap;->threshold:I

    #@14
    .line 287
    new-array v2, v0, [Ljava/util/HashMap$HashMapEntry;

    #@16
    iput-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@18
    .line 274
    return-void
.end method

.method private putAllForCreate(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 485
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 486
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1f
    goto :goto_0

    #@20
    .line 484
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 464
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    #@2
    const/4 v1, 0x0

    #@3
    .line 465
    .local v1, "hash":I
    :goto_0
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@5
    array-length v4, v4

    #@6
    invoke-static {v1, v4}, Ljava/util/HashMap;->indexFor(II)I

    #@9
    move-result v2

    #@a
    .line 472
    .local v2, "i":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@c
    aget-object v0, v4, v2

    #@e
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    #@10
    .line 474
    iget v4, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@12
    if-ne v4, v1, :cond_2

    #@14
    .line 475
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@16
    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_0

    #@18
    if-eqz p1, :cond_2

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    .line 474
    if-eqz v4, :cond_2

    #@20
    .line 476
    :cond_0
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@22
    .line 477
    return-void

    #@23
    .line 464
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "i":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@26
    move-result v1

    #@27
    .restart local v1    # "hash":I
    goto :goto_0

    #@28
    .line 472
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v2    # "i":I
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@2a
    goto :goto_1

    #@2b
    .line 481
    :cond_3
    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/util/HashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    #@2e
    .line 463
    return-void
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 444
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@4
    aget-object v0, v2, v4

    #@6
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@8
    .line 445
    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@a
    if-nez v2, :cond_0

    #@c
    .line 446
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@e
    .line 447
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@10
    .line 448
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    #@13
    .line 449
    return-object v1

    #@14
    .line 444
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@16
    goto :goto_0

    #@17
    .line 452
    :cond_1
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    iput v2, p0, Ljava/util/HashMap;->modCount:I

    #@1d
    .line 453
    invoke-virtual {p0, v4, v3, p1, v4}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    #@20
    .line 454
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1433
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1434
    const/high16 v5, 0x3f400000    # 0.75f

    #@5
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 1435
    new-instance v5, Ljava/io/InvalidObjectException;

    #@d
    const-string/jumbo v6, "Illegal load factor: 0.75"

    #@10
    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@13
    throw v5

    #@14
    .line 1440
    :cond_0
    sget-object v5, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@16
    iput-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@18
    .line 1443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@1b
    .line 1446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@1e
    move-result v3

    #@1f
    .line 1447
    .local v3, "mappings":I
    if-gez v3, :cond_1

    #@21
    .line 1448
    new-instance v5, Ljava/io/InvalidObjectException;

    #@23
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "Illegal mappings count: "

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v5

    #@3b
    .line 1453
    :cond_1
    int-to-float v5, v3

    #@3c
    const v6, 0x3faaaaab

    #@3f
    const/high16 v7, 0x40800000    # 4.0f

    #@41
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    #@44
    move-result v6

    #@45
    mul-float/2addr v5, v6

    #@46
    .line 1455
    const/high16 v6, 0x4e800000

    #@48
    .line 1452
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    #@4b
    move-result v5

    #@4c
    float-to-int v0, v5

    #@4d
    .line 1458
    .local v0, "capacity":I
    if-lez v3, :cond_2

    #@4f
    .line 1459
    invoke-direct {p0, v0}, Ljava/util/HashMap;->inflateTable(I)V

    #@52
    .line 1464
    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    #@55
    .line 1467
    const/4 v1, 0x0

    #@56
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    #@58
    .line 1468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    .line 1469
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    .line 1470
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    #@63
    .line 1467
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_1

    #@66
    .line 1461
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    #@68
    goto :goto_0

    #@69
    .line 1430
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static roundUpToPowerOf2(I)I
    .locals 3
    .param p0, "number"    # I

    #@0
    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    #@2
    const/4 v1, 0x1

    #@3
    .line 262
    if-lt p0, v0, :cond_1

    #@5
    .line 268
    .local v0, "rounded":I
    :cond_0
    :goto_0
    return v0

    #@6
    .line 264
    .end local v0    # "rounded":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    #@9
    move-result v0

    #@a
    .restart local v0    # "rounded":I
    if-eqz v0, :cond_2

    #@c
    .line 265
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    #@f
    move-result v2

    #@10
    if-le v2, v1, :cond_0

    #@12
    shl-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    :cond_2
    move v0, v1

    #@16
    .line 266
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1402
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1405
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@5
    sget-object v3, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 1406
    iget v2, p0, Ljava/util/HashMap;->threshold:I

    #@b
    invoke-static {v2}, Ljava/util/HashMap;->roundUpToPowerOf2(I)I

    #@e
    move-result v2

    #@f
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@12
    .line 1412
    :goto_0
    iget v2, p0, Ljava/util/HashMap;->size:I

    #@14
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@17
    .line 1415
    iget v2, p0, Ljava/util/HashMap;->size:I

    #@19
    if-lez v2, :cond_1

    #@1b
    .line 1416
    invoke-direct {p0}, Ljava/util/HashMap;->entrySet0()Ljava/util/Set;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/util/Map$Entry;

    #@2f
    .line 1417
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@36
    .line 1418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@3d
    goto :goto_1

    #@3e
    .line 1408
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@40
    array-length v2, v2

    #@41
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@44
    goto :goto_0

    #@45
    .line 1399
    :cond_1
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 807
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    #@2
    iget v1, p0, Ljava/util/HashMap;->threshold:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@8
    aget-object v0, v0, p4

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 808
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@e
    array-length v0, v0

    #@f
    mul-int/lit8 v0, v0, 0x2

    #@11
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->resize(I)V

    #@14
    .line 809
    if-eqz p2, :cond_1

    #@16
    invoke-static {p2}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@19
    move-result p1

    #@1a
    .line 810
    :goto_0
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@1c
    array-length v0, v0

    #@1d
    invoke-static {p1, v0}, Ljava/util/HashMap;->indexFor(II)I

    #@20
    move-result p4

    #@21
    .line 813
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/HashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    #@24
    .line 806
    return-void

    #@25
    .line 809
    :cond_1
    const/4 p1, 0x0

    #@26
    goto :goto_0
.end method

.method capacity()I
    .locals 1

    #@0
    .prologue
    .line 1487
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 662
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Ljava/util/HashMap;->modCount:I

    #@6
    .line 663
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@c
    .line 664
    const/4 v0, 0x0

    #@d
    iput v0, p0, Ljava/util/HashMap;->size:I

    #@f
    .line 661
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 706
    const/4 v2, 0x0

    #@2
    .line 708
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    move-object v0, v3

    #@7
    check-cast v0, Ljava/util/HashMap;

    #@9
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 712
    .end local v2    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :goto_0
    iget-object v3, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@c
    sget-object v4, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@e
    if-eq v3, v4, :cond_0

    #@10
    .line 715
    iget v3, p0, Ljava/util/HashMap;->size:I

    #@12
    int-to-float v3, v3

    #@13
    const v4, 0x3faaaaab

    #@16
    const/high16 v5, 0x40800000    # 4.0f

    #@18
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    #@1b
    move-result v4

    #@1c
    mul-float/2addr v3, v4

    #@1d
    .line 717
    const/high16 v4, 0x4e800000

    #@1f
    .line 714
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@22
    move-result v3

    #@23
    float-to-int v3, v3

    #@24
    .line 718
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@26
    array-length v4, v4

    #@27
    .line 713
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v3

    #@2b
    invoke-direct {v2, v3}, Ljava/util/HashMap;->inflateTable(I)V

    #@2e
    .line 720
    :cond_0
    const/4 v3, 0x0

    #@2f
    iput-object v3, v2, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    #@31
    .line 721
    iput v6, v2, Ljava/util/HashMap;->modCount:I

    #@33
    .line 722
    iput v6, v2, Ljava/util/HashMap;->size:I

    #@35
    .line 723
    invoke-virtual {v2}, Ljava/util/HashMap;->init()V

    #@38
    .line 724
    invoke-direct {v2, p0}, Ljava/util/HashMap;->putAllForCreate(Ljava/util/Map;)V

    #@3b
    .line 726
    return-object v2

    #@3c
    .line 709
    .restart local v2    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_0
    move-exception v1

    #@3d
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 380
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 676
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 677
    invoke-direct {p0}, Ljava/util/HashMap;->containsNullValue()Z

    #@5
    move-result v3

    #@6
    return v3

    #@7
    .line 679
    :cond_0
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@9
    .line 680
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@b
    if-ge v1, v3, :cond_3

    #@d
    .line 681
    aget-object v0, v2, v1

    #@f
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_2

    #@11
    .line 682
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@13
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 683
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 681
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@1d
    goto :goto_1

    #@1e
    .line 680
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 684
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_3
    const/4 v3, 0x0

    #@22
    return v3
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
    .line 825
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    aget-object v0, v1, p4

    #@4
    .line 826
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@6
    new-instance v2, Ljava/util/HashMap$HashMapEntry;

    #@8
    invoke-direct {v2, p1, p2, p3, v0}, Ljava/util/HashMap$HashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    #@b
    aput-object v2, v1, p4

    #@d
    .line 827
    iget v1, p0, Ljava/util/HashMap;->size:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, p0, Ljava/util/HashMap;->size:I

    #@13
    .line 824
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1299
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;->entrySet0()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1353
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1354
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1355
    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    #@a
    if-lez v4, :cond_3

    #@c
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@e
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    #@10
    .line 1356
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    #@12
    .line 1357
    .local v2, "mc":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@14
    if-ge v1, v4, :cond_3

    #@16
    .line 1358
    aget-object v0, v3, v1

    #@18
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@1a
    .line 1359
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1c
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@1e
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@21
    .line 1362
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    #@23
    if-eq v4, v2, :cond_1

    #@25
    .line 1363
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@27
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2a
    throw v4

    #@2b
    .line 1358
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@2d
    goto :goto_1

    #@2e
    .line 1357
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1351
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 346
    if-nez p1, :cond_0

    #@3
    .line 347
    invoke-direct {p0}, Ljava/util/HashMap;->getForNullKey()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@b
    move-result-object v0

    #@c
    .line 350
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    #@e
    :goto_0
    return-object v1

    #@f
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method final getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 389
    iget v3, p0, Ljava/util/HashMap;->size:I

    #@3
    if-nez v3, :cond_0

    #@5
    .line 390
    return-object v5

    #@6
    .line 393
    :cond_0
    if-nez p1, :cond_2

    #@8
    const/4 v1, 0x0

    #@9
    .line 394
    .local v1, "hash":I
    :goto_0
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@b
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@d
    array-length v4, v4

    #@e
    invoke-static {v1, v4}, Ljava/util/HashMap;->indexFor(II)I

    #@11
    move-result v4

    #@12
    aget-object v0, v3, v4

    #@14
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@16
    .line 398
    iget v3, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@18
    if-ne v3, v1, :cond_3

    #@1a
    .line 399
    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1c
    .local v2, "k":Ljava/lang/Object;
    if-eq v2, p1, :cond_1

    #@1e
    if-eqz p1, :cond_3

    #@20
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    .line 398
    if-eqz v3, :cond_3

    #@26
    .line 400
    :cond_1
    return-object v0

    #@27
    .line 393
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "k":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@2a
    move-result v1

    #@2b
    .restart local v1    # "hash":I
    goto :goto_0

    #@2c
    .line 396
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@2e
    goto :goto_1

    #@2f
    .line 402
    :cond_4
    return-object v5
.end method

.method init()V
    .locals 0

    #@0
    .prologue
    .line 299
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 325
    iget v1, p0, Ljava/util/HashMap;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1182
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    #@3
    .line 1183
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$KeySet;

    #@8
    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$KeySet;)V

    #@b
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    #@d
    goto :goto_0
.end method

.method loadFactor()F
    .locals 1

    #@0
    .prologue
    .line 1488
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    return v0
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
    .line 1160
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$EntryIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$EntryIterator;)V

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
    .line 1154
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$KeyIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$KeyIterator;)V

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
    .line 1157
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$ValueIterator;)V

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    #@1
    .line 418
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@3
    sget-object v6, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@5
    if-ne v5, v6, :cond_0

    #@7
    .line 419
    iget v5, p0, Ljava/util/HashMap;->threshold:I

    #@9
    invoke-direct {p0, v5}, Ljava/util/HashMap;->inflateTable(I)V

    #@c
    .line 421
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 422
    invoke-direct {p0, p2}, Ljava/util/HashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    return-object v5

    #@13
    .line 423
    :cond_1
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    .line 424
    .local v1, "hash":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@19
    array-length v5, v5

    #@1a
    invoke-static {v1, v5}, Ljava/util/HashMap;->indexFor(II)I

    #@1d
    move-result v2

    #@1e
    .line 425
    .local v2, "i":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@20
    aget-object v0, v5, v2

    #@22
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    #@24
    .line 427
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@26
    if-ne v5, v1, :cond_3

    #@28
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@2a
    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_2

    #@2c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_3

    #@32
    .line 428
    :cond_2
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@34
    .line 429
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@36
    .line 430
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    #@39
    .line 431
    return-object v4

    #@3a
    .line 425
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@3c
    goto :goto_0

    #@3d
    .line 435
    :cond_4
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    #@3f
    add-int/lit8 v5, v5, 0x1

    #@41
    iput v5, p0, Ljava/util/HashMap;->modCount:I

    #@43
    .line 436
    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/util/HashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    #@46
    .line 437
    return-object v7
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v7, 0x3f400000    # 0.75f

    #@2
    .line 542
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@5
    move-result v3

    #@6
    .line 543
    .local v3, "numKeysToBeAdded":I
    if-nez v3, :cond_0

    #@8
    .line 544
    return-void

    #@9
    .line 546
    :cond_0
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@b
    sget-object v6, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/HashMap$HashMapEntry;

    #@d
    if-ne v5, v6, :cond_1

    #@f
    .line 547
    int-to-float v5, v3

    #@10
    mul-float/2addr v5, v7

    #@11
    iget v6, p0, Ljava/util/HashMap;->threshold:I

    #@13
    int-to-float v6, v6

    #@14
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    #@17
    move-result v5

    #@18
    float-to-int v5, v5

    #@19
    invoke-direct {p0, v5}, Ljava/util/HashMap;->inflateTable(I)V

    #@1c
    .line 559
    :cond_1
    iget v5, p0, Ljava/util/HashMap;->threshold:I

    #@1e
    if-le v3, v5, :cond_4

    #@20
    .line 560
    int-to-float v5, v3

    #@21
    div-float/2addr v5, v7

    #@22
    const/high16 v6, 0x3f800000    # 1.0f

    #@24
    add-float/2addr v5, v6

    #@25
    float-to-int v4, v5

    #@26
    .line 561
    .local v4, "targetCapacity":I
    const/high16 v5, 0x40000000    # 2.0f

    #@28
    if-le v4, v5, :cond_2

    #@2a
    .line 562
    const/high16 v4, 0x40000000    # 2.0f

    #@2c
    .line 563
    :cond_2
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2e
    array-length v2, v5

    #@2f
    .line 564
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@31
    .line 565
    shl-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 566
    :cond_3
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@36
    array-length v5, v5

    #@37
    if-le v2, v5, :cond_4

    #@39
    .line 567
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->resize(I)V

    #@3c
    .line 570
    .end local v2    # "newCapacity":I
    .end local v4    # "targetCapacity":I
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3f
    move-result-object v5

    #@40
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v1

    #@44
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_5

    #@4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Ljava/util/Map$Entry;

    #@50
    .line 571
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    goto :goto_1

    #@5c
    .line 541
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_5
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 584
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@4
    move-result-object v0

    #@5
    .line 585
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method final removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 594
    iget v6, p0, Ljava/util/HashMap;->size:I

    #@3
    if-nez v6, :cond_0

    #@5
    .line 595
    return-object v7

    #@6
    .line 597
    :cond_0
    if-nez p1, :cond_2

    #@8
    const/4 v1, 0x0

    #@9
    .line 598
    .local v1, "hash":I
    :goto_0
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@b
    array-length v6, v6

    #@c
    invoke-static {v1, v6}, Ljava/util/HashMap;->indexFor(II)I

    #@f
    move-result v2

    #@10
    .line 599
    .local v2, "i":I
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@12
    aget-object v5, v6, v2

    #@14
    .line 600
    .local v5, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v5

    #@15
    .line 602
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_5

    #@17
    .line 603
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@19
    .line 605
    .local v4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@1b
    if-ne v6, v1, :cond_4

    #@1d
    .line 606
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1f
    .local v3, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_1

    #@21
    if-eqz p1, :cond_4

    #@23
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v6

    #@27
    .line 605
    if-eqz v6, :cond_4

    #@29
    .line 607
    :cond_1
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    #@2b
    add-int/lit8 v6, v6, 0x1

    #@2d
    iput v6, p0, Ljava/util/HashMap;->modCount:I

    #@2f
    .line 608
    iget v6, p0, Ljava/util/HashMap;->size:I

    #@31
    add-int/lit8 v6, v6, -0x1

    #@33
    iput v6, p0, Ljava/util/HashMap;->size:I

    #@35
    .line 609
    if-ne v5, v0, :cond_3

    #@37
    .line 610
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@39
    aput-object v4, v6, v2

    #@3b
    .line 613
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordRemoval(Ljava/util/HashMap;)V

    #@3e
    .line 614
    return-object v0

    #@3f
    .line 597
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "i":I
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-static {p1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@42
    move-result v1

    #@43
    .restart local v1    # "hash":I
    goto :goto_0

    #@44
    .line 612
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "k":Ljava/lang/Object;
    .restart local v4    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v5    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    iput-object v4, v5, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@46
    goto :goto_2

    #@47
    .line 616
    .end local v3    # "k":Ljava/lang/Object;
    :cond_4
    move-object v5, v0

    #@48
    .line 617
    move-object v0, v4

    #@49
    goto :goto_1

    #@4a
    .line 620
    .end local v4    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_5
    return-object v0
.end method

.method final removeMapping(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    .line 628
    iget v7, p0, Ljava/util/HashMap;->size:I

    #@3
    if-eqz v7, :cond_0

    #@5
    instance-of v7, p1, Ljava/util/Map$Entry;

    #@7
    if-eqz v7, :cond_0

    #@9
    move-object v1, p1

    #@a
    .line 631
    check-cast v1, Ljava/util/Map$Entry;

    #@c
    .line 632
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    .line 633
    .local v4, "key":Ljava/lang/Object;
    if-nez v4, :cond_1

    #@12
    const/4 v2, 0x0

    #@13
    .line 634
    .local v2, "hash":I
    :goto_0
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@15
    array-length v7, v7

    #@16
    invoke-static {v2, v7}, Ljava/util/HashMap;->indexFor(II)I

    #@19
    move-result v3

    #@1a
    .line 635
    .local v3, "i":I
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@1c
    aget-object v6, v7, v3

    #@1e
    .line 636
    .local v6, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v6

    #@1f
    .line 638
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@21
    .line 639
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@23
    .line 640
    .local v5, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@25
    if-ne v7, v2, :cond_3

    #@27
    invoke-virtual {v0, v1}, Ljava/util/HashMap$HashMapEntry;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_3

    #@2d
    .line 641
    iget v7, p0, Ljava/util/HashMap;->modCount:I

    #@2f
    add-int/lit8 v7, v7, 0x1

    #@31
    iput v7, p0, Ljava/util/HashMap;->modCount:I

    #@33
    .line 642
    iget v7, p0, Ljava/util/HashMap;->size:I

    #@35
    add-int/lit8 v7, v7, -0x1

    #@37
    iput v7, p0, Ljava/util/HashMap;->size:I

    #@39
    .line 643
    if-ne v6, v0, :cond_2

    #@3b
    .line 644
    iget-object v7, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@3d
    aput-object v5, v7, v3

    #@3f
    .line 647
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordRemoval(Ljava/util/HashMap;)V

    #@42
    .line 648
    return-object v0

    #@43
    .line 629
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "hash":I
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v6    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    return-object v8

    #@44
    .line 633
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v4    # "key":Ljava/lang/Object;
    :cond_1
    invoke-static {v4}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@47
    move-result v2

    #@48
    .restart local v2    # "hash":I
    goto :goto_0

    #@49
    .line 646
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v3    # "i":I
    .restart local v5    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .restart local v6    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    iput-object v5, v6, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@4b
    goto :goto_2

    #@4c
    .line 650
    :cond_3
    move-object v6, v0

    #@4d
    .line 651
    move-object v0, v5

    #@4e
    goto :goto_1

    #@4f
    .line 654
    .end local v5    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_4
    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1477
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/HashMap$HashMapEntry;

    #@6
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@8
    .line 1478
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@a
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eq v1, p2, :cond_0

    #@c
    if-eqz v1, :cond_1

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    .line 1477
    if-eqz v2, :cond_1

    #@14
    .line 1479
    :cond_0
    iput-object p3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@16
    .line 1480
    invoke-virtual {v0, p0}, Ljava/util/HashMap$HashMapEntry;->recordAccess(Ljava/util/HashMap;)V

    #@19
    .line 1481
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 1483
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v2, 0x0

    #@1c
    return v2
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1373
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 1374
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1375
    :cond_0
    iget v4, p0, Ljava/util/HashMap;->size:I

    #@a
    if-lez v4, :cond_3

    #@c
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@e
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    #@10
    .line 1376
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    #@12
    .line 1377
    .local v2, "mc":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@14
    if-ge v1, v4, :cond_2

    #@16
    .line 1378
    aget-object v0, v3, v1

    #@18
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    #@1a
    .line 1379
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1c
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@1e
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@24
    .line 1378
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@26
    goto :goto_1

    #@27
    .line 1377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1382
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    #@2c
    if-eq v4, v2, :cond_3

    #@2e
    .line 1383
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@30
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@33
    throw v4

    #@34
    .line 1371
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    #@0
    .prologue
    .line 504
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    .line 505
    .local v2, "oldTable":[Ljava/util/HashMap$HashMapEntry;
    array-length v1, v2

    #@3
    .line 506
    .local v1, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    #@5
    if-ne v1, v3, :cond_0

    #@7
    .line 507
    const v3, 0x7fffffff

    #@a
    iput v3, p0, Ljava/util/HashMap;->threshold:I

    #@c
    .line 508
    return-void

    #@d
    .line 511
    :cond_0
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    #@f
    .line 512
    .local v0, "newTable":[Ljava/util/HashMap$HashMapEntry;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->transfer([Ljava/util/HashMap$HashMapEntry;)V

    #@12
    .line 513
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@14
    .line 514
    int-to-float v3, p1

    #@15
    const/high16 v4, 0x3f400000    # 0.75f

    #@17
    mul-float/2addr v3, v4

    #@18
    const/high16 v4, 0x4e800000

    #@1a
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@1d
    move-result v3

    #@1e
    float-to-int v3, v3

    #@1f
    iput v3, p0, Ljava/util/HashMap;->threshold:I

    #@21
    .line 503
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 316
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    #@2
    return v0
.end method

.method transfer([Ljava/util/HashMap$HashMapEntry;)V
    .locals 8
    .param p1, "newTable"    # [Ljava/util/HashMap$HashMapEntry;

    #@0
    .prologue
    .line 521
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    array-length v2, p1

    #@1
    .line 522
    .local v2, "newCapacity":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@3
    const/4 v4, 0x0

    #@4
    array-length v6, v5

    #@5
    :goto_0
    if-ge v4, v6, :cond_1

    #@7
    aget-object v0, v5, v4

    #@9
    .line 523
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    #@b
    .line 524
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@d
    .line 525
    .local v3, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@f
    invoke-static {v7, v2}, Ljava/util/HashMap;->indexFor(II)I

    #@12
    move-result v1

    #@13
    .line 526
    .local v1, "i":I
    aget-object v7, p1, v1

    #@15
    iput-object v7, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@17
    .line 527
    aput-object v0, p1, v1

    #@19
    .line 528
    move-object v0, v3

    #@1a
    goto :goto_1

    #@1b
    .line 522
    .end local v1    # "i":I
    .end local v3    # "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 520
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1240
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    #@3
    .line 1241
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$Values;

    #@8
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$Values;)V

    #@b
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    #@d
    goto :goto_0
.end method
