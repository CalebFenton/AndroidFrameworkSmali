.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@0
    .prologue
    .line 2166
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

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
    .line 2168
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2175
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@4
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@a
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@10
    .line 2176
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    #@12
    packed-switch v1, :pswitch_data_0

    #@15
    .line 2196
    :pswitch_0
    const/4 v1, 0x0

    #@16
    return v1

    #@17
    .line 2178
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@19
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@1b
    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 2179
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@23
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@25
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    #@28
    .line 2180
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2a
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@2c
    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    #@2e
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    #@31
    .line 2198
    :goto_0
    :pswitch_2
    const/4 v1, 0x1

    #@32
    return v1

    #@33
    .line 2182
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@35
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@37
    const-string/jumbo v2, "bad request"

    #@3a
    const/4 v3, -0x3

    #@3b
    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .line 2190
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@41
    invoke-static {v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V

    #@44
    goto :goto_0

    #@45
    .line 2176
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x27005
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
