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
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 944
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/WeakHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$EntrySet;-><init>(Ljava/util/WeakHashMap;)V

    #@3
    return-void
.end method

.method private deepCopy()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 970
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySet;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 971
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 972
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    #@1b
    invoke-direct {v3, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    #@1e
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 973
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 966
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    #@5
    .line 965
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    #@1
    .line 950
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 951
    return v2

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 952
    check-cast v1, Ljava/util/Map$Entry;

    #@9
    .line 953
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    #@12
    move-result-object v0

    #@13
    .line 954
    .local v0, "candidate":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap$Entry;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    :cond_1
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 946
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/WeakHashMap$EntryIterator;

    #@2
    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$EntryIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$EntryIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 958
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->removeMapping(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 962
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    #@1
    .line 985
    new-instance v0, Ljava/util/WeakHashMap$EntrySpliterator;

    #@3
    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySet;->this$0:Ljava/util/WeakHashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$EntrySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    #@b
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 977
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0}, Ljava/util/WeakHashMap$EntrySet;->deepCopy()Ljava/util/List;

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
    .line 981
    .local p0, "this":Ljava/util/WeakHashMap$EntrySet;, "Ljava/util/WeakHashMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/WeakHashMap$EntrySet;->deepCopy()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
