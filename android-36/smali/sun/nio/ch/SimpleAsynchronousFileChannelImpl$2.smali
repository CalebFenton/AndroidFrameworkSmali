.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

.field final synthetic blacklist val$attachment:Ljava/lang/Object;

.field final synthetic blacklist val$dst:Ljava/nio/ByteBuffer;

.field final synthetic blacklist val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic blacklist val$position:J

.field final synthetic blacklist val$result:Lsun/nio/ch/PendingFuture;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V
    .registers 8
    .param p1, "this$0"    # Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iput-object p2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$dst:Ljava/nio/ByteBuffer;

    iput-wide p3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$position:J

    iput-object p5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$result:Lsun/nio/ch/PendingFuture;

    iput-object p7, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$attachment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "n":I
    const/4 v1, 0x0

    .line 316
    .local v1, "exc":Ljava/lang/Throwable;
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v2}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 318
    .local v2, "ti":I
    :try_start_c
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 320
    :cond_11
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v3, v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$dst:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$position:J

    invoke-static {}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$sfgetnd()Lsun/nio/ch/FileDispatcher;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v3

    move v0, v3

    .line 321
    const/4 v3, -0x3

    if-ne v0, v3, :cond_2d

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_11

    .line 322
    :cond_2d
    if-gez v0, :cond_50

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_50

    .line 323
    :cond_38
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v0    # "n":I
    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v2    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;
    throw v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3e} :catch_40
    .catchall {:try_start_c .. :try_end_3e} :catchall_3e

    .line 329
    .restart local v0    # "n":I
    .restart local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;
    :catchall_3e
    move-exception v3

    goto :goto_79

    .line 324
    :catch_40
    move-exception v3

    .line 325
    .local v3, "x":Ljava/io/IOException;
    :try_start_41
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 326
    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_3e

    move-object v3, v4

    .line 327
    :cond_4f
    move-object v1, v3

    .line 329
    .end local v3    # "x":Ljava/io/IOException;
    :cond_50
    :goto_50
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 330
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 331
    nop

    .line 332
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    if-nez v3, :cond_6d

    .line 333
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$result:Lsun/nio/ch/PendingFuture;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_78

    .line 335
    :cond_6d
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->val$attachment:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 337
    :goto_78
    return-void

    .line 329
    :goto_79
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 330
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 331
    throw v3
.end method
