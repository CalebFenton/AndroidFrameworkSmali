.class Ljava/util/IdentityHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    #@0
    .prologue
    .line 979
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 1011
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    #@5
    .line 1010
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 987
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1014
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    #@1
    .line 1015
    .local v2, "result":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 1016
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v3

    #@13
    add-int/2addr v2, v3

    #@14
    goto :goto_0

    #@15
    .line 1017
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 981
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/IdentityHashMap$KeyIterator;

    #@2
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$KeyIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeyIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 990
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@5
    move-result v0

    #@6
    .line 991
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 992
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@d
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@10
    move-result v1

    #@11
    if-eq v1, v0, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1000
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1001
    const/4 v1, 0x0

    #@4
    .line 1002
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1003
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1004
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1b
    .line 1005
    const/4 v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1008
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 984
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

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
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    #@1
    .line 1052
    new-instance v0, Ljava/util/IdentityHashMap$KeySpliterator;

    #@3
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@5
    const/4 v3, -0x1

    #@6
    move v4, v2

    #@7
    move v5, v2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@b
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1020
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$KeySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v8, 0x0

    #@1
    .line 1024
    iget-object v7, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@3
    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@6
    move-result v0

    #@7
    .line 1025
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->size()I

    #@a
    move-result v3

    #@b
    .line 1026
    .local v3, "size":I
    array-length v7, p1

    #@c
    if-ge v7, v3, :cond_0

    #@e
    .line 1027
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@19
    move-result-object p1

    #@1a
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@1c
    .line 1028
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v7, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@1e
    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    .line 1029
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v5, 0x0

    #@23
    .line 1030
    .local v5, "ti":I
    const/4 v2, 0x0

    #@24
    .local v2, "si":I
    :goto_0
    array-length v7, v4

    #@25
    if-ge v2, v7, :cond_3

    #@27
    .line 1032
    aget-object v1, v4, v2

    #@29
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_2

    #@2b
    .line 1034
    if-lt v5, v3, :cond_1

    #@2d
    .line 1035
    new-instance v7, Ljava/util/ConcurrentModificationException;

    #@2f
    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@32
    throw v7

    #@33
    .line 1037
    :cond_1
    add-int/lit8 v6, v5, 0x1

    #@35
    .end local v5    # "ti":I
    .local v6, "ti":I
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v7

    #@39
    aput-object v7, p1, v5

    #@3b
    move v5, v6

    #@3c
    .line 1030
    .end local v6    # "ti":I
    .restart local v5    # "ti":I
    :cond_2
    add-int/lit8 v2, v2, 0x2

    #@3e
    goto :goto_0

    #@3f
    .line 1041
    .end local v1    # "key":Ljava/lang/Object;
    :cond_3
    if-lt v5, v3, :cond_4

    #@41
    iget-object v7, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    #@43
    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@46
    move-result v7

    #@47
    if-eq v0, v7, :cond_5

    #@49
    .line 1042
    :cond_4
    new-instance v7, Ljava/util/ConcurrentModificationException;

    #@4b
    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@4e
    throw v7

    #@4f
    .line 1045
    :cond_5
    array-length v7, p1

    #@50
    if-ge v5, v7, :cond_6

    #@52
    .line 1046
    aput-object v8, p1, v5

    #@54
    .line 1048
    :cond_6
    return-object p1
.end method
