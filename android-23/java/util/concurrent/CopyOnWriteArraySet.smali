.class public Ljava/util/concurrent/CopyOnWriteArraySet;
.super Ljava/util/AbstractSet;
.source "CopyOnWriteArraySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4bbdd092901569d7L


# instance fields
.field private final al:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    .line 83
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    #@f
    .line 81
    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 361
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 219
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    #@1
    .line 251
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 187
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    #@5
    .line 186
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 114
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 234
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 326
    if-ne p1, p0, :cond_0

    #@4
    .line 327
    return v8

    #@5
    .line 328
    :cond_0
    instance-of v10, p1, Ljava/util/Set;

    #@7
    if-nez v10, :cond_1

    #@9
    .line 329
    return v9

    #@a
    :cond_1
    move-object v6, p1

    #@b
    .line 330
    check-cast v6, Ljava/util/Set;

    #@d
    .line 331
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .line 337
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iget-object v10, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 338
    .local v0, "elements":[Ljava/lang/Object;
    array-length v4, v0

    #@18
    .line 340
    .local v4, "len":I
    new-array v5, v4, [Z

    #@1a
    .line 341
    .local v5, "matched":[Z
    const/4 v3, 0x0

    #@1b
    .line 342
    .local v3, "k":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_5

    #@21
    .line 343
    add-int/lit8 v3, v3, 0x1

    #@23
    if-le v3, v4, :cond_2

    #@25
    .line 344
    return v9

    #@26
    .line 345
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v7

    #@2a
    .line 346
    .local v7, "x":Ljava/lang/Object;
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    #@2d
    .line 347
    aget-boolean v10, v5, v1

    #@2f
    if-nez v10, :cond_3

    #@31
    aget-object v10, v0, v1

    #@33
    invoke-static {v7, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_3

    #@39
    .line 348
    aput-boolean v8, v5, v1

    #@3b
    goto :goto_0

    #@3c
    .line 346
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 352
    :cond_4
    return v9

    #@40
    .line 354
    .end local v1    # "i":I
    .end local v7    # "x":Ljava/lang/Object;
    :cond_5
    if-ne v3, v4, :cond_6

    #@42
    :goto_2
    return v8

    #@43
    :cond_6
    move v8, v9

    #@44
    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 101
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

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
    .line 306
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 291
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 92
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 134
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 179
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
