.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@3
    invoke-static {v0, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@6
    .line 340
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@8
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    #@b
    move-result-object v0

    #@c
    .line 341
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@e
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@14
    .line 342
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@16
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    #@19
    move-result v3

    #@1a
    .line 340
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/server/connectivity/tethering/IControlsTethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    #@1d
    .line 338
    return-void
.end method
