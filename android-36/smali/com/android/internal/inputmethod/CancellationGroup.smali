.class public final Lcom/android/internal/inputmethod/CancellationGroup;
.super Ljava/lang/Object;
.source "CancellationGroup.java"


# instance fields
.field private blacklist mCanceled:Z

.field private blacklist mFutureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    return-void
.end method

.method static synthetic blacklist lambda$cancelAll$0(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method public blacklist cancelAll()V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    if-nez v1, :cond_20

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    .line 100
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 101
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/inputmethod/CancellationGroup$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/inputmethod/CancellationGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    .line 106
    :cond_20
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist isCanceled()Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    monitor-exit v0

    return v1

    .line 116
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist tryRegisterFutureOrCancelImmediately(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)Z"
        }
    .end annotation

    .line 66
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    if-eqz v1, :cond_d

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 69
    monitor-exit v0

    return v1

    .line 71
    :cond_d
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    .line 76
    :cond_19
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v0

    return v2

    .line 78
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method blacklist unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 83
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 85
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_c
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
