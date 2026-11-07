.class Lsun/nio/ch/EPollPort$EventHandlerTask;
.super Ljava/lang/Object;
.source "EPollPort.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/EPollPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerTask"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/EPollPort;


# direct methods
.method private constructor blacklist <init>(Lsun/nio/ch/EPollPort;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/nio/ch/EPollPort;Lsun/nio/ch/EPollPort-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lsun/nio/ch/EPollPort$EventHandlerTask;-><init>(Lsun/nio/ch/EPollPort;)V

    return-void
.end method

.method private blacklist poll()Lsun/nio/ch/EPollPort$Event;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    nop

    :goto_1
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetepfd(Lsun/nio/ch/EPollPort;)I

    move-result v0

    iget-object v1, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v1}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetaddress(Lsun/nio/ch/EPollPort;)J

    move-result-wide v1

    const/16 v3, 0x200

    invoke-static {v0, v1, v2, v3}, Lsun/nio/ch/EPoll;->epollWait(IJI)I

    move-result v0

    .line 201
    .local v0, "n":I
    iget-object v1, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v1, v1, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_e6

    .line 203
    :goto_1e
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "n":I
    .local v1, "n":I
    if-lez v0, :cond_d8

    .line 204
    :try_start_22
    iget-object v0, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v0}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetaddress(Lsun/nio/ch/EPollPort;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lsun/nio/ch/EPoll;->getEvent(JI)J

    move-result-wide v2

    .line 205
    .local v2, "eventAddress":J
    invoke-static {v2, v3}, Lsun/nio/ch/EPoll;->getDescriptor(J)I

    move-result v0

    .line 208
    .local v0, "fd":I
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetsp(Lsun/nio/ch/EPollPort;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v0, v4, :cond_85

    .line 209
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetwakeupCount(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_52

    .line 211
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetsp(Lsun/nio/ch/EPollPort;)[I

    move-result-object v4

    aget v4, v4, v5

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$smdrain1(I)V

    .line 216
    :cond_52
    if-lez v1, :cond_64

    .line 217
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v4

    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v5}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetEXECUTE_TASK_OR_SHUTDOWN(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 218
    goto :goto_c7

    .line 220
    :cond_64
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetEXECUTE_TASK_OR_SHUTDOWN(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v4
    :try_end_6a
    .catchall {:try_start_22 .. :try_end_6a} :catchall_ca

    .line 238
    :try_start_6a
    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v5, v5, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_e6

    .line 244
    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v5}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v5

    iget-object v6, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v6}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetNEED_TO_POLL(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 220
    return-object v4

    .line 223
    :cond_85
    :try_start_85
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v4, v4, Lsun/nio/ch/EPollPort;->fdToChannel:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/ch/Port$PollableChannel;

    .line 224
    .local v4, "channel":Lsun/nio/ch/Port$PollableChannel;
    if-eqz v4, :cond_c6

    .line 225
    invoke-static {v2, v3}, Lsun/nio/ch/EPoll;->getEvents(J)I

    move-result v5

    .line 226
    .local v5, "events":I
    new-instance v6, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v6, v4, v5}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    .line 230
    .local v6, "ev":Lsun/nio/ch/EPollPort$Event;
    if-lez v1, :cond_aa

    .line 231
    iget-object v7, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v7}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_a9
    .catchall {:try_start_85 .. :try_end_a9} :catchall_ca

    goto :goto_c6

    .line 233
    :cond_aa
    nop

    .line 238
    :try_start_ab
    iget-object v7, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v7, v7, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_e6

    .line 244
    iget-object v7, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v7}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v7

    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetNEED_TO_POLL(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 233
    return-object v6

    .line 236
    .end local v0    # "fd":I
    .end local v2    # "eventAddress":J
    .end local v4    # "channel":Lsun/nio/ch/Port$PollableChannel;
    .end local v5    # "events":I
    .end local v6    # "ev":Lsun/nio/ch/EPollPort$Event;
    :cond_c6
    :goto_c6
    nop

    .line 203
    :goto_c7
    move v0, v1

    goto/16 :goto_1e

    .line 238
    :catchall_ca
    move-exception v0

    :try_start_cb
    iget-object v2, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v2, v2, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 239
    nop

    .end local p0    # "this":Lsun/nio/ch/EPollPort$EventHandlerTask;
    throw v0

    .line 238
    .restart local p0    # "this":Lsun/nio/ch/EPollPort$EventHandlerTask;
    :cond_d8
    iget-object v0, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v0, v0, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_e3
    .catchall {:try_start_cb .. :try_end_e3} :catchall_e6

    .line 239
    nop

    .line 240
    .end local v1    # "n":I
    goto/16 :goto_1

    .line 244
    :catchall_e6
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v1}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v2}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetNEED_TO_POLL(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 245
    throw v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 250
    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v0

    .line 251
    .local v0, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 252
    .local v1, "isPooledThread":Z
    :goto_9
    const/4 v2, 0x0

    .line 257
    .local v2, "replaceMe":Z
    :goto_a
    if-eqz v1, :cond_f

    .line 258
    :try_start_c
    invoke-virtual {v0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->resetInvokeCount()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_82

    .line 261
    :cond_f
    const/4 v2, 0x0

    .line 262
    :try_start_10
    iget-object v3, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v3}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetqueue(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/EPollPort$Event;

    .line 266
    .local v3, "ev":Lsun/nio/ch/EPollPort$Event;
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetNEED_TO_POLL(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v4
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_22} :catch_99
    .catchall {:try_start_10 .. :try_end_22} :catchall_82

    if-ne v3, v4, :cond_44

    .line 268
    :try_start_24
    invoke-direct {p0}, Lsun/nio/ch/EPollPort$EventHandlerTask;->poll()Lsun/nio/ch/EPollPort$Event;

    move-result-object v4
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_28} :catch_99
    .catchall {:try_start_24 .. :try_end_28} :catchall_82

    move-object v3, v4

    .line 272
    goto :goto_44

    .line 269
    :catch_2a
    move-exception v4

    .line 270
    .local v4, "x":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_99
    .catchall {:try_start_2b .. :try_end_2e} :catchall_82

    .line 302
    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v5, p0, v2}, Lsun/nio/ch/EPollPort;->threadExit(Ljava/lang/Runnable;Z)I

    move-result v5

    .line 303
    .local v5, "remaining":I
    if-nez v5, :cond_43

    iget-object v6, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v6}, Lsun/nio/ch/EPollPort;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 304
    iget-object v6, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v6}, Lsun/nio/ch/EPollPort;->-$$Nest$mimplClose(Lsun/nio/ch/EPollPort;)V

    .line 271
    .end local v5    # "remaining":I
    :cond_43
    return-void

    .line 276
    .end local v4    # "x":Ljava/io/IOException;
    :cond_44
    :goto_44
    nop

    .line 279
    :try_start_45
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v4}, Lsun/nio/ch/EPollPort;->-$$Nest$fgetEXECUTE_TASK_OR_SHUTDOWN(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v4

    if-ne v3, v4, :cond_70

    .line 280
    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v4}, Lsun/nio/ch/EPollPort;->pollTask()Ljava/lang/Runnable;

    move-result-object v4
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_82

    .line 281
    .local v4, "task":Ljava/lang/Runnable;
    if-nez v4, :cond_6b

    .line 302
    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v5, p0, v2}, Lsun/nio/ch/EPollPort;->threadExit(Ljava/lang/Runnable;Z)I

    move-result v5

    .line 303
    .restart local v5    # "remaining":I
    if-nez v5, :cond_6a

    iget-object v6, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v6}, Lsun/nio/ch/EPollPort;->isShutdown()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 304
    iget-object v6, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v6}, Lsun/nio/ch/EPollPort;->-$$Nest$mimplClose(Lsun/nio/ch/EPollPort;)V

    .line 283
    .end local v5    # "remaining":I
    :cond_6a
    return-void

    .line 286
    :cond_6b
    const/4 v2, 0x1

    .line 287
    :try_start_6c
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_82

    .line 288
    goto :goto_a

    .line 293
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_70
    :try_start_70
    invoke-virtual {v3}, Lsun/nio/ch/EPollPort$Event;->channel()Lsun/nio/ch/Port$PollableChannel;

    move-result-object v4

    invoke-virtual {v3}, Lsun/nio/ch/EPollPort$Event;->events()I

    move-result v5

    invoke-interface {v4, v5, v1}, Lsun/nio/ch/Port$PollableChannel;->onEvent(IZ)V
    :try_end_7b
    .catch Ljava/lang/Error; {:try_start_70 .. :try_end_7b} :catch_7f
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_7b} :catch_7c
    .catchall {:try_start_70 .. :try_end_7b} :catchall_82

    .line 298
    goto :goto_a

    .line 296
    :catch_7c
    move-exception v4

    .line 297
    .local v4, "x":Ljava/lang/RuntimeException;
    const/4 v2, 0x1

    .end local v0    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .end local v1    # "isPooledThread":Z
    .end local v2    # "replaceMe":Z
    .end local p0    # "this":Lsun/nio/ch/EPollPort$EventHandlerTask;
    :try_start_7e
    throw v4

    .line 294
    .end local v4    # "x":Ljava/lang/RuntimeException;
    .restart local v0    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .restart local v1    # "isPooledThread":Z
    .restart local v2    # "replaceMe":Z
    .restart local p0    # "this":Lsun/nio/ch/EPollPort$EventHandlerTask;
    :catch_7f
    move-exception v4

    .line 295
    .local v4, "x":Ljava/lang/Error;
    const/4 v2, 0x1

    .end local v0    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .end local v1    # "isPooledThread":Z
    .end local v2    # "replaceMe":Z
    .end local p0    # "this":Lsun/nio/ch/EPollPort$EventHandlerTask;
    throw v4
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    .line 302
    .end local v3    # "ev":Lsun/nio/ch/EPollPort$Event;
    .end local v4    # "x":Ljava/lang/Error;
    .restart local v0    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .restart local v1    # "isPooledThread":Z
    .restart local v2    # "replaceMe":Z
    .restart local p0    # "this":Lsun/nio/ch/EPollPort$EventHandlerTask;
    :catchall_82
    move-exception v3

    iget-object v4, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v4, p0, v2}, Lsun/nio/ch/EPollPort;->threadExit(Ljava/lang/Runnable;Z)I

    move-result v4

    .line 303
    .local v4, "remaining":I
    if-nez v4, :cond_98

    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v5}, Lsun/nio/ch/EPollPort;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 304
    iget-object v5, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v5}, Lsun/nio/ch/EPollPort;->-$$Nest$mimplClose(Lsun/nio/ch/EPollPort;)V

    .line 306
    .end local v4    # "remaining":I
    :cond_98
    throw v3

    .line 274
    :catch_99
    move-exception v3

    .line 275
    .local v3, "x":Ljava/lang/InterruptedException;
    goto/16 :goto_a
.end method
