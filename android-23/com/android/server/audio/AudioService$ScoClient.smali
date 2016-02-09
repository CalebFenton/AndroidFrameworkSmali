.class Lcom/android/server/audio/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2622
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2623
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    #@7
    .line 2624
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    #@d
    .line 2625
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@10
    .line 2622
    return-void
.end method

.method private requestScoState(II)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 2714
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@6
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap12(Lcom/android/server/audio/AudioService;)V

    #@9
    .line 2715
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$ScoClient;->totalCount()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_6

    #@f
    .line 2716
    const/16 v1, 0xc

    #@11
    if-ne p1, v1, :cond_e

    #@13
    .line 2719
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@15
    invoke-static {v1, v8}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V

    #@18
    .line 2722
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1a
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@1d
    move-result-object v2

    #@1e
    monitor-enter v2

    #@1f
    .line 2723
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@21
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_0

    #@2b
    .line 2724
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@30
    move-result-object v1

    #@31
    const/4 v3, 0x0

    #@32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    #@38
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    #@3b
    move-result v1

    #@3c
    iget v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    #@3e
    if-ne v1, v3, :cond_d

    #@40
    .line 2725
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@42
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 2726
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@4a
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@4d
    move-result v1

    #@4e
    const/4 v3, 0x5

    #@4f
    if-ne v1, v3, :cond_d

    #@51
    .line 2727
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@53
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_c

    #@59
    .line 2728
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@5b
    invoke-static {v1, p2}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    #@5e
    .line 2729
    const/4 v1, -0x1

    #@5f
    if-ne p2, v1, :cond_3

    #@61
    .line 2730
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@63
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@66
    move-result-object v1

    #@67
    if-eqz v1, :cond_7

    #@69
    .line 2731
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@6b
    new-instance v3, Ljava/lang/Integer;

    #@6d
    .line 2732
    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@6f
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@72
    move-result-object v4

    #@73
    .line 2733
    new-instance v5, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v6, "bluetooth_sco_channel_"

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    .line 2734
    iget-object v6, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@81
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    .line 2733
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    .line 2735
    const/4 v6, 0x0

    #@92
    .line 2731
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@95
    move-result v4

    #@96
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    #@99
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@9c
    move-result v3

    #@9d
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    #@a0
    .line 2736
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@a2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@a5
    move-result v1

    #@a6
    if-gt v1, v8, :cond_2

    #@a8
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@aa
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@ad
    move-result v1

    #@ae
    if-gez v1, :cond_3

    #@b0
    .line 2737
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@b2
    const/4 v3, 0x0

    #@b3
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    #@b6
    .line 2743
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@b8
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@bb
    move-result-object v1

    #@bc
    if-eqz v1, :cond_b

    #@be
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@c0
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@c3
    move-result-object v1

    #@c4
    if-eqz v1, :cond_b

    #@c6
    .line 2744
    const/4 v0, 0x0

    #@c7
    .line 2745
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@c9
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@cc
    move-result v1

    #@cd
    if-ne v1, v7, :cond_8

    #@cf
    .line 2746
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@d1
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@d4
    move-result-object v1

    #@d5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    #@d8
    move-result v0

    #@d9
    .line 2755
    .end local v0    # "status":Z
    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    #@db
    .line 2756
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@dd
    const/4 v3, 0x3

    #@de
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e1
    :cond_5
    :goto_2
    monitor-exit v2

    #@e2
    .line 2713
    :cond_6
    :goto_3
    return-void

    #@e3
    .line 2740
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@e5
    const/4 v3, 0x1

    #@e6
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e9
    goto :goto_0

    #@ea
    .line 2722
    :catchall_0
    move-exception v1

    #@eb
    monitor-exit v2

    #@ec
    throw v1

    #@ed
    .line 2747
    .restart local v0    # "status":Z
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@ef
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@f2
    move-result v1

    #@f3
    if-nez v1, :cond_9

    #@f5
    .line 2748
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@f7
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@fa
    move-result-object v1

    #@fb
    .line 2749
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@fd
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@100
    move-result-object v3

    #@101
    .line 2748
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@104
    move-result v0

    #@105
    .local v0, "status":Z
    goto :goto_1

    #@106
    .line 2750
    .local v0, "status":Z
    :cond_9
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@108
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@10b
    move-result v1

    #@10c
    if-ne v1, v8, :cond_4

    #@10e
    .line 2751
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@110
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@113
    move-result-object v1

    #@114
    .line 2752
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@116
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@119
    move-result-object v3

    #@11a
    .line 2751
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@11d
    move-result v0

    #@11e
    .local v0, "status":Z
    goto :goto_1

    #@11f
    .line 2758
    .end local v0    # "status":Z
    :cond_a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@121
    .line 2759
    const/4 v3, 0x0

    #@122
    .line 2758
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V

    #@125
    goto :goto_2

    #@126
    .line 2761
    :cond_b
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@128
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap0(Lcom/android/server/audio/AudioService;)Z

    #@12b
    move-result v1

    #@12c
    if-eqz v1, :cond_5

    #@12e
    .line 2762
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@130
    const/4 v3, 0x1

    #@131
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@134
    goto :goto_2

    #@135
    .line 2765
    :cond_c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@137
    const/4 v3, 0x3

    #@138
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@13b
    .line 2766
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@13d
    const/4 v3, 0x1

    #@13e
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V

    #@141
    goto :goto_2

    #@142
    .line 2769
    :cond_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@144
    const/4 v3, 0x0

    #@145
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@148
    goto :goto_2

    #@149
    .line 2772
    :cond_e
    const/16 v1, 0xa

    #@14b
    if-ne p1, v1, :cond_6

    #@14d
    .line 2773
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@14f
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@152
    move-result v1

    #@153
    if-eq v1, v2, :cond_f

    #@155
    .line 2774
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@157
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@15a
    move-result v1

    #@15b
    if-ne v1, v7, :cond_6

    #@15d
    .line 2775
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@15f
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get29(Lcom/android/server/audio/AudioService;)I

    #@162
    move-result v1

    #@163
    if-ne v1, v2, :cond_14

    #@165
    .line 2776
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@167
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@16a
    move-result-object v1

    #@16b
    if-eqz v1, :cond_13

    #@16d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@16f
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@172
    move-result-object v1

    #@173
    if-eqz v1, :cond_13

    #@175
    .line 2777
    const/4 v0, 0x0

    #@176
    .line 2778
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@178
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@17b
    move-result v1

    #@17c
    if-ne v1, v7, :cond_11

    #@17e
    .line 2779
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@180
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@183
    move-result-object v1

    #@184
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    #@187
    move-result v0

    #@188
    .line 2788
    .end local v0    # "status":Z
    :cond_10
    :goto_4
    if-nez v0, :cond_6

    #@18a
    .line 2789
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@18c
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@18f
    .line 2790
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@191
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V

    #@194
    goto/16 :goto_3

    #@196
    .line 2780
    .restart local v0    # "status":Z
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@198
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@19b
    move-result v1

    #@19c
    if-nez v1, :cond_12

    #@19e
    .line 2781
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1a0
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1a3
    move-result-object v1

    #@1a4
    .line 2782
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1a6
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@1a9
    move-result-object v2

    #@1aa
    .line 2781
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@1ad
    move-result v0

    #@1ae
    .local v0, "status":Z
    goto :goto_4

    #@1af
    .line 2783
    .local v0, "status":Z
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1b1
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)I

    #@1b4
    move-result v1

    #@1b5
    if-ne v1, v8, :cond_10

    #@1b7
    .line 2784
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1b9
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get11(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    #@1bc
    move-result-object v1

    #@1bd
    .line 2785
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1bf
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    #@1c2
    move-result-object v2

    #@1c3
    .line 2784
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@1c6
    move-result v0

    #@1c7
    .local v0, "status":Z
    goto :goto_4

    #@1c8
    .line 2793
    .end local v0    # "status":Z
    :cond_13
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1ca
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap0(Lcom/android/server/audio/AudioService;)Z

    #@1cd
    move-result v1

    #@1ce
    if-eqz v1, :cond_6

    #@1d0
    .line 2794
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1d2
    const/4 v2, 0x5

    #@1d3
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@1d6
    goto/16 :goto_3

    #@1d8
    .line 2797
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1da
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;I)I

    #@1dd
    .line 2798
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@1df
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)V

    #@1e2
    goto/16 :goto_3
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 2629
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2630
    :try_start_0
    const-string/jumbo v1, "AudioService"

    #@a
    const-string/jumbo v3, "SCO client died"

    #@d
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 2631
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@12
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    .line 2632
    .local v0, "index":I
    if-gez v0, :cond_0

    #@1c
    .line 2633
    const-string/jumbo v1, "AudioService"

    #@1f
    const-string/jumbo v3, "unregistered SCO client died"

    #@22
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :goto_0
    monitor-exit v2

    #@26
    .line 2628
    return-void

    #@27
    .line 2635
    :cond_0
    const/4 v1, 0x1

    #@28
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    #@2b
    .line 2636
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2629
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public clearCount(Z)V
    .locals 5
    .param p1, "stopSco"    # Z

    #@0
    .prologue
    .line 2675
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2676
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2678
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 2683
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@12
    :try_start_2
    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@14
    .line 2684
    if-eqz p1, :cond_1

    #@16
    .line 2685
    const/16 v1, 0xa

    #@18
    const/4 v3, 0x0

    #@19
    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    :cond_1
    monitor-exit v2

    #@1d
    .line 2674
    return-void

    #@1e
    .line 2679
    :catch_0
    move-exception v0

    #@1f
    .line 2680
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_3
    const-string/jumbo v1, "AudioService"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "clearCount() mStartcount: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, " != 0 but not registered to binder"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 2675
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public decCount()V
    .locals 4

    #@0
    .prologue
    .line 2657
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2658
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@9
    if-nez v1, :cond_0

    #@b
    .line 2659
    const-string/jumbo v1, "AudioService"

    #@e
    const-string/jumbo v3, "ScoClient.decCount() already 0"

    #@11
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :goto_0
    monitor-exit v2

    #@15
    .line 2656
    return-void

    #@16
    .line 2661
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@1c
    .line 2662
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 2664
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    .line 2669
    :cond_1
    :goto_1
    const/16 v1, 0xa

    #@28
    const/4 v3, 0x0

    #@29
    :try_start_3
    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 2657
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1

    #@30
    .line 2665
    :catch_0
    move-exception v0

    #@31
    .line 2666
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_4
    const-string/jumbo v1, "AudioService"

    #@34
    const-string/jumbo v3, "decCount() going to 0 but not registered to binder"

    #@37
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3a
    goto :goto_1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 2691
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@2
    return v0
