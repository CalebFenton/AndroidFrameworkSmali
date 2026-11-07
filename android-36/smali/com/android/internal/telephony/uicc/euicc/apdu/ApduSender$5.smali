.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->closeAnyOpenChannel()V
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

.field final synthetic blacklist val$channelId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->val$channelId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Ljava/lang/Boolean;)V
    .registers 4

    .line 456
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[closeAnyOpenChannel] Channel closed successfully: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->val$channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mlogv(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mtearDownPreferences(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

    .line 463
    :cond_23
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fputmChannelOpened(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)V

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mreleaseChannelLock(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)V

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

    .line 453
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$5;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
