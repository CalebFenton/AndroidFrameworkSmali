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
.field private static final PRESENT:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x2267af6c6a1278a5L


# instance fields
.field private transient m:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/util/TreeSet;->PRESENT:Ljava/lang/Object;

    #@7
    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 124
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    new-instance v0, Ljava/util/TreeMap;

    #@2
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@5
    invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@8
    .line 123
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
    .line 159
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    #@3
    .line 160
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    #@6
    .line 158
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
    .line 141
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/util/TreeMap;

    #@2
    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@8
    .line 140
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
    .line 106
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 107
    iput-object p1, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@5
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 171
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@7
    .line 172
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 170
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 524
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/Comparator;

    #@9
    .line 527
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v2, Ljava/util/TreeMap;

    #@b
    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@e
    .line 528
    .local v2, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TE;Ljava/lang/Object;>;"
    iput-object v2, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@10
    .line 531
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@13
    move-result v1

    #@14
    .line 533
    .local v1, "size":I
    sget-object v3, Ljava/util/TreeSet;->PRESENT:Ljava/lang/Object;

    #@16
    invoke-virtual {v2, v1, p1, v3}, Ljava/util/TreeMap;->readTreeSet(ILjava/io/ObjectInputStream;Ljava/lang/Object;)V

    #@19
    .line 518
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 503
    iget-object v2, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@5
    invoke-interface {v2}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c
    .line 506
    iget-object v2, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@e
    invoke-interface {v2}, Ljava/util/NavigableMap;->size()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@15
    .line 509
    iget-object v2, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@17
    invoke-interface {v2}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    .line 510
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2c
    goto :goto_0

    #@2d
    .line 498
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
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
    .line 255
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    sget-object v1, Ljava/util/TreeSet;->PRESENT:Ljava/lang/Object;

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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 300
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v4, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v4}, Ljava/util/NavigableMap;->size()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_1

    #@8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v4

    #@c
    if-lez v4, :cond_1

    #@e
    .line 301
    instance-of v4, p1, Ljava/util/SortedSet;

    #@10
    .line 300
    if-eqz v4, :cond_1

    #@12
    .line 302
    iget-object v4, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@14
    instance-of v4, v4, Ljava/util/TreeMap;

    #@16
    .line 300
    if-eqz v4, :cond_1

    #@18
    move-object v3, p1

    #@19
    .line 303
    check-cast v3, Ljava/util/SortedSet;

    #@1b
    .line 304
    .local v3, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    iget-object v1, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@1d
    check-cast v1, Ljava/util/TreeMap;

    #@1f
    .line 305
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TE;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    #@22
    move-result-object v0

    #@23
    .line 306
    .local v0, "cc":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    #@26
    move-result-object v2

    #@27
    .line 307
    .local v2, "mc":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-eq v0, v2, :cond_0

    #@29
    if-eqz v0, :cond_1

    #@2b
    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 308
    :cond_0
    sget-object v4, Ljava/util/TreeSet;->PRESENT:Ljava/lang/Object;

    #@33
    invoke-virtual {v1, v3, v4}, Ljava/util/TreeMap;->addAllForTreeSet(Ljava/util/SortedSet;Ljava/lang/Object;)V

    #@36
    .line 309
    const/4 v4, 0x1

    #@37
    return v4

    #@38
    .line 312
    .end local v0    # "cc":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TE;Ljava/lang/Object;>;"
    .end local v2    # "mc":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .end local v3    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    :cond_1
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    #@3b
    move-result v4

    #@3c
    return v4
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
    .line 436
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 284
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    #@5
    .line 283
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 476
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/TreeSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 481
    .local v0, "clone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    new-instance v2, Ljava/util/TreeMap;

    #@8
    iget-object v3, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@a
    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    #@d
    iput-object v2, v0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@f
    .line 482
    return-object v0

    #@10
    .line 477
    .end local v0    # "clone":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    :catch_0
    move-exception v1

    #@11
    .line 478
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@13
    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    #@16
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
    .line 387
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 234
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 191
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
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
    .line 198
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    new-instance v0, Ljava/util/TreeSet;

    #@2
    iget-object v1, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
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
    .line 394
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 425
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeSet;

    #@2
    iget-object v1, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
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
    .line 372
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
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
    .line 447
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 216
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 181
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

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
    .line 401
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 414
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

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
    .line 454
    iget-object v2, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 455
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;*>;"
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
    .line 462
    iget-object v2, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@3
    invoke-interface {v2}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 463
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;*>;"
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
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 276
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Ljava/util/TreeSet;->PRESENT:Ljava/lang/Object;

    #@8
    if-ne v0, v1, :cond_0

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

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 207
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 556
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@2
    invoke-static {v0}, Ljava/util/TreeMap;->keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeSet;

    #@2
    iget-object v1, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
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
    .line 361
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
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
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/TreeSet;

    #@2
    iget-object v1, p0, Ljava/util/TreeSet;->m:Ljava/util/NavigableMap;

    #@4
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/NavigableMap;)V

    #@b
    return-object v0
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
    .line 383
    .local p0, "this":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
