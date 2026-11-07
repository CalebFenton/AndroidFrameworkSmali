.class Landroid/telephony/MbmsDownloadSession$3;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsDownloadSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/MbmsDownloadSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 385
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindAndInitialize: Remote service returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v1, 0x3

    const-string v2, "Middleware service binding returned null"

    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 388
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 389
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmContext(Landroid/telephony/MbmsDownloadSession;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 391
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 337
    nop

    .line 338
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    move-result-object v0

    .line 341
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v2}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsDownloadSession;)I

    move-result v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v3}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_16} :catch_61

    .line 353
    .local v2, "result":I
    nop

    .line 354
    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    .line 360
    if-eqz v2, :cond_2b

    .line 361
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string v4, "Error returned during initialization"

    invoke-static {v3, v2, v4}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 362
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 363
    return-void

    .line 366
    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_38} :catch_43

    .line 372
    nop

    .line 373
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v1}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 374
    return-void

    .line 367
    :catch_43
    move-exception v3

    .line 368
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v5, 0x3

    const-string v6, "Middleware lost during initialization"

    invoke-static {v4, v5, v6}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 370
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 371
    return-void

    .line 356
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_54
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v1}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 357
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Middleware must not return an unknown error code"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    .end local v2    # "result":I
    :catch_61
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime exception during initialization"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    .line 350
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    const/16 v5, 0x67

    invoke-static {v3, v5, v4}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 352
    return-void

    .line 342
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_7e
    move-exception v2

    .line 343
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Service died before initialization"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 345
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 378
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindAndInitialize: Remote service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 380
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 381
    return-void
.end method
