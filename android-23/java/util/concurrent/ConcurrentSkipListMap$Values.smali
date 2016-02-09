.class final Ljava/util/concurrent/ConcurrentSkipListMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<*TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<*TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2363
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<*TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 2364
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@5
    .line 2363
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2382
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    #@5
    .line 2381
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2379
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2373
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

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
    .line 2367
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2368
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@8
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->valueIterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 2370
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@11
    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    #@13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valueIterator()Ljava/util/Iterator;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 2376
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2384
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
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
    .line 2385
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.Values<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
