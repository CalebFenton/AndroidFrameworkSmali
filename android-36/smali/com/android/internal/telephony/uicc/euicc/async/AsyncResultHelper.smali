.class public final Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;
.super Ljava/lang/Object;
.source "AsyncResultHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 38
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist throwException(Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "*>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void

    .line 60
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$2;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$2;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
