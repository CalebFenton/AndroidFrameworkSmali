.class Lcom/android/server/wifi/WifiWatchdogStateMachine$2;
.super Landroid/database/ContentObserver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    const v1, 0x21001

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    #@8
    .line 394
    return-void
.end method
