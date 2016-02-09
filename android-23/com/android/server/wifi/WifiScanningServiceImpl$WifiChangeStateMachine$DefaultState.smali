.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@0
    .prologue
    .line 1486
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

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
    .line 1488
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1495
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1510
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1497
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@b
    iget-object v1, v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    #@d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    #@10
    .line 1512
    :goto_0
    :pswitch_2
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 1507
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    #@14
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap0(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V

    #@17
    goto :goto_0

    #@18
    .line 1495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
