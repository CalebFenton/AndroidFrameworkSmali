.class Lcom/android/internal/telephony/data/DataNetworkController$1;
.super Landroid/content/BroadcastReceiver;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 452
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_3d

    .line 455
    :cond_18
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_3d

    .line 458
    const-string p1, "android.telephony.extra.SIM_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3d
    :goto_3d
    return-void
.end method
