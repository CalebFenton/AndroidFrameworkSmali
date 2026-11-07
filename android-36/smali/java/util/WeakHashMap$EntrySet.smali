.class Ljava/util/WeakHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 978
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method private greylist-max-o deepCopy()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1002
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1003
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1004
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1005
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_22
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 998
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 999
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 986
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_25

    .line 984
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    .line 985
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    .line 986
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_25
    const/4 v1, 0x0

    .line 984
    :goto_26
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 980
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/WeakHashMap$EntryIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$EntryIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 990
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->removeMapping(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 994
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1017
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/WeakHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$EntrySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1009
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0}, Ljava/util/WeakHashMap$EntrySet;->deepCopy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1013
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/WeakHashMap$EntrySet;->deepCopy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
