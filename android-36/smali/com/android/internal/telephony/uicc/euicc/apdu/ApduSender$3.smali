.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->getCompleteResponse(ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Lcom/android/internal/telephony/uicc/IccIoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field final synthetic blacklist val$channel:I

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$resultBuilder:Ljava/io/ByteArrayOutputStream;

.field final synthetic blacklist val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;ILjava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$channel:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$resultBuilder:Ljava/io/ByteArrayOutputStream;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iput-object p5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .registers 8

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$channel:I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$resultBuilder:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->val$handler:Landroid/os/Handler;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mgetCompleteResponse(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

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

    .line 357
    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;->onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V

    return-void
.end method
