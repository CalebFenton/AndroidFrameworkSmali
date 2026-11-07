.class public Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BTWifiNFCStateReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1249
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    .line 1254
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BTWifiNFCStateReceiver NULL action for intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 1258
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const/4 v3, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_128

    :goto_2b
    move v2, p1

    goto :goto_4d

    :sswitch_2d
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_2b

    :cond_36
    const/4 v2, 0x2

    goto :goto_4d

    :sswitch_38
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_2b

    :cond_41
    move v2, v0

    goto :goto_4d

    :sswitch_43
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_2b

    :cond_4c
    move v2, v1

    :goto_4d
    packed-switch v2, :pswitch_data_136

    goto/16 :goto_127

    .line 1276
    :pswitch_52
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1277
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p2

    if-ne p1, v3, :cond_66

    .line 1279
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    goto :goto_72

    :cond_66
    if-ne p1, v0, :cond_72

    .line 1281
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1282
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    .line 1285
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p1

    if-eq p2, p1, :cond_127

    .line 1286
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNfcStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetNfcEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 1260
    :pswitch_97
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1262
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p2

    const/16 v2, 0xa

    if-ne p1, v2, :cond_b4

    .line 1264
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1265
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    goto :goto_bd

    :cond_b4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_bd

    .line 1267
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1270
    :cond_bd
    :goto_bd
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p1

    if-eq p2, p1, :cond_127

    .line 1271
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBTStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetBTEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    return-void

    .line 1291
    :pswitch_e2
    const-string p1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1293
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p2

    if-ne p1, v3, :cond_f7

    .line 1295
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    goto :goto_103

    :cond_f7
    if-ne p1, v0, :cond_103

    .line 1297
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    .line 1298
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mevaluateToSendSatelliteEnabledSuccess(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    .line 1301
    :cond_103
    :goto_103
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p1

    if-eq p2, p1, :cond_127

    .line 1302
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWifiStateEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$BTWifiNFCStateReceiver;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mgetWifiEnabledState(Lcom/android/internal/telephony/satellite/SatelliteController;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    :cond_127
    :goto_127
    return-void

    :sswitch_data_128
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_43
        -0x5b36f014 -> :sswitch_38
        0x73d08300 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_97
        :pswitch_52
    .end packed-switch
.end method
