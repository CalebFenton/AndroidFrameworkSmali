.class final Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;
.super Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SynchronizedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# direct methods
.method constructor blacklist <init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1671
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist delegate()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1677
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1682
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 1684
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1697
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1698
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1705
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1689
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1690
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 1691
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1711
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1712
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
