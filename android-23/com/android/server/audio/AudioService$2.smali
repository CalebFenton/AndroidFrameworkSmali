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
    .line 2957
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
    .line 2961
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2958
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_0
    :goto_0
    return-void

    #@4
    .line 2963
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
    .line 2964
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
    .line 2965
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
    .line 2966
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
    .line 2967
    .local v15, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@30
    move-result v1

    #@31
    if-lez v1, :cond_1

    #@33
    .line 2968
    const/4 v1, 0x0

    #@34
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    #@3a
    .line 2969
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
    .line 2970
    .local v4, "state":I
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@4a
    .line 2972
    const/4 v1, 0x2

    #@4b
    if-ne v4, v1, :cond_2

    #@4d
    const/4 v1, 0x1

    #@4e
    .line 2971
    :goto_1
    const/16 v3, 0x80

    #@50
    .line 2970
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/AudioService;->-wrap3(Lcom/android/server/audio/AudioService;II)I

    #@53
    move-result v7

    #@54
    .line 2973
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
    .line 2974
    const/16 v3, 0x66

    #@62
    .line 2976
    const/4 v5, 0x0

    #@63
    .line 2973
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
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
    .line 2972
    .restart local v4    # "state":I
    .restart local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v1, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 2964
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
    .line 2963
    :catchall_1
    move-exception v1

    #@6f
    monitor-exit v8

    #@70
    throw v1

    #@71
    .line 2985
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :sswitch_1
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    #@74
    move-result-object v15

    #@75
    .line 2986
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@78
    move-result v1

    #@79
    if-lez v1, :cond_0

    #@7b
    .line 2987
    const/4 v1, 0x0

    #@7c
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v6

    #@80
    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    #@82
    .line 2988
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
    .line 2989
    :try_start_4
    move-object/from16 v0, p2

    #@8d
    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@90
    move-result v4

    #@91
    .line 2990
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
    .line 2991
    const/16 v10, 0x65

    #@9f
    .line 2993
    const/4 v12, 0x0

    #@a0
    .line 2995
    const/4 v14, 0x0

    #@a1
    move v11, v4

    #@a2
    move-object v13, v6

    #@a3
    .line 2990
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@a6
    monitor-exit v2

    #@a7
    goto/16 :goto_0

    #@a9
    .line 2988
    .end local v4    # "state":I
    :catchall_2
    move-exception v1

    #@aa
    monitor-exit v2

    #@ab
    throw v1

    #@ac
    .line 3001
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    move-object/from16 v0, p0

    #@ae
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@b0
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@b3
    move-result-object v2

    #@b4
    monitor-enter v2

    #@b5
    .line 3003
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
    .line 3004
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
    .line 3005
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
    .line 3006
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@dc
    move-result v1

    #@dd
    if-lez v1, :cond_6

    #@df
    .line 3007
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
    .line 3012
    :goto_2
    move-object/from16 v0, p0

    #@ef
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@f1
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;)V

    #@f4
    .line 3014
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@f8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@fb
    move-result v1

    #@fc
    const/4 v3, 0x1

    #@fd
    if-eq v1, v3, :cond_3

    #@ff
    .line 3015
    move-object/from16 v0, p0

    #@101
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@103
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@106
    move-result v1

    #@107
    const/4 v3, 0x5

    #@108
    if-ne v1, v3, :cond_7

    #@10a
    .line 3017
    :cond_3
    :goto_3
    const/16 v16, 0x0

    #@10c
    .line 3018
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
    .line 3019
    move-object/from16 v0, p0

    #@118
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@11a
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@11d
    move-result v1

    #@11e
    packed-switch v1, :pswitch_data_0

    #@121
    .line 3048
    .end local v16    # "status":Z
    :cond_4
    :goto_4
    :pswitch_0
    if-nez v16, :cond_5

    #@123
    .line 3049
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
    .line 3050
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
    .line 3049
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@135
    :cond_5
    monitor-exit v2

    #@136
    goto/16 :goto_0

    #@138
    .line 3009
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
    .line 3001
    .end local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_3
    move-exception v1

    #@142
    monitor-exit v2

    #@143
    throw v1

    #@144
    .line 3016
    .restart local v15    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    #@146
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@148
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@14b
    move-result v1

    #@14c
    const/4 v3, 0x4

    #@14d
    if-ne v1, v3, :cond_5

    #@14f
    goto :goto_3

    #@150
    .line 3021
    .restart local v16    # "status":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@152
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@154
    const/4 v3, 0x3

    #@155
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@158
    .line 3022
    move-object/from16 v0, p0

    #@15a
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@15c
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@15f
    move-result v1

    #@160
    const/4 v3, 0x1

    #@161
    if-ne v1, v3, :cond_8

    #@163
    .line 3023
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
    .line 3024
    .local v16, "status":Z
    :cond_8
    move-object/from16 v0, p0

    #@172
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@174
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@177
    move-result v1

    #@178
    if-nez v1, :cond_9

    #@17a
    .line 3025
    move-object/from16 v0, p0

    #@17c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@17e
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@181
    move-result-object v1

    #@182
    .line 3026
    move-object/from16 v0, p0

    #@184
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@186
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@189
    move-result-object v3

    #@18a
    .line 3025
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@18d
    move-result v16

    #@18e
    .local v16, "status":Z
    goto :goto_4

    #@18f
    .line 3027
    .local v16, "status":Z
    :cond_9
    move-object/from16 v0, p0

    #@191
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@193
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@196
    move-result v1

    #@197
    const/4 v3, 0x2

    #@198
    if-ne v1, v3, :cond_4

    #@19a
    .line 3028
    move-object/from16 v0, p0

    #@19c
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@19e
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1a1
    move-result-object v1

    #@1a2
    .line 3029
    move-object/from16 v0, p0

    #@1a4
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1a6
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@1a9
    move-result-object v3

    #@1aa
    .line 3028
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@1ad
    move-result v16

    #@1ae
    .local v16, "status":Z
    goto/16 :goto_4

    #@1b0
    .line 3033
    .local v16, "status":Z
    :pswitch_2
    move-object/from16 v0, p0

    #@1b2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1b4
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@1b7
    move-result v1

    #@1b8
    const/4 v3, 0x1

    #@1b9
    if-ne v1, v3, :cond_a

    #@1bb
    .line 3034
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
    .line 3035
    .local v16, "status":Z
    :cond_a
    move-object/from16 v0, p0

    #@1cb
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1cd
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@1d0
    move-result v1

    #@1d1
    if-nez v1, :cond_b

    #@1d3
    .line 3036
    move-object/from16 v0, p0

    #@1d5
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1d7
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1da
    move-result-object v1

    #@1db
    .line 3037
    move-object/from16 v0, p0

    #@1dd
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1df
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@1e2
    move-result-object v3

    #@1e3
    .line 3036
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@1e6
    move-result v16

    #@1e7
    .local v16, "status":Z
    goto/16 :goto_4

    #@1e9
    .line 3038
    .local v16, "status":Z
    :cond_b
    move-object/from16 v0, p0

    #@1eb
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1ed
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@1f0
    move-result v1

    #@1f1
    const/4 v3, 0x2

    #@1f2
    if-ne v1, v3, :cond_4

    #@1f4
    .line 3039
    move-object/from16 v0, p0

    #@1f6
    iget-object v1, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@1f8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1fb
    move-result-object v1

    #@1fc
    .line 3040
    move-object/from16 v0, p0

    #@1fe
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@200
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@203
    move-result-object v3

    #@204
    .line 3039
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@207
    move-result v16

    #@208
    .local v16, "status":Z
    goto/16 :goto_4

    #@20a
    .line 3044
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
    .line 3045
    move-object/from16 v0, p0

    #@214
    iget-object v3, v0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@216
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@219
    move-result-object v3

    #@21a
    .line 3044
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@21d
    move-result v16

    #@21e
    .local v16, "status":Z
    goto/16 :goto_4

    #@220
    .line 2961
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch

    #@22e
    .line 3019
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
    .locals 10
    .param p1, "profile"    # I

    #@0
    .prologue
    const/16 v8, 0x80

    #@2
    .line 3061
    const/4 v3, 0x0

    #@3
    .line 3062
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 3060
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    return-void

    #@7
    .line 3064
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@c
    move-result-object v6

    #@d
    monitor-enter v6

    #@e
    .line 3065
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@10
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get5(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@13
    move-result-object v7

    #@14
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 3067
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    move-object v4, v3

    #@17
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@19
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@20
    move-result v5

    #@21
    if-ge v2, v5, :cond_1

    #@23
    .line 3068
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@25
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@2f
    .line 3069
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    if-ne v5, v8, :cond_8

    #@33
    .line 3070
    if-eqz v4, :cond_0

    #@35
    move-object v3, v4

    #@36
    .line 3071
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_2
    :try_start_2
    iget-object v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    #@38
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    #@3b
    .line 3067
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@3d
    move-object v4, v3

    #@3e
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1

    #@3f
    .line 3070
    :cond_0
    :try_start_3
    new-instance v3, Landroid/util/ArraySet;

    #@41
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@44
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_2

    #@45
    .line 3074
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    if-eqz v4, :cond_2

    #@47
    .line 3075
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@49
    .line 3076
    const/16 v8, 0x80

    #@4b
    .line 3077
    const/4 v9, 0x0

    #@4c
    .line 3075
    invoke-static {v5, v8, v9}, Lcom/android/server/audio/AudioService;->-wrap3(Lcom/android/server/audio/AudioService;II)I

    #@4f
    move-result v0

    #@50
    .line 3078
    .local v0, "delay":I
    const/4 v2, 0x0

    #@51
    :goto_4
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@54
    move-result v5

    #@55
    if-ge v2, v5, :cond_2

    #@57
    .line 3079
    iget-object v8, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@59
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@5c
    move-result-object v5

    #@5d
    check-cast v5, Ljava/lang/String;

    #@5f
    invoke-static {v8, v5, v0}, Lcom/android/server/audio/AudioService;->-wrap17(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    .line 3078
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_4

    #@65
    .end local v0    # "delay":I
    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    #@66
    monitor-exit v6

    #@67
    move-object v3, v4

    #@68
    .line 3084
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    #@69
    .line 3065
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    #@6a
    move-object v3, v4

    #@6b
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_5
    :try_start_5
    monitor-exit v7

    #@6c
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@6d
    .line 3064
    .end local v2    # "i":I
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    #@6e
    :goto_6
    monitor-exit v6

    #@6f
    throw v5

    #@70
    .line 3087
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@72
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@75
    move-result-object v6

    #@76
    monitor-enter v6

    #@77
    .line 3089
    const/4 v2, 0x0

    #@78
    .restart local v2    # "i":I
    move-object v4, v3

    #@79
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7
    :try_start_6
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@7b
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@82
    move-result v5

    #@83
    if-ge v2, v5, :cond_4

    #@85
    .line 3090
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@87
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@8e
    move-result-object v1

    #@8f
    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@91
    .line 3091
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@93
    const/high16 v7, -0x7ffe0000

    #@95
    if-ne v5, v7, :cond_7

    #@97
    .line 3092
    if-eqz v4, :cond_3

    #@99
    move-object v3, v4

    #@9a
    .line 3093
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_8
    :try_start_7
    iget-object v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    #@9c
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    #@9f
    .line 3089
    :goto_9
    add-int/lit8 v2, v2, 0x1

    #@a1
    move-object v4, v3

    #@a2
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_7

    #@a3
    .line 3092
    :cond_3
    :try_start_8
    new-instance v3, Landroid/util/ArraySet;

    #@a5
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@a8
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_8

    #@a9
    .line 3096
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    if-eqz v4, :cond_5

    #@ab
    .line 3097
    const/4 v2, 0x0

    #@ac
    :goto_a
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@af
    move-result v5

    #@b0
    if-ge v2, v5, :cond_5

    #@b2
    .line 3098
    iget-object v7, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@b4
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@b7
    move-result-object v5

    #@b8
    check-cast v5, Ljava/lang/String;

    #@ba
    invoke-static {v7, v5}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@bd
    .line 3097
    add-int/lit8 v2, v2, 0x1

    #@bf
    goto :goto_a

    #@c0
    :cond_5
    monitor-exit v6

    #@c1
    move-object v3, v4

    #@c2
    .line 3102
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_0

    #@c4
    .line 3087
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v5

    #@c5
    move-object v3, v4

    #@c6
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_b
    monitor-exit v6

    #@c7
    throw v5

    #@c8
    .line 3105
    .end local v2    # "i":I
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :sswitch_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@ca
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@cd
    move-result-object v6

    #@ce
    monitor-enter v6

    #@cf
    .line 3106
    :try_start_9
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@d1
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@d4
    move-result-object v5

    #@d5
    if-eqz v5, :cond_6

    #@d7
    .line 3107
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@d9
    iget-object v7, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@db
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@de
    move-result-object v7

    #@df
    .line 3108
    const/4 v8, 0x0

    #@e0
    .line 3107
    invoke-virtual {v5, v7, v8}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    #@e3
    .line 3110
    :cond_6
    iget-object v5, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    #@e5
    const/4 v7, 0x0

    #@e6
    invoke-static {v5, v7}, Lcom/android/server/audio/AudioService;->-set3(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@e9
    monitor-exit v6

    #@ea
    goto/16 :goto_0

    #@ec
    .line 3105
    :catchall_3
    move-exception v5

    #@ed
    monitor-exit v6

    #@ee
    throw v5

    #@ef
    .line 3087
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v2    # "i":I
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_4
    move-exception v5

    #@f0
    goto :goto_b

    #@f1
    .line 3064
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_5
    move-exception v5

    #@f2
    move-object v3, v4

    #@f3
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_6

    #@f5
    .line 3065
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :catchall_6
    move-exception v5

    #@f6
    goto/16 :goto_5

    #@f8
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7
    move-object v3, v4

    #@f9
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_9

    #@fa
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8
    move-object v3, v4

    #@fb
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_3

    #@fd
    .line 3062
    nop

    #@fe
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
