.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V
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
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V
    .registers 11

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full APDU response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mlogv(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/String;)V

    .line 282
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v1, v0, 0x8

    iget v2, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    or-int/2addr v1, v2

    const v2, 0x9000

    if-eq v1, v2, :cond_55

    const/16 v2, 0x91

    if-eq v0, v2, :cond_55

    const/16 p1, 0x6881

    if-ne v1, p1, :cond_3b

    .line 287
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mtearDownPreferences(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

    .line 288
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fputmChannelOpened(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)V

    .line 291
    :cond_3b
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v2, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$command:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v3, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    iget-boolean v4, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$closeChannelImmediately:Z

    new-instance v6, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;-><init>(I)V

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mreturnRespnseOrException(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void

    .line 301
    :cond_55
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget v1, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$index:I

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_81

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    .line 303
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;->shouldContinueOnIntermediateResult(Lcom/android/internal/telephony/uicc/IccIoResult;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 307
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$commands:Ljava/util/List;

    iget p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$index:I

    add-int/lit8 v2, p1, 0x1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$closeChannelImmediately:Z

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$handler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$msendCommand(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/util/List;IZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void

    .line 311
    :cond_81
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->this$1:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$command:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v1, v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;->channel:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$closeChannelImmediately:Z

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;->val$handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mreturnRespnseOrException(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

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

    .line 278
    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2$1;->onResult(Lcom/android/internal/telephony/uicc/IccIoResult;)V

    return-void
.end method
