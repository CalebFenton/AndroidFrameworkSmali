.class Lcom/android/server/sip/SipService$MyExecutor;
.super Landroid/os/Handler;
.source "SipService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyExecutor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1251
    iput-object p1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    .line 1252
    invoke-static {}, Lcom/android/server/sip/SipService;->-$$Nest$smcreateLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1253
    return-void
.end method

.method private blacklist executeInternal(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 1272
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 1276
    :goto_3
    iget-object v0, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1277
    goto :goto_27

    .line 1273
    :catchall_d
    move-exception v0

    .line 1274
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_e
    iget-object v1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipService;->-$$Nest$mloge(Lcom/android/server/sip/SipService;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_28

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 1278
    :goto_27
    return-void

    .line 1276
    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1277
    throw v0
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 1257
    iget-object v0, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1258
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1259
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 1264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$MyExecutor;->executeInternal(Ljava/lang/Runnable;)V

    goto :goto_26

    .line 1266
    :cond_e
    iget-object v0, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: not Runnable ignore msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/sip/SipService;->-$$Nest$mlog(Lcom/android/server/sip/SipService;Ljava/lang/String;)V

    .line 1268
    :goto_26
    return-void
.end method
