.class Landroid/telephony/MbmsStreamingSession$3;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsStreamingSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsStreamingSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/MbmsStreamingSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 346
    const-string v0, "MbmsStreamingSession"

    const-string v1, "bindAndInitialize: Remote service returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const/4 v1, 0x3

    const-string v2, "Middleware service binding returned null"

    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 350
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmContext(Landroid/telephony/MbmsStreamingSession;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 352
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 295
    const-string v0, "MbmsStreamingSession"

    .line 296
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    move-result-object v1

    .line 299
    .local v1, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    const/16 v2, 0x67

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v4}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v5}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsStreamingSession;)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_7b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_19} :catch_64

    .line 315
    .local v0, "result":I
    nop

    .line 316
    const/4 v2, -0x1

    if-eq v0, v2, :cond_57

    .line 322
    if-eqz v0, :cond_2e

    .line 323
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const-string v4, "Error returned during initialization"

    invoke-static {v2, v0, v4}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    .line 324
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 325
    return-void

    .line 328
    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v4}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3b} :catch_46

    .line 334
    nop

    .line 335
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v2}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 336
    return-void

    .line 329
    :catch_46
    move-exception v2

    .line 330
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const/4 v5, 0x3

    const-string v6, "Middleware lost during initialization"

    invoke-static {v4, v5, v6}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    .line 332
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    return-void

    .line 318
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_57
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 319
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Middleware must not return an unknown error code"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    .end local v0    # "result":I
    :catch_64
    move-exception v4

    .line 309
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Runtime exception during initialization"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    .line 312
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-static {v0, v2, v5}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    .line 313
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    return-void

    .line 301
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_7b
    move-exception v4

    .line 302
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Service died before initialization"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    .line 305
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v0, v2, v5}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 340
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 342
    return-void
.end method
