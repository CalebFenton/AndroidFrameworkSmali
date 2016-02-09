.class Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForP2pDisableState"
.end annotation


# instance fields
.field private mTransitionToState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 6350
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 6354
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/os/Message;->what:I

    #@8
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 6365
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    #@13
    .line 6368
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@18
    move-result-object v0

    #@19
    const v1, 0x20084

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@1f
    .line 6353
    return-void

    #@20
    .line 6356
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    #@28
    goto :goto_0

    #@29
    .line 6359
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    #@31
    goto :goto_0

    #@32
    .line 6362
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    #@3a
    goto :goto_0

    #@3b
    .line 6354
    nop

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_2
        0x20012 -> :sswitch_1
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 6372
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@d
    .line 6374
    iget v0, p1, Landroid/os/Message;->what:I

    #@f
    sparse-switch v0, :sswitch_data_0

    #@12
    .line 6399
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 6376
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@16
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    #@18
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@1b
    .line 6401
    :goto_0
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 6395
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    #@22
    move-result v1

    #@23
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@26
    .line 6396
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@2b
    goto :goto_0

    #@2c
    .line 6374
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_1
        0x2000c -> :sswitch_1
        0x2000d -> :sswitch_1
        0x2000e -> :sswitch_1
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_1
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_1
        0x20049 -> :sswitch_1
        0x2004a -> :sswitch_1
        0x2004b -> :sswitch_1
        0x20050 -> :sswitch_1
        0x20054 -> :sswitch_1
        0x20055 -> :sswitch_1
        0x2005a -> :sswitch_1
        0x20085 -> :sswitch_0
        0x24006 -> :sswitch_1
    .end sparse-switch
.end method
