.class final Landroid/view/ViewDebug$5;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:[J

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$operation:Landroid/view/ViewDebug$ViewOperation;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/view/ViewDebug$ViewOperation;[J)V
    .locals 0
    .param p1, "val$latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "val$duration"    # [J

    #@0
    .prologue
    .line 626
    .local p2, "val$operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    iput-object p1, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@2
    iput-object p2, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    #@4
    iput-object p3, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 629
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    #@2
    invoke-interface {v1}, Landroid/view/ViewDebug$ViewOperation;->pre()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 630
    .local v0, "data":[Ljava/lang/Object;, "[TT;"
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    #@9
    move-result-wide v2

    #@a
    .line 632
    .local v2, "start":J
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    #@c
    invoke-interface {v1, v0}, Landroid/view/ViewDebug$ViewOperation;->run([Ljava/lang/Object;)V

    #@f
    .line 633
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$duration:[J

    #@11
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    #@14
    move-result-wide v4

    #@15
    sub-long/2addr v4, v2

    #@16
    const/4 v6, 0x0

    #@17
    aput-wide v4, v1, v6

    #@19
    .line 635
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$operation:Landroid/view/ViewDebug$ViewOperation;

    #@1b
    invoke-interface {v1, v0}, Landroid/view/ViewDebug$ViewOperation;->post([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 637
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@20
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@23
    .line 627
    return-void

    #@24
    .line 636
    .end local v0    # "data":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "start":J
    :catchall_0
    move-exception v1

    #@25
    .line 637
    iget-object v4, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@27
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@2a
    .line 636
    throw v1
.end method
