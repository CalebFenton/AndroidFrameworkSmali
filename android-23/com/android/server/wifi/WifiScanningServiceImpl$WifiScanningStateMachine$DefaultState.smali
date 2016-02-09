.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@0
    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    #@0
    .prologue
    .line 334
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@4
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@6
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@e
    .line 344
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    #@10
    sparse-switch v1, :sswitch_data_0

    #@13
    .line 382
    :goto_0
    :sswitch_0
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 346
    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 347
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@1d
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@1f
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 348
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2b
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@2d
    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    #@34
    goto :goto_0

    #@35
    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@37
    const-string/jumbo v2, "could not get scan capabilities"

    #@3a
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    #@3d
    goto :goto_0

    #@3e
    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@40
    const-string/jumbo v2, "could not start HAL"

    #@43
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V

    #@46
    goto :goto_0

    #@47
    .line 367
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@49
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@4b
    const-string/jumbo v2, "not available"

    #@4e
    const/4 v3, -0x1

    #@4f
    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@52
    goto :goto_0

    #@53
    .line 344
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x27000 -> :sswitch_2
        0x27002 -> :sswitch_2
        0x27003 -> :sswitch_2
        0x27004 -> :sswitch_2
        0x27006 -> :sswitch_2
        0x27007 -> :sswitch_2
        0x2700b -> :sswitch_2
        0x2700c -> :sswitch_2
        0x2700d -> :sswitch_2
        0x27015 -> :sswitch_2
        0x27016 -> :sswitch_2
        0x27100 -> :sswitch_0
        0x27101 -> :sswitch_0
        0x27106 -> :sswitch_1
    .end sparse-switch
.end method
