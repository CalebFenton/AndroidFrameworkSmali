.class final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private mBroadcastTimeNano:J

.field private final mDeleteWhere:Ljava/lang/String;

.field private final mDeleteWhereArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 1074
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    #@b
    .line 1075
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    #@11
    .line 1076
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    #@17
    .line 1073
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 1082
    .local v9, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.provider.Telephony.SMS_DELIVER"

    #@7
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1084
    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    #@10
    move-object/from16 v0, p2

    #@12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 1085
    const/4 v2, 0x0

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1b
    .line 1087
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@23
    move-result-object v6

    #@24
    .line 1088
    .local v6, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@28
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@2b
    .line 1089
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2d
    const/16 v5, 0x10

    #@2f
    move-object/from16 v3, p2

    #@31
    move-object/from16 v7, p0

    #@33
    .line 1088
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@36
    .line 1080
    .end local v6    # "options":Landroid/os/Bundle;
    :goto_0
    return-void

    #@37
    .line 1090
    :cond_0
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@3a
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_1

    #@40
    .line 1092
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@48
    .line 1093
    const/4 v2, 0x0

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4e
    .line 1096
    const/4 v6, 0x0

    #@4f
    .line 1098
    .local v6, "options":Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@53
    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@55
    .line 1099
    move-object/from16 v0, p0

    #@57
    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@59
    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@5b
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    const-string/jumbo v4, "mms-broadcast"

    #@62
    const/4 v5, 0x0

    #@63
    .line 1098
    invoke-interface {v2, v3, v5, v4}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@66
    move-result-wide v12

    #@67
    .line 1100
    .local v12, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@6a
    move-result-object v10

    #@6b
    .line 1101
    .local v10, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v10, v12, v13}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@6e
    .line 1102
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    move-result-object v6

    #@72
    .line 1105
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v10    # "bopts":Landroid/app/BroadcastOptions;
    .end local v12    # "duration":J
    :goto_1
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@76
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@79
    .line 1106
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@7b
    const/16 v5, 0x10

    #@7d
    move-object/from16 v3, p2

    #@7f
    move-object/from16 v7, p0

    #@81
    .line 1105
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@84
    goto :goto_0

    #@85
    .line 1109
    :cond_1
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    #@88
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_2

    #@8e
    .line 1110
    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    #@91
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v2

    #@95
    if-eqz v2, :cond_3

    #@97
    .line 1116
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getResultCode()I

    #@9a
    move-result v15

    #@9b
    .line 1117
    .local v15, "rc":I
    const/4 v2, -0x1

    #@9c
    if-eq v15, v2, :cond_4

    #@9e
    const/4 v2, 0x1

    #@9f
    if-eq v15, v2, :cond_4

    #@a1
    .line 1118
    move-object/from16 v0, p0

    #@a3
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@a5
    new-instance v3, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v4, "a broadcast receiver set the result code to "

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    .line 1119
    const-string/jumbo v4, ", deleting from raw table anyway!"

    #@b8
    .line 1118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@c3
    .line 1124
    :goto_3
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    #@cf
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    #@d2
    .line 1125
    move-object/from16 v0, p0

    #@d4
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@d6
    const/4 v3, 0x3

    #@d7
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@da
    .line 1127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@dd
    move-result-wide v2

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-wide v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    #@e2
    sub-long/2addr v2, v4

    #@e3
    const-wide/32 v4, 0xf4240

    #@e6
    div-long/2addr v2, v4

    #@e7
    long-to-int v11, v2

    #@e8
    .line 1128
    .local v11, "durationMillis":I
    const/16 v2, 0x1388

    #@ea
    if-lt v11, v2, :cond_5

    #@ec
    .line 1129
    move-object/from16 v0, p0

    #@ee
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@f0
    new-instance v3, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v4, "Slow ordered broadcast completion time: "

    #@f8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v3

    #@fc
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v3

    #@100
    const-string/jumbo v4, " ms"

    #@103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v3

    #@107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@10e
    goto/16 :goto_0

    #@110
    .line 1111
    .end local v11    # "durationMillis":I
    .end local v15    # "rc":I
    :cond_3
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    #@113
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@116
    move-result v2

    #@117
    if-nez v2, :cond_2

    #@119
    .line 1112
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@11c
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v2

    #@120
    if-nez v2, :cond_2

    #@122
    .line 1113
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@126
    new-instance v3, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v4, "unexpected BroadcastReceiver action: "

    #@12e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v3

    #@132
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v3

    #@136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v3

    #@13a
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@13d
    goto/16 :goto_2

    #@13f
    .line 1121
    .restart local v15    # "rc":I
    :cond_4
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@143
    const-string/jumbo v3, "successful broadcast, deleting from raw table."

    #@146
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@149
    goto/16 :goto_3

    #@14b
    .line 1131
    .restart local v11    # "durationMillis":I
    :cond_5
    move-object/from16 v0, p0

    #@14d
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@14f
    new-instance v3, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v4, "ordered broadcast completed in: "

    #@157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v3

    #@15b
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v3

    #@15f
    const-string/jumbo v4, " ms"

    #@162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v3

    #@166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v3

    #@16a
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@16d
    goto/16 :goto_0

    #@16f
    .line 1103
    .end local v11    # "durationMillis":I
    .end local v15    # "rc":I
    .restart local v6    # "options":Landroid/os/Bundle;
    :catch_0
    move-exception v14

    #@170
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method
