.class Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;
.super Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Synchronized;
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
        "Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# direct methods
.method constructor blacklist <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, p2, v0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Landroid/media/internal/guava_common/collect/Synchronized$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist delegate()Ljava/util/Collection;
    .registers 1

    .line 229
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method blacklist delegate()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 238
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 246
    :cond_4
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_7
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 248
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 255
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
