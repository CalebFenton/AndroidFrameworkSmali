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
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 994
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1026
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 1027
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1002
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1029
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    .line 1030
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1031
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_5

    .line 1032
    :cond_15
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 996
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/IdentityHashMap$KeyIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$KeyIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1005
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    .line 1006
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->size:I

    if-eq v1, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1015
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1018
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1019
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1020
    const/4 v0, 0x1

    goto :goto_8

    .line 1023
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_1d
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 999
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 1067
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/IdentityHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1035
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$KeySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1039
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1040
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->size()I

    move-result v1

    .line 1041
    .local v1, "size":I
    array-length v2, p1

    if-ge v2, v1, :cond_1a

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 1043
    :cond_1a
    iget-object v2, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1044
    .local v2, "tab":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1045
    .local v3, "ti":I
    const/4 v4, 0x0

    .local v4, "si":I
    :goto_20
    array-length v5, v2

    if-ge v4, v5, :cond_3d

    .line 1047
    aget-object v5, v2, v4

    move-object v6, v5

    .local v6, "key":Ljava/lang/Object;
    if-eqz v5, :cond_3a

    .line 1049
    if-ge v3, v1, :cond_34

    .line 1052
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "ti":I
    .local v5, "ti":I
    invoke-static {v6}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p1, v3

    move v3, v5

    goto :goto_3a

    .line 1050
    .end local v5    # "ti":I
    .restart local v3    # "ti":I
    :cond_34
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1045
    .end local v6    # "key":Ljava/lang/Object;
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x2

    goto :goto_20

    .line 1056
    .end local v4    # "si":I
    :cond_3d
    if-lt v3, v1, :cond_4c

    iget-object v4, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    iget v4, v4, Ljava/util/IdentityHashMap;->modCount:I

    if-ne v0, v4, :cond_4c

    .line 1060
    array-length v4, p1

    if-ge v3, v4, :cond_4b

    .line 1061
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 1063
    :cond_4b
    return-object p1

    .line 1057
    :cond_4c
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
.end method
