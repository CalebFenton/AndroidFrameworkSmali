.class Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;
.super Ljava/lang/Object;
.source "Synchronized.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedObject"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist delegate:Ljava/lang/Object;

.field final blacklist mutex:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->delegate:Ljava/lang/Object;

    if-nez p2, :cond_c

    move-object p2, p0

    .line 79
    :cond_c
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter p0

    .line 104
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 105
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method


# virtual methods
.method blacklist delegate()Ljava/lang/Object;
    .registers 1

    .line 83
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->delegate:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;->delegate:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 92
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
