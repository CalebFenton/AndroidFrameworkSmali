.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;
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

    .line 461
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 465
    .local v1, "att":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 467
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v3}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetupdateLock(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 468
    :try_start_a
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetreadPending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 469
    monitor-exit v3

    return-void

    .line 470
    :cond_14
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fputreadPending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)V

    .line 471
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetreadHandler(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;

    move-result-object v4

    move-object v0, v4

    .line 472
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetreadAttachment(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 473
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-$$Nest$fgetreadFuture(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;

    move-result-object v4

    move-object v2, v4

    .line 474
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_48

    .line 477
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading(Z)V

    .line 480
    new-instance v3, Ljava/nio/channels/InterruptedByTimeoutException;

    invoke-direct {v3}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    .line 481
    .local v3, "exc":Ljava/lang/Exception;
    if-nez v0, :cond_41

    .line 482
    invoke-virtual {v2, v3}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 484
    :cond_41
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .line 485
    .local v4, "ch":Ljava/nio/channels/AsynchronousChannel;
    const/4 v5, 0x0

    invoke-static {v4, v0, v1, v5, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 487
    .end local v4    # "ch":Ljava/nio/channels/AsynchronousChannel;
    :goto_47
    return-void

    .line 474
    .end local v3    # "exc":Ljava/lang/Exception;
    :catchall_48
    move-exception v4

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v4
.end method
