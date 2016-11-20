.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$Entry;,
        Ljava/util/WeakHashMap$EntryIterator;,
        Ljava/util/WeakHashMap$EntrySet;,
        Ljava/util/WeakHashMap$EntrySpliterator;,
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$KeyIterator;,
        Ljava/util/WeakHashMap$KeySet;,
        Ljava/util/WeakHashMap$KeySpliterator;,
        Ljava/util/WeakHashMap$ValueIterator;,
        Ljava/util/WeakHashMap$ValueSpliterator;,
        Ljava/util/WeakHashMap$Values;,
        Ljava/util/WeakHashMap$WeakHashMapSpliterator;
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
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NULL_KEY:Ljava/lang/Object;


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

.field private final loadFactor:F

.field modCount:I

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field table:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    #@7
    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    #@2
    const/high16 v1, 0x3f400000    # 0.75f

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    #@7
    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 232
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/WeakHashMap;-><init>(IF)V

    #@5
    .line 231
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 206
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 179
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@8
    iput-object v1, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 834
    const/4 v1, 0x0

    #@b
    iput-object v1, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    #@d
    .line 207
    if-gez p1, :cond_0

    #@f
    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Illegal Initial Capacity: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 210
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    #@2b
    if-le p1, v1, :cond_1

    #@2d
    .line 211
    const/high16 p1, 0x40000000    # 2.0f

    #@2f
    .line 213
    :cond_1
    const/4 v1, 0x0

    #@30
    cmpg-float v1, p2, v1

    #@32
    if-lez v1, :cond_2

    #@34
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 214
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Illegal Load factor: "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1

    #@54
    .line 216
    :cond_3
    const/4 v0, 0x1

    #@55
    .line 217
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p1, :cond_4

    #@57
    .line 218
    shl-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 219
    :cond_4
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    #@5d
    move-result-object v1

    #@5e
    iput-object v1, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@60
    .line 220
    iput p2, p0, Ljava/util/WeakHashMap;->loadFactor:F

    #@62
    .line 221
    int-to-float v1, v0

    #@63
    mul-float/2addr v1, p2

    #@64
    float-to-int v1, v1

    #@65
    iput v1, p0, Ljava/util/WeakHashMap;->threshold:I

    #@67
    .line 206
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/high16 v2, 0x3f400000    # 0.75f

    #@2
    .line 254
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
    .line 255
    const/16 v1, 0x10

    #@d
    .line 254
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v0

    #@11
    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;-><init>(IF)V

    #@14
    .line 257
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    #@17
    .line 253
    return-void
.end method

