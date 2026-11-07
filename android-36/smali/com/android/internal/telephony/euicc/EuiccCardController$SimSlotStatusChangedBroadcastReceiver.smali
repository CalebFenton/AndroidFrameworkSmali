.class Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimSlotStatusChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/EuiccCardController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 87
    const-string p1, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 90
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isEmbeddedCardPresent()Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_35

    .line 93
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->isEmbeddedSlotActivated()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 94
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmEuiccController(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary()V

    .line 96
    :cond_26
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->-$$Nest$fgetmSimSlotStatusChangeReceiver(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/euicc/EuiccCardController$SimSlotStatusChangedBroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_35
    :goto_35
    return-void
.end method
