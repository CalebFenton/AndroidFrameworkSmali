.class final Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MulticastTransmitter"
.end annotation


# instance fields
.field private final mRandom:Ljava/util/Random;

.field private final mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    #@0
    .prologue
    .line 660
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 661
    new-instance v0, Ljava/util/Random;

    #@7
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@a
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    #@c
    .line 662
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@12
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    .line 660
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    #@3
    return-void
.end method

.method private getNextMulticastTransmitDelayMs()J
    .locals 4

    #@0
    .prologue
    .line 713
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelaySec()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const-wide/16 v2, 0x3e8

    #@7
    mul-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method private getNextMulticastTransmitDelaySec()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x12c

    #@2
    .line 694
    const/4 v0, 0x0

    #@3
    .line 695
    .local v0, "deprecationInProgress":Z
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@5
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    monitor-enter v3

    #@a
    .line 696
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@c
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get5(Landroid/net/ip/RouterAdvertisementDaemon;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v2

    #@10
    const/16 v4, 0x10

    #@12
    if-ge v2, v4, :cond_0

    #@14
    .line 698
    const v2, 0x15180

    #@17
    monitor-exit v3

    #@18
    return v2

    #@19
    .line 700
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@1b
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_2

    #@25
    const/4 v0, 0x0

    #@26
    :goto_0
    monitor-exit v3

    #@27
    .line 703
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    #@29
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    #@2c
    move-result v1

    #@2d
    .line 704
    .local v1, "urgentPending":I
    if-gtz v1, :cond_1

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 705
    :cond_1
    const/4 v2, 0x3

    #@32
    return v2

    #@33
    .line 700
    .end local v1    # "urgentPending":I
    :cond_2
    const/4 v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 695
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2

    #@38
    .line 708
    .restart local v1    # "urgentPending":I
    :cond_3
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    #@3a
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    #@3d
    move-result v2

    #@3e
    add-int/lit16 v2, v2, 0x12c

    #@40
    return v2
.end method


# virtual methods
.method public hup()V
    .locals 2

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@6
    .line 690
    invoke-virtual {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->interrupt()V

    #@9
    .line 684
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 666
    :goto_0
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 668
    :try_start_0
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelayMs()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 673
    :goto_1
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@11
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@13
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-get2(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    #@1a
    .line 674
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@1c
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    monitor-enter v2

    #@21
    .line 675
    :try_start_1
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@23
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 678
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2f
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap1(Landroid/net/ip/RouterAdvertisementDaemon;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    :cond_0
    monitor-exit v2

    #@33
    goto :goto_0

    #@34
    .line 674
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1

    #@37
    .line 665
    :cond_1
    return-void

    #@38
    .line 669
    :catch_0
    move-exception v0

    #@39
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_1
.end method
