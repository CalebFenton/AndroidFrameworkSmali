.class Landroid/os/TestLooperManager$LooperHolder;
.super Ljava/lang/Object;
.source "TestLooperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperHolder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/TestLooperManager;


# direct methods
.method private constructor blacklist <init>(Landroid/os/TestLooperManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;)V

    return-void
.end method

.method private greylist-max-o processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    .registers 4
    .param p1, "mex"    # Landroid/os/TestLooperManager$MessageExecution;

    .line 256
    monitor-enter p1

    .line 258
    :try_start_1
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetm(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetm(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 259
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fputresponse(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    .line 262
    goto :goto_17

    .line 260
    :catchall_13
    move-exception v0

    .line 261
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_14
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fputresponse(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_17
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 264
    monitor-exit p1

    .line 265
    return-void

    .line 264
    :catchall_1c
    move-exception v0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v0}, Landroid/os/TestLooperManager;->-$$Nest$fgetmLooperHolderLatch(Landroid/os/TestLooperManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 243
    :goto_9
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v0}, Landroid/os/TestLooperManager;->-$$Nest$fgetmReleased(Landroid/os/TestLooperManager;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 245
    :try_start_11
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v0}, Landroid/os/TestLooperManager;->-$$Nest$fgetmExecuteQueue(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TestLooperManager$MessageExecution;

    .line 246
    .local v0, "take":Landroid/os/TestLooperManager$MessageExecution;
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->-$$Nest$fgetm(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 247
    invoke-direct {p0, v0}, Landroid/os/TestLooperManager$LooperHolder;->processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_2f

    .line 249
    .end local v0    # "take":Landroid/os/TestLooperManager$MessageExecution;
    :catch_27
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 251
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2f
    :goto_2f
    goto :goto_9

    .line 253
    :cond_30
    return-void
.end method
