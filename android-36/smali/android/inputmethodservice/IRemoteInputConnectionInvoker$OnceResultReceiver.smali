.class abstract Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
.super Landroid/os/ResultReceiver;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OnceResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation


# instance fields
.field private blacklist mConsumer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;, "Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver<TC;>;"
    .local p2, "consumer":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 83
    iput-object p2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mConsumer:Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method protected abstract blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/lang/Object;ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected final whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 90
    .local p0, "this":Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;, "Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver<TC;>;"
    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    .local v0, "executor":Ljava/util/concurrent/Executor;
    iget-object v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mConsumer:Ljava/lang/Object;

    .line 93
    .local v1, "consumer":Ljava/lang/Object;, "TC;"
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 94
    iput-object v2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->mConsumer:Ljava/lang/Object;

    .line 95
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    .line 96
    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    .line 97
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;->dispatch(Ljava/util/concurrent/Executor;Ljava/lang/Object;ILandroid/os/Bundle;)V

    .line 99
    :cond_12
    return-void

    .line 95
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .end local v1    # "consumer":Ljava/lang/Object;, "TC;"
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
