.class public abstract Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;
.super Ljava/lang/Object;
.source "AsyncMessageInvocation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Ljava/lang/Object;",
        "Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 54
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    .line 57
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p0

    .line 59
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TResponse;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    const/4 p3, 0x0

    .line 47
    invoke-virtual {v0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncMessageInvocation;->sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract blacklist parseResult(Landroid/os/AsyncResult;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            ")TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected abstract blacklist sendRequestMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method
