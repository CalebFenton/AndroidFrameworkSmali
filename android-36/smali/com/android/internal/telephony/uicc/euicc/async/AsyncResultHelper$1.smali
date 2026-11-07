.class Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;
.super Ljava/lang/Object;
.source "AsyncResultHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

.field final synthetic blacklist val$result:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$callback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
