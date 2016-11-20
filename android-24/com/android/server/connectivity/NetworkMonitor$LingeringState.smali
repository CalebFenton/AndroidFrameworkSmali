.class Lcom/android/server/connectivity/NetworkMonitor$LingeringState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LingeringState"
.end annotation


# static fields
.field private static final ACTION_LINGER_EXPIRED:Ljava/lang/String; = "android.net.netmon.lingerExpired"


# instance fields
.field private mWakeupMessage:Lcom/android/internal/util/WakeupMessage;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$LingeringState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    #@0
    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->reset()V

    #@9
    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "android.net.netmon.lingerExpired."

    #@11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@17
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@1a
    move-result v4

    #@1b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 640
    .local v0, "cmdName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@25
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@27
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    #@2a
    move-result-object v4

    #@2b
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2d
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkMonitor;->getHandler()Landroid/os/Handler;

    #@30
    move-result-object v5

    #@31
    const v6, 0x82004

    #@34
    invoke-virtual {v1, v4, v5, v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    #@37
    move-result-object v1

    #@38
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    #@3a
    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3d
    move-result-wide v4

    #@3e
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@40
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)I

    #@43
    move-result v1

    #@44
    int-to-long v6, v1

    #@45
    add-long v2, v4, v6

    #@47
    .line 642
    .local v2, "wakeupTime":J
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    #@49
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@4c
    .line 637
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mWakeupMessage:Lcom/android/internal/util/WakeupMessage;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@5
    .line 686
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 647
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 681
    :pswitch_0
    return v2

    #@8
    .line 649
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@a
    const-string/jumbo v1, "Unlingered"

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    #@10
    .line 651
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@12
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@15
    move-result-object v0

    #@16
    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 652
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1e
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    #@25
    .line 653
    return v4

    #@26
    .line 655
    :cond_0
    return v2

    #@27
    .line 657
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@29
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@2c
    move-result-object v0

    #@2d
    .line 658
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2f
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@31
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@34
    move-result-object v2

    #@35
    const v3, 0x82005

    #@38
    invoke-virtual {v1, v3, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3b
    move-result-object v1

    #@3c
    .line 657
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@3f
    .line 659
    return v4

    #@40
    .line 665
    :pswitch_3
    return v4

    #@41
    .line 679
    :pswitch_4
    return v4

    #@42
    .line 647
    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
