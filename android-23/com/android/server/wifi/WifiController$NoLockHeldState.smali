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
    .line 740
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
    .line 743
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$NoLockHeldState;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@8
    .line 742
    return-void
.end method
