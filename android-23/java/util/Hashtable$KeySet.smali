.class final Ljava/util/Hashtable$KeySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    #@0
    .prologue
    .line 901
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 919
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 918
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 909
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 932
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 933
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 932
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 937
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 938
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 937
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 942
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 943
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 942
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
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
    .line 903
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/Hashtable$KeyIterator;

    #@2
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$KeyIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeyIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 912
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v2, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v2

    #@3
    .line 913
    :try_start_0
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@5
    invoke-static {v1}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    #@8
    move-result v0

    #@9
    .line 914
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 915
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@10
    invoke-static {v1}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v1

    #@14
    if-eq v1, v0, :cond_0

    #@16
    const/4 v1, 0x1

    #@17
    :goto_0
    monitor-exit v2

    #@18
    return v1

    #@19
    :cond_0
    const/4 v1, 0x0

    #@1a
    goto :goto_0

    #@1b
    .line 912
    .end local v0    # "oldSize":I
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 922
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 923
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 922
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 927
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 928
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 927
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 906
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 952
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 953
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 952
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 957
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 958
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 957
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 947
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #@2
    monitor-enter v0

    #@3
    .line 948
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSet;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 947
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method
