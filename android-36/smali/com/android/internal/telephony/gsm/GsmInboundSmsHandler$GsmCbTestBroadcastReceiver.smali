.class Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;
.super Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmCbTestBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 97
    const-string v0, "com.android.internal.telephony.gsm.TEST_TRIGGER_CELL_BROADCAST"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected blacklist handleTestAction(Landroid/content/Intent;)V
    .registers 4

    .line 102
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_14

    .line 104
    const-string v0, "pdu_string"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B
    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$000(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)[B

    move-result-object v0

    :cond_14
    if-nez v0, :cond_1e

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const-string p1, "No pdu or pdu_string extra, ignoring CB test intent"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$100(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_1e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x0

    .line 113
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 114
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$200(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendGsmMessageToHandler(Landroid/os/Message;)V

    return-void
.end method
