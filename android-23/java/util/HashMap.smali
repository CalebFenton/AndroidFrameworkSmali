.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$HashMapEntry;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$EntrySet;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entryForNullKey:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

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
.method static synthetic -wrap0(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 72
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    #@3
    .line 71
    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@5
    .line 962
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@8
    .line 963
    new-instance v1, Ljava/io/ObjectStreamField;

    #@a
    const-string/jumbo v2, "loadFactor"

    #@d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@f
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    .line 962
    sput-object v0, Ljava/util/HashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@17
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 125
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 126
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@5
    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    #@7
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@9
    .line 127
    const/4 v0, -0x1

    #@a
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    #@c
    .line 125
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 138
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    .line 139
    if-gez p1, :cond_0

    #@5
    .line 140
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
    .line 143
    :cond_0
    if-nez p1, :cond_1

    #@21
    .line 145
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@23
    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    #@25
    .line 146
    .local v0, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@27
    .line 147
    const/4 v1, -0x1

    #@28
    iput v1, p0, Ljava/util/HashMap;->threshold:I

    #@2a
    .line 148
    return-void

    #@2b
    .line 151
    .end local v0    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x4

    #@2c
    if-ge p1, v1, :cond_2

    #@2e
    .line 152
    const/4 p1, 0x4

    #@2f
    .line 158
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    #@32
    .line 138
    return-void

    #@33
    .line 153
    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    #@35
    if-le p1, v1, :cond_3

    #@37
    .line 154
    const/high16 p1, 0x40000000    # 2.0f

    #@39
    goto :goto_0

    #@3a
    .line 156
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
    .line 174
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@3
    .line 176
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
    .line 177
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
    .line 173
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
    .line 195
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/util/HashMap;->capacityForInitSize(I)I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    #@b
    .line 196
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    #@e
    .line 194
    return-void
.end method

.method static capacityForInitSize(I)I
    .locals 2
    .param p0, "size"    # I

    #@0
    .prologue
    .line 219
    shr-int/lit8 v1, p0, 0x1

    #@2
    add-int v0, v1, p0

    #@4
    .line 222
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    #@1
    .line 437
    if-nez p1, :cond_1

    #@3
    .line 438
    iget-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@5
    .line 439
    .local v1, "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_0

    #@7
    .line 440
    const/4 v6, 0x0

    #@8
    invoke-virtual {p0, v7, p2, v6, v7}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    #@b
    move-result-object v6

    #@c
    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@e
    .line 441
    iget v6, p0, Ljava/util/HashMap;->size:I

    #@10
    add-int/lit8 v6, v6, 0x1

    #@12
    iput v6, p0, Ljava/util/HashMap;->size:I

    #@14
    .line 445
    :goto_0
    return-void

    #@15
    .line 443
    :cond_0
    iput-object p2, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@17
    goto :goto_0

    #@18
    .line 448
    .end local v1    # "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@1b
    move-result v3

    #@1c
    .line 449
    .local v3, "hash":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@1e
    .line 450
    .local v5, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v5

    #@1f
    add-int/lit8 v6, v6, -0x1

    #@21
    and-int v4, v3, v6

    #@23
    .line 451
    .local v4, "index":I
    aget-object v2, v5, v4

    #@25
    .line 452
    .local v2, "first":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v2

    #@26
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    #@28
    .line 453
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@2a
    if-ne v6, v3, :cond_2

    #@2c
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@2e
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_2

    #@34
    .line 454
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@36
    .line 455
    return-void

    #@37
    .line 452
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@39
    goto :goto_1

    #@3a
    .line 460
    :cond_3
    invoke-virtual {p0, p1, p2, v3, v2}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    #@3d
    move-result-object v6

    #@3e
    aput-object v6, v5, v4

    #@40
    .line 461
    iget v6, p0, Ljava/util/HashMap;->size:I

    #@42
    add-int/lit8 v6, v6, 0x1

    #@44
    iput v6, p0, Ljava/util/HashMap;->size:I

    #@46
    .line 436
    return-void
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 831
    if-nez p1, :cond_1

    #@3
    .line 832
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@5
    .line 833
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@7
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@9
    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    :cond_0
    return v4

    #@e
    .line 836
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@11
    move-result v1

    #@12
    .line 837
    .local v1, "hash":I
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@14
    .line 838
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    #@15
    add-int/lit8 v5, v5, -0x1

    #@17
    and-int v2, v1, v5

    #@19
    .line 839
    .local v2, "index":I
    aget-object v0, v3, v2

    #@1b
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@1d
    .line 840
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@1f
    if-ne v5, v1, :cond_2

    #@21
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@23
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 841
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2b
    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    return v4

    #@30
    .line 839
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@32
    goto :goto_0

    #@33
    .line 844
    :cond_3
    return v4
.end method

.method private doubleCapacity()[Ljava/util/HashMap$HashMapEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v11, 0x0

    #@1
    .line 564
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@3
    .line 565
    .local v9, "oldTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v8, v9

    #@4
    .line 566
    .local v8, "oldCapacity":I
    const/high16 v10, 0x40000000    # 2.0f

    #@6
    if-ne v8, v10, :cond_0

    #@8
    .line 567
    return-object v9

    #@9
    .line 569
    :cond_0
    mul-int/lit8 v5, v8, 0x2

    #@b
    .line 570
    .local v5, "newCapacity":I
    invoke-direct {p0, v5}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    #@e
    move-result-object v6

    #@f
    .line 571
    .local v6, "newTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    #@11
    if-nez v10, :cond_1

    #@13
    .line 572
    return-object v6

    #@14
    .line 575
    :cond_1
    const/4 v3, 0x0

    #@15
    .local v3, "j":I
    :goto_0
    if-ge v3, v8, :cond_7

    #@17
    .line 580
    aget-object v1, v9, v3

    #@19
    .line 581
    .local v1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_3

    #@1b
    .line 575
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 584
    :cond_3
    iget v10, v1, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@20
    and-int v2, v10, v8

    #@22
    .line 585
    .local v2, "highBit":I
    const/4 v0, 0x0

    #@23
    .line 586
    .local v0, "broken":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    or-int v10, v3, v2

    #@25
    aput-object v1, v6, v10

    #@27
    .line 587
    iget-object v4, v1, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@29
    .end local v0    # "broken":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .local v4, "n":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v4, :cond_6

    #@2b
    .line 588
    iget v10, v4, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@2d
    and-int v7, v10, v8

    #@2f
    .line 589
    .local v7, "nextHighBit":I
    if-eq v7, v2, :cond_4

    #@31
    .line 590
    if-nez v0, :cond_5

    #@33
    .line 591
    or-int v10, v3, v7

    #@35
    aput-object v4, v6, v10

    #@37
    .line 594
    :goto_3
    move-object v0, v1

    #@38
    .line 595
    .local v0, "broken":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move v2, v7

    #@39
    .line 587
    .end local v0    # "broken":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_4
    move-object v1, v4

    #@3a
    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@3c
    goto :goto_2

    #@3d
    .line 593
    :cond_5
    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@3f
    goto :goto_3

    #@40
    .line 598
    .end local v7    # "nextHighBit":I
    :cond_6
    if-eqz v0, :cond_2

    #@42
    .line 599
    iput-object v11, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@44
    goto :goto_1

    #@45
    .line 601
    .end local v1    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v2    # "highBit":I
    .end local v4    # "n":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_7
    return-object v6
.end method

.method private ensureCapacity(I)V
    .locals 11
    .param p1, "numMappings"    # I

    #@0
    .prologue
    .line 517
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->capacityForInitSize(I)I

    #@3
    move-result v10

    #@4
    invoke-static {v10}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    #@7
    move-result v2

    #@8
    .line 518
    .local v2, "newCapacity":I
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@a
    .line 519
    .local v9, "oldTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v7, v9

    #@b
    .line 520
    .local v7, "oldCapacity":I
    if-gt v2, v7, :cond_0

    #@d
    .line 521
    return-void

    #@e
    .line 523
    :cond_0
    mul-int/lit8 v10, v7, 0x2

    #@10
    if-ne v2, v10, :cond_1

    #@12
    .line 524
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    #@15
    .line 525
    return-void

    #@16
    .line 529
    :cond_1
    invoke-direct {p0, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    #@19
    move-result-object v6

    #@1a
    .line 530
    .local v6, "newTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    #@1c
    if-eqz v10, :cond_3

    #@1e
    .line 531
    add-int/lit8 v4, v2, -0x1

    #@20
    .line 532
    .local v4, "newMask":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_3

    #@23
    .line 533
    aget-object v0, v9, v1

    #@25
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@27
    .line 534
    iget-object v8, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@29
    .line 535
    .local v8, "oldNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@2b
    and-int v3, v10, v4

    #@2d
    .line 536
    .local v3, "newIndex":I
    aget-object v5, v6, v3

    #@2f
    .line 537
    .local v5, "newNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    aput-object v0, v6, v3

    #@31
    .line 538
    iput-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@33
    .line 539
    move-object v0, v8

    #@34
    goto :goto_1

    #@35
    .line 532
    .end local v3    # "newIndex":I
    .end local v5    # "newNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v8    # "oldNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 516
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v4    # "newMask":I
    :cond_3
    return-void
.end method

.method private makeTable(I)[Ljava/util/HashMap$HashMapEntry;
    .locals 3
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    #@2
    .line 552
    .local v0, "newTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@4
    .line 553
    shr-int/lit8 v1, p1, 0x1

    #@6
    shr-int/lit8 v2, p1, 0x2

    #@8
    add-int/2addr v1, v2

    #@9
    iput v1, p0, Ljava/util/HashMap;->threshold:I

    #@b
    .line 554
    return-object v0
.end method

.method private putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    #@1
    .line 408
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@3
    .line 409
    .local v0, "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 410
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->addNewEntryForNullKey(Ljava/lang/Object;)V

    #@8
    .line 411
    iget v2, p0, Ljava/util/HashMap;->size:I

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    iput v2, p0, Ljava/util/HashMap;->size:I

    #@e
    .line 412
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    iput v2, p0, Ljava/util/HashMap;->modCount:I

    #@14
    .line 413
    return-object v3

    #@15
    .line 415
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    #@18
    .line 416
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@1a
    .line 417
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@1c
    .line 418
    return-object v1
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
    .line 982
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 983
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 984
    .local v0, "capacity":I
    if-gez v0, :cond_0

    #@9
    .line 985
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
    .line 987
    :cond_0
    const/4 v5, 0x4

    #@24
    if-ge v0, v5, :cond_1

    #@26
    .line 988
    const/4 v0, 0x4

    #@27
    .line 994
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    #@2a
    .line 996
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@2d
    move-result v3

    #@2e
    .line 997
    .local v3, "size":I
    if-gez v3, :cond_3

    #@30
    .line 998
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
    .line 989
    .end local v3    # "size":I
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    #@4c
    if-le v0, v5, :cond_2

    #@4e
    .line 990
    const/high16 v0, 0x40000000    # 2.0f

    #@50
    goto :goto_0

    #@51
    .line 992
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    #@54
    move-result v0

    #@55
    goto :goto_0

    #@56
    .line 1001
    .restart local v3    # "size":I
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    #@59
    .line 1002
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    #@5c
    .line 1003
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    .line 1004
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    .line 1005
    .local v4, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    #@67
    .line 1002
    add-int/lit8 v1, v1, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 981
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    :cond_4
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 852
    if-nez p1, :cond_1

    #@5
    .line 853
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@7
    .line 854
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@b
    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 857
    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@13
    .line 858
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    #@15
    add-int/lit8 v5, v5, 0x1

    #@17
    iput v5, p0, Ljava/util/HashMap;->modCount:I

    #@19
    .line 859
    iget v5, p0, Ljava/util/HashMap;->size:I

    #@1b
    add-int/lit8 v5, v5, -0x1

    #@1d
    iput v5, p0, Ljava/util/HashMap;->size:I

    #@1f
    .line 860
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    #@22
    .line 861
    return v8

    #@23
    .line 855
    :cond_0
    return v7

    #@24
    .line 864
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@27
    move-result v1

    #@28
    .line 865
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2a
    .line 866
    .local v4, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    #@2b
    add-int/lit8 v5, v5, -0x1

    #@2d
    and-int v2, v1, v5

    #@2f
    .line 867
    .local v2, "index":I
    aget-object v0, v4, v2

    #@31
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@32
    :goto_0
    if-eqz v0, :cond_5

    #@34
    .line 869
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@36
    if-ne v5, v1, :cond_4

    #@38
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@3a
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_4

    #@40
    .line 870
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@42
    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_2

    #@48
    .line 871
    return v7

    #@49
    .line 873
    :cond_2
    if-nez v3, :cond_3

    #@4b
    .line 874
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@4d
    aput-object v5, v4, v2

    #@4f
    .line 878
    :goto_1
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    #@51
    add-int/lit8 v5, v5, 0x1

    #@53
    iput v5, p0, Ljava/util/HashMap;->modCount:I

    #@55
    .line 879
    iget v5, p0, Ljava/util/HashMap;->size:I

    #@57
    add-int/lit8 v5, v5, -0x1

    #@59
    iput v5, p0, Ljava/util/HashMap;->size:I

    #@5b
    .line 880
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    #@5e
    .line 881
    return v8

    #@5f
    .line 876
    :cond_3
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@61
    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@63
    goto :goto_1

    #@64
    .line 868
    :cond_4
    move-object v3, v0

    #@65
    .local v3, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@67
    goto :goto_0

    #@68
    .line 884
    .end local v3    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_5
    return v7
.end method

.method private removeNullKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 637
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@3
    .line 638
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@5
    .line 639
    return-object v1

    #@6
    .line 641
    :cond_0
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@8
    .line 642
    iget v1, p0, Ljava/util/HashMap;->modCount:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Ljava/util/HashMap;->modCount:I

    #@e
    .line 643
    iget v1, p0, Ljava/util/HashMap;->size:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    iput v1, p0, Ljava/util/HashMap;->size:I

    #@14
    .line 644
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    #@17
    .line 645
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@19
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v2

    #@4
    .line 969
    .local v2, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v3, "loadFactor"

    #@7
    const/high16 v4, 0x3f400000    # 0.75f

    #@9
    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    #@c
    .line 970
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@f
    .line 972
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@11
    array-length v3, v3

    #@12
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@15
    .line 973
    iget v3, p0, Ljava/util/HashMap;->size:I

    #@17
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@1a
    .line 974
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object v3

    #@1e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/util/Map$Entry;

    #@2e
    .line 975
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@35
    .line 976
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@3c
    goto :goto_0

    #@3d
    .line 966
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 3
    .param p3, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 471
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    new-instance v1, Ljava/util/HashMap$HashMapEntry;

    #@4
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@6
    aget-object v2, v2, p4

    #@8
    invoke-direct {v1, p1, p2, p3, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    #@b
    aput-object v1, v0, p4

    #@d
    .line 470
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    #@1
    .line 480
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, v2, p1, v1, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    #@7
    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@9
    .line 479
    return-void
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 660
    iget v0, p0, Ljava/util/HashMap;->size:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 661
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@8
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@b
    .line 662
    iput-object v2, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@d
    .line 663
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Ljava/util/HashMap;->modCount:I

    #@13
    .line 664
    iput v1, p0, Ljava/util/HashMap;->size:I

    #@15
    .line 659
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 238
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 244
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@9
    array-length v2, v2

    #@a
    invoke-direct {v1, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    #@d
    .line 245
    iput-object v3, v1, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@f
    .line 246
    const/4 v2, 0x0

    #@10
    iput v2, v1, Ljava/util/HashMap;->size:I

    #@12
    .line 247
    iput-object v3, v1, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    #@14
    .line 248
    iput-object v3, v1, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    #@16
    .line 249
    iput-object v3, v1, Ljava/util/HashMap;->values:Ljava/util/Collection;

    #@18
    .line 251
    invoke-virtual {v1}, Ljava/util/HashMap;->init()V

    #@1b
    .line 252
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    #@1e
    .line 253
    return-object v1

    #@1f
    .line 239
    .end local v1    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_0
    move-exception v0

    #@20
    .line 240
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@25
    throw v2
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "first":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    #@5
    return-object v0
.end method

.method final constructorPutAll(Ljava/util/Map;)V
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
    .line 205
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@2
    sget-object v3, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 206
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    #@9
    .line 208
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
    .line 209
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    #@28
    goto :goto_0

    #@29
    .line 204
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 321
    if-nez p1, :cond_1

    #@4
    .line 322
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@6
    if-eqz v6, :cond_0

    #@8
    :goto_0
    return v4

    #@9
    :cond_0
    move v4, v5

    #@a
    goto :goto_0

    #@b
    .line 325
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@e
    move-result v2

    #@f
    .line 326
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@11
    .line 327
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v3

    #@12
    add-int/lit8 v6, v6, -0x1

    #@14
    and-int/2addr v6, v2

    #@15
    aget-object v0, v3, v6

    #@17
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@19
    .line 329
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1b
    .line 330
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_2

    #@1d
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@1f
    if-ne v6, v2, :cond_3

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_3

    #@27
    .line 331
    :cond_2
    return v4

    #@28
    .line 328
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@2a
    goto :goto_1

    #@2b
    .line 334
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_4
    return v5
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 346
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@4
    .line 347
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;
    array-length v2, v3

    #@5
    .line 348
    .local v2, "len":I
    if-nez p1, :cond_4

    #@7
    .line 349
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@a
    .line 350
    aget-object v0, v3, v1

    #@c
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_1

    #@e
    .line 351
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@10
    if-nez v6, :cond_0

    #@12
    .line 352
    return v4

    #@13
    .line 350
    :cond_0
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@15
    goto :goto_1

    #@16
    .line 349
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 356
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_2
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@1b
    if-eqz v6, :cond_3

    #@1d
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@1f
    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@21
    if-nez v6, :cond_3

    #@23
    :goto_2
    return v4

    #@24
    :cond_3
    move v4, v5

    #@25
    goto :goto_2

    #@26
    .line 360
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    #@27
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_7

    #@29
    .line 361
    aget-object v0, v3, v1

    #@2b
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :goto_4
    if-eqz v0, :cond_6

    #@2d
    .line 362
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2f
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_5

    #@35
    .line 363
    return v4

    #@36
    .line 361
    :cond_5
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@38
    goto :goto_4

    #@39
    .line 360
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_3

    #@3c
    .line 367
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_7
    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@3e
    if-eqz v4, :cond_8

    #@40
    iget-object v4, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@42
    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@44
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v5

    #@48
    :cond_8
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 714
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    #@3
    .line 715
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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 295
    if-nez p1, :cond_1

    #@3
    .line 296
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    #@5
    .line 297
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v4

    #@8
    :cond_0
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@a
    goto :goto_0

    #@b
    .line 300
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@e
    move-result v2

    #@f
    .line 301
    .local v2, "hash":I
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@11
    .line 302
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    #@12
    add-int/lit8 v5, v5, -0x1

    #@14
    and-int/2addr v5, v2

    #@15
    aget-object v0, v3, v5

    #@17
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@19
    .line 304
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1b
    .line 305
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_2

    #@1d
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@1f
    if-ne v5, v2, :cond_3

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 306
    :cond_2
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@29
    return-object v4

    #@2a
    .line 303
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@2c
    goto :goto_1

    #@2d
    .line 309
    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_4
    return-object v4
.end method

.method init()V
    .locals 0

    #@0
    .prologue
    .line 264
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
    .line 274
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
    .line 676
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    #@3
    .line 677
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
    .line 890
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
    .line 888
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
    .line 889
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$ValueIterator;)V

    #@6
    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 651
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 428
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
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
    .line 381
    if-nez p1, :cond_0

    #@3
    .line 382
    invoke-direct {p0, p2}, Ljava/util/HashMap;->putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v5

    #@7
    return-object v5

    #@8
    .line 385
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    .line 386
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@e
    .line 387
    .local v4, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    #@f
    add-int/lit8 v5, v5, -0x1

    #@11
    and-int v2, v1, v5

    #@13
    .line 388
    .local v2, "index":I
    aget-object v0, v4, v2

    #@15
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    #@17
    .line 389
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@19
    if-ne v5, v1, :cond_1

    #@1b
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1d
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 390
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    #@26
    .line 391
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@28
    .line 392
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@2a
    .line 393
    return-object v3

    #@2b
    .line 388
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@2d
    goto :goto_0

    #@2e
    .line 398
    :cond_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    #@30
    add-int/lit8 v5, v5, 0x1

    #@32
    iput v5, p0, Ljava/util/HashMap;->modCount:I

    #@34
    .line 399
    iget v5, p0, Ljava/util/HashMap;->size:I

    #@36
    add-int/lit8 v6, v5, 0x1

    #@38
    iput v6, p0, Ljava/util/HashMap;->size:I

    #@3a
    iget v6, p0, Ljava/util/HashMap;->threshold:I

    #@3c
    if-le v5, v6, :cond_3

    #@3e
    .line 400
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    #@41
    move-result-object v4

    #@42
    .line 401
    array-length v5, v4

    #@43
    add-int/lit8 v5, v5, -0x1

    #@45
    and-int v2, v1, v5

    #@47
    .line 403
    :cond_3
    invoke-virtual {p0, p1, p2, v1, v2}, Ljava/util/HashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V

    #@4a
    .line 404
    return-object v7
.end method

.method public putAll(Ljava/util/Map;)V
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
    .line 502
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/HashMap;->ensureCapacity(I)V

    #@7
    .line 503
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    #@a
    .line 501
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 613
    if-nez p1, :cond_0

    #@3
    .line 614
    invoke-direct {p0}, Ljava/util/HashMap;->removeNullKey()Ljava/lang/Object;

    #@6
    move-result-object v5

    #@7
    return-object v5

    #@8
    .line 616
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    .line 617
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    #@e
    .line 618
    .local v4, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    #@f
    add-int/lit8 v5, v5, -0x1

    #@11
    and-int v2, v1, v5

    #@13
    .line 619
    .local v2, "index":I
    aget-object v0, v4, v2

    #@15
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    #@16
    :goto_0
    if-eqz v0, :cond_3

    #@18
    .line 621
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    #@1a
    if-ne v5, v1, :cond_2

    #@1c
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    #@1e
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_2

    #@24
    .line 622
    if-nez v3, :cond_1

    #@26
    .line 623
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@28
    aput-object v5, v4, v2

    #@2a
    .line 627
    :goto_1
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    #@2c
    add-int/lit8 v5, v5, 0x1

    #@2e
    iput v5, p0, Ljava/util/HashMap;->modCount:I

    #@30
    .line 628
    iget v5, p0, Ljava/util/HashMap;->size:I

    #@32
    add-int/lit8 v5, v5, -0x1

    #@34
    iput v5, p0, Ljava/util/HashMap;->size:I

    #@36
    .line 629
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    #@39
    .line 630
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@3b
    return-object v5

    #@3c
    .line 625
    :cond_1
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@3e
    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@40
    goto :goto_1

    #@41
    .line 620
    :cond_2
    move-object v3, v0

    #@42
    .local v3, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    #@44
    goto :goto_0

    #@45
    .line 633
    .end local v3    # "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-object v6
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 283
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    #@2
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
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 702
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    #@3
    .line 703
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
