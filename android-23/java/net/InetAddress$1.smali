.class Ljava/net/InetAddress$1;
.super Ljava/lang/Thread;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/InetAddress;

.field final synthetic val$destinationAddress:Ljava/net/InetAddress;

.field final synthetic val$isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$sourceAddress:Ljava/net/InetAddress;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/InetAddress;
    .param p2, "val$destinationAddress"    # Ljava/net/InetAddress;
    .param p3, "val$sourceAddress"    # Ljava/net/InetAddress;
    .param p4, "val$timeout"    # I
    .param p5, "val$isReachable"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p6, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    .line 741
    iput-object p1, p0, Ljava/net/InetAddress$1;->this$0:Ljava/net/InetAddress;

    #@2
    iput-object p2, p0, Ljava/net/InetAddress$1;->val$destinationAddress:Ljava/net/InetAddress;

    #@4
    iput-object p3, p0, Ljava/net/InetAddress$1;->val$sourceAddress:Ljava/net/InetAddress;

    #@6
    iput p4, p0, Ljava/net/InetAddress$1;->val$timeout:I

    #@8
    iput-object p5, p0, Ljava/net/InetAddress$1;->val$isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    iput-object p6, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@c
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Ljava/net/InetAddress$1;->this$0:Ljava/net/InetAddress;

    #@2
    iget-object v2, p0, Ljava/net/InetAddress$1;->val$destinationAddress:Ljava/net/InetAddress;

    #@4
    iget-object v3, p0, Ljava/net/InetAddress$1;->val$sourceAddress:Ljava/net/InetAddress;

    #@6
    iget v4, p0, Ljava/net/InetAddress$1;->val$timeout:I

    #@8
    invoke-static {v1, v2, v3, v4}, Ljava/net/InetAddress;->-wrap0(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 745
    iget-object v1, p0, Ljava/net/InetAddress$1;->val$isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@14
    .line 748
    :goto_0
    iget-object v1, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@16
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@19
    move-result-wide v2

    #@1a
    const-wide/16 v4, 0x0

    #@1c
    cmp-long v1, v2, v4

    #@1e
    if-lez v1, :cond_0

    #@20
    .line 749
    iget-object v1, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@22
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 752
    :catch_0
    move-exception v0

    #@27
    .line 754
    :cond_0
    iget-object v1, p0, Ljava/net/InetAddress$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@29
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@2c
    .line 742
    return-void
.end method
