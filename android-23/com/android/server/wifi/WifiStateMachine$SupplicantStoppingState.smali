.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 5965
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5969
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@6
    .line 5970
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    #@b
    move-result-object v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 5971
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    #@17
    .line 5974
    :cond_0
    const-string/jumbo v2, "init.svc.wpa_supplicant"

    #@1a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 5975
    .local v1, "suppState":Ljava/lang/String;
    if-nez v1, :cond_1

    #@20
    const-string/jumbo v1, "unknown"

    #@23
    .line 5976
    :cond_1
    const-string/jumbo v2, "init.svc.p2p_supplicant"

    #@26
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 5977
    .local v0, "p2pSuppState":Ljava/lang/String;
    if-nez v0, :cond_2

    #@2c
    const-string/jumbo v0, "unknown"

    #@2f
    .line 5979
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "SupplicantStoppingState: stopSupplicant  init.svc.wpa_supplicant="

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 5981
    const-string/jumbo v4, " init.svc.p2p_supplicant="

    #@44
    .line 5979
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@53
    .line 5982
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@55
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMonitor;->stopSupplicant()V

    #@5c
    .line 5985
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    .line 5986
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)I

    #@65
    move-result v5

    #@66
    add-int/lit8 v5, v5, 0x1

    #@68
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6b
    move-result v4

    #@6c
    .line 5985
    const v5, 0x20011

    #@6f
    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@72
    move-result-object v3

    #@73
    .line 5986
    const-wide/16 v4, 0x1388

    #@75
    .line 5985
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@78
    .line 5987
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7a
    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@7d
    .line 5988
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@7f
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    #@82
    move-result-object v2

    #@83
    const v3, 0x2006f

    #@86
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    #@89
    .line 5967
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 5992
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@f
    .line 5994
    iget v0, p1, Landroid/os/Message;->what:I

    #@11
    sparse-switch v0, :sswitch_data_0

    #@14
    .line 6024
    return v2

    #@15
    .line 5996
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    const-string/jumbo v1, "Supplicant connection received while stopping"

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@1d
    .line 6026
    :cond_0
    :goto_0
    return v3

    #@1e
    .line 5999
    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    const-string/jumbo v1, "Supplicant connection lost"

    #@29
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@2c
    .line 6000
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@31
    .line 6001
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@3c
    goto :goto_0

    #@3d
    .line 6004
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@3f
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)I

    #@44
    move-result v1

    #@45
    if-ne v0, v1, :cond_0

    #@47
    .line 6005
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@49
    const-string/jumbo v1, "Timed out on a supplicant stop, kill and proceed"

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@4f
    .line 6006
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@54
    .line 6007
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@58
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@5b
    move-result-object v1

    #@5c
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@5f
    goto :goto_0

    #@60
    .line 6021
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@65
    goto :goto_0

    #@66
    .line 5994
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_3
        0x2000c -> :sswitch_3
        0x2000d -> :sswitch_3
        0x2000e -> :sswitch_3
        0x20011 -> :sswitch_2
        0x20015 -> :sswitch_3
        0x20018 -> :sswitch_3
        0x20048 -> :sswitch_3
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_3
        0x20055 -> :sswitch_3
        0x2005a -> :sswitch_3
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
