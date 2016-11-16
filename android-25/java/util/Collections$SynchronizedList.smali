.class Ljava/util/Collections$SynchronizedList;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2129
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    #@3
    .line 2130
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    .line 2128
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 2133
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    #@3
    .line 2134
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    .line 2132
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 2207
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@2
    instance-of v0, v0, Ljava/util/RandomAccess;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2208
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@8
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@a
    invoke-direct {v0, v1}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    #@d
    move-object p0, v0

    #@e
    .line 2207
    .end local p0    # "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2153
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2152
    return-void

    #@a
    .line 2153
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2167
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2138
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    if-ne p0, p1, :cond_0

    #@2
    .line 2139
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 2140
    :cond_0
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@9
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2147
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 2143
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2160
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2163
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2171
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2175
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2156
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2187
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2186
    return-void

    #@a
    .line 2187
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2150
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2191
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2190
    return-void

    #@a
    .line 2191
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2179
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2180
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    #@7
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@a
    move-result-object v2

    #@b
    .line 2181
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    #@d
    .line 2180
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 2179
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
