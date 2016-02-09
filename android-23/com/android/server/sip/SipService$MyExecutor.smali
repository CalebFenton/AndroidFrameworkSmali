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
.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/sip/SipService;

    #@0
    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@2
    .line 1244
    invoke-static {}, Lcom/android/server/sip/SipService;->-wrap0()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 1243
    return-void
.end method

.method private executeInternal(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1264
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 1268
    iget-object v1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@5
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    #@c
    .line 1262
    :goto_0
    return-void

    #@d
    .line 1265
    :catch_0
    move-exception v0

    #@e
    .line 1266
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "run task: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipService;->-wrap6(Lcom/android/server/sip/SipService;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 1268
    iget-object v1, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@29
    invoke-static {v1}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    #@30
    goto :goto_0

    #@31
    .line 1267
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@32
    .line 1268
    iget-object v2, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@34
    invoke-static {v2}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    #@3b
    .line 1267
    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@2
    invoke-static {v0}, Lcom/android/server/sip/SipService;->-get4(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    #@9
    .line 1250
    const/4 v0, 0x0

    #@a
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 1248
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1255
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/lang/Runnable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1256
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/lang/Runnable;

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$MyExecutor;->executeInternal(Ljava/lang/Runnable;)V

    #@d
    .line 1254
    :goto_0
    return-void

    #@e
    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$MyExecutor;->this$0:Lcom/android/server/sip/SipService;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "handleMessage: not Runnable ignore msg="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Lcom/android/server/sip/SipService;->-wrap5(Lcom/android/server/sip/SipService;Ljava/lang/String;)V

    #@27
    goto :goto_0
.end method