.end method

.method public getPid()I
    .locals 1

    #@0
    .prologue
    .line 2699
    iget v0, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCreatorPid:I

    #@2
    return v0
.end method

.method public incCount(I)V
    .locals 5
    .param p1, "scoAudioMode"    # I

    #@0
    .prologue
    .line 2642
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2643
    const/16 v1, 0xc

    #@9
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService$ScoClient;->requestScoState(II)V

    #@c
    .line 2644
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-nez v1, :cond_0

    #@10
    .line 2646
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    #@12
    const/4 v3, 0x0

    #@13
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 2652
    :cond_0
    :goto_0
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/server/audio/AudioService$ScoClient;->mStartcount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 2641
    return-void

    #@1e
    .line 2647
    :catch_0
    move-exception v0

    #@1f
    .line 2649
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "AudioService"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "ScoClient  incCount() could not link to "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, p0, Lcom/android/server/audio/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, " binder death"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 2642
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public totalCount()I
    .locals 5

    #@0
    .prologue
    .line 2703
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 2704
    const/4 v0, 0x0

    #@8
    .line 2705
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@a
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    .line 2706
    .local v2, "size":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@15
    .line 2707
    iget-object v3, p0, Lcom/android/server/audio/AudioService$ScoClient;->this$0:Lcom/android/server/audio/AudioService;

    #@17
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    #@21
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result v3

    #@25
    add-int/2addr v0, v3

    #@26
    .line 2706
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    :cond_0
    monitor-exit v4

    #@2a
    .line 2709
    return v0

    #@2b
    .line 2703
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit v4

    #@2d
    throw v3
.end method
