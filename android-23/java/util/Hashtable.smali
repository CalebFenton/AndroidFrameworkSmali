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
        Ljava/util/Hashtable$HashIterator;,
        Ljava/util/Hashtable$KeyIterator;,
        Ljava/util/Hashtable$ValueIterator;,
        Ljava/util/Hashtable$EntryIterator;,
        Ljava/util/Hashtable$KeyEnumeration;,
        Ljava/util/Hashtable$ValueEnumeration;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$Values;,
        Ljava/util/Hashtable$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CHARS_PER_ENTRY:I = 0xf

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


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

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/Hashtable;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/Hashtable;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/Hashtable;->size:I

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 57
    new-array v0, v1, [Ljava/util/Hashtable$HashtableEntry;

    #@3
    .line 56
    sput-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@5
    .line 1062
    new-array v0, v1, [Ljava/io/ObjectStreamField;

    #@7
    .line 1063
    new-instance v1, Ljava/io/ObjectStreamField;

    #@9
    const-string/jumbo v2, "threshold"

    #@c
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 1064
    new-instance v1, Ljava/io/ObjectStreamField;

    #@16
    const-string/jumbo v2, "loadFactor"

    #@19
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1b
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1e
    const/4 v2, 0x1

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 1062
    sput-object v0, Ljava/util/Hashtable;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@23
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 105
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    #@3
    .line 106
    sget-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@5
    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    #@7
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@9
    .line 107
    const/4 v0, -0x1

    #@a
    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    #@c
    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 117
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    #@3
    .line 118
    if-gez p1, :cond_0

    #@5
    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Capacity: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 122
    :cond_0
    if-nez p1, :cond_1

    #@21
    .line 124
    sget-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@23
    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    #@25
    .line 125
    .local v0, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@27
    .line 126
    const/4 v1, -0x1

    #@28
    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    #@2a
    .line 127
    return-void

    #@2b
    .line 130
    .end local v0    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x4

    #@2c
    if-ge p1, v1, :cond_2

    #@2e
    .line 131
    const/4 p1, 0x4

    #@2f
    .line 137
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    #@32
    .line 117
    return-void

    #@33
    .line 132
    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    #@35
    if-le p1, v1, :cond_3

    #@37
    .line 133
    const/high16 p1, 0x40000000    # 2.0f

    #@39
    goto :goto_0

    #@3a
    .line 135
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    #@3d
    move-result p1

    #@3e
    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .line 150
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable;-><init>(I)V

    #@3
    .line 152
    const/4 v0, 0x0

    #@4
    cmpg-float v0, p2, v0

    #@6
    if-lez v0, :cond_0

    #@8
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Load factor: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 149
    :cond_1
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
    .line 171
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    #@b
    .line 172
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V

    #@e
    .line 170
    return-void
.end method

.method private static capacityForInitSize(I)I
    .locals 2
    .param p0, "size"    # I

    #@0
    .prologue
    .line 195
    shr-int/lit8 v1, p0, 0x1

    #@2
    add-int v0, v1, p0

    #@4
    .line 198
    .local v0, "result":I
    const/high16 v1, -0x40000000    # -2.0f

    #@6
    and-int/2addr v1, v0

    #@7
    if-nez v1, :cond_0

    #@9
    .end local v0    # "result":I
    :goto_0
    return v0

    #@a
    .restart local v0    # "result":I
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    #@c
    goto :goto_0
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 395
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 396
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "key == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 397
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 398
    new-instance v5, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v6, "value == null"

    #@12
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v5

    #@16
    .line 400
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@19
    move-result v2

    #@1a
    .line 401
    .local v2, "hash":I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@1c
    .line 402
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    #@1d
    add-int/lit8 v5, v5, -0x1

    #@1f
    and-int v3, v2, v5

    #@21
    .line 403
    .local v3, "index":I
    aget-object v1, v4, v3

    #@23
    .line 404
    .local v1, "first":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    #@24
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@26
    .line 405
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@28
    if-ne v5, v2, :cond_2

    #@2a
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@2c
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_2

    #@32
    .line 406
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@34
    .line 407
    return-void

    #@35
    .line 404
    :cond_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@37
    goto :goto_0

    #@38
    .line 412
    :cond_3
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    #@3a
    invoke-direct {v5, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    #@3d
    aput-object v5, v4, v3

    #@3f
    .line 413
    iget v5, p0, Ljava/util/Hashtable;->size:I

    #@41
    add-int/lit8 v5, v5, 0x1

    #@43
    iput v5, p0, Ljava/util/Hashtable;->size:I

    #@45
    .line 394
    return-void
.end method

.method private constructorPutAll(Ljava/util/Map;)V
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
    .line 181
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@2
    sget-object v3, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 182
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    #@9
    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    .line 185
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    invoke-direct {p0, v2, v3}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    #@28
    goto :goto_0

    #@29
    .line 180
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_1
    return-void
.end method

.method private declared-synchronized containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 797
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@4
    move-result v1

    #@5
    .line 798
    .local v1, "hash":I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@7
    .line 799
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    #@8
    add-int/lit8 v4, v4, -0x1

    #@a
    and-int v2, v1, v4

    #@c
    .line 800
    .local v2, "index":I
    aget-object v0, v3, v2

    #@e
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .line 801
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@12
    if-ne v4, v1, :cond_0

    #@14
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 802
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@1e
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v4

    #@22
    monitor-exit p0

    #@23
    return v4

    #@24
    .line 800
    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 805
    :cond_1
    const/4 v4, 0x0

    #@28
    monitor-exit p0

    #@29
    return v4

    #@2a
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit p0

    #@2c
    throw v4
.end method

.method private doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v11, 0x0

    #@1
    .line 501
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@3
    .line 502
    .local v9, "oldTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v8, v9

    #@4
    .line 503
    .local v8, "oldCapacity":I
    const/high16 v10, 0x40000000    # 2.0f

    #@6
    if-ne v8, v10, :cond_0

    #@8
    .line 504
    return-object v9

    #@9
    .line 506
    :cond_0
    mul-int/lit8 v5, v8, 0x2

    #@b
    .line 507
    .local v5, "newCapacity":I
    invoke-direct {p0, v5}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    #@e
    move-result-object v6

    #@f
    .line 508
    .local v6, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    #@11
    if-nez v10, :cond_1

    #@13
    .line 509
    return-object v6

    #@14
    .line 512
    :cond_1
    const/4 v3, 0x0

    #@15
    .local v3, "j":I
    :goto_0
    if-ge v3, v8, :cond_7

    #@17
    .line 517
    aget-object v1, v9, v3

    #@19
    .line 518
    .local v1, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    if-nez v1, :cond_3

    #@1b
    .line 512
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 521
    :cond_3
    iget v10, v1, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@20
    and-int v2, v10, v8

    #@22
    .line 522
    .local v2, "highBit":I
    const/4 v0, 0x0

    #@23
    .line 523
    .local v0, "broken":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    or-int v10, v3, v2

    #@25
    aput-object v1, v6, v10

    #@27
    .line 524
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@29
    .end local v0    # "broken":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local v4, "n":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_2
    if-eqz v4, :cond_6

    #@2b
    .line 525
    iget v10, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@2d
    and-int v7, v10, v8

    #@2f
    .line 526
    .local v7, "nextHighBit":I
    if-eq v7, v2, :cond_4

    #@31
    .line 527
    if-nez v0, :cond_5

    #@33
    .line 528
    or-int v10, v3, v7

    #@35
    aput-object v4, v6, v10

    #@37
    .line 531
    :goto_3
    move-object v0, v1

    #@38
    .line 532
    .local v0, "broken":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move v2, v7

    #@39
    .line 524
    .end local v0    # "broken":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4
    move-object v1, v4

    #@3a
    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3c
    goto :goto_2

    #@3d
    .line 530
    :cond_5
    iput-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3f
    goto :goto_3

    #@40
    .line 535
    .end local v7    # "nextHighBit":I
    :cond_6
    if-eqz v0, :cond_2

    #@42
    .line 536
    iput-object v11, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@44
    goto :goto_1

    #@45
    .line 538
    .end local v1    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2    # "highBit":I
    .end local v4    # "n":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_7
    return-object v6
.end method

.method private ensureCapacity(I)V
    .locals 11
    .param p1, "numMappings"    # I

    #@0
    .prologue
    .line 440
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    #@3
    move-result v10

    #@4
    invoke-static {v10}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    #@7
    move-result v2

    #@8
    .line 441
    .local v2, "newCapacity":I
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@a
    .line 442
    .local v9, "oldTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v7, v9

    #@b
    .line 443
    .local v7, "oldCapacity":I
    if-gt v2, v7, :cond_0

    #@d
    .line 444
    return-void

    #@e
    .line 447
    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    #@11
    .line 449
    mul-int/lit8 v10, v7, 0x2

    #@13
    if-ne v2, v10, :cond_1

    #@15
    .line 450
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    #@18
    .line 451
    return-void

    #@19
    .line 455
    :cond_1
    invoke-direct {p0, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    #@1c
    move-result-object v6

    #@1d
    .line 456
    .local v6, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    #@1f
    if-eqz v10, :cond_3

    #@21
    .line 457
    add-int/lit8 v4, v2, -0x1

    #@23
    .line 458
    .local v4, "newMask":I
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_3

    #@26
    .line 459
    aget-object v0, v9, v1

    #@28
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@2a
    .line 460
    iget-object v8, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@2c
    .line 461
    .local v8, "oldNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@2e
    and-int v3, v10, v4

    #@30
    .line 462
    .local v3, "newIndex":I
    aget-object v5, v6, v3

    #@32
    .line 463
    .local v5, "newNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    aput-object v0, v6, v3

    #@34
    .line 464
    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@36
    .line 465
    move-object v0, v8

    #@37
    goto :goto_1

    #@38
    .line 458
    .end local v3    # "newIndex":I
    .end local v5    # "newNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v8    # "oldNext":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 439
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v4    # "newMask":I
    :cond_3
    return-void
.end method

.method private makeTable(I)[Ljava/util/Hashtable$HashtableEntry;
    .locals 3
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 488
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    #@2
    .line 489
    .local v0, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@4
    .line 490
    shr-int/lit8 v1, p1, 0x1

    #@6
    shr-int/lit8 v2, p1, 0x2

    #@8
    add-int/2addr v1, v2

    #@9
    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    #@b
    .line 491
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1085
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1086
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 1087
    .local v0, "capacity":I
    if-gez v0, :cond_0

    #@9
    .line 1088
    new-instance v5, Ljava/io/InvalidObjectException;

    #@b
    new-instance v6, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v7, "Capacity: "

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@22
    throw v5

    #@23
    .line 1090
    :cond_0
    const/4 v5, 0x4

    #@24
    if-ge v0, v5, :cond_1

    #@26
    .line 1091
    const/4 v0, 0x4

    #@27
    .line 1097
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    #@2a
    .line 1099
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@2d
    move-result v3

    #@2e
    .line 1100
    .local v3, "size":I
    if-gez v3, :cond_3

    #@30
    .line 1101
    new-instance v5, Ljava/io/InvalidObjectException;

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "Size: "

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@49
    throw v5

    #@4a
    .line 1092
    .end local v3    # "size":I
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    #@4c
    if-le v0, v5, :cond_2

    #@4e
    .line 1093
    const/high16 v0, 0x40000000    # 2.0f

    #@50
    goto :goto_0

    #@51
    .line 1095
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    #@54
    move-result v0

    #@55
    goto :goto_0

    #@56
    .line 1104
    .restart local v3    # "size":I
    :cond_3
    const/4 v1, 0x0

    #@57
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    #@59
    .line 1105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5c
    move-result-object v2

    #@5d
    .line 1106
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@60
    move-result-object v4

    #@61
    .line 1107
    .local v4, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    #@64
    .line 1104
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_1

    #@67
    .line 1084
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    :cond_4
    return-void
.end method

.method private declared-synchronized removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 813
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@5
    move-result v1

    #@6
    .line 814
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@8
    .line 815
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    #@9
    add-int/lit8 v5, v5, -0x1

    #@b
    and-int v2, v1, v5

    #@d
    .line 816
    .local v2, "index":I
    aget-object v0, v4, v2

    #@f
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@10
    :goto_0
    if-eqz v0, :cond_3

    #@12
    .line 818
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@14
    if-ne v5, v1, :cond_2

    #@16
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@18
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 819
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@20
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    monitor-exit p0

    #@27
    .line 820
    return v6

    #@28
    .line 822
    :cond_0
    if-nez v3, :cond_1

    #@2a
    .line 823
    :try_start_1
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@2c
    aput-object v5, v4, v2

    #@2e
    .line 827
    :goto_1
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    #@30
    add-int/lit8 v5, v5, 0x1

    #@32
    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    #@34
    .line 828
    iget v5, p0, Ljava/util/Hashtable;->size:I

    #@36
    add-int/lit8 v5, v5, -0x1

    #@38
    iput v5, p0, Ljava/util/Hashtable;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 829
    const/4 v5, 0x1

    #@3b
    monitor-exit p0

    #@3c
    return v5

    #@3d
    .line 825
    :cond_1
    :try_start_2
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3f
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_1

    #@42
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v5

    #@43
    monitor-exit p0

    #@44
    throw v5

    #@45
    .line 817
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    move-object v3, v0

    #@46
    .local v3, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_3
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    goto :goto_0

    #@49
    .end local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    monitor-exit p0

    #@4a
    .line 832
    return v6
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v5, 0x3f400000    # 0.75f

    #@2
    monitor-enter p0

    #@3
    .line 1070
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@6
    move-result-object v2

    #@7
    .line 1071
    .local v2, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v3, "threshold"

    #@a
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@c
    array-length v4, v4

    #@d
    int-to-float v4, v4

    #@e
    mul-float/2addr v4, v5

    #@f
    float-to-int v4, v4

    #@10
    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@13
    .line 1072
    const-string/jumbo v3, "loadFactor"

    #@16
    const/high16 v4, 0x3f400000    # 0.75f

    #@18
    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    #@1b
    .line 1073
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@1e
    .line 1075
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@20
    array-length v3, v3

    #@21
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@24
    .line 1076
    iget v3, p0, Ljava/util/Hashtable;->size:I

    #@26
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@29
    .line 1077
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_0

    #@37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Ljava/util/Map$Entry;

    #@3d
    .line 1078
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@44
    .line 1079
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_0
    move-exception v3

    #@4d
    monitor-exit p0

    #@4e
    throw v3

    #@4f
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v2    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :cond_0
    monitor-exit p0

    #@50
    .line 1068
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 580
    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 581
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@b
    .line 582
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    #@11
    .line 583
    const/4 v0, 0x0

    #@12
    iput v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 579
    return-void

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 216
    :try_start_0
    invoke-super {p0}, Ljava/util/Dictionary;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 222
    .local v1, "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :try_start_1
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@9
    array-length v2, v2

    #@a
    invoke-direct {v1, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    #@d
    .line 223
    const/4 v2, 0x0

    #@e
    iput v2, v1, Ljava/util/Hashtable;->size:I

    #@10
    .line 224
    const/4 v2, 0x0

    #@11
    iput-object v2, v1, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    #@13
    .line 225
    const/4 v2, 0x0

    #@14
    iput-object v2, v1, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    #@16
    .line 226
    const/4 v2, 0x0

    #@17
    iput-object v2, v1, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    #@19
    .line 228
    invoke-direct {v1, p0}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 229
    return-object v1

    #@1e
    .line 217
    .end local v1    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catch_0
    move-exception v0

    #@1f
    .line 218
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_2
    new-instance v2, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 339
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@4
    move-result v2

    #@5
    .line 290
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@7
    .line 291
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    #@8
    add-int/lit8 v4, v4, -0x1

    #@a
    and-int/2addr v4, v2

    #@b
    aget-object v0, v3, v4

    #@d
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@f
    .line 293
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@11
    .line 294
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    #@13
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@15
    if-ne v4, v2, :cond_1

    #@17
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 295
    :cond_0
    const/4 v4, 0x1

    #@1e
    monitor-exit p0

    #@1f
    return v4

    #@20
    .line 292
    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    .line 298
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    const/4 v4, 0x0

    #@24
    monitor-exit p0

    #@25
    return v4

    #@26
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2    # "hash":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v4

    #@27
    monitor-exit p0

    #@28
    throw v4
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 310
    if-nez p1, :cond_0

    #@3
    .line 311
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "value == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v4

    #@d
    monitor-exit p0

    #@e
    throw v4

    #@f
    .line 314
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@11
    .line 315
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    array-length v2, v3

    #@12
    .line 317
    .local v2, "len":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@15
    .line 318
    aget-object v0, v3, v1

    #@17
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;
    :goto_1
    if-eqz v0, :cond_2

    #@19
    .line 319
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@1b
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 320
    const/4 v4, 0x1

    #@22
    monitor-exit p0

    #@23
    return v4

    #@24
    .line 318
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_1

    #@27
    .line 317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 324
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;
    :cond_3
    const/4 v4, 0x0

    #@2b
    monitor-exit p0

    #@2c
    return v4
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 650
    :try_start_0
    new-instance v0, Ljava/util/Hashtable$ValueEnumeration;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$ValueEnumeration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 620
    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 621
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    monitor-exit p0

    #@6
    return-object v0

    #@7
    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    #@9
    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V

    #@d
    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 847
    :try_start_0
    instance-of v0, p1, Ljava/util/Map;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 848
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    check-cast p1, Ljava/util/Map;

    #@b
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    :goto_0
    monitor-exit p0

    #@14
    .line 847
    return v0

    #@15
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0

    #@17
    .end local p1    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 265
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@5
    move-result v2

    #@6
    .line 266
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@8
    .line 267
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    #@9
    add-int/lit8 v4, v4, -0x1

    #@b
    and-int/2addr v4, v2

    #@c
    aget-object v0, v3, v4

    #@e
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@10
    .line 269
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@12
    .line 270
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    #@14
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@16
    if-ne v4, v2, :cond_1

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 271
    :cond_0
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v4

    #@22
    .line 268
    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    monitor-exit p0

    #@26
    .line 274
    return-object v5

    #@27
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2    # "hash":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v4

    #@28
    monitor-exit p0

    #@29
    throw v4
.end method

.method public declared-synchronized hashCode()I
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 852
    const/4 v3, 0x0

    #@3
    .line 853
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v5

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_3

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 854
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    .line 855
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    .line 856
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eq v2, p0, :cond_0

    #@21
    if-eq v4, p0, :cond_0

    #@23
    .line 859
    if-eqz v2, :cond_1

    #@25
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@28
    move-result v5

    #@29
    move v7, v5

    #@2a
    .line 860
    :goto_1
    if-eqz v4, :cond_2

    #@2c
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v5

    #@30
    .line 859
    :goto_2
    xor-int/2addr v5, v7

    #@31
    add-int/2addr v3, v5

    #@32
    goto :goto_0

    #@33
    :cond_1
    move v7, v6

    #@34
    goto :goto_1

    #@35
    :cond_2
    move v5, v6

    #@36
    .line 860
    goto :goto_2

    #@37
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    monitor-exit p0

    #@38
    .line 862
    return v3

    #@39
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3a
    monitor-exit p0

    #@3b
    throw v5
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 240
    :try_start_0
    iget v1, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 595
    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 596
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    monitor-exit p0

    #@6
    return-object v0

    #@7
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$KeySet;

    #@9
    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeySet;)V

    #@d
    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 636
    :try_start_0
    new-instance v0, Ljava/util/Hashtable$KeyEnumeration;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeyEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeyEnumeration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 359
    if-nez p1, :cond_0

    #@4
    .line 360
    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v7, "key == null"

    #@9
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v6

    #@e
    monitor-exit p0

    #@f
    throw v6

    #@10
    .line 361
    :cond_0
    if-nez p2, :cond_1

    #@12
    .line 362
    :try_start_1
    new-instance v6, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v7, "value == null"

    #@17
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v6

    #@1b
    .line 364
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@1e
    move-result v2

    #@1f
    .line 365
    .local v2, "hash":I
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@21
    .line 366
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v6, v5

    #@22
    add-int/lit8 v6, v6, -0x1

    #@24
    and-int v3, v2, v6

    #@26
    .line 367
    .local v3, "index":I
    aget-object v1, v5, v3

    #@28
    .line 368
    .local v1, "first":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    #@29
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@2b
    .line 369
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@2d
    if-ne v6, v2, :cond_2

    #@2f
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@31
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 370
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@39
    .line 371
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit p0

    #@3c
    .line 372
    return-object v4

    #@3d
    .line 368
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@3f
    goto :goto_0

    #@40
    .line 377
    :cond_3
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    #@42
    add-int/lit8 v6, v6, 0x1

    #@44
    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    #@46
    .line 378
    iget v6, p0, Ljava/util/Hashtable;->size:I

    #@48
    add-int/lit8 v7, v6, 0x1

    #@4a
    iput v7, p0, Ljava/util/Hashtable;->size:I

    #@4c
    iget v7, p0, Ljava/util/Hashtable;->threshold:I

    #@4e
    if-le v6, v7, :cond_4

    #@50
    .line 379
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    #@53
    .line 380
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    #@56
    move-result-object v5

    #@57
    .line 381
    array-length v6, v5

    #@58
    add-int/lit8 v6, v6, -0x1

    #@5a
    and-int v3, v2, v6

    #@5c
    .line 382
    aget-object v1, v5, v3

    #@5e
    .line 384
    :cond_4
    new-instance v6, Ljava/util/Hashtable$HashtableEntry;

    #@60
    invoke-direct {v6, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    #@63
    aput-object v6, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    monitor-exit p0

    #@66
    .line 385
    return-object v8
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    #@1
    .line 423
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Ljava/util/Hashtable;->ensureCapacity(I)V

    #@8
    .line 424
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/Map$Entry;

    #@1c
    .line 425
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2

    #@2b
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    #@2c
    .line 422
    return-void
.end method

.method protected rehash()V
    .locals 0

    #@0
    .prologue
    .line 475
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 553
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@5
    move-result v1

    #@6
    .line 554
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    #@8
    .line 555
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    #@9
    add-int/lit8 v5, v5, -0x1

    #@b
    and-int v2, v1, v5

    #@d
    .line 556
    .local v2, "index":I
    aget-object v0, v4, v2

    #@f
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@10
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 558
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    #@14
    if-ne v5, v1, :cond_1

    #@16
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    #@18
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    .line 559
    if-nez v3, :cond_0

    #@20
    .line 560
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@22
    aput-object v5, v4, v2

    #@24
    .line 564
    :goto_1
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    #@26
    add-int/lit8 v5, v5, 0x1

    #@28
    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    #@2a
    .line 565
    iget v5, p0, Ljava/util/Hashtable;->size:I

    #@2c
    add-int/lit8 v5, v5, -0x1

    #@2e
    iput v5, p0, Ljava/util/Hashtable;->size:I

    #@30
    .line 566
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit p0

    #@33
    return-object v5

    #@34
    .line 562
    :cond_0
    :try_start_1
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    #@36
    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_1

    #@39
    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v5

    #@3a
    monitor-exit p0

    #@3b
    throw v5

    #@3c
    .line 557
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v4    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    move-object v3, v0

    #@3d
    .local v3, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .end local v3    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    monitor-exit p0

    #@41
    .line 569
    return-object v6
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 251
    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 877
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    iget v6, p0, Ljava/util/Hashtable;->size:I

    #@5
    mul-int/lit8 v6, v6, 0xf

    #@7
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    .line 878
    .local v4, "result":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    #@c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    .line 879
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    #@12
    move-result-object v6

    #@13
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .line 880
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v1

    #@1b
    .line 881
    .local v1, "hasMore":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    #@1d
    .line 882
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/Map$Entry;

    #@23
    .line 884
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    .line 885
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-ne v3, p0, :cond_1

    #@29
    const-string/jumbo v6, "(this Map)"

    #@2c
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 887
    const/16 v6, 0x3d

    #@31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 889
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    .line 890
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-ne v5, p0, :cond_2

    #@3a
    const-string/jumbo v6, "(this Map)"

    #@3d
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 892
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_0

    #@46
    .line 893
    const-string/jumbo v6, ", "

    #@49
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "hasMore":Z
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v6

    #@4e
    monitor-exit p0

    #@4f
    throw v6

    #@50
    .line 885
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v1    # "hasMore":Z
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    goto :goto_1

    #@55
    .line 890
    .restart local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    goto :goto_2

    #@5a
    .line 897
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    const/16 v6, 0x7d

    #@5c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    .line 898
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    move-result-object v6

    #@63
    monitor-exit p0

    #@64
    return-object v6
.end method

.method public declared-synchronized values()Ljava/util/Collection;
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 607
    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 608
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    #@5
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    monitor-exit p0

    #@6
    return-object v0

    #@7
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$Values;

    #@9
    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$Values;)V

    #@d
    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method
