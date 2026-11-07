.class Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/EmergencyStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 212
    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received ACTION_EMERGENCY_CALLBACK_MODE_CHANGED isInEcm = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EmergencyStateTracker"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_30

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$1;->this$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode()V

    :cond_30
    return-void
.end method
