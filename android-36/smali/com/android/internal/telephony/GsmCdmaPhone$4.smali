.class Lcom/android/internal/telephony/GsmCdmaPhone$4;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastReceiver: action "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 443
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "android.telephony.extra.SLOT_INDEX"

    if-eqz v0, :cond_3f

    .line 445
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_9d

    .line 446
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 448
    :cond_3f
    const-string v0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_54

    .line 449
    const-string p1, "android.telecom.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 451
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mupdateTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    return-void

    .line 452
    :cond_54
    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 453
    const-string p1, "android.telecom.extra.TTY_PREFERRED_MODE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mupdateUiTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    return-void

    .line 456
    :cond_68
    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_9d

    .line 460
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v0, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$fputmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    .line 462
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_9d

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 463
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mcurrentSlotSubIdChanged(Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :cond_9d
    return-void
.end method
