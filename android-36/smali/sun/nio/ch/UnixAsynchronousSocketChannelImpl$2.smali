.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;
.super Ljava/lang/Object;
.source "UnixAsynchronousSocketChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 660
    .local v1, "att":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 662
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v3}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetupdateLock(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 663
    :try_start_a
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetwritePending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 664
    monitor-exit v3

    return-void

    .line 665
    :cond_14
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fputwritePending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)V

    .line 666
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetwriteHandler(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;

    move-result-object v4

    move-object v0, v4

    .line 667
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetwriteAttachment(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 668
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetwriteFuture(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;

    move-result-object v4

    move-object v2, v4

    .line 669
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_48

    .line 672
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting(Z)V

    .line 675
    new-instance v3, Ljava/nio/channels/InterruptedByTimeoutException;

    invoke-direct {v3}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    .line 676
    .local v3, "exc":Ljava/lang/Exception;
    if-eqz v0, :cond_44

    .line 677
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v5, 0x0

    invoke-static {v4, v0, v1, v5, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_47

    .line 680
    :cond_44
    invoke-virtual {v2, v3}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    .line 682
    :goto_47
    return-void

    .line 669
    .end local v3    # "exc":Ljava/lang/Exception;
    :catchall_48
    move-exception v4

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v4
.end method
