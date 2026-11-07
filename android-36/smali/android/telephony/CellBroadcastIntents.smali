.class public Landroid/telephony/CellBroadcastIntents;
.super Ljava/lang/Object;
.source "CellBroadcastIntents.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_AREA_INFO_UPDATED:Ljava/lang/String; = "android.telephony.action.AREA_INFO_UPDATED"

.field private static final blacklist EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellBroadcastIntents"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static blacklist putPhoneIdAndSubIdExtra(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I

    .line 107
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 108
    .local v0, "subId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 109
    const-string/jumbo v1, "subscription"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_12
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public static whitelist sendSmsCbReceivedBroadcast(Landroid/content/Context;Landroid/os/UserHandle;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;Landroid/os/Handler;II)V
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "smsCbMessage"    # Landroid/telephony/SmsCbMessage;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "slotIndex"    # I

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    .line 88
    .local v11, "backgroundIntent":Landroid/content/Intent;
    const-string/jumbo v1, "message"

    move-object/from16 v2, p2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    move/from16 v1, p6

    invoke-static {v0, v11, v1}, Landroid/telephony/CellBroadcastIntents;->putPhoneIdAndSubIdExtra(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 91
    const-string v12, "android.permission.RECEIVE_SMS"

    .line 92
    .local v12, "receiverPermission":Ljava/lang/String;
    const-string v13, "android:receive_sms"

    .line 93
    .local v13, "receiverAppOp":Ljava/lang/String;
    if-eqz v9, :cond_32

    .line 94
    const/4 v3, 0x0

    invoke-virtual {v0, v9, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v10

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    invoke-virtual/range {v10 .. v18}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_40

    .line 98
    :cond_32
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    .end local v11    # "backgroundIntent":Landroid/content/Intent;
    .end local v12    # "receiverPermission":Ljava/lang/String;
    .end local v13    # "receiverAppOp":Ljava/lang/String;
    .local v1, "backgroundIntent":Landroid/content/Intent;
    .local v2, "receiverPermission":Ljava/lang/String;
    .local v3, "receiverAppOp":Ljava/lang/String;
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 101
    .end local v1    # "backgroundIntent":Landroid/content/Intent;
    .end local v2    # "receiverPermission":Ljava/lang/String;
    .end local v3    # "receiverAppOp":Ljava/lang/String;
    .restart local v11    # "backgroundIntent":Landroid/content/Intent;
    .restart local v12    # "receiverPermission":Ljava/lang/String;
    .restart local v13    # "receiverAppOp":Ljava/lang/String;
    :goto_40
    return-void
.end method
