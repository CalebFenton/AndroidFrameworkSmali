.class Lcom/android/server/audio/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 3116
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 17
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    #@0
    .prologue
    .line 3120
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3117
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    return-void

    #@4
    .line 3122
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_0
    move-object/from16 v0, p0

    #@6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@b
    move-result-object v8

    #@c
    monitor-enter v8

    #@d
    .line 3123
    :try_start_0
    move-object/from16 v0, p0

    #@f
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@11
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get5(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@14
    move-result-object v9

    #@15
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    .line 3124
    :try_start_1
    move-object/from16 v0, p0

    #@18
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1a
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    #@1c
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    #@1e
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set0(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    #@21
    .line 3125
    move-object/from16 v0, p0

    #@23
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@25
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get4(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    #@2c
    move-result-object v15

    #@2d
    .line 3126
    .local v15, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@30
    move-result v1

    #@31
    if-lez v1, :cond_1

    #@33
    .line 3127
    const/4 v1, 0x0

    #@34
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    #@3a
    .line 3128
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    #@3c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@3e
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get4(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@45
    move-result v4

    #@46
    .line 3129
    .local v4, "state":I
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@4a
    .line 3131
    const/4 v1, 0x2

    #@4b
    if-ne v4, v1, :cond_2

    #@4d
    const/4 v1, 0x1

    #@4e
    .line 3130
    :goto_1
    const/16 v3, 0x80

    #@50
    .line 3129
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/AudioService;->-wrap3(Lcom/android/server/audio/AudioService;II)I

    #@53
    move-result v7

    #@54
    .line 3132
    .local v7, "delay":I
    move-object/from16 v0, p0

    #@56
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@58
    move-object/from16 v0, p0

    #@5a
    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@5c
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@5f
    move-result-object v2

    #@60
    .line 3133
    const/16 v3, 0x66

    #@62
    .line 3135
    const/4 v5, 0x0

    #@63
    .line 3132
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "delay":I
    :cond_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@67
    monitor-exit v8

    #@68
    goto :goto_0

    #@69
    .line 3131
    .restart local v4    # "state":I
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v1, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 3123
    .end local v4    # "state":I
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    #@6c
    :try_start_3
    monitor-exit v9

    #@6d
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6e
    .line 3122
    :catchall_1
    move-exception v1

    #@6f
    monitor-exit v8

    #@70
    throw v1

    #@71
    .line 3144
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_1
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    #@74
    move-result-object v15

    #@75
    .line 3145
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@78
    move-result v1

    #@79
    if-lez v1, :cond_0

    #@7b
    .line 3146
    const/4 v1, 0x0

    #@7c
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v6

    #@80
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    #@82
    .line 3147
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    #@84
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@86
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@89
    move-result-object v2

    #@8a
    monitor-enter v2

    #@8b
    .line 3148
    :try_start_4
    move-object/from16 v0, p2

    #@8d
    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@90
    move-result v4

    #@91
    .line 3149
    .restart local v4    # "state":I
    move-object/from16 v0, p0

    #@93
    iget-object v8, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@95
    move-object/from16 v0, p0

    #@97
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@99
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@9c
    move-result-object v9

    #@9d
    .line 3150
    const/16 v10, 0x65

    #@9f
    .line 3152
    const/4 v12, 0x0

    #@a0
    .line 3154
    const/4 v14, 0x0

    #@a1
    move v11, v4

    #@a2
    move-object v13, v6

    #@a3
    .line 3149
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@a6
    monitor-exit v2

    #@a7
    goto/16 :goto_0

    #@a9
    .line 3147
    .end local v4    # "state":I
    :catchall_2
    move-exception v1

    #@aa
    monitor-exit v2

    #@ab
    throw v1

    #@ac
    .line 3160
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    move-object/from16 v0, p0

    #@ae
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@b0
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@b3
    move-result-object v2

    #@b4
    monitor-enter v2

    #@b5
    .line 3162
    :try_start_5
    move-object/from16 v0, p0

    #@b7
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@b9
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@bc
    move-result-object v1

    #@bd
    const/16 v3, 0x9

    #@bf
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    #@c2
    .line 3163
    move-object/from16 v0, p0

    #@c4
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@c6
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    #@c8
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    move-object/from16 v0, p2

    #@ca
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set3(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    #@cd
    .line 3164
    move-object/from16 v0, p0

    #@cf
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@d1
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@d4
    move-result-object v1

    #@d5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    #@d8
    move-result-object v15

    #@d9
    .line 3165
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@dc
    move-result v1

    #@dd
    if-lez v1, :cond_6

    #@df
    .line 3166
    move-object/from16 v0, p0

    #@e1
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@e3
    const/4 v1, 0x0

    #@e4
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e7
    move-result-object v1

    #@e8
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #@ea
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->-set4(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    #@ed
    .line 3171
    :goto_2
    move-object/from16 v0, p0

    #@ef
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@f1
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap13(Lcom/android/server/audio/AudioService;)V

    #@f4
    .line 3173
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@f8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@fb
    move-result v1

    #@fc
    const/4 v3, 0x1

    #@fd
    if-eq v1, v3, :cond_3

    #@ff
    .line 3174
    move-object/from16 v0, p0

    #@101
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@103
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@106
    move-result v1

    #@107
    const/4 v3, 0x5

    #@108
    if-ne v1, v3, :cond_7

    #@10a
    .line 3176
    :cond_3
    :goto_3
    const/16 v16, 0x0

    #@10c
    .line 3177
    .local v16, "status":Z
    move-object/from16 v0, p0

    #@10e
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@110
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@113
    move-result-object v1

    #@114
    if-eqz v1, :cond_4

    #@116
    .line 3178
    move-object/from16 v0, p0

    #@118
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@11a
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@11d
    move-result v1

    #@11e
    packed-switch v1, :pswitch_data_0

    #@121
    .line 3207
    .end local v16    # "status":Z
    :cond_4
    :goto_4
    :pswitch_0
    if-nez v16, :cond_5

    #@123
    .line 3208
    move-object/from16 v0, p0

    #@125
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@127
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@12a
    move-result-object v8

    #@12b
    const/16 v9, 0x9

    #@12d
    .line 3209
    const/4 v10, 0x0

    #@12e
    const/4 v11, 0x0

    #@12f
    const/4 v12, 0x0

    #@130
    const/4 v13, 0x0

    #@131
    const/4 v14, 0x0

    #@132
    .line 3208
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@135
    :cond_5
    monitor-exit v2

    #@136
    goto/16 :goto_0

    #@138
    .line 3168
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    #@13a
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@13c
    const/4 v3, 0x0

    #@13d
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set4(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@140
    goto :goto_2

    #@141
    .line 3160
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_3
    move-exception v1

    #@142
    monitor-exit v2

    #@143
    throw v1

    #@144
    .line 3175
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    #@146
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@148
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)I

    #@14b
    move-result v1

    #@14c
    const/4 v3, 0x4

    #@14d
    if-ne v1, v3, :cond_5

    #@14f
    goto :goto_3

    #@150
    .line 3180
    .restart local v16    # "status":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@152
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@154
    const/4 v3, 0x3

    #@155
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    #@158
    .line 3181
    move-object/from16 v0, p0

    #@15a
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@15c
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)I

    #@15f
    move-result v1

    #@160
    const/4 v3, 0x1

    #@161
    if-ne v1, v3, :cond_8

    #@163
    .line 3182
    move-object/from16 v0, p0

    #@165
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@167
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@16a
    move-result-object v1

    #@16b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    #@16e
    move-result v16

    #@16f
    .local v16, "status":Z
    goto :goto_4

    #@170
    .line 3183
    .local v16, "status":Z
    :cond_8
    move-object/from16 v0, p0

    #@172
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@174
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)I

    #@177
    move-result v1

    #@178
    if-nez v1, :cond_9

    #@17a
    .line 3184
    move-object/from16 v0, p0

    #@17c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@17e
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@181
    move-result-object v1

    #@182
    .line 3185
    move-object/from16 v0, p0

    #@184
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@186
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@189
    move-result-object v3

    #@18a
    .line 3184
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@18d
    move-result v16

    #@18e
    .local v16, "status":Z
    goto :goto_4

    #@18f
    .line 3186
    .local v16, "status":Z
    :cond_9
    move-object/from16 v0, p0

    #@191
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@193
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)I

    #@196
    move-result v1

    #@197
    const/4 v3, 0x2

    #@198
    if-ne v1, v3, :cond_4

    #@19a
    .line 3187
    move-object/from16 v0, p0

    #@19c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@19e
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1a1
    move-result-object v1

    #@1a2
    .line 3188
    move-object/from16 v0, p0

    #@1a4
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1a6
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@1a9
    move-result-object v3

    #@1aa
    .line 3187
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@1ad
    move-result v16

    #@1ae
    .local v16, "status":Z
    goto/16 :goto_4

    #@1b0
    .line 3192
    .local v16, "status":Z
    :pswitch_2
    move-object/from16 v0, p0

    #@1b2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1b4
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)I

    #@1b7
    move-result v1

    #@1b8
    const/4 v3, 0x1

    #@1b9
    if-ne v1, v3, :cond_a

    #@1bb
    .line 3193
    move-object/from16 v0, p0

    #@1bd
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1bf
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1c2
    move-result-object v1

    #@1c3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    #@1c6
    move-result v16

    #@1c7
    .local v16, "status":Z
    goto/16 :goto_4

    #@1c9
    .line 3194
    .local v16, "status":Z
    :cond_a
    move-object/from16 v0, p0

    #@1cb
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1cd
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)I

    #@1d0
    move-result v1

    #@1d1
    if-nez v1, :cond_b

    #@1d3
    .line 3195
    move-object/from16 v0, p0

    #@1d5
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1d7
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1da
    move-result-object v1

    #@1db
    .line 3196
    move-object/from16 v0, p0

    #@1dd
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1df
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@1e2
    move-result-object v3

    #@1e3
    .line 3195
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@1e6
    move-result v16

    #@1e7
    .local v16, "status":Z
    goto/16 :goto_4

    #@1e9
    .line 3197
    .local v16, "status":Z
    :cond_b
    move-object/from16 v0, p0

    #@1eb
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1ed
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)I

    #@1f0
    move-result v1

    #@1f1
    const/4 v3, 0x2

    #@1f2
    if-ne v1, v3, :cond_4

    #@1f4
    .line 3198
    move-object/from16 v0, p0

    #@1f6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1f8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1fb
    move-result-object v1

    #@1fc
    .line 3199
    move-object/from16 v0, p0

    #@1fe
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@200
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@203
    move-result-object v3

    #@204
    .line 3198
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@207
    move-result v16

    #@208
    .local v16, "status":Z
    goto/16 :goto_4

    #@20a
    .line 3203
    .local v16, "status":Z
    :pswitch_3
    move-object/from16 v0, p0

    #@20c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@20e
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@211
    move-result-object v1

    #@212
    .line 3204
    move-object/from16 v0, p0

    #@214
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@216
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@219
    move-result-object v3

    #@21a
    .line 3203
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@21d
    move-result v16

    #@21e
    .local v16, "status":Z
    goto/16 :goto_4

    #@220
    .line 3120
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch

    #@22e
    .line 3178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    #@0
    .prologue
    .line 3221
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3219
    :goto_0
    return-void

    #@4
    .line 3223
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@6
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    #@9
    goto :goto_0

    #@a
    .line 3227
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@c
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    #@f
    goto :goto_0

    #@10
    .line 3231
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@12
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    #@15
    goto :goto_0

    #@16
    .line 3221
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
