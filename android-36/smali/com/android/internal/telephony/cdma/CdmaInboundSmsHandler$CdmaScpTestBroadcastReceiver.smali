.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;
.super Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaScpTestBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 513
    const-string v0, "com.android.internal.telephony.cdma.TEST_TRIGGER_SCP_MESSAGE"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected blacklist handleTestAction(Landroid/content/Intent;)V
    .registers 7

    .line 518
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 521
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    const/4 v2, 0x1

    .line 522
    new-array v2, v2, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 523
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 526
    const-string v1, "bearer_data_string"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B
    invoke-static {v2, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-nez v1, :cond_2d

    .line 529
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const-string p1, "No bearer data, ignoring SCP test intent"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$500(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_2d
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 534
    const-string v2, "originating_address_string"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B
    invoke-static {v2, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$600(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    if-nez p1, :cond_4a

    .line 537
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const-string p1, "No address data, ignoring SCP test intent"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$700(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V

    return-void

    .line 540
    :cond_4a
    new-instance p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p1, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 541
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$800(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->-$$Nest$fgetmScpCallback(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Landroid/os/RemoteCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaScpMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;Landroid/os/RemoteCallback;)V

    return-void
.end method
