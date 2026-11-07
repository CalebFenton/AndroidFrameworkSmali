.class Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
.super Ljava/lang/Object;
.source "SimpleAsynchronousFileChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

.field final synthetic blacklist val$attachment:Ljava/lang/Object;

.field final synthetic blacklist val$fli:Lsun/nio/ch/FileLockImpl;

.field final synthetic blacklist val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic blacklist val$position:J

.field final synthetic blacklist val$result:Lsun/nio/ch/PendingFuture;

.field final synthetic blacklist val$shared:Z

.field final synthetic blacklist val$size:J


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;JJZLsun/nio/ch/FileLockImpl;Ljava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V
    .registers 11
    .param p1, "this$0"    # Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
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

    .line 196
    iput-object p1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iput-wide p2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$position:J

    iput-wide p4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$size:J

    iput-boolean p6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$shared:Z

    iput-object p7, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    iput-object p8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p9, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$result:Lsun/nio/ch/PendingFuture;

    iput-object p10, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$attachment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "exc":Ljava/lang/Throwable;
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 204
    .local v2, "ti":I
    :try_start_b
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 206
    :cond_10
    invoke-static {}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$sfgetnd()Lsun/nio/ch/FileDispatcher;

    move-result-object v3

    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v4, v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    iget-wide v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$position:J

    iget-wide v8, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$size:J

    iget-boolean v10, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$shared:Z

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v10}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v0

    .line 207
    .local v0, "n":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2e

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_10

    .line 208
    :cond_2e
    if-nez v0, :cond_3e

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_36} :catch_46
    .catchall {:try_start_b .. :try_end_36} :catchall_44

    if-eqz v3, :cond_3e

    .line 217
    :try_start_38
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_8a

    .line 218
    goto :goto_63

    .line 209
    :cond_3e
    :try_start_3e
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v2    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
    throw v3
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_46
    .catchall {:try_start_3e .. :try_end_44} :catchall_44

    .line 217
    .end local v0    # "n":I
    .restart local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
    :catchall_44
    move-exception v0

    goto :goto_83

    .line 211
    :catch_46
    move-exception v0

    .line 212
    .local v0, "x":Ljava/io/IOException;
    :try_start_47
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v3, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 213
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 214
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_44

    move-object v0, v3

    .line 215
    :cond_5c
    move-object v1, v0

    .line 217
    .end local v0    # "x":Ljava/io/IOException;
    :try_start_5d
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_8a

    .line 218
    nop

    .line 220
    :goto_63
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 221
    nop

    .line 222
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    if-nez v0, :cond_79

    .line 223
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$result:Lsun/nio/ch/PendingFuture;

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-virtual {v0, v3, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_82

    .line 225
    :cond_79
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$attachment:Ljava/lang/Object;

    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->val$fli:Lsun/nio/ch/FileLockImpl;

    invoke-static {v0, v3, v4, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    :goto_82
    return-void

    .line 217
    :goto_83
    :try_start_83
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-virtual {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 218
    nop

    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v2    # "ti":I
    .end local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
    throw v0
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_8a

    .line 220
    .restart local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "ti":I
    .restart local p0    # "this":Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;
    :catchall_8a
    move-exception v0

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;->this$0:Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-static {v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->-$$Nest$fgetthreads(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 221
    throw v0
.end method