.method private containsNullValue()Z
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 672
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@4
    move-result-object v3

    #@5
    .line 673
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v3

    #@6
    .local v1, "i":I
    move v2, v1

    #@7
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@9
    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_2

    #@b
    .line 674
    aget-object v0, v3, v1

    #@d
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    #@f
    .line 675
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@11
    if-nez v4, :cond_0

    #@13
    .line 676
    const/4 v4, 0x1

    #@14
    return v4

    #@15
    .line 674
    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@17
    goto :goto_1

    #@18
    :cond_1
    move v2, v1

    #@19
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@1a
    .line 677
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    return v5
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 286
    if-eq p0, p1, :cond_0

    #@2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method private expungeStaleEntries()V
    .locals 10

    #@0
    .prologue
    .line 300
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v7, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v6

    #@6
    .local v6, "x":Ljava/lang/Object;
    if-eqz v6, :cond_3

    #@8
    .line 301
    iget-object v8, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    monitor-enter v8

    #@b
    .line 303
    :try_start_0
    move-object v0, v6

    #@c
    check-cast v0, Ljava/util/WeakHashMap$Entry;

    #@e
    move-object v1, v0

    #@f
    .line 304
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v1, Ljava/util/WeakHashMap$Entry;->hash:I

    #@11
    iget-object v9, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@13
    array-length v9, v9

    #@14
    invoke-static {v7, v9}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@17
    move-result v2

    #@18
    .line 306
    .local v2, "i":I
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@1a
    aget-object v5, v7, v2

    #@1c
    .line 307
    .local v5, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v4, v5

    #@1d
    .line 308
    .local v4, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v4, :cond_0

    #@1f
    .line 309
    iget-object v3, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@21
    .line 310
    .local v3, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-ne v4, v1, :cond_2

    #@23
    .line 311
    if-ne v5, v1, :cond_1

    #@25
    .line 312
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@27
    aput-object v3, v7, v2

    #@29
    .line 317
    :goto_2
    const/4 v7, 0x0

    #@2a
    iput-object v7, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@2c
    .line 318
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    #@2e
    add-int/lit8 v7, v7, -0x1

    #@30
    iput v7, p0, Ljava/util/WeakHashMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    monitor-exit v8

    #@33
    goto :goto_0

    #@34
    .line 314
    .restart local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    :try_start_1
    iput-object v3, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_2

    #@37
    .line 301
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :catchall_0
    move-exception v7

    #@38
    monitor-exit v8

    #@39
    throw v7

    #@3a
    .line 321
    .restart local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    move-object v5, v4

    #@3b
    .line 322
    move-object v4, v3

    #@3c
    goto :goto_1

    #@3d
    .line 299
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method private getTable()[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    #@3
    .line 333
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@5
    return-object v0
.end method

.method private static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    #@0
    .prologue
    .line 293
    add-int/lit8 v0, p1, -0x1

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 271
    if-nez p0, :cond_0

    #@2
    sget-object p0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    #@4
    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method private newTable(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/WeakHashMap$Entry;

    #@2
    return-object v0
.end method

.method private transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "src":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p2, "dest":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 494
    const/4 v2, 0x0

    #@2
    .local v2, "j":I
    :goto_0
    array-length v5, p1

    #@3
    if-ge v2, v5, :cond_2

    #@5
    .line 495
    aget-object v0, p1, v2

    #@7
    .line 496
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aput-object v7, p1, v2

    #@9
    .line 497
    :goto_1
    if-eqz v0, :cond_1

    #@b
    .line 498
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@d
    .line 499
    .local v4, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    .line 500
    .local v3, "key":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@13
    .line 501
    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@15
    .line 502
    iput-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@17
    .line 503
    iget v5, p0, Ljava/util/WeakHashMap;->size:I

    #@19
    add-int/lit8 v5, v5, -0x1

    #@1b
    iput v5, p0, Ljava/util/WeakHashMap;->size:I

    #@1d
    .line 509
    :goto_2
    move-object v0, v4

    #@1e
    goto :goto_1

    #@1f
    .line 505
    :cond_0
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@21
    array-length v6, p2

    #@22
    invoke-static {v5, v6}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@25
    move-result v1

    #@26
    .line 506
    .local v1, "i":I
    aget-object v5, p2, v1

    #@28
    iput-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@2a
    .line 507
    aput-object v0, p2, v1

    #@2c
    goto :goto_2

    #@2d
    .line 494
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 493
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    return-void
.end method

.method static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 278
    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 p0, 0x0

    #@5
    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 634
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    #@3
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 637
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    #@f
    .line 638
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@11
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@14
    .line 639
    const/4 v0, 0x0

    #@15
    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    #@17
    .line 644
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    #@19
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 631
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 399
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

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
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 657
    if-nez p1, :cond_0

    #@3
    .line 658
    invoke-direct {p0}, Ljava/util/WeakHashMap;->containsNullValue()Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 660
    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@b
    move-result-object v3

    #@c
    .line 661
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v3

    #@d
    .local v1, "i":I
    move v2, v1

    #@e
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@10
    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    #@12
    .line 662
    aget-object v0, v3, v1

    #@14
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@16
    .line 663
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@18
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 664
    const/4 v4, 0x1

    #@1f
    return v4

    #@20
    .line 662
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@22
    goto :goto_1

    #@23
    :cond_2
    move v2, v1

    #@24
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@25
    .line 665
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    return v5
.end method

.method public entrySet()Ljava/util/Set;
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 940
    iget-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    #@3
    .line 941
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$EntrySet;

    #@8
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$EntrySet;)V

    #@b
    iput-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    #@d
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 992
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 993
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    #@5
    .line 995
    .local v1, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@8
    move-result-object v3

    #@9
    .line 996
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v4, 0x0

    #@a
    array-length v5, v3

    #@b
    :goto_0
    if-ge v4, v5, :cond_3

    #@d
    aget-object v0, v3, v4

    #@f
    .line 997
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    if-eqz v0, :cond_2

    #@11
    .line 998
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    .line 999
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@17
    .line 1000
    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@1d
    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@20
    .line 1002
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@22
    .line 1004
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    #@24
    if-eq v1, v6, :cond_0

    #@26
    .line 1005
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@28
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2b
    throw v4

    #@2c
    .line 996
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 991
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 377
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    .line 378
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    .line 379
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@c
    move-result-object v4

    #@d
    .line 380
    .local v4, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v4

    #@e
    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@11
    move-result v2

    #@12
    .line 381
    .local v2, "index":I
    aget-object v0, v4, v2

    #@14
    .line 382
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@16
    .line 383
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@18
    if-ne v5, v1, :cond_0

    #@1a
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 384
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@26
    return-object v5

    #@27
    .line 385
    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@29
    goto :goto_0

    #@2a
    .line 387
    :cond_1
    return-object v6
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 407
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    .line 408
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    .line 409
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@b
    move-result-object v4

    #@c
    .line 410
    .local v4, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v5, v4

    #@d
    invoke-static {v1, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@10
    move-result v2

    #@11
    .line 411
    .local v2, "index":I
    aget-object v0, v4, v2

    #@13
    .line 412
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@15
    iget v5, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@17
    if-ne v5, v1, :cond_1

    #@19
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v3, v5}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 414
    :cond_0
    return-object v0

    #@24
    .line 413
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@26
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 356
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 850
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    #@3
    .line 851
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$KeySet;

    #@8
    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$KeySet;)V

    #@b
    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    #@d
    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    #@1
    .line 430
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    .line 431
    .local v1, "k":Ljava/lang/Object;
    invoke-static {v1}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@8
    move-result v4

    #@9
    .line 432
    .local v4, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@c
    move-result-object v8

    #@d
    .line 433
    .local v8, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v0, v8

    #@e
    invoke-static {v4, v0}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@11
    move-result v6

    #@12
    .line 435
    .local v6, "i":I
    aget-object v5, v8, v6

    #@14
    .local v5, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v5, :cond_2

    #@16
    .line 436
    iget v0, v5, Ljava/util/WeakHashMap$Entry;->hash:I

    #@18
    if-ne v4, v0, :cond_1

    #@1a
    invoke-virtual {v5}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v1, v0}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 437
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@26
    .line 438
    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    if-eq p2, v7, :cond_0

    #@28
    .line 439
    iput-object p2, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@2a
    .line 440
    :cond_0
    return-object v7

    #@2b
    .line 435
    .end local v7    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@2d
    goto :goto_0

    #@2e
    .line 444
    :cond_2
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    #@34
    .line 445
    aget-object v5, v8, v6

    #@36
    .line 446
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    #@38
    iget-object v3, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    #@3a
    move-object v2, p2

    #@3b
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V

    #@3e
    aput-object v0, v8, v6

    #@40
    .line 447
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    #@46
    iget v2, p0, Ljava/util/WeakHashMap;->threshold:I

    #@48
    if-lt v0, v2, :cond_3

    #@4a
    .line 448
    array-length v0, v8

    #@4b
    mul-int/lit8 v0, v0, 0x2

    #@4d
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->resize(I)V

    #@50
    .line 449
    :cond_3
    return-object v9
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 523
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v3

    #@4
    .line 524
    .local v3, "numKeysToBeAdded":I
    if-nez v3, :cond_0

    #@6
    .line 525
    return-void

    #@7
    .line 536
    :cond_0
    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    #@9
    if-le v3, v5, :cond_3

    #@b
    .line 537
    int-to-float v5, v3

    #@c
    iget v6, p0, Ljava/util/WeakHashMap;->loadFactor:F

    #@e
    div-float/2addr v5, v6

    #@f
    const/high16 v6, 0x3f800000    # 1.0f

    #@11
    add-float/2addr v5, v6

    #@12
    float-to-int v4, v5

    #@13
    .line 538
    .local v4, "targetCapacity":I
    const/high16 v5, 0x40000000    # 2.0f

    #@15
    if-le v4, v5, :cond_1

    #@17
    .line 539
    const/high16 v4, 0x40000000    # 2.0f

    #@19
    .line 540
    :cond_1
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@1b
    array-length v2, v5

    #@1c
    .line 541
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v4, :cond_2

    #@1e
    .line 542
    shl-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 543
    :cond_2
    iget-object v5, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@23
    array-length v5, v5

    #@24
    if-le v2, v5, :cond_3

    #@26
    .line 544
    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->resize(I)V

    #@29
    .line 547
    .end local v2    # "newCapacity":I
    .end local v4    # "targetCapacity":I
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2c
    move-result-object v5

    #@2d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_4

    #@37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Ljava/util/Map$Entry;

    #@3d
    .line 548
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@40
    move-result-object v5

    #@41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {p0, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    goto :goto_1

    #@49
    .line 522
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_4
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v8, 0x0

    #@1
    .line 572
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    .line 573
    .local v3, "k":Ljava/lang/Object;
    invoke-static {v3}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    .line 574
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@c
    move-result-object v6

    #@d
    .line 575
    .local v6, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v7, v6

    #@e
    invoke-static {v1, v7}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@11
    move-result v2

    #@12
    .line 576
    .local v2, "i":I
    aget-object v5, v6, v2

    #@14
    .line 577
    .local v5, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v0, v5

    #@15
    .line 579
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@17
    .line 580
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@19
    .line 581
    .local v4, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@1b
    if-ne v1, v7, :cond_1

    #@1d
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@20
    move-result-object v7

    #@21
    invoke-static {v3, v7}, Ljava/util/WeakHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_1

    #@27
    .line 582
    iget v7, p0, Ljava/util/WeakHashMap;->modCount:I

    #@29
    add-int/lit8 v7, v7, 0x1

    #@2b
    iput v7, p0, Ljava/util/WeakHashMap;->modCount:I

    #@2d
    .line 583
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    #@2f
    add-int/lit8 v7, v7, -0x1

    #@31
    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    #@33
    .line 584
    if-ne v5, v0, :cond_0

    #@35
    .line 585
    aput-object v4, v6, v2

    #@37
    .line 588
    :goto_1
    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@39
    return-object v7

    #@3a
    .line 587
    :cond_0
    iput-object v4, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@3c
    goto :goto_1

    #@3d
    .line 590
    :cond_1
    move-object v5, v0

    #@3e
    .line 591
    move-object v0, v4

    #@3f
    goto :goto_0

    #@40
    .line 594
    .end local v4    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    return-object v8
