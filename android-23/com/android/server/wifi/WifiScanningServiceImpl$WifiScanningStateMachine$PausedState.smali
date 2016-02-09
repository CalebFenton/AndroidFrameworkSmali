.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PausedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@0
    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

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
    .line 517
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 526
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 531
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@7
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap0(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Landroid/os/Message;)V

    #@a
    .line 534
    :goto_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@e
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;->this$1:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@10
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->-wrap2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V

    #@17
    goto :goto_0

    #@18
    .line 526
    :pswitch_data_0
    .packed-switch 0x27109
        :pswitch_0
    .end packed-switch
.end method
