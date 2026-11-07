.class public abstract Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractSinglePendingRequestRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<",
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
.field protected blacklist mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "bindingFlags"    # I
    .param p8, "verbose"    # Z
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
            "IZ)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;, "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<TS;TI;>;"
    .local p5, "callback":Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;, "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<TS;>;"
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 83
    .local p0, "this":Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;, "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<TS;TI;>;"
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 84
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "hasPendingRequest="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 85
    :goto_14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 86
    return-void
.end method

.method blacklist handleBindFailure()V
    .registers 4

    .line 74
    .local p0, "this":Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;, "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_2a

    .line 75
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mVerbose:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_22
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 79
    :cond_2a
    return-void
.end method

.method protected blacklist handleOnDestroy()V
    .registers 2

    .line 66
    .local p0, "this":Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;, "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 70
    :cond_c
    return-void
.end method

.method blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;, "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_31

    .line 91
    iget-boolean v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mVerbose:Z

    if-eqz v0, :cond_2c

    .line 92
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingRequestWhileUnBound(): cancelling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    .line 97
    :cond_31
    iput-object p1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 98
    return-void
.end method

.method blacklist handlePendingRequests()V
    .registers 3

    .line 57
    .local p0, "this":Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;, "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-eqz v0, :cond_c

    .line 58
    iget-object v0, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 59
    .local v0, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 62
    .end local v0    # "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    :cond_c
    return-void
.end method
