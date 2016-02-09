.class public Ljava/util/TreeSet;
.super Ljava/util/AbstractSet;
.source "TreeSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2267af6c6a1278a5L


# instance fields
.field private transient backingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient descendingSet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@a
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    #@3
    .line 68
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    #@6
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 79
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@8
    iput-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@a
    .line 78
    return-void
.end method

.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@5
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@7
    .line 91
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 92
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_0

    #@19
    .line 89
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 489
    new-instance v2, Ljava/util/TreeMap;

    #@5
    .line 490
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    check-cast v4, Ljava/util/Comparator;

    #@b
    .line 489
    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@e
    .line 491
    .local v2, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TE;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@11
    move-result v3

    #@12
    .line 492
    .local v3, "size":I
    if-lez v3, :cond_0

    #@14
    .line 493
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@17
    .line 494
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .line 495
    .local v0, "elem":Ljava/lang/Object;, "TE;"
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@1d
    invoke-virtual {v2, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 493
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 498
    .end local v0    # "elem":Ljava/lang/Object;, "TE;"
    .end local v1    # "i":I
    :cond_0
    iput-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@25
    .line 487
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 474
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@5
    invoke-interface {v2}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 475
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@e
    invoke-interface {v2}, Ljava/util/NavigableMap;->size()I

    #@11
    move-result v1

    #@12
    .line 476
    .local v1, "size":I
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@15
    .line 477
    if-lez v1, :cond_0

    #@17
    .line 478
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@19
    invoke-interface {v2}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v0

    #@21
    .line 479
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2e
    goto :goto_0

    #@2f
    .line 472
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 324
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 143
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    #@5
    .line 142
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 157
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/TreeSet;

    #@6
    .line 158
    .local v0, "clone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@8
    instance-of v2, v2, Ljava/util/TreeMap;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 159
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@e
    check-cast v2, Ljava/util/TreeMap;

    #@10
    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/util/NavigableMap;

    #@16
    iput-object v2, v0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@18
    .line 164
    :goto_0
    return-object v0

    #@19
    .line 162
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    #@1b
    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@1d
    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    #@20
    iput-object v2, v0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    goto :goto_0

    #@23
    .line 165
    .end local v0    # "clone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    :catch_0
    move-exception v1

    #@24
    .line 166
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->descendingSet:Ljava/util/NavigableSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/TreeSet;->descendingSet:Ljava/util/NavigableSet;

    #@6
    :goto_0
    return-object v0

    #@7
    .line 345
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    #@9
    iget-object v1, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@b
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@12
    iput-object v0, p0, Ljava/util/TreeSet;->descendingSet:Ljava/util/NavigableSet;

    #@14
    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "endInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 376
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "end":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v1}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    .line 377
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    #@8
    move-object v1, p1

    #@9
    .line 378
    check-cast v1, Ljava/lang/Comparable;

    #@b
    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    .line 382
    :goto_0
    new-instance v1, Ljava/util/TreeSet;

    #@10
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@12
    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@19
    return-object v1

    #@1a
    .line 380
    :cond_0
    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1d
    goto :goto_0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 446
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "end":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 304
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 206
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 217
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 282
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 283
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 293
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 294
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 246
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 256
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 4
    .param p2, "startInclusive"    # Z
    .param p4, "endInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "start":Ljava/lang/Object;, "TE;"
    .local p3, "end":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v2}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    .line 358
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    #@8
    move-object v2, p1

    #@9
    check-cast v2, Ljava/lang/Comparable;

    #@b
    invoke-interface {v2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    .line 360
    .local v1, "compare":I
    :goto_0
    if-gtz v1, :cond_1

    #@11
    .line 361
    new-instance v2, Ljava/util/TreeSet;

    #@13
    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@15
    invoke-interface {v3, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@1c
    return-object v2

    #@1d
    .line 358
    .end local v1    # "compare":I
    :cond_0
    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@20
    move-result v1

    #@21
    .restart local v1    # "compare":I
    goto :goto_0

    #@22
    .line 364
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@27
    throw v2
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "start":Ljava/lang/Object;, "TE;"
    .local p2, "end":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "startInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 394
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "start":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v1}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    .line 395
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    #@8
    move-object v1, p1

    #@9
    .line 396
    check-cast v1, Ljava/lang/Comparable;

    #@b
    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@e
    .line 400
    :goto_0
    new-instance v1, Ljava/util/TreeSet;

    #@10
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/NavigableMap;

    #@12
    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@19
    return-object v1

    #@1a
    .line 398
    :cond_0
    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1d
    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "start":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
