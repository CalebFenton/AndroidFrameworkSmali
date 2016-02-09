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
    .line 4976
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
    .line 4979
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    .line 4984
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    #@7
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_3

    #@d
    .line 4985
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@10
    .line 4986
    const/4 v2, 0x0

    #@11
    .line 4985
    move-object/from16 v0, p2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v13

    #@17
    .line 4988
    .local v13, "dockState":I
    packed-switch v13, :pswitch_data_0

    #@1a
    .line 5003
    const/4 v12, 0x0

    #@1b
    .line 5007
    .local v12, "config":I
    :goto_0
    const/4 v1, 0x3

    #@1c
    if-eq v13, v1, :cond_1

    #@1e
    .line 5008
    if-nez v13, :cond_0

    #@20
    .line 5009
    move-object/from16 v0, p0

    #@22
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@24
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)I

    #@27
    move-result v1

    #@28
    const/4 v2, 0x3

    #@29
    if-eq v1, v2, :cond_1

    #@2b
    .line 5010
    :cond_0
    const/4 v1, 0x3

    #@2c
    invoke-static {v1, v12}, Landroid/media/AudioSystem;->setForceUse(II)I

    #@2f
    .line 5012
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@33
    invoke-static {v1, v13}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;I)I

    #@36
    .line 4978
    .end local v12    # "config":I
    .end local v13    # "dockState":I
    :cond_2
    :goto_1
    return-void

    #@37
    .line 4990
    .restart local v13    # "dockState":I
    :pswitch_0
    const/4 v12, 0x7

    #@38
    .line 4991
    .restart local v12    # "config":I
    goto :goto_0

    #@39
    .line 4993
    .end local v12    # "config":I
    :pswitch_1
    const/4 v12, 0x6

    #@3a
    .line 4994
    .restart local v12    # "config":I
    goto :goto_0

    #@3b
    .line 4996
    .end local v12    # "config":I
    :pswitch_2
    const/16 v12, 0x8

    #@3d
    .line 4997
    .restart local v12    # "config":I
    goto :goto_0

    #@3e
    .line 4999
    .end local v12    # "config":I
    :pswitch_3
    const/16 v12, 0x9

    #@40
    .line 5000
    .restart local v12    # "config":I
    goto :goto_0

    #@41
    .line 5013
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
    .line 5014
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    #@4d
    .line 5015
    const/4 v2, 0x0

    #@4e
    .line 5014
    move-object/from16 v0, p2

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@53
    move-result v16

    #@54
    .line 5016
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
    .line 5018
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
    .line 5019
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
    .line 5020
    const/4 v9, 0x0

    #@73
    .line 5021
    .local v9, "broadcast":Z
    const/4 v15, -0x1

    #@74
    .line 5022
    .local v15, "scoAudioState":I
    move-object/from16 v0, p0

    #@76
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@78
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@7b
    move-result-object v2

    #@7c
    monitor-enter v2

    #@7d
    .line 5023
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
    .line 5025
    .local v11, "btState":I
    move-object/from16 v0, p0

    #@89
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@8b
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@92
    move-result v1

    #@93
    if-nez v1, :cond_6

    #@95
    .line 5026
    move-object/from16 v0, p0

    #@97
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@99
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@9c
    move-result v1

    #@9d
    const/4 v3, 0x3

    #@9e
    if-eq v1, v3, :cond_5

    #@a0
    .line 5027
    move-object/from16 v0, p0

    #@a2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@a4
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a7
    move-result v1

    #@a8
    const/4 v3, 0x1

    #@a9
    if-ne v1, v3, :cond_9

    #@ab
    .line 5029
    :cond_5
    :goto_2
    const/4 v9, 0x1

    #@ac
    .line 5031
    :cond_6
    packed-switch v11, :pswitch_data_1

    #@af
    .line 5053
    :cond_7
    :goto_3
    const/4 v9, 0x0

    #@b0
    :cond_8
    :goto_4
    monitor-exit v2

    #@b1
    .line 5057
    if-eqz v9, :cond_2

    #@b3
    .line 5058
    move-object/from16 v0, p0

    #@b5
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@b7
    invoke-static {v1, v15}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V

    #@ba
    .line 5061
    new-instance v14, Landroid/content/Intent;

    #@bc
    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    #@bf
    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c2
    .line 5062
    .local v14, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    #@c5
    invoke-virtual {v14, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c8
    .line 5063
    move-object/from16 v0, p0

    #@ca
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@cc
    invoke-static {v1, v14}, Lcom/android/server/audio/AudioService;->-wrap36(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@cf
    goto/16 :goto_1

    #@d1
    .line 5028
    .end local v14    # "newIntent":Landroid/content/Intent;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    #@d3
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@d5
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@d8
    move-result v1

    #@d9
    const/4 v3, 0x5

    #@da
    if-ne v1, v3, :cond_6

    #@dc
    goto :goto_2

    #@dd
    .line 5033
    :pswitch_4
    const/4 v15, 0x1

    #@de
    .line 5034
    move-object/from16 v0, p0

    #@e0
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@e2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@e5
    move-result v1

    #@e6
    const/4 v3, 0x3

    #@e7
    if-eq v1, v3, :cond_8

    #@e9
    .line 5035
    move-object/from16 v0, p0

    #@eb
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@ed
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@f0
    move-result v1

    #@f1
    const/4 v3, 0x5

    #@f2
    if-eq v1, v3, :cond_8

    #@f4
    .line 5036
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@f8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@fb
    move-result v1

    #@fc
    const/4 v3, 0x4

    #@fd
    if-eq v1, v3, :cond_8

    #@ff
    .line 5037
    move-object/from16 v0, p0

    #@101
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@103
    const/4 v3, 0x2

    #@104
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@107
    goto :goto_4

    #@108
    .line 5022
    .end local v11    # "btState":I
    :catchall_0
    move-exception v1

    #@109
    monitor-exit v2

    #@10a
    throw v1

    #@10b
    .line 5041
    .restart local v11    # "btState":I
    :pswitch_5
    const/4 v15, 0x0

    #@10c
    .line 5042
    :try_start_2
    move-object/from16 v0, p0

    #@10e
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@110
    const/4 v3, 0x0

    #@111
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@114
    .line 5043
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
    .line 5046
    :pswitch_6
    move-object/from16 v0, p0

    #@120
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@122
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@125
    move-result v1

    #@126
    const/4 v3, 0x3

    #@127
    if-eq v1, v3, :cond_7

    #@129
    .line 5047
    move-object/from16 v0, p0

    #@12b
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@12d
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@130
    move-result v1

    #@131
    const/4 v3, 0x5

    #@132
    if-eq v1, v3, :cond_7

    #@134
    .line 5048
    move-object/from16 v0, p0

    #@136
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@138
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@13b
    move-result v1

    #@13c
    const/4 v3, 0x4

    #@13d
    if-eq v1, v3, :cond_7

    #@13f
    .line 5049
    move-object/from16 v0, p0

    #@141
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@143
    const/4 v3, 0x2

    #@144
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@147
    goto/16 :goto_3

    #@149
    .line 5065
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
    .line 5066
    move-object/from16 v0, p0

    #@154
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@156
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Z

    #@159
    move-result v1

    #@15a
    if-eqz v1, :cond_b

    #@15c
    .line 5067
    move-object/from16 v0, p0

    #@15e
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@160
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@163
    move-result-object v1

    #@164
    const/4 v2, 0x0

    #@165
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->onOrientationChanged(I)V

    #@168
    .line 5068
    move-object/from16 v0, p0

    #@16a
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@16c
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@16f
    move-result-object v1

    #@170
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->enable()V

    #@173
    .line 5070
    :cond_b
    const-string/jumbo v1, "screen_state=on"

    #@176
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@179
    goto/16 :goto_1

    #@17b
    .line 5071
    :cond_c
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@17e
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@181
    move-result v1

    #@182
    if-eqz v1, :cond_e

    #@184
    .line 5072
    move-object/from16 v0, p0

    #@186
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@188
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Z

    #@18b
    move-result v1

    #@18c
    if-eqz v1, :cond_d

    #@18e
    .line 5074
    move-object/from16 v0, p0

    #@190
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@192
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioOrientationEventListener;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioOrientationEventListener;->disable()V

    #@199
    .line 5076
    :cond_d
    const-string/jumbo v1, "screen_state=off"

    #@19c
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    #@19f
    goto/16 :goto_1

    #@1a1
    .line 5077
    :cond_e
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@1a4
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v1

    #@1a8
    if-eqz v1, :cond_f

    #@1aa
    .line 5078
    move-object/from16 v0, p0

    #@1ac
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1ae
    move-object/from16 v0, p1

    #@1b0
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap14(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    #@1b3
    goto/16 :goto_1

    #@1b5
    .line 5079
    :cond_f
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@1b8
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bb
    move-result v1

    #@1bc
    if-eqz v1, :cond_10

    #@1be
    .line 5081
    move-object/from16 v0, p0

    #@1c0
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1c2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@1c5
    move-result-object v1

    #@1c6
    .line 5082
    const/16 v2, 0xf

    #@1c8
    .line 5083
    const/4 v3, 0x0

    #@1c9
    .line 5084
    const/4 v4, 0x0

    #@1ca
    .line 5085
    const/4 v5, 0x0

    #@1cb
    .line 5086
    const/4 v6, 0x0

    #@1cc
    .line 5087
    const/4 v7, 0x0

    #@1cd
    .line 5081
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1d0
    .line 5089
    move-object/from16 v0, p0

    #@1d2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1d4
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get24(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    #@1d7
    move-result-object v1

    #@1d8
    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    #@1db
    .line 5092
    move-object/from16 v0, p0

    #@1dd
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1df
    const/4 v2, 0x1

    #@1e0
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-wrap31(Lcom/android/server/audio/AudioService;Z)V

    #@1e3
    .line 5094
    move-object/from16 v0, p0

    #@1e5
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1e7
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@1ea
    move-result-object v1

    #@1eb
    .line 5099
    move-object/from16 v0, p0

    #@1ed
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@1ef
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1f2
    move-result-object v2

    #@1f3
    const/4 v3, 0x3

    #@1f4
    aget-object v6, v2, v3

    #@1f6
    .line 5095
    const/16 v2, 0xa

    #@1f8
    .line 5096
    const/4 v3, 0x2

    #@1f9
    .line 5097
    const/4 v4, 0x0

    #@1fa
    .line 5098
    const/4 v5, 0x0

    #@1fb
    .line 5099
    const/4 v7, 0x0

    #@1fc
    .line 5094
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1ff
    goto/16 :goto_1

    #@201
    .line 5100
    :cond_10
    const-string/jumbo v1, "android.intent.action.USER_BACKGROUND"

    #@204
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@207
    move-result v1

    #@208
    if-eqz v1, :cond_12

    #@20a
    .line 5102
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@20d
    const/4 v2, -0x1

    #@20e
    move-object/from16 v0, p2

    #@210
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@213
    move-result v17

    #@214
    .line 5103
    .local v17, "userId":I
    if-ltz v17, :cond_11

    #@216
    .line 5105
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@219
    move-result-object v1

    #@21a
    move/from16 v0, v17

    #@21c
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@21f
    move-result-object v18

    #@220
    .line 5106
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@222
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    #@224
    move-object/from16 v0, v18

    #@226
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    #@229
    .line 5108
    .end local v18    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_11
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@22c
    move-result-object v1

    #@22d
    .line 5109
    const-string/jumbo v2, "no_record_audio"

    #@230
    const/4 v3, 0x1

    #@231
    .line 5108
    move/from16 v0, v17

    #@233
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    #@236
    goto/16 :goto_1

    #@238
    .line 5110
    .end local v17    # "userId":I
    :cond_12
    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    #@23b
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23e
    move-result v1

    #@23f
    if-eqz v1, :cond_2

    #@241
    .line 5112
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@244
    const/4 v2, -0x1

    #@245
    move-object/from16 v0, p2

    #@247
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@24a
    move-result v17

    #@24b
    .line 5113
    .restart local v17    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@24e
    move-result-object v1

    #@24f
    .line 5114
    const-string/jumbo v2, "no_record_audio"

    #@252
    const/4 v3, 0x0

    #@253
    .line 5113
    move/from16 v0, v17

    #@255
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    #@258
    goto/16 :goto_1

    #@25a
    .line 4988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@266
    .line 5031
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
