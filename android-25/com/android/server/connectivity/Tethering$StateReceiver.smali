.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 776
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 777
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 778
    :cond_0
    const-string/jumbo v6, "android.hardware.usb.action.USB_STATE"

    #@a
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_4

    #@10
    .line 779
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@12
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@15
    move-result-object v7

    #@16
    monitor-enter v7

    #@17
    .line 780
    :try_start_0
    const-string/jumbo v6, "connected"

    #@1a
    const/4 v8, 0x0

    #@1b
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1e
    move-result v5

    #@1f
    .line 781
    .local v5, "usbConnected":Z
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@21
    const-string/jumbo v8, "rndis"

    #@24
    const/4 v9, 0x0

    #@25
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@28
    move-result v8

    #@29
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering;->-set1(Lcom/android/server/connectivity/Tethering;Z)Z

    #@2c
    .line 783
    if-eqz v5, :cond_1

    #@2e
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@30
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_1

    #@36
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@38
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_1

    #@3e
    .line 784
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@40
    const/4 v8, 0x1

    #@41
    const/4 v9, 0x1

    #@42
    invoke-static {v6, v8, v9}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;ZI)V

    #@45
    .line 786
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@47
    const/4 v8, 0x0

    #@48
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering;->-set2(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .end local v5    # "usbConnected":Z
    :cond_2
    :goto_0
    :pswitch_0
    monitor-exit v7

    #@4c
    .line 775
    :cond_3
    :goto_1
    return-void

    #@4d
    .line 779
    :catchall_0
    move-exception v6

    #@4e
    monitor-exit v7

    #@4f
    throw v6

    #@50
    .line 788
    :cond_4
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    #@53
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_5

    #@59
    .line 790
    const-string/jumbo v6, "networkInfo"

    #@5c
    .line 789
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Landroid/net/NetworkInfo;

    #@62
    .line 791
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    #@64
    .line 792
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@67
    move-result-object v6

    #@68
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@6a
    if-eq v6, v7, :cond_3

    #@6c
    .line 794
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@6e
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    #@71
    move-result-object v6

    #@72
    const v7, 0x50003

    #@75
    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@78
    goto :goto_1

    #@79
    .line 796
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    #@7c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_8

    #@82
    .line 797
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@84
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@87
    move-result-object v7

    #@88
    monitor-enter v7

    #@89
    .line 798
    :try_start_1
    const-string/jumbo v6, "wifi_state"

    #@8c
    .line 799
    const/16 v8, 0xb

    #@8e
    .line 798
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@91
    move-result v1

    #@92
    .line 800
    .local v1, "curState":I
    packed-switch v1, :pswitch_data_0

    #@95
    .line 820
    const/4 v2, 0x0

    #@96
    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@98
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@9f
    move-result v6

    #@a0
    if-ge v2, v6, :cond_6

    #@a2
    .line 822
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@a4
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ab
    move-result-object v6

    #@ac
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherState;

    #@ae
    .line 821
    iget-object v4, v6, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@b0
    .line 823
    .local v4, "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-virtual {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    #@b3
    move-result v6

    #@b4
    if-nez v6, :cond_7

    #@b6
    .line 825
    const v6, 0x50067

    #@b9
    .line 824
    invoke-virtual {v4, v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    #@bc
    .line 831
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_6
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@be
    const/4 v8, 0x0

    #@bf
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering;->-set3(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@c2
    goto :goto_0

    #@c3
    .line 797
    .end local v1    # "curState":I
    .end local v2    # "i":I
    :catchall_1
    move-exception v6

    #@c4
    monitor-exit v7

    #@c5
    throw v6

    #@c6
    .line 806
    .restart local v1    # "curState":I
    :pswitch_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@c8
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Z

    #@cb
    move-result v6

    #@cc
    if-eqz v6, :cond_2

    #@ce
    .line 807
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@d0
    const/4 v8, 0x1

    #@d1
    const/4 v9, 0x0

    #@d2
    invoke-static {v6, v8, v9}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d5
    goto/16 :goto_0

    #@d7
    .line 820
    .restart local v2    # "i":I
    .restart local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 835
    .end local v1    # "curState":I
    .end local v2    # "i":I
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_8
    const-string/jumbo v6, "android.intent.action.CONFIGURATION_CHANGED"

    #@dd
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v6

    #@e1
    if-eqz v6, :cond_3

    #@e3
    .line 836
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e5
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@e8
    goto/16 :goto_1

    #@ea
    .line 800
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
