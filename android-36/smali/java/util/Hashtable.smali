.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$HashtableEntry;,
        Ljava/util/Hashtable$Enumerator;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$ValueCollection;,
        Ljava/util/Hashtable$UnsafeHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ENTRIES:I = 0x2

.field private static final greylist-max-o KEYS:I = 0x0

.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o VALUES:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient greylist-max-o count:I

.field private volatile transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private greylist-max-o loadFactor:F

.field private transient greylist-max-o modCount:I

.field private transient greylist-max-o table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field private greylist-max-o threshold:I

.field private volatile transient greylist-max-o values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcount(Ljava/util/Hashtable;)I
    .registers 1

    iget p0, p0, Ljava/util/Hashtable;->count:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmodCount(Ljava/util/Hashtable;)I
    .registers 1

    iget p0, p0, Ljava/util/Hashtable;->modCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettable(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .registers 1

    iget-object p0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcount(Ljava/util/Hashtable;I)V
    .registers 2

    iput p1, p0, Ljava/util/Hashtable;->count:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmodCount(Ljava/util/Hashtable;I)V
    .registers 2

    iput p1, p0, Ljava/util/Hashtable;->modCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIterator(Ljava/util/Hashtable;I)Ljava/util/Iterator;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/Hashtable;->getIterator(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 218
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 219
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 210
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/Hashtable;-><init>(IF)V

    .line 211
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 187
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 188
    if-ltz p1, :cond_41

    .line 191
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_28

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_28

    .line 194
    if-nez p1, :cond_16

    .line 195
    const/4 p1, 0x1

    .line 196
    :cond_16
    iput p2, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 197
    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 198
    int-to-float v0, p1

    mul-float/2addr v0, p2

    const/high16 v1, 0x4f000000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 199
    return-void

    .line 192
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Ljava/lang/Void;)V
    .registers 3
    .param p1, "dummy"    # Ljava/lang/Void;

    .line 241
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 241
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 231
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 232
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 233
    return-void
.end method

.method private greylist-max-o addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 439
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 440
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable;->count:I

    iget v2, p0, Ljava/util/Hashtable;->threshold:I

    if-lt v1, v2, :cond_18

    .line 442
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 444
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 445
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 446
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int p4, v1, v2

    .line 451
    :cond_18
    aget-object v1, v0, p4

    .line 452
    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v2, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v2, p1, p2, p3, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v2, v0, p4

    .line 453
    iget v2, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->count:I

    .line 454
    iget v2, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->modCount:I

    .line 455
    return-void
.end method

.method private greylist-max-o getEnumeration(I)Ljava/util/Enumeration;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_9

    .line 622
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 624
    :cond_9
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private greylist-max-o getIterator(I)Ljava/util/Iterator;
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_9

    .line 630
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 632
    :cond_9
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1258
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->readHashtable(Ljava/io/ObjectInputStream;)V

    .line 1259
    return-void
.end method

.method private greylist-max-o reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 1346
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_36

    .line 1351
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1352
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    array-length v2, p1

    rem-int/2addr v1, v2

    .line 1353
    .local v1, "index":I
    aget-object v2, p1, v1

    .local v2, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_e
    if-eqz v2, :cond_26

    .line 1354
    iget v3, v2, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v3, v0, :cond_23

    iget-object v3, v2, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_23

    .line 1355
    :cond_1d
    new-instance v3, Ljava/io/StreamCorruptedException;

    invoke-direct {v3}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v3

    .line 1353
    :cond_23
    :goto_23
    iget-object v2, v2, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_e

    .line 1360
    .end local v2    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_26
    aget-object v2, p1, v1

    .line 1361
    .local v2, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v3, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v3, v0, p2, p3, v2}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v3, p1, v1

    .line 1362
    iget v3, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Hashtable;->count:I

    .line 1363
    return-void

    .line 1347
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v2    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_36
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->writeHashtable(Ljava/io/ObjectOutputStream;)V

    .line 1205
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api clear()V
    .registers 4

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 548
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 549
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v1, v0

    .local v1, "index":I
    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_c

    .line 550
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_4

    .line 551
    .end local v1    # "index":I
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_c
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 552
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/Hashtable;->count:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 553
    monitor-exit p0

    return-void

    .line 547
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 563
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->cloneHashtable()Ljava/util/Hashtable;

    move-result-object v0

    .line 564
    .local v0, "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v1, v0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 565
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v1

    .local v1, "i":I
    :goto_f
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    if-lez v1, :cond_2c

    .line 566
    iget-object v1, v0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v4, v4, v2

    if-eqz v4, :cond_27

    .line 567
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable$HashtableEntry;

    goto :goto_28

    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_27
    nop

    :goto_28
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_f

    .line 569
    .end local v2    # "i":I
    :cond_2c
    iput-object v3, v0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 570
    iput-object v3, v0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 571
    iput-object v3, v0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 572
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/Hashtable;->modCount:I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 573
    monitor-exit p0

    return-object v0

    .line 562
    .end local v0    # "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method final blacklist cloneHashtable()Ljava/util/Hashtable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "**>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 580
    :catch_7
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 1104
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1107
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1108
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1110
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1111
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_54

    .line 1112
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_4f

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1113
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 1114
    .local v5, "mc":I
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1115
    .local v6, "newValue":Ljava/lang/Object;, "TV;"
    iget v7, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v5, v7, :cond_49

    .line 1118
    if-nez v6, :cond_45

    .line 1119
    if-eqz v4, :cond_36

    .line 1120
    iget-object v7, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v7, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 1122
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v7, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v7, v0, v2

    .line 1124
    :goto_3a
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljava/util/Hashtable;->modCount:I

    .line 1125
    iget v7, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/Hashtable;->count:I

    goto :goto_47

    .line 1127
    :cond_45
    iput-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_6c

    .line 1129
    :goto_47
    monitor-exit p0

    return-object v6

    .line 1116
    :cond_49
    :try_start_49
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1111
    .end local v5    # "mc":I
    .end local v6    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_4f
    move-object v4, v3

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v5

    goto :goto_13

    .line 1133
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_54
    iget v4, p0, Ljava/util/Hashtable;->modCount:I

    .line 1134
    .local v4, "mc":I
    const/4 v5, 0x0

    invoke-interface {p2, p1, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1135
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v4, v6, :cond_66

    .line 1136
    if-eqz v5, :cond_64

    .line 1137
    invoke-direct {p0, v1, p1, v5, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_6c

    .line 1140
    :cond_64
    monitor-exit p0

    return-object v5

    .line 1135
    .restart local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_66
    :try_start_66
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 1103
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4    # "mc":I
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :catchall_6c
    move-exception p1

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    monitor-enter p0

    .line 1026
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1029
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1030
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1032
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1033
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_28

    .line 1034
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_24

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1036
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_3f

    monitor-exit p0

    return-object v4

    .line 1033
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_24
    :try_start_24
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v4

    goto :goto_12

    .line 1040
    :cond_28
    iget v4, p0, Ljava/util/Hashtable;->modCount:I

    .line 1041
    .local v4, "mc":I
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1042
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v4, v6, :cond_39

    .line 1043
    if-eqz v5, :cond_37

    .line 1044
    invoke-direct {p0, v1, p1, v5, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_3f

    .line 1047
    :cond_37
    monitor-exit p0

    return-object v5

    .line 1042
    .restart local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_39
    :try_start_39
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 1025
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4    # "mc":I
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 1062
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1065
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1066
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1068
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1069
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_54

    .line 1070
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_4f

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1071
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 1072
    .local v5, "mc":I
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1073
    .local v6, "newValue":Ljava/lang/Object;, "TV;"
    iget v7, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v5, v7, :cond_49

    .line 1076
    if-nez v6, :cond_45

    .line 1077
    if-eqz v4, :cond_36

    .line 1078
    iget-object v7, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v7, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 1080
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v7, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v7, v0, v2

    .line 1082
    :goto_3a
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljava/util/Hashtable;->modCount:I

    .line 1083
    iget v7, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/Hashtable;->count:I

    goto :goto_47

    .line 1085
    :cond_45
    iput-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_57

    .line 1087
    :goto_47
    monitor-exit p0

    return-object v6

    .line 1074
    :cond_49
    :try_start_49
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1069
    .end local v5    # "mc":I
    .end local v6    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_4f
    move-object v4, v3

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_57

    move-object v3, v5

    goto :goto_13

    .line 1090
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_54
    monitor-exit p0

    const/4 v4, 0x0

    return-object v4

    .line 1061
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public declared-synchronized whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 311
    if-eqz p1, :cond_24

    .line 315
    :try_start_3
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 316
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v1, v0

    .local v1, "i":I
    :goto_6
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1f

    .line 317
    aget-object v1, v0, v2

    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_c
    if-eqz v1, :cond_1d

    .line 318
    iget-object v3, v1, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_22

    if-eqz v3, :cond_19

    .line 319
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    .line 317
    :cond_19
    :try_start_19
    iget-object v3, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_22

    move-object v1, v3

    goto :goto_c

    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_1d
    move v1, v2

    .end local v1    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    goto :goto_6

    .line 323
    .end local v2    # "i":I
    :cond_1f
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 310
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p1    # "value":Ljava/lang/Object;
    :catchall_22
    move-exception p1

    goto :goto_2a

    .line 312
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_24
    :try_start_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 310
    .end local p1    # "value":Ljava/lang/Object;
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_22

    throw p1
.end method

.method public declared-synchronized whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 353
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 354
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 355
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 356
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_f
    if-eqz v3, :cond_24

    .line 357
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_20

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    if-eqz v4, :cond_20

    .line 358
    monitor-exit p0

    const/4 v4, 0x1

    return v4

    .line 356
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_20
    :try_start_20
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_27

    move-object v3, v4

    goto :goto_f

    .line 361
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_24
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    .line 352
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 339
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final blacklist defaultWriteHashtable(Ljava/io/ObjectOutputStream;IF)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .param p2, "length"    # I
    .param p3, "loadFactor"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1247
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    int-to-float v0, p2

    mul-float/2addr v0, p3

    const/high16 v1, 0x4f000000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 1248
    iput p3, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 1249
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1250
    return-void
.end method

.method public declared-synchronized whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 291
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 291
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 703
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 704
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable-IA;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 705
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 815
    const/4 v0, 0x1

    if-ne p1, p0, :cond_6

    .line 816
    monitor-exit p0

    return v0

    .line 818
    :cond_6
    :try_start_6
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 820
    .local v1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_5b

    if-eq v3, v4, :cond_1a

    .line 821
    monitor-exit p0

    return v2

    .line 824
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 825
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 826
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 827
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_46

    .line 828
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_44

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_42} :catch_56
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_42} :catch_56
    .catchall {:try_start_1a .. :try_end_42} :catchall_5b

    if-nez v7, :cond_52

    .line 829
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_44
    monitor-exit p0

    return v2

    .line 831
    :cond_46
    :try_start_46
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_4e} :catch_56
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_4e} :catch_56
    .catchall {:try_start_46 .. :try_end_4e} :catchall_5b

    if-nez v7, :cond_52

    .line 832
    monitor-exit p0

    return v2

    .line 834
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_52
    goto :goto_22

    .line 837
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_53
    nop

    .line 839
    monitor-exit p0

    return v0

    .line 835
    :catch_56
    move-exception v0

    .line 836
    .local v0, "unused":Ljava/lang/RuntimeException;
    monitor-exit p0

    return v2

    .line 819
    .end local v0    # "unused":Ljava/lang/RuntimeException;
    .end local v1    # "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_59
    monitor-exit p0

    return v2

    .line 814
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public declared-synchronized whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    monitor-enter p0

    .line 887
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 891
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 892
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 893
    .local v4, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_e
    if-eqz v4, :cond_25

    .line 894
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 895
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v4, v5

    .line 897
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v0, v5, :cond_1f

    goto :goto_e

    .line 898
    :cond_1f
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2a

    .line 892
    .end local v4    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 902
    :cond_28
    monitor-exit p0

    return-void

    .line 886
    .end local v0    # "expectedModCount":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p1    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public declared-synchronized whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 381
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 382
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 383
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 384
    .local v2, "index":I
    aget-object v3, v0, v2

    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_f
    if-eqz v3, :cond_25

    .line 385
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_21

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 386
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-object v4

    .line 384
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_21
    :try_start_21
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_28

    move-object v3, v4

    goto :goto_f

    .line 389
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_25
    monitor-exit p0

    const/4 v3, 0x0

    return-object v3

    .line 380
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 880
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    .line 881
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_9

    move-object v1, p2

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    monitor-exit p0

    return-object v1

    .line 879
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 7

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "h":I
    :try_start_2
    iget v1, p0, Ljava/util/Hashtable;->count:I

    if-eqz v1, :cond_30

    iget v1, p0, Ljava/util/Hashtable;->loadFactor:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    goto :goto_30

    .line 864
    :cond_e
    iget v1, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v1, v1

    iput v1, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 865
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 866
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 867
    .local v4, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_1b
    if-eqz v4, :cond_26

    .line 868
    invoke-virtual {v4}, Ljava/util/Hashtable$HashtableEntry;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 869
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v4, v5

    goto :goto_1b

    .line 866
    .end local v4    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 873
    :cond_29
    iget v2, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v2, v2

    iput v2, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_32

    .line 875
    monitor-exit p0

    return v0

    .line 862
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_30
    :goto_30
    monitor-exit p0

    return v0

    .line 859
    .end local v0    # "h":I
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public declared-synchronized whitelist test-api isEmpty()Z
    .registers 2

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 259
    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 259
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 663
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 664
    new-instance v0, Ljava/util/Hashtable$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable-IA;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 665
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 275
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 275
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    monitor-enter p0

    .line 1155
    :try_start_1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1158
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1159
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1161
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1162
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_54

    .line 1163
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_4f

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1164
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 1165
    .local v5, "mc":I
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p3, v6, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1166
    .local v6, "newValue":Ljava/lang/Object;, "TV;"
    iget v7, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v5, v7, :cond_49

    .line 1169
    if-nez v6, :cond_45

    .line 1170
    if-eqz v4, :cond_36

    .line 1171
    iget-object v7, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v7, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3a

    .line 1173
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_36
    iget-object v7, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v7, v0, v2

    .line 1175
    :goto_3a
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Ljava/util/Hashtable;->modCount:I

    .line 1176
    iget v7, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/Hashtable;->count:I

    goto :goto_47

    .line 1178
    :cond_45
    iput-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_5b

    .line 1180
    :goto_47
    monitor-exit p0

    return-object v6

    .line 1167
    :cond_49
    :try_start_49
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1162
    .end local v5    # "mc":I
    .end local v6    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_4f
    move-object v4, v3

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v5

    goto :goto_13

    .line 1184
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_54
    if-eqz p2, :cond_59

    .line 1185
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5b

    .line 1188
    :cond_59
    monitor-exit p0

    return-object p2

    .line 1154
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public declared-synchronized whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 476
    if-eqz p2, :cond_31

    .line 481
    :try_start_3
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 482
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 483
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 485
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 486
    .local v3, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_11
    if-eqz v3, :cond_29

    .line 487
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_25

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 488
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 489
    .local v4, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2f

    .line 490
    monitor-exit p0

    return-object v4

    .line 486
    .end local v4    # "old":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_25
    :try_start_25
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v4

    goto :goto_11

    .line 494
    :cond_29
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2f

    .line 495
    monitor-exit p0

    const/4 v4, 0x0

    return-object v4

    .line 475
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_2f
    move-exception p1

    goto :goto_37

    .line 477
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_31
    :try_start_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 475
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    throw p1
.end method

