.class Ljava/util/Collections$SynchronizedSet;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c3c27902eedf3cL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 775
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    #@3
    .line 774
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 779
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    #@3
    .line 778
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 795
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 796
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 794
    return-void

    #@8
    .line 795
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 783
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 784
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSet;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 783
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
    .line 789
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSet;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 790
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSet;->c:Ljava/util/Collection;

    #@5
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 789
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
