.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->closeAndReturn(I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field final synthetic blacklist val$exception:Ljava/lang/Throwable;

.field final synthetic blacklist val$response:[B

.field final synthetic blacklist val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$exception:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$response:[B

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Ljava/lang/Boolean;)V
    .registers 3

    .line 418
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mtearDownPreferences(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

    .line 419
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fputmChannelOpened(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)V

    .line 420
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mreleaseChannelLock(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

    .line 422
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1c

    .line 423
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$response:[B

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 425
    :cond_1c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic blacklist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 415
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