.end method

.method removeMapping(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v9, 0x0

    #@1
    .line 599
    instance-of v8, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 600
    return v9

    #@6
    .line 601
    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@9
    move-result-object v7

    #@a
    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v1, p1

    #@b
    .line 602
    check-cast v1, Ljava/util/Map$Entry;

    #@d
    .line 603
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    invoke-static {v8}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    .line 604
    .local v4, "k":Ljava/lang/Object;
    invoke-static {v4}, Lsun/misc/Hashing;->singleWordWangJenkinsHash(Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    .line 605
    .local v2, "h":I
    array-length v8, v7

    #@1a
    invoke-static {v2, v8}, Ljava/util/WeakHashMap;->indexFor(II)I

    #@1d
    move-result v3

    #@1e
    .line 606
    .local v3, "i":I
    aget-object v6, v7, v3

    #@20
    .line 607
    .local v6, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v0, v6

    #@21
    .line 609
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@23
    .line 610
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@25
    .line 611
    .local v5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v8, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@27
    if-ne v2, v8, :cond_2

    #@29
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v8

    #@2d
    if-eqz v8, :cond_2

    #@2f
    .line 612
    iget v8, p0, Ljava/util/WeakHashMap;->modCount:I

    #@31
    add-int/lit8 v8, v8, 0x1

    #@33
    iput v8, p0, Ljava/util/WeakHashMap;->modCount:I

    #@35
    .line 613
    iget v8, p0, Ljava/util/WeakHashMap;->size:I

    #@37
    add-int/lit8 v8, v8, -0x1

    #@39
    iput v8, p0, Ljava/util/WeakHashMap;->size:I

    #@3b
    .line 614
    if-ne v6, v0, :cond_1

    #@3d
    .line 615
    aput-object v5, v7, v3

    #@3f
    .line 618
    :goto_1
    const/4 v8, 0x1

    #@40
    return v8

    #@41
    .line 617
    :cond_1
    iput-object v5, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@43
    goto :goto_1

    #@44
    .line 620
    :cond_2
    move-object v6, v0

    #@45
    .line 621
    move-object v0, v5

    #@46
    goto :goto_0

    #@47
    .line 624
    .end local v5    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return v9
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1014
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1015
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    #@5
    .line 1017
    .local v1, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@8
    move-result-object v3

    #@9
    .line 1018
    .local v3, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v4, 0x0

    #@a
    array-length v5, v3

    #@b
    :goto_0
    if-ge v4, v5, :cond_3

    #@d
    aget-object v0, v3, v4

    #@f
    .line 1019
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    if-eqz v0, :cond_2

    #@11
    .line 1020
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    .line 1021
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@17
    .line 1022
    invoke-static {v2}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    iget-object v7, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@1d
    invoke-interface {p1, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@23
    .line 1024
    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@25
    .line 1026
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    #@27
    if-eq v1, v6, :cond_0

    #@29
    .line 1027
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@2b
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2e
    throw v4

    #@2f
    .line 1018
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1013
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    #@0
    .prologue
    .line 467
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    #@3
    move-result-object v2

    #@4
    .line 468
    .local v2, "oldTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v2

    #@5
    .line 469
    .local v1, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 470
    const v3, 0x7fffffff

    #@c
    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    #@e
    .line 471
    return-void

    #@f
    .line 474
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    #@12
    move-result-object v0

    #@13
    .line 475
    .local v0, "newTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v2, v0}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    #@16
    .line 476
    iput-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@18
    .line 483
    iget v3, p0, Ljava/util/WeakHashMap;->size:I

    #@1a
    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    #@1c
    div-int/lit8 v4, v4, 0x2

    #@1e
    if-lt v3, v4, :cond_1

    #@20
    .line 484
    int-to-float v3, p1

    #@21
    iget v4, p0, Ljava/util/WeakHashMap;->loadFactor:F

    #@23
    mul-float/2addr v3, v4

    #@24
    float-to-int v3, v3

    #@25
    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    #@27
    .line 466
    :goto_0
    return-void

    #@28
    .line 486
    :cond_1
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    #@2b
    .line 487
    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    #@2e
    .line 488
    iput-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@30
    goto :goto_0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 343
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 344
    return v1

    #@6
    .line 345
    :cond_0
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    #@9
    .line 346
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    #@b
    return v0
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 899
    iget-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    #@3
    .line 900
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$Values;

    #@8
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Values;)V

    #@b
    iput-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    #@d
    goto :goto_0
.end method
