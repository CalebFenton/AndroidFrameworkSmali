.class Lcom/android/internal/telephony/uicc/PinStorage$1;
.super Landroid/content/BroadcastReceiver;
.source "PinStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/PinStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/PinStorage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/PinStorage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PinStorage$1;->this$0:Lcom/android/internal/telephony/uicc/PinStorage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 167
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_28

    .line 175
    :cond_15
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage$1;->this$0:Lcom/android/internal/telephony/uicc/PinStorage;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 169
    :cond_28
    :goto_28
    const-string p1, "phone"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 170
    const-string v0, "android.telephony.extra.SIM_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PinStorage$1;->this$0:Lcom/android/internal/telephony/uicc/PinStorage;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/PinStorage;->-$$Nest$mvalidateSlotId(Lcom/android/internal/telephony/uicc/PinStorage;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/PinStorage$1;->this$0:Lcom/android/internal/telephony/uicc/PinStorage;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_48
    return-void
.end method
