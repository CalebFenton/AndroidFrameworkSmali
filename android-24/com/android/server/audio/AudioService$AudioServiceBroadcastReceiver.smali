.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 5212
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 5215
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    .line 5220
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    #@7
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_3

    #@d
    .line 5221
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@10
    .line 5222
    const/4 v2, 0x0

    #@11
    .line 5221
    move-object/from16 v0, p2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v13

    #@17
    .line 5224
    .local v13, "dockState":I
    packed-switch v13, :pswitch_data_0

    #@1a
    .line 5239
    const/4 v12, 0x0

    #@1b
    .line 5243
    .local v12, "config":I
    :goto_0
    const/4 v1, 0x3

    #@1c
    if-eq v13, v1, :cond_1

    #@1e
    .line 5244
    if-nez v13, :cond_0

    #@20
    .line 5245
    move-object/from16 v0, p0

    #@22
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@24
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)I

    #@27
    move-result v1

    #@28
    const/4 v2, 0x3

    #@29
    if-eq v1, v2, :cond_1

    #@2b
    .line 5246
    :cond_0
    const/4 v1, 0x3

    #@2c
    invoke-static {v1, v12}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@2f
    .line 5248
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@33
    invoke-static {v1, v13}, Lcom/android/server/audio/AudioService;->-set5(Lcom/android/server/audio/AudioService;I)I

    #@36
    .line 5214
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_2
    :goto_1
    return-void

    #@37
    .line 5226
    .restart local v13    # "dockState":I
    :pswitch_0
    const/4 v12, 0x7

    #@38
    .line 5227
    .restart local v12    # "config":I
    goto :goto_0

    #@39
    .line 5229
    .end local v12    # "config":I
    :pswitch_1
    const/4 v12, 0x6

    #@3a
    .line 5230
    .restart local v12    # "config":I
    goto :goto_0

    #@3b
    .line 5232
    .end local v12    # "config":I
    :pswitch_2
    const/16 v12, 0x8

    #@3d
    .line 5233
    .restart local v12    # "config":I
    goto :goto_0

    #@3e
    .line 5235
    .end local v12    # "config":I
    :pswitch_3
    const/16 v12, 0x9

    #@40
    .line 5236
    .restart local v12    # "config":I
    goto :goto_0

    #@41
    .line 5249
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_3
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    #@44
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 5250
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    #@4d
    .line 5251
    const/4 v2, 0x0

    #@4e
    .line 5250
    move-object/from16 v0, p2

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@53
    move-result v16

    #@54
    .line 5252
    .local v16, "state":I
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5c
    move-result-object v10

    #@5d
    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    #@5f
    .line 5254
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    #@61
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@63
    move/from16 v0, v16

    #@65
    invoke-virtual {v1, v10, v0}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@68
    goto :goto_1

    #@69
    .line 5255
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v16    # "state":I
    :cond_4
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    #@6c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_a

    #@72
    .line 5256
    const/4 v9, 0x0

    #@73
    .line 5257
    .local v9, "broadcast":Z
    const/4 v15, -0x1

    #@74
    .line 5258
    .local v15, "scoAudioState":I
    move-object/from16 v0, p0

    #@76
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@78
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@7b
    move-result-object v2

    #@7c
    monitor-enter v2

    #@7d
    .line 5259
    :try_start_0
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    #@80
    const/4 v3, -0x1

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@86
    move-result v11

    #@87
    .line 5261
    .local v11, "btState":I
    move-object/from16 v0, p0

    #@89
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@8b
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@92
    move-result v1

    #@93
    if-nez v1, :cond_6

    #@95
    .line 5262
    move-object/from16 v0, p0

    #@97
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@99
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@9c
    move-result v1

    #@9d
    const/4 v3, 0x3

    #@9e
    if-eq v1, v3, :cond_5

    #@a0
    .line 5263
    move-object/from16 v0, p0

    #@a2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@a4
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a7
    move-result v1

    #@a8
    const/4 v3, 0x1

    #@a9
    if-ne v1, v3, :cond_9

    #@ab
    .line 5265
    :cond_5
    :goto_2
    const/4 v9, 0x1

    #@ac
    .line 5267
    :cond_6
    packed-switch v11, :pswitch_data_1

    #@af
    .line 5289
    :cond_7
    :goto_3
    const/4 v9, 0x0

    #@b0
    :cond_8
    :goto_4
    monitor-exit v2

    #@b1
    .line 5293
    if-eqz v9, :cond_2

    #@b3
    .line 5294
    move-object/from16 v0, p0

    #@b5
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@b7
    invoke-static {v1, v15}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;I)V

    #@ba
    .line 5297
    new-instance v14, Landroid/content/Intent;

    #@bc
    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    #@bf
    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c2
    .line 5298
    .local v14, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    #@c5
    invoke-virtual {v14, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c8
    .line 5299
    move-object/from16 v0, p0

    #@ca
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@cc
    invoke-static {v1, v14}, Lcom/android/server/audio/AudioService;->-wrap36(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@cf
    goto/16 :goto_1

    #@d1
    .line 5264
    .end local v14    # "newIntent":Landroid/content/Intent;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    #@d3
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@d5
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@d8
    move-result v1

    #@d9
    const/4 v3, 0x5

    #@da
    if-ne v1, v3, :cond_6

    #@dc
    goto :goto_2

    #@dd
    .line 5269
    :pswitch_4
    const/4 v15, 0x1

    #@de
    .line 5270
    move-object/from16 v0, p0

    #@e0
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@e2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@e5
    move-result v1

    #@e6
    const/4 v3, 0x3

    #@e7
    if-eq v1, v3, :cond_8

    #@e9
    .line 5271
    move-object/from16 v0, p0

    #@eb
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@ed
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@f0
    move-result v1

    #@f1
    const/4 v3, 0x5

    #@f2
    if-eq v1, v3, :cond_8

    #@f4
    .line 5272
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@f8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@fb
    move-result v1

    #@fc
    const/4 v3, 0x4

    #@fd
    if-eq v1, v3, :cond_8

    #@ff
    .line 5273
    move-object/from16 v0, p0

    #@101
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@103
    const/4 v3, 0x2

    #@104
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@107
    goto :goto_4

    #@108
    .line 5258
    .end local v11    # "btState":I
    :catchall_0
    move-exception v1

    #@109
    monitor-exit v2

    #@10a
    throw v1

    #@10b
    .line 5277
    .restart local v11    # "btState":I
    :pswitch_5
    const/4 v15, 0x0

    #@10c
    .line 5278
    :try_start_2
    move-object/from16 v0, p0

    #@10e
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@110
    const/4 v3, 0x0

    #@111
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    #@114
    .line 5279
    move-object/from16 v0, p0

    #@116
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@118
    const/4 v3, 0x0

    #@119
    const/4 v4, 0x0

    #@11a
    invoke-virtual {v1, v3, v4}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    #@11d
    goto :goto_4

    #@11e
    .line 5282
    :pswitch_6
    move-object/from16 v0, p0

    #@120
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@122
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@125
    move-result v1

    #@126
    const/4 v3, 0x3

    #@127
    if-eq v1, v3, :cond_7

    #@129
    .line 5283
    move-object/from16 v0, p0

    #@12b
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@12d
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@130
    move-result v1

    #@131
    const/4 v3, 0x5

    #@132
    if-eq v1, v3, :cond_7

    #@134
    .line 5284
    move-object/from16 v0, p0

    #@136
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@138
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@13b
    move-result v1

    #@13c
    const/4 v3, 0x4

    #@13d
    if-eq v1, v3, :cond_7

    #@13f
    .line 5285
    move-object/from16 v0, p0

    #@141
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@143
    const/4 v3, 0x2

    #@144
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@147
    goto/16 :goto_3

    #@149
    .line 5301
    .end local v9    # "broadcast":Z
    .end local v11    # "btState":I
    .end local v15    # "scoAudioState":I
    :cond_a
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@14c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14f
    move-result v1

    #@150
    if-eqz v1, :cond_c

    #@152
    .line 5302
    move-object/from16 v0, p0

    #@154
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@156
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Z

    #@159
    move-result v1

    #@15a
    if-eqz v1, :cond_b

    #@15c
    .line 5303
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    #@15f
    .line 5305
    :cond_b
    const-string/jumbo v1, "screen_state=on"

    #@162
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@165
    goto/16 :goto_1

    #@167
    .line 5306
    :cond_c
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@16a
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16d
    move-result v1

    #@16e
    if-eqz v1, :cond_e

    #@170
    .line 5307
    move-object/from16 v0, p0

    #@172
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@174
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Z

    #@177
    move-result v1

    #@178
    if-eqz v1, :cond_d

    #@17a
    .line 5309
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    #@17d
    .line 5311
    :cond_d
    const-string/jumbo v1, "screen_state=off"

    #@180
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@183
    goto/16 :goto_1

    #@185
    .line 5312
    :cond_e
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@188
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18b
    move-result v1

    #@18c
    if-eqz v1, :cond_f

    #@18e
    .line 5313
    move-object/from16 v0, p0

    #@190
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@192
    move-object/from16 v0, p1

    #@194
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    #@197
    goto/16 :goto_1

    #@199
    .line 5314
    :cond_f
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@19c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19f
    move-result v1

    #@1a0
    if-eqz v1, :cond_11

    #@1a2
    .line 5315
    move-object/from16 v0, p0

    #@1a4
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1a6
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)Z

    #@1a9
    move-result v1

    #@1aa
    if-eqz v1, :cond_10

    #@1ac
    .line 5318
    move-object/from16 v0, p0

    #@1ae
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1b0
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@1b3
    move-result-object v1

    #@1b4
    .line 5319
    const/16 v2, 0xf

    #@1b6
    .line 5320
    const/4 v3, 0x0

    #@1b7
    .line 5321
    const/4 v4, 0x0

    #@1b8
    .line 5322
    const/4 v5, 0x0

    #@1b9
    .line 5323
    const/4 v6, 0x0

    #@1ba
    .line 5324
    const/4 v7, 0x0

    #@1bb
    .line 5318
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1be
    .line 5326
    :cond_10
    move-object/from16 v0, p0

    #@1c0
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1c2
    const/4 v2, 0x1

    #@1c3
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Z)Z

    #@1c6
    .line 5328
    move-object/from16 v0, p0

    #@1c8
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1ca
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get23(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    #@1cd
    move-result-object v1

    #@1ce
    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    #@1d1
    .line 5331
    move-object/from16 v0, p0

    #@1d3
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1d5
    const/4 v2, 0x1

    #@1d6
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Z)V

    #@1d9
    .line 5333
    move-object/from16 v0, p0

    #@1db
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1dd
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@1e0
    move-result-object v1

    #@1e1
    .line 5338
    move-object/from16 v0, p0

    #@1e3
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1e5
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1e8
    move-result-object v2

    #@1e9
    const/4 v3, 0x3

    #@1ea
    aget-object v6, v2, v3

    #@1ec
    .line 5334
    const/16 v2, 0xa

    #@1ee
    .line 5335
    const/4 v3, 0x2

    #@1ef
    .line 5336
    const/4 v4, 0x0

    #@1f0
    .line 5337
    const/4 v5, 0x0

    #@1f1
    .line 5338
    const/4 v7, 0x0

    #@1f2
    .line 5333
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1f5
    goto/16 :goto_1

    #@1f7
    .line 5339
    :cond_11
    const-string/jumbo v1, "android.intent.action.USER_BACKGROUND"

    #@1fa
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fd
    move-result v1

    #@1fe
    if-eqz v1, :cond_13

    #@200
    .line 5341
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@203
    const/4 v2, -0x1

    #@204
    move-object/from16 v0, p2

    #@206
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@209
    move-result v17

    #@20a
    .line 5342
    .local v17, "userId":I
    if-ltz v17, :cond_12

    #@20c
    .line 5344
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@20f
    move-result-object v1

    #@210
    move/from16 v0, v17

    #@212
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@215
    move-result-object v18

    #@216
    .line 5345
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@218
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@21a
    move-object/from16 v0, v18

    #@21c
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap16(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    #@21f
    .line 5347
    .end local v18    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_12
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@222
    move-result-object v1

    #@223
    .line 5348
    const-string/jumbo v2, "no_record_audio"

    #@226
    const/4 v3, 0x1

    #@227
    .line 5347
    move/from16 v0, v17

    #@229
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    #@22c
    goto/16 :goto_1

    #@22e
    .line 5349
    .end local v17    # "userId":I
    :cond_13
    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    #@231
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v1

    #@235
    if-eqz v1, :cond_14

    #@237
    .line 5351
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@23a
    const/4 v2, -0x1

    #@23b
    move-object/from16 v0, p2

    #@23d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@240
    move-result v17

    #@241
    .line 5352
    .restart local v17    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@244
    move-result-object v1

    #@245
    .line 5353
    const-string/jumbo v2, "no_record_audio"

    #@248
    const/4 v3, 0x0

    #@249
    .line 5352
    move/from16 v0, v17

    #@24b
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    #@24e
    goto/16 :goto_1

    #@250
    .line 5354
    .end local v17    # "userId":I
    :cond_14
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    #@253
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@256
    move-result v1

    #@257
    if-eqz v1, :cond_2

    #@259
    .line 5355
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    #@25c
    const/4 v2, -0x1

    #@25d
    move-object/from16 v0, p2

    #@25f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@262
    move-result v16

    #@263
    .line 5356
    .restart local v16    # "state":I
    const/16 v1, 0xa

    #@265
    move/from16 v0, v16

    #@267
    if-eq v0, v1, :cond_15

    #@269
    .line 5357
    const/16 v1, 0xd

    #@26b
    move/from16 v0, v16

    #@26d
    if-ne v0, v1, :cond_2

    #@26f
    .line 5358
    :cond_15
    move-object/from16 v0, p0

    #@271
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@273
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    #@276
    goto/16 :goto_1

    #@278
    .line 5224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@284
    .line 5267
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
