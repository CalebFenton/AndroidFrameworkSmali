.class Ljava/util/Collections$SynchronizedSortedSet;
.super Ljava/util/Collections$SynchronizedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78adb1384b50312eL


# instance fields
.field private final ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2043
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    #@3
    .line 2044
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@5
    .line 2042
    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 2047
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    #@3
    .line 2048
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@5
    .line 2046
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2052
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@5
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;
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

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2073
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@5
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;
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

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2062
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2063
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@7
    invoke-interface {v2, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 2062
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 2076
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@5
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;
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

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2056
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2057
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    #@5
    .line 2058
    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@7
    invoke-interface {v2, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@d
    .line 2057
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 2056
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2067
    .local p0, "this":Ljava/util/Collections$SynchronizedSortedSet;, "Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2068
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedSortedSet;

    #@5
    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    #@7
    invoke-interface {v2, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@a
    move-result-object v2

    #@b
    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    #@d
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 2067
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
