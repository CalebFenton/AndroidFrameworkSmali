.class public abstract Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractMultiplePendingRequestsRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mInitialCapacity:I

.field protected blacklist mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "bindingFlags"    # I
    .param p8, "verbose"    # Z
    .param p9, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZI)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    .local p5, "callback":Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;, "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<TS;>;"
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 54
    move v0, p8

    move p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "context":Landroid/content/Context;
    .local v0, "verbose":Z
    .local p2, "context":Landroid/content/Context;
    .local p3, "serviceInterface":Ljava/lang/String;
    .local p4, "componentName":Landroid/content/ComponentName;
    .local p5, "userId":I
    .local p6, "callback":Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;, "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<TS;>;"
    .local p7, "handler":Landroid/os/Handler;
    .local p8, "bindingFlags":I
    iput p9, p1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 98
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "initialCapacity="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 104
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    .local v1, "size":I
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_3b

    .line 106
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "pendingRequests="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 107
    return-void

    .line 105
    .end local v1    # "size":I
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method final blacklist handleBindFailure()V
    .registers 6

    .line 84
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 86
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending failure to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_40

    .line 88
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 89
    .local v3, "request":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->finish()Z

    .line 87
    nop

    .end local v3    # "request":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 92
    .end local v2    # "i":I
    :cond_40
    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    .end local v1    # "size":I
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method protected blacklist handleOnDestroy()V
    .registers 6

    .line 72
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 74
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_3c

    .line 76
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 78
    .end local v2    # "i":I
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 79
    .end local v1    # "size":I
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_35

    .line 114
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    .line 115
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requests; last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_35
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method blacklist handlePendingRequests()V
    .registers 6

    .line 60
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 62
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_3c

    .line 64
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {p0, v3}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 66
    .end local v2    # "i":I
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 67
    .end local v1    # "size":I
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method
