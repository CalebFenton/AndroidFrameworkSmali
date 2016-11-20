.class Lcom/android/server/wifi/WifiStateMachine$SoftApState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;
    }
.end annotation


# instance fields
.field private mSoftApManager:Lcom/android/server/wifi/SoftApManager;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 7625
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 7643
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    #@6
    move-result-object v10

    #@7
    .line 7644
    .local v10, "message":Landroid/os/Message;
    iget v0, v10, Landroid/os/Message;->what:I

    #@9
    const v1, 0x20015

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 7645
    iget-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    #@12
    .line 7647
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_0

    #@14
    .line 7652
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@1d
    move-result-object v9

    #@1e
    .line 7658
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;)V

    #@23
    .line 7659
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    #@28
    move-result-object v0

    #@29
    .line 7660
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@3e
    move-result-object v3

    #@3f
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@41
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get40(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@44
    move-result-object v4

    #@45
    .line 7661
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    #@4a
    move-result-object v5

    #@4b
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiCountryCode;->getCurrentCountryCode()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 7662
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    #@5e
    move-result-object v7

    #@5f
    .line 7663
    new-instance v8, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;

    #@61
    invoke-direct {v8, p0, v11}, Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;-><init>(Lcom/android/server/wifi/WifiStateMachine$SoftApState;Lcom/android/server/wifi/WifiStateMachine$SoftApState$SoftApListener;)V

    #@64
    .line 7659
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wifi/FrameworkFacade;->makeSoftApManager(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)Lcom/android/server/wifi/SoftApManager;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    #@6a
    .line 7664
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    #@6c
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/SoftApManager;->start(Landroid/net/wifi/WifiConfiguration;)V

    #@6f
    .line 7642
    return-void

    #@70
    .line 7655
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@79
    goto :goto_0

    #@7a
    .line 7666
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@7c
    new-instance v1, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v2, "Illegal transition to SoftApState: "

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 7672
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    #@3
    .line 7671
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 7677
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    #@5
    .line 7679
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 7693
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 7684
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->stop()V

    #@11
    .line 7695
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 7687
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1e
    goto :goto_0

    #@1f
    .line 7690
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@23
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2a
    goto :goto_0

    #@2b
    .line 7679
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
