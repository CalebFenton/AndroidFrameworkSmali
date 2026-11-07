.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$Entry;,
        Ljava/util/WeakHashMap$KeySet;,
        Ljava/util/WeakHashMap$Values;,
        Ljava/util/WeakHashMap$EntrySet;,
        Ljava/util/WeakHashMap$EntrySpliterator;,
        Ljava/util/WeakHashMap$ValueSpliterator;,
        Ljava/util/WeakHashMap$KeySpliterator;,
        Ljava/util/WeakHashMap$WeakHashMapSpliterator;,
        Ljava/util/WeakHashMap$EntryIterator;,
        Ljava/util/WeakHashMap$KeyIterator;,
        Ljava/util/WeakHashMap$ValueIterator;,
        Ljava/util/WeakHashMap$HashIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final greylist-max-o DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final greylist-max-o MAXIMUM_CAPACITY:I = 0x40000000

.field private static final greylist-max-o NULL_KEY:Ljava/lang/Object;


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o loadFactor:F

.field greylist-max-o modCount:I

.field private final greylist-max-o queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o size:I

.field greylist-max-o table:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o threshold:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 246
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 247
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 238
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 239
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 210
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 211
    if-ltz p1, :cond_48

    .line 214
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_12

    .line 215
    const/high16 p1, 0x40000000    # 2.0f

    .line 217
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2f

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 220
    invoke-static {p1}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    .line 221
    .local v0, "capacity":I
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 222
    iput p2, p0, Ljava/util/WeakHashMap;->loadFactor:F

    .line 223
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 224
    return-void

    .line 218
    .end local v0    # "capacity":I
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Initial Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 263
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 264
    return-void
.end method

.method private greylist-max-o containsNullValue()Z
    .registers 5

    .line 700
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 701
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_5
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_18

    .line 702
    aget-object v1, v0, v2

    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_b
    if-eqz v1, :cond_16

    .line 703
    iget-object v3, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_13

    .line 704
    const/4 v3, 0x1

    return v3

    .line 702
    :cond_13
    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_b

    :cond_16
    move v1, v2

    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_5

    .line 705
    .end local v2    # "i":I
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o expungeStaleEntries()V
    .registers 9

    .line 329
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "x":Ljava/lang/Object;
    if-eqz v0, :cond_3f

    .line 330
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v0

    .line 332
    :try_start_d
    move-object v2, v1

    check-cast v2, Ljava/util/WeakHashMap$Entry;

    .line 333
    .local v2, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, v2, Ljava/util/WeakHashMap$Entry;->hash:I

    iget-object v4, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 335
    .local v3, "i":I
    iget-object v4, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aget-object v4, v4, v3

    .line 336
    .local v4, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v5, v4

    .line 337
    .local v5, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1e
    if-eqz v5, :cond_3a

    .line 338
    iget-object v6, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 339
    .local v6, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-ne v5, v2, :cond_37

    .line 340
    if-ne v4, v2, :cond_2b

    .line 341
    iget-object v7, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    aput-object v6, v7, v3

    goto :goto_2d

    .line 343
    :cond_2b
    iput-object v6, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 346
    :goto_2d
    const/4 v7, 0x0

    iput-object v7, v2, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 347
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    .line 348
    goto :goto_3a

    .line 350
    :cond_37
    move-object v4, v5

    .line 351
    move-object v5, v6

    .line 352
    .end local v6    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_1e

    .line 353
    .end local v2    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v3    # "i":I
    .end local v4    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3a
    :goto_3a
    monitor-exit v0

    goto :goto_1

    :catchall_3c
    move-exception v2

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3c

    throw v2

    .line 355
    .end local v1    # "x":Ljava/lang/Object;
    :cond_3f
    return-void
.end method

