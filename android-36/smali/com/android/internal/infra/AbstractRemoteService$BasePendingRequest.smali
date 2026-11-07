.class public abstract Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BasePendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field blacklist mCancelled:Z

.field blacklist mCompleted:Z

.field protected final blacklist mLock:Ljava/lang/Object;

.field protected final blacklist mTag:Ljava/lang/String;

.field final blacklist mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 615
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    .local p1, "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mTag:Ljava/lang/String;

    .line 605
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    .line 616
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 617
    return-void
.end method


# virtual methods
.method public blacklist cancel()Z
    .registers 3

    .line 672
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    if-eqz v1, :cond_c

    goto :goto_21

    .line 676
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    .line 677
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    .line 679
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AbstractRemoteService;

    .line 680
    .local v0, "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    if-eqz v0, :cond_1d

    .line 681
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AbstractRemoteService;->finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 684
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onCancel()V

    .line 685
    return v1

    .line 674
    .end local v0    # "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 677
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_24

    throw v1
.end method

.method protected final blacklist finish()Z
    .registers 3

    .line 633
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    if-eqz v1, :cond_c

    goto :goto_21

    .line 637
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    .line 638
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    .line 640
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AbstractRemoteService;

    .line 641
    .local v0, "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    if-eqz v0, :cond_1d

    .line 642
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AbstractRemoteService;->finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 645
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFinished()V

    .line 647
    return v1

    .line 635
    .end local v0    # "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 638
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_24

    throw v1
.end method

.method protected final blacklist getService()Lcom/android/internal/infra/AbstractRemoteService;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 623
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AbstractRemoteService;

    return-object v0
.end method

.method protected final blacklist isCancelledLocked()Z
    .registers 2

    .line 663
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCancelled:Z

    return v0
.end method

.method protected blacklist isFinal()Z
    .registers 2

    .line 694
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist isRequestCompleted()Z
    .registers 3

    .line 698
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->mCompleted:Z

    monitor-exit v0

    return v1

    .line 700
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist onCancel()V
    .registers 1

    .line 688
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    return-void
.end method

.method protected blacklist onFailed()V
    .registers 1

    .line 656
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    return-void
.end method

.method blacklist onFinished()V
    .registers 1

    .line 650
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    return-void
.end method