.method public declared-synchronized whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    .line 540
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    goto :goto_9

    .line 542
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_21
    monitor-exit p0

    return-void

    .line 539
    .end local p1    # "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public declared-synchronized whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 927
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 931
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 932
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 934
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 935
    .local v3, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_2c

    .line 936
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_28

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 937
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 938
    .local v4, "old":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_26

    .line 939
    iput-object p2, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_32

    .line 941
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    monitor-exit p0

    return-object v4

    .line 935
    .end local v4    # "old":Ljava/lang/Object;, "TV;"
    :cond_28
    :try_start_28
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v4

    goto :goto_12

    .line 945
    :cond_2c
    invoke-direct {p0, v1, p1, p2, v2}, Ljava/util/Hashtable;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_32

    .line 946
    monitor-exit p0

    const/4 v4, 0x0

    return-object v4

    .line 926
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method blacklist readHashtable(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1268
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1271
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "loadFactor"

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;F)F

    move-result v1

    .line 1272
    .local v1, "lf":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_94

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_94

    .line 1274
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v1, v2, v3}, Ljava/lang/Math;->clamp(FFF)F

    move-result v1

    .line 1277
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1278
    .local v2, "origlength":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1281
    .local v3, "elements":I
    if-ltz v3, :cond_7b

    .line 1286
    int-to-float v4, v3

    div-float/2addr v4, v1

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1292
    int-to-float v4, v3

    const v5, 0x3f866666    # 1.05f

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    .line 1293
    .local v4, "length":I
    if-le v4, v3, :cond_43

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_43

    .line 1294
    add-int/lit8 v4, v4, -0x1

    .line 1295
    :cond_43
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1297
    if-gez v4, :cond_4a

    .line 1298
    move v4, v2

    .line 1303
    :cond_4a
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v5

    const-class v6, [Ljava/util/Map$Entry;

    invoke-interface {v5, p1, v6, v4}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 1304
    invoke-static {p0, v1}, Ljava/util/Hashtable$UnsafeHolder;->putLoadFactor(Ljava/util/Hashtable;F)V

    .line 1305
    new-array v5, v4, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1306
    int-to-float v5, v4

    mul-float/2addr v5, v1

    const/high16 v6, 0x4f000000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Ljava/util/Hashtable;->threshold:I

    .line 1307
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/Hashtable;->count:I

    .line 1310
    :goto_68
    if-lez v3, :cond_7a

    .line 1312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1314
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 1316
    .local v6, "value":Ljava/lang/Object;, "TV;"
    iget-object v7, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {p0, v7, v5, v6}, Ljava/util/Hashtable;->reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1310
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_68

    .line 1318
    :cond_7a
    return-void

    .line 1282
    .end local v4    # "length":I
    :cond_7b
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal # of Elements: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1273
    .end local v2    # "origlength":I
    .end local v3    # "elements":I
    :cond_94
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal load factor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api rehash()V
    .registers 10

    .line 409
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v0, v0

    .line 410
    .local v0, "oldCapacity":I
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 413
    .local v1, "oldMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 414
    .local v2, "newCapacity":I
    const v3, 0x7ffffff7

    sub-int v4, v2, v3

    if-lez v4, :cond_16

    .line 415
    if-ne v0, v3, :cond_13

    .line 417
    return-void

    .line 418
    :cond_13
    const v2, 0x7ffffff7

    .line 420
    :cond_16
    new-array v3, v2, [Ljava/util/Hashtable$HashtableEntry;

    .line 422
    .local v3, "newMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v4, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable;->modCount:I

    .line 423
    int-to-float v4, v2

    iget v5, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4f000000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Ljava/util/Hashtable;->threshold:I

    .line 424
    iput-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 426
    move v4, v0

    .local v4, "i":I
    :goto_2e
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    if-lez v4, :cond_49

    .line 427
    aget-object v4, v1, v5

    .local v4, "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_34
    if-eqz v4, :cond_47

    .line 428
    move-object v6, v4

    .line 429
    .local v6, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 431
    iget v7, v6, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    rem-int/2addr v7, v2

    .line 432
    .local v7, "index":I
    aget-object v8, v3, v7

    iput-object v8, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 433
    aput-object v6, v3, v7

    .line 434
    .end local v6    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v7    # "index":I
    goto :goto_34

    .end local v4    # "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_47
    move v4, v5

    goto :goto_2e

    .line 436
    .end local v5    # "i":I
    :cond_49
    return-void
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 508
    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 509
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 510
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 512
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 513
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_10
    const/4 v5, 0x0

    if-eqz v3, :cond_41

    .line 514
    iget v6, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_3c

    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 515
    if-eqz v4, :cond_26

    .line 516
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2a

    .line 518
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v0, v2

    .line 520
    :goto_2a
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 521
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    .line 522
    iget-object v6, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 523
    .local v6, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_43

    .line 524
    monitor-exit p0

    return-object v6

    .line 513
    .end local v6    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3c
    move-object v4, v3

    :try_start_3d
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_43

    move-object v3, v5

    goto :goto_10

    .line 527
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_41
    monitor-exit p0

    return-object v5

    .line 507
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 951
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 954
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 955
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 957
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 958
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_49

    .line 959
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_44

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 960
    if-eqz v4, :cond_30

    .line 961
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_34

    .line 963
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_30
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v0, v2

    .line 965
    :goto_34
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 966
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 967
    iget v5, p0, Ljava/util/Hashtable;->count:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/Hashtable;->count:I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_4c

    .line 968
    monitor-exit p0

    return v6

    .line 958
    :cond_44
    move-object v4, v3

    :try_start_45
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_4c

    move-object v3, v5

    goto :goto_13

    .line 971
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_49
    monitor-exit p0

    const/4 v4, 0x0

    return v4

    .line 950
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 998
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1000
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1001
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 1003
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 1004
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v3, :cond_2a

    .line 1005
    iget v4, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_26

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1006
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 1007
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2d

    .line 1008
    monitor-exit p0

    return-object v4

    .line 1004
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_26
    :try_start_26
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2d

    move-object v3, v4

    goto :goto_12

    .line 1011
    :cond_2a
    monitor-exit p0

    const/4 v4, 0x0

    return-object v4

    .line 997
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 976
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 979
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 980
    .local v1, "hash":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    .line 982
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 983
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_15
    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 984
    iget v5, v3, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_33

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 985
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 986
    iput-object p3, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_39

    .line 987
    monitor-exit p0

    const/4 v4, 0x1

    return v4

    .line 989
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_31
    monitor-exit p0

    return v4

    .line 983
    :cond_33
    :try_start_33
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_39

    move-object v3, v4

    goto :goto_15

    .line 993
    :cond_37
    monitor-exit p0

    return v4

    .line 975
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p3    # "newValue":Ljava/lang/Object;, "TV;"
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public declared-synchronized whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 907
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 911
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 912
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 913
    .local v4, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_e
    if-eqz v4, :cond_2c

    .line 914
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 915
    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 914
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 916
    iget-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v4, v5

    .line 918
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-ne v0, v5, :cond_26

    goto :goto_e

    .line 919
    :cond_26
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_31

    .line 912
    .end local v4    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 923
    :cond_2f
    monitor-exit p0

    return-void

    .line 906
    .end local v0    # "expectedModCount":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local p1    # "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized whitelist test-api size()I
    .registers 2

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 249
    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 249
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 597
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 598
    .local v0, "max":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 599
    const-string v1, "{}"
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_63

    monitor-exit p0

    return-object v1

    .line 601
    .end local p0    # "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 604
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, "i":I
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 607
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 608
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 609
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-ne v5, p0, :cond_34

    const-string v7, "(this Map)"

    goto :goto_38

    :cond_34
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_38
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    if-ne v6, p0, :cond_45

    const-string v7, "(this Map)"

    goto :goto_49

    :cond_45
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_49
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    if-ne v3, v0, :cond_5a

    .line 614
    const/16 v7, 0x7d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_58
    .catchall {:try_start_e .. :try_end_58} :catchall_63

    monitor-exit p0

    return-object v7

    .line 615
    :cond_5a
    :try_start_5a
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    nop

    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 596
    .end local v0    # "max":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "i":I
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_63

    throw v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 782
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    if-nez v0, :cond_10

    .line 783
    new-instance v0, Ljava/util/Hashtable$ValueCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable-IA;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 785
    :cond_10
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    return-object v0
.end method

.method blacklist writeHashtable(Ljava/io/ObjectOutputStream;)V
    .registers 11
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    .line 1215
    .local v0, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1217
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1220
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1221
    iget v1, p0, Ljava/util/Hashtable;->count:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1224
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_2c

    aget-object v5, v1, v4

    .line 1226
    .local v5, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_19
    if-eqz v5, :cond_29

    .line 1227
    new-instance v6, Ljava/util/Hashtable$HashtableEntry;

    iget-object v7, v5, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v8, v5, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-direct {v6, v3, v7, v8, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    move-object v0, v6

    .line 1229
    iget-object v6, v5, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v5, v6

    goto :goto_19

    .line 1224
    .end local v5    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1232
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_3d

    .line 1235
    :goto_2d
    if-eqz v0, :cond_3c

    .line 1236
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1237
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1238
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2d

    .line 1240
    :cond_3c
    return-void

    .line 1232
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method
