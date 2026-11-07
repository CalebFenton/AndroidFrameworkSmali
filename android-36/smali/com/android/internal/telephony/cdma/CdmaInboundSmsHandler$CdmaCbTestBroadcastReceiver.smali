.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;
.super Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CdmaCbTestBroadcastReceiver"
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

    .line 468
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 469
    const-string v0, "com.android.internal.telephony.cdma.TEST_TRIGGER_CELL_BROADCAST"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected blacklist handleTestAction(Landroid/content/Intent;)V
    .registers 7

    .line 474
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 477
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 478
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 479
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 482
    const-string v1, "service_category"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v1, v2, :cond_27

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const-string p1, "No service category, ignoring CB test intent"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V

    return-void

    .line 489
    :cond_27
    const-string v1, "bearer_data_string"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B
    invoke-static {v1, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-nez p1, :cond_3f

    .line 492
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const-string p1, "No bearer data, ignoring CB test intent"

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V

    return-void

    .line 496
    :cond_3f
    new-instance p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    invoke-direct {p1, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 497
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$300(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return-void
.end method
