.class Lcom/android/server/wifi/WifiController$NoLockHeldState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoLockHeldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

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
    .line 897
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@a
    .line 896
    return-void
.end method