.method private greylist-max-o getTable()[Ljava/util/WeakHashMap$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 362
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method private static greylist-max-o indexFor(II)I
    .registers 3
    .param p0, "h"    # I
    .param p1, "length"    # I

    .line 322
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 277
    if-nez p0, :cond_5

    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method private blacklist matchesKey(Ljava/util/WeakHashMap$Entry;Ljava/lang/Object;)Z
    .registers 6
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 294
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 297
    :cond_8
    invoke-virtual {p1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "k":Ljava/lang/Object;
    if-eqz v0, :cond_15

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private greylist-max-o newTable(I)[Ljava/util/WeakHashMap$Entry;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/WeakHashMap$Entry;

    return-object v0
.end method

.method public static whitelist test-api newWeakHashMap(I)Ljava/util/WeakHashMap;
    .registers 4
    .param p0, "numMappings"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/WeakHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1360
    if-ltz p0, :cond_c

    .line 1363
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-static {p0}, Ljava/util/HashMap;->calculateHashMapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    return-object v0

    .line 1361
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative number of mappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;[",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 524
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "src":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local p2, "dest":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_30

    .line 525
    aget-object v1, p1, v0

    .line 526
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 527
    :goto_9
    if-eqz v1, :cond_2d

    .line 528
    iget-object v3, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 529
    .local v3, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 530
    iput-object v2, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 531
    iput-object v2, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 532
    iget v4, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/WeakHashMap;->size:I

    goto :goto_2b

    .line 534
    :cond_1e
    iget v4, v1, Ljava/util/WeakHashMap$Entry;->hash:I

    array-length v5, p2

    invoke-static {v4, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v4

    .line 535
    .local v4, "i":I
    aget-object v5, p2, v4

    iput-object v5, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 536
    aput-object v1, p2, v4

    .line 538
    .end local v4    # "i":I
    :goto_2b
    move-object v1, v3

    .line 539
    .end local v3    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_9

    .line 524
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    .end local v0    # "j":I
    :cond_30
    return-void
.end method

.method static greylist-max-o unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 284
    sget-object v0, Ljava/util/WeakHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 662
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 663
    goto :goto_1

    .line 665
    :cond_a
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 666
    iget-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->size:I

    .line 672
    :goto_19
    iget-object v0, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 673
    goto :goto_19

    .line 674
    :cond_22
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 429
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 685
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    if-nez p1, :cond_7

    .line 686
    invoke-direct {p0}, Ljava/util/WeakHashMap;->containsNullValue()Z

    move-result v0

    return v0

    .line 688
    :cond_7
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 689
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_c
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_23

    .line 690
    aget-object v1, v0, v2

    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_12
    if-eqz v1, :cond_21

    .line 691
    iget-object v3, v1, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 692
    const/4 v3, 0x1

    return v3

    .line 690
    :cond_1e
    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_12

    :cond_21
    move v1, v2

    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_c

    .line 693
    .end local v2    # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 974
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    .line 975
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    new-instance v1, Ljava/util/WeakHashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V

    iput-object v1, p0, Ljava/util/WeakHashMap;->entrySet:Ljava/util/Set;

    :goto_e
    return-object v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1024
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1027
    .local v0, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    .line 1028
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 1029
    .local v4, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_f
    if-eqz v4, :cond_2d

    .line 1030
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    .line 1031
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_20

    .line 1032
    invoke-static {v5}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1034
    :cond_20
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1036
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v0, v6, :cond_27

    .line 1039
    .end local v5    # "key":Ljava/lang/Object;
    goto :goto_f

    .line 1037
    .restart local v5    # "key":Ljava/lang/Object;
    :cond_27
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1028
    .end local v4    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1041
    :cond_30
    return-void
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 407
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 409
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 410
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 411
    .local v3, "index":I
    aget-object v4, v2, v3

    .line 412
    .local v4, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v4, :cond_25

    .line 413
    iget v5, v4, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_22

    invoke-direct {p0, v4, v0}, Ljava/util/WeakHashMap;->matchesKey(Ljava/util/WeakHashMap$Entry;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 414
    iget-object v5, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v5

    .line 415
    :cond_22
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 417
    :cond_25
    const/4 v5, 0x0

    return-object v5
.end method

.method greylist-max-o getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 439
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 440
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 441
    .local v3, "index":I
    aget-object v4, v2, v3

    .line 442
    .local v4, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v4, :cond_22

    iget v5, v4, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_1f

    invoke-direct {p0, v4, v0}, Ljava/util/WeakHashMap;->matchesKey(Ljava/util/WeakHashMap$Entry;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 443
    :cond_1f
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 444
    :cond_22
    return-object v4
.end method

.method final greylist-max-o hash(Ljava/lang/Object;)I
    .registers 5
    .param p1, "k"    # Ljava/lang/Object;

    .line 309
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 314
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 315
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 385
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 876
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 877
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_d

    .line 878
    new-instance v1, Ljava/util/WeakHashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V

    move-object v0, v1

    .line 879
    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    .line 881
    :cond_d
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 460
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "k":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 462
    .local v4, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v6

    .line 463
    .local v6, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v0, v6

    invoke-static {v4, v0}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v7

    .line 465
    .local v7, "i":I
    aget-object v0, v6, v7

    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_13
    if-eqz v0, :cond_29

    .line 466
    iget v2, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v4, v2, :cond_26

    invoke-direct {p0, v0, v1}, Ljava/util/WeakHashMap;->matchesKey(Ljava/util/WeakHashMap$Entry;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 467
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 468
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    if-eq p2, v2, :cond_25

    .line 469
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 470
    :cond_25
    return-object v2

    .line 465
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_26
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_13

    .line 474
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_29
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 475
    aget-object v5, v6, v7

    .line 476
    .local v5, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p2

    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V

    aput-object v0, v6, v7

    .line 477
    iget p2, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/WeakHashMap;->size:I

    iget v0, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le p2, v0, :cond_4b

    .line 478
    array-length p2, v6

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Ljava/util/WeakHashMap;->resize(I)V

    .line 479
    :cond_4b
    const/4 p2, 0x0

    return-object p2
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 553
    .local v0, "numKeysToBeAdded":I
    if-nez v0, :cond_7

    .line 554
    return-void

    .line 565
    :cond_7
    iget v1, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v0, v1, :cond_2b

    .line 566
    int-to-double v1, v0

    iget v3, p0, Ljava/util/WeakHashMap;->loadFactor:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 567
    .local v1, "targetCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-le v1, v2, :cond_1b

    .line 568
    const/high16 v1, 0x40000000    # 2.0f

    .line 569
    :cond_1b
    iget-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v2

    .line 570
    .local v2, "newCapacity":I
    :goto_1e
    if-ge v2, v1, :cond_23

    .line 571
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 572
    :cond_23
    iget-object v3, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v3, v3

    if-le v2, v3, :cond_2b

    .line 573
    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->resize(I)V

    .line 576
    .end local v1    # "targetCapacity":I
    .end local v2    # "newCapacity":I
    :cond_2b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 577
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 578
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_4b
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 601
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 603
    .local v1, "h":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 604
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v3

    .line 605
    .local v3, "i":I
    aget-object v4, v2, v3

    .line 606
    .local v4, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v5, v4

    .line 608
    .local v5, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_14
    if-eqz v5, :cond_3b

    .line 609
    iget-object v6, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 610
    .local v6, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v7, v5, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v1, v7, :cond_38

    invoke-direct {p0, v5, v0}, Ljava/util/WeakHashMap;->matchesKey(Ljava/util/WeakHashMap$Entry;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 611
    iget v7, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 612
    iget v7, p0, Ljava/util/WeakHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/WeakHashMap;->size:I

    .line 613
    if-ne v4, v5, :cond_33

    .line 614
    aput-object v6, v2, v3

    goto :goto_35

    .line 616
    :cond_33
    iput-object v6, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 617
    :goto_35
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v7

    .line 619
    :cond_38
    move-object v4, v5

    .line 620
    move-object v5, v6

    .line 621
    .end local v6    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_14

    .line 623
    :cond_3b
    const/4 v6, 0x0

    return-object v6
.end method

.method greylist-max-o removeMapping(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;

    .line 628
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 630
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 631
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/WeakHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 632
    .local v3, "k":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/WeakHashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 633
    .local v4, "h":I
    array-length v5, v2

    invoke-static {v4, v5}, Ljava/util/WeakHashMap;->indexFor(II)I

    move-result v5

    .line 634
    .local v5, "i":I
    aget-object v6, v2, v5

    .line 635
    .local v6, "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    move-object v7, v6

    .line 637
    .local v7, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_20
    if-eqz v7, :cond_44

    .line 638
    iget-object v8, v7, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 639
    .local v8, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v9, v7, Ljava/util/WeakHashMap$Entry;->hash:I

    if-ne v4, v9, :cond_41

    invoke-virtual {v7, v0}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 640
    iget v1, p0, Ljava/util/WeakHashMap;->modCount:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 641
    iget v1, p0, Ljava/util/WeakHashMap;->size:I

    sub-int/2addr v1, v9

    iput v1, p0, Ljava/util/WeakHashMap;->size:I

    .line 642
    if-ne v6, v7, :cond_3e

    .line 643
    aput-object v8, v2, v5

    goto :goto_40

    .line 645
    :cond_3e
    iput-object v8, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 646
    :goto_40
    return v9

    .line 648
    :cond_41
    move-object v6, v7

    .line 649
    move-object v7, v8

    .line 650
    .end local v8    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    goto :goto_20

    .line 652
    :cond_44
    return v1

    .line 629
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "h":I
    .end local v5    # "i":I
    .end local v6    # "prev":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v7    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_45
    return v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1046
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    .line 1049
    .local v0, "expectedModCount":I
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    .line 1050
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    .line 1051
    .local v4, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_f
    if-eqz v4, :cond_30

    .line 1052
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    .line 1053
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_23

    .line 1054
    invoke-static {v5}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1056
    :cond_23
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1058
    iget v6, p0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v0, v6, :cond_2a

    .line 1061
    .end local v5    # "key":Ljava/lang/Object;
    goto :goto_f

    .line 1059
    .restart local v5    # "key":Ljava/lang/Object;
    :cond_2a
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1050
    .end local v4    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1063
    :cond_33
    return-void
.end method

.method greylist-max-o resize(I)V
    .registers 7
    .param p1, "newCapacity"    # I

    .line 497
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/WeakHashMap;->getTable()[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    .line 498
    .local v0, "oldTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .line 499
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_f

    .line 500
    const v2, 0x7fffffff

    iput v2, p0, Ljava/util/WeakHashMap;->threshold:I

    .line 501
    return-void

    .line 504
    :cond_f
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->newTable(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v2

    .line 505
    .local v2, "newTable":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v0, v2}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 506
    iput-object v2, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 513
    iget v3, p0, Ljava/util/WeakHashMap;->size:I

    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_28

    .line 514
    int-to-float v3, p1

    iget v4, p0, Ljava/util/WeakHashMap;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Ljava/util/WeakHashMap;->threshold:I

    goto :goto_30

    .line 516
    :cond_28
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 517
    invoke-direct {p0, v2, v0}, Ljava/util/WeakHashMap;->transfer([Ljava/util/WeakHashMap$Entry;[Ljava/util/WeakHashMap$Entry;)V

    .line 518
    iput-object v0, p0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 520
    :goto_30
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 372
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    if-nez v0, :cond_6

    .line 373
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_6
    invoke-direct {p0}, Ljava/util/WeakHashMap;->expungeStaleEntries()V

    .line 375
    iget v0, p0, Ljava/util/WeakHashMap;->size:I

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 929
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 930
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_d

    .line 931
    new-instance v1, Ljava/util/WeakHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V

    move-object v0, v1

    .line 932
    iput-object v0, p0, Ljava/util/WeakHashMap;->values:Ljava/util/Collection;

    .line 934
    :cond_d
    return-object v0
.end method
