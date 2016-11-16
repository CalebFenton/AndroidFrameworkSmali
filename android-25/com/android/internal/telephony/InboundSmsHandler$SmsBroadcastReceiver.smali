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
    .line 1267
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 1268
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    #@b
    .line 1269
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    #@11
    .line 1270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    #@17
    .line 1267
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 1276
    .local v9, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.provider.Telephony.SMS_DELIVER"

    #@7
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1278
    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    #@10
    move-object/from16 v0, p2

    #@12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@15
    .line 1279
    const/4 v2, 0x0

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1b
    .line 1281
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-static {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap0(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@23
    move-result-object v6

    #@24
    .line 1282
    .local v6, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@28
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@2b
    .line 1283
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2d
    const/16 v5, 0x10

    #@2f
    move-object/from16 v3, p2

    #@31
    move-object/from16 v7, p0

    #@33
    .line 1282
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@36
    .line 1274
    .end local v6    # "options":Landroid/os/Bundle;
    :goto_0
    return-void

    #@37
    .line 1284
    :cond_0
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@3a
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_1

    #@40
    .line 1286
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@43
    move-object/from16 v0, p2

    #@45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@48
    .line 1287
    const/4 v2, 0x0

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4e
    .line 1290
    const/4 v6, 0x0

    #@4f
    .line 1292
    .local v6, "options":Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@53
    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@55
    .line 1293
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
    .line 1292
    invoke-interface {v2, v3, v5, v4}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@66
    move-result-wide v12

    #@67
    .line 1294
    .local v12, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@6a
    move-result-object v10

    #@6b
    .line 1295
    .local v10, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v10, v12, v13}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@6e
    .line 1296
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    move-result-object v6

    #@72
    .line 1300
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v10    # "bopts":Landroid/app/BroadcastOptions;
    .end local v12    # "duration":J
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@75
    move-result-object v15

    #@76
    .line 1301
    .local v15, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@7a
    invoke-static {v15}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 1302
    invoke-static {v15}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsPermissionForIntent(Ljava/lang/String;)I

    #@81
    move-result v5

    #@82
    .line 1303
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@84
    move-object/from16 v3, p2

    #@86
    move-object/from16 v7, p0

    #@88
    .line 1301
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@8b
    goto :goto_0

    #@8c
    .line 1306
    .end local v15    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    #@8f
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v2

    #@93
    if-nez v2, :cond_2

    #@95
    .line 1307
    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    #@98
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_3

    #@9e
    .line 1313
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->getResultCode()I

    #@a1
    move-result v16

    #@a2
    .line 1314
    .local v16, "rc":I
    const/4 v2, -0x1

    #@a3
    move/from16 v0, v16

    #@a5
    if-eq v0, v2, :cond_4

    #@a7
    const/4 v2, 0x1

    #@a8
    move/from16 v0, v16

    #@aa
    if-eq v0, v2, :cond_4

    #@ac
    .line 1315
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@b0
    new-instance v3, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v4, "a broadcast receiver set the result code to "

    #@b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    move/from16 v0, v16

    #@be
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    .line 1316
    const-string/jumbo v4, ", deleting from raw table anyway!"

    #@c5
    .line 1315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@d0
    .line 1321
    :goto_3
    move-object/from16 v0, p0

    #@d2
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    #@dc
    const/4 v5, 0x2

    #@dd
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap5(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V

    #@e0
    .line 1322
    move-object/from16 v0, p0

    #@e2
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@e4
    const/4 v3, 0x3

    #@e5
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@e8
    .line 1324
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@eb
    move-result-wide v2

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget-wide v4, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    #@f0
    sub-long/2addr v2, v4

    #@f1
    const-wide/32 v4, 0xf4240

    #@f4
    div-long/2addr v2, v4

    #@f5
    long-to-int v11, v2

    #@f6
    .line 1325
    .local v11, "durationMillis":I
    const/16 v2, 0x1388

    #@f8
    if-lt v11, v2, :cond_5

    #@fa
    .line 1326
    move-object/from16 v0, p0

    #@fc
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@fe
    new-instance v3, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v4, "Slow ordered broadcast completion time: "

    #@106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v3

    #@10a
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v3

    #@10e
    const-string/jumbo v4, " ms"

    #@111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v3

    #@115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v3

    #@119
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 1308
    .end local v11    # "durationMillis":I
    .end local v16    # "rc":I
    :cond_3
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    #@121
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v2

    #@125
    if-nez v2, :cond_2

    #@127
    .line 1309
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@12a
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v2

    #@12e
    if-nez v2, :cond_2

    #@130
    .line 1310
    move-object/from16 v0, p0

    #@132
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@134
    new-instance v3, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    const-string/jumbo v4, "unexpected BroadcastReceiver action: "

    #@13c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v3

    #@140
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v3

    #@144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v3

    #@148
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@14b
    goto/16 :goto_2

    #@14d
    .line 1318
    .restart local v16    # "rc":I
    :cond_4
    move-object/from16 v0, p0

    #@14f
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@151
    const-string/jumbo v3, "successful broadcast, deleting from raw table."

    #@154
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@157
    goto/16 :goto_3

    #@159
    .line 1328
    .restart local v11    # "durationMillis":I
    :cond_5
    move-object/from16 v0, p0

    #@15b
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    #@15d
    new-instance v3, Ljava/lang/StringBuilder;

    #@15f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@162
    const-string/jumbo v4, "ordered broadcast completed in: "

    #@165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v3

    #@169
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v3

    #@16d
    const-string/jumbo v4, " ms"

    #@170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v3

    #@174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v3

    #@178
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@17b
    goto/16 :goto_0

    #@17d
    .line 1297
    .end local v11    # "durationMillis":I
    .end local v16    # "rc":I
    .restart local v6    # "options":Landroid/os/Bundle;
    :catch_0
    move-exception v14

    #@17e
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method
