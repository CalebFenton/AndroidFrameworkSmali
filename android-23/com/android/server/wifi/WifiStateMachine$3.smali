.class Lcom/android/server/wifi/WifiStateMachine$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1160
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get109()I

    #@4
    move-result v0

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-set50(I)I

    #@a
    .line 1161
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@15
    move-result v1

    #@16
    const/4 v2, -0x2

    #@17
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@1a
    .line 1162
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 1163
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "SCAN ALARM -> "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@30
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@37
    move-result v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@43
    .line 1159
    :cond_0
    return-void
.end method
