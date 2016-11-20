.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mIsHttps:Z

.field private volatile mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "isHttps"    # Z
    .param p3, "val$httpsUrl"    # Ljava/net/URL;
    .param p4, "val$httpUrl"    # Ljava/net/URL;
    .param p5, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    #@4
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    #@6
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@b
    .line 804
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@f
    .line 807
    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    #@11
    .line 806
    return-void
.end method


# virtual methods
.method public result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    #@0
    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2
    return-object v0
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 817
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    #@8
    const/4 v2, 0x2

    #@9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@f
    .line 821
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@15
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    #@1d
    if-nez v0, :cond_3

    #@1f
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@21
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 823
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@29
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@2c
    move-result-wide v0

    #@2d
    const-wide/16 v2, 0x0

    #@2f
    cmp-long v0, v0, v2

    #@31
    if-lez v0, :cond_3

    #@33
    .line 824
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@35
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@38
    goto :goto_1

    #@39
    .line 819
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3b
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    #@3d
    const/4 v2, 0x1

    #@3e
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@44
    goto :goto_0

    #@45
    .line 828
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@47
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@4a
    .line 815
    return-void
.end method
