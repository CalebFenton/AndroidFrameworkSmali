.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalState"
.end annotation


# static fields
.field private static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 530
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@4
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@a
    .line 531
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@c
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@f
    move-result-object v3

    #@10
    .line 530
    const v4, 0x82002

    #@13
    invoke-virtual {v2, v4, v8, v7, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 533
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@1c
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get5(Lcom/android/server/connectivity/NetworkMonitor;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    return-void

    #@23
    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@25
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@28
    move-result-object v1

    #@29
    if-nez v1, :cond_1

    #@2b
    .line 539
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2d
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@2f
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@31
    .line 540
    const-string/jumbo v4, "android.net.netmon.launchCaptivePortalApp"

    #@34
    new-instance v5, Ljava/util/Random;

    #@36
    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    #@39
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    #@3c
    move-result v5

    #@3d
    .line 541
    const v6, 0x8200b

    #@40
    .line 539
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    #@43
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@46
    .line 544
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@48
    .line 545
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@4a
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    #@4d
    move-result-object v2

    #@4e
    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    #@50
    iget v2, v2, Landroid/net/Network;->netId:I

    #@52
    .line 546
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@54
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    #@5b
    move-result-object v3

    #@5c
    .line 544
    const v4, 0x8200a

    #@5f
    invoke-virtual {v1, v4, v8, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@62
    move-result-object v0

    #@63
    .line 547
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@65
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@6c
    .line 549
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@6e
    .line 550
    const-wide/32 v2, 0x927c0

    #@71
    .line 549
    const v4, 0x8200c

    #@74
    invoke-virtual {v1, v4, v7, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    #@77
    .line 529
    return-void
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    const v1, 0x8200c

    #@5
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap1(Lcom/android/server/connectivity/NetworkMonitor;I)V

    #@8
    .line 554
    return-void
.end method
