.class public Landroid/hardware/camera2/impl/CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CaptureCallbackHolder.java"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/impl/CaptureCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHasBatchedOutputs:Z

.field private final blacklist mRepeating:Z

.field private final blacklist mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V
    .registers 12
    .param p1, "callback"    # Landroid/hardware/camera2/impl/CaptureCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "repeating"    # Z
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "ZI)V"
        }
    .end annotation

    .line 45
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_41

    if-eqz p3, :cond_41

    .line 50
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRepeating:Z

    .line 51
    iput-object p3, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    .line 53
    iput-object p1, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CaptureCallback;

    .line 54
    iput p5, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mSessionId:I

    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "hasBatchedOutputs":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 60
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 61
    .local v2, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 62
    const/4 v0, 0x0

    .line 63
    goto :goto_3e

    .line 65
    :cond_2c
    if-nez v1, :cond_3b

    .line 66
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    .line 67
    .local v3, "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    .line 68
    const/4 v0, 0x0

    .line 69
    goto :goto_3e

    .line 59
    .end local v2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "targets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 73
    .end local v1    # "i":I
    :cond_3e
    :goto_3e
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mHasBatchedOutputs:Z

    .line 74
    return-void

    .line 47
    .end local v0    # "hasBatchedOutputs":Z
    :cond_41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have a valid handler and a valid callback"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getCallback()Landroid/hardware/camera2/impl/CaptureCallback;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CaptureCallback;

    return-object v0
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getRequest()Landroid/hardware/camera2/CaptureRequest;
    .registers 2

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .registers 5
    .param p1, "subsequenceId"    # I

    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 91
    if-ltz p1, :cond_13

    .line 95
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 92
    const-string v2, "Requested subsequenceId %d is negative"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 87
    const-string v2, "Requested subsequenceId %d is larger than request list size %d."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRequestCount()I
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getSessionId()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mSessionId:I

    return v0
.end method

.method public blacklist hasBatchedOutputs()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return v0
.end method

.method public blacklist isRepeating()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRepeating:Z

    return v0
.end method
