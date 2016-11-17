.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mIsHttps:Z

.field private volatile mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$finalResult:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "isHttps"    # Z
    .param p3, "val$httpsUrl"    # Ljava/net/URL;
    .param p4, "val$httpUrl"    # Ljava/net/URL;
    .param p6, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    .line 877
    .local p5, "val$finalResult":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;>;"
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@2
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    #@4
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    #@6
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@a
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@d
    .line 878
    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    #@f
    .line 877
    return-void
.end method


# virtual methods
.method public getResult()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2
    return-object v0
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    #@2
    if-eqz v0, :cond_3

    #@4
    .line 888
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
    .line 892
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
    if-nez v0, :cond_2

    #@1f
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@21
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 894
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$finalResult:Ljava/util/concurrent/atomic/AtomicReference;

    #@29
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2f
    .line 895
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@31
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@34
    .line 899
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@36
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@39
    .line 886
    return-void

    #@3a
    .line 890
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    #@3c
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    #@3e
    const/4 v2, 0x1

    #@3f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    #@45
    goto :goto_0
.end method
