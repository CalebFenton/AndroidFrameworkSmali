.class Lcom/android/server/wifi/WifiController$FullLockHeldState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullLockHeldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$FullLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

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
    const/4 v1, 0x1

    #@1
    .line 877
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    #@a
    .line 878
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@13
    .line 879
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$FullLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@18
    move-result-object v0

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    #@1d
    .line 876
    return-void
.end method
