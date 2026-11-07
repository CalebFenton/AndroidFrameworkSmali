.class Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;
.super Landroid/content/BroadcastReceiver;
.source "CarrierKeyDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 p1, 0x1

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 248
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ec

    :goto_29
    move v5, v3

    goto :goto_4b

    :sswitch_2b
    const-string v5, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_29

    :cond_34
    const/4 v5, 0x2

    goto :goto_4b

    :sswitch_36
    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_29

    :cond_3f
    move v5, p1

    goto :goto_4b

    :sswitch_41
    const-string v5, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_29

    :cond_4a
    move v5, v4

    :goto_4b
    packed-switch v5, :pswitch_data_fa

    goto/16 :goto_ea

    .line 261
    :pswitch_50
    const-string p1, "phone"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v2, p1, :cond_ea

    .line 263
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling reset intent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 270
    :pswitch_74
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device fully unlocked, isRequiredToHandleUnlock = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmIsRequiredToHandleUnlock(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", slotIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  hasActiveDataNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_a3

    goto :goto_a4

    :cond_a3
    move p1, v4

    :goto_a4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fgetmIsRequiredToHandleUnlock(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 275
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$fputmIsRequiredToHandleUnlock(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Z)V

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 250
    :pswitch_c2
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_ea

    .line 253
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling key renewal alarm: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/CarrierKeyDownloadManager;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->updateSimOperator()V

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$3;->this$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_ea
    :goto_ea
    return-void

    nop

    :sswitch_data_ec
    .sparse-switch
        -0x28c4d364 -> :sswitch_41
        0x31af1c32 -> :sswitch_36
        0x4b3e7ee5 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_74
        :pswitch_50
    .end packed-switch
.end method
