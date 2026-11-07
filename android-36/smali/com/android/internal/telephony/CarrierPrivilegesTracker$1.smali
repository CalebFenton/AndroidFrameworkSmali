.class Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierPrivilegesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierPrivilegesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 p1, 0x4

    const/4 v0, 0x3

    .line 289
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    goto/16 :goto_e2

    .line 292
    :cond_12
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    const/4 v8, 0x6

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_f8

    :goto_1d
    move v9, v3

    goto :goto_5c

    :sswitch_1f
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto :goto_1d

    :cond_28
    move v9, v6

    goto :goto_5c

    :sswitch_2a
    const-string v9, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_1d

    :cond_33
    move v9, p1

    goto :goto_5c

    :sswitch_35
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    goto :goto_1d

    :cond_3c
    move v9, v0

    goto :goto_5c

    :sswitch_3e
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    goto :goto_1d

    :cond_45
    const/4 v9, 0x2

    goto :goto_5c

    :sswitch_47
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    goto :goto_1d

    :cond_50
    move v9, v5

    goto :goto_5c

    :sswitch_52
    const-string v9, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    goto :goto_1d

    :cond_5b
    move v9, v4

    :goto_5c
    packed-switch v9, :pswitch_data_112

    goto/16 :goto_e2

    .line 316
    :pswitch_61
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 317
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    :cond_6c
    const/4 p1, 0x0

    .line 318
    :goto_6d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 319
    invoke-static {}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to get package from Intent"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_7d
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 327
    :try_start_81
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    .line 328
    invoke-static {v1, p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$mgetApplicationEnabledSetting(Lcom/android/internal/telephony/CarrierPrivilegesTracker;Ljava/lang/String;)I

    move-result v1
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_8d} :catch_95

    if-ne v1, v0, :cond_90

    goto :goto_91

    :cond_90
    move v5, v4

    :goto_91
    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_ad

    .line 332
    :catch_95
    invoke-static {}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ad
    if-nez p2, :cond_b3

    if-nez v4, :cond_b3

    if-eqz v5, :cond_b4

    :cond_b3
    move v6, v8

    .line 341
    :cond_b4
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object p0

    .line 342
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 341
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e2

    .line 295
    :pswitch_c8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 296
    const-string v0, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 297
    const-string v1, "phone"

    .line 298
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq v0, v5, :cond_e3

    if-eq v0, v8, :cond_e3

    if-eq v0, v6, :cond_e3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e3

    :goto_e2
    return-void

    .line 307
    :cond_e3
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierPrivilegesTracker$1;->this$0:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->-$$Nest$fgetmCurrentHandler(Lcom/android/internal/telephony/CarrierPrivilegesTracker;)Landroid/os/Handler;

    move-result-object p0

    .line 308
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 307
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :sswitch_data_f8
    .sparse-switch
        -0x44ff4dd4 -> :sswitch_52
        -0x304ed112 -> :sswitch_47
        0xa480416 -> :sswitch_3e
        0x1f50b9c2 -> :sswitch_35
        0x272c3142 -> :sswitch_2a
        0x5c1076e2 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_c8
        :pswitch_61
    .end packed-switch
.end method
