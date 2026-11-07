.class public final Landroid/os/RemoteCallbackList$Builder;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFrozenCalleePolicy:I

.field private blacklist mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

.field private blacklist mMaxQueueSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder;)Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;
    .registers 1

    iget-object p0, p0, Landroid/os/RemoteCallbackList$Builder;->mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "frozenCalleePolicy"    # I

    .line 253
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder;, "Landroid/os/RemoteCallbackList$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    .line 254
    iput p1, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    .line 255
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/os/RemoteCallbackList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "TE;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder;, "Landroid/os/RemoteCallbackList$Builder<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 328
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_12

    iget v1, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    if-eqz v1, :cond_12

    .line 331
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v0, v1

    .line 333
    :cond_12
    iget-object v1, p0, Landroid/os/RemoteCallbackList$Builder;->mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    if-eqz v1, :cond_20

    .line 334
    new-instance v1, Landroid/os/RemoteCallbackList$Builder$1;

    iget v2, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    iget v3, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/os/RemoteCallbackList$Builder$1;-><init>(Landroid/os/RemoteCallbackList$Builder;IILjava/util/concurrent/Executor;)V

    return-object v1

    .line 341
    :cond_20
    new-instance v1, Landroid/os/RemoteCallbackList;

    iget v2, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    iget v3, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/os/RemoteCallbackList;-><init>(IILjava/util/concurrent/Executor;Landroid/os/RemoteCallbackList-IA;)V

    return-object v1
.end method

.method public whitelist setExecutor(Ljava/util/concurrent/Executor;)Landroid/os/RemoteCallbackList$Builder;
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 299
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder;, "Landroid/os/RemoteCallbackList$Builder<TE;>;"
    iput-object p1, p0, Landroid/os/RemoteCallbackList$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 300
    return-object p0
.end method

.method public whitelist setInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;)Landroid/os/RemoteCallbackList$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback<",
            "TE;>;)",
            "Landroid/os/RemoteCallbackList$Builder;"
        }
    .end annotation

    .line 287
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder;, "Landroid/os/RemoteCallbackList$Builder<TE;>;"
    .local p1, "callback":Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;, "Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback<TE;>;"
    iput-object p1, p0, Landroid/os/RemoteCallbackList$Builder;->mInterfaceDiedCallback:Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    .line 288
    return-object p0
.end method

.method public whitelist setMaxQueueSize(I)Landroid/os/RemoteCallbackList$Builder;
    .registers 4
    .param p1, "maxQueueSize"    # I

    .line 271
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder;, "Landroid/os/RemoteCallbackList$Builder<TE;>;"
    if-lez p1, :cond_13

    .line 274
    iget v0, p0, Landroid/os/RemoteCallbackList$Builder;->mFrozenCalleePolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 278
    iput p1, p0, Landroid/os/RemoteCallbackList$Builder;->mMaxQueueSize:I

    .line 279
    return-object p0

    .line 275
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setMaxQueueSize can only be called for FROZEN_CALLEE_POLICY_ENQUEUE_ALL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxQueueSize must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
