.class Lcom/android/internal/telephony/CarrierActionAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierActionAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierActionAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierActionAgent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierActionAgent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 91
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 93
    const-string p1, "rebroadcastOnUnlock"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_39

    .line 97
    :cond_1c
    const-string p1, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierActionAgent;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierActionAgent;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p2, p1, :cond_39

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent$1;->this$0:Lcom/android/internal/telephony/CarrierActionAgent;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_39
    :goto_39
    return-void
.end method
