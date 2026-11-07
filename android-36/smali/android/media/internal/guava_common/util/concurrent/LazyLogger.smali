.class final Landroid/media/internal/guava_common/util/concurrent/LazyLogger;
.super Ljava/lang/Object;
.source "LazyLogger.java"


# instance fields
.field private final blacklist lock:Ljava/lang/Object;

.field private volatile blacklist logger:Ljava/util/logging/Logger;

.field private final blacklist loggerName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->lock:Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->loggerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method blacklist get()Ljava/util/logging/Logger;
    .registers 3

    .line 46
    iget-object v0, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_5

    return-object v0

    .line 50
    :cond_5
    iget-object v0, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_8
    iget-object v1, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->logger:Ljava/util/logging/Logger;

    if-eqz v1, :cond_10

    .line 53
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception p0

    goto :goto_1a

    .line 55
    :cond_10
    iget-object v1, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->loggerName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/guava_common/util/concurrent/LazyLogger;->logger:Ljava/util/logging/Logger;

    monitor-exit v0

    return-object v1

    .line 56
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_e

    throw p0
.end method
