.class Landroid/telephony/MbmsGroupCallSession$3;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsGroupCallSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsGroupCallSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsGroupCallSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/MbmsGroupCallSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 305
    const-string v0, "MbmsGroupCallSession"

    const-string v1, "bindAndInitialize: Remote service returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "Middleware service binding returned null"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 308
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmContext(Landroid/telephony/MbmsGroupCallSession;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 311
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 253
    const-string v0, "MbmsGroupCallSession"

    .line 254
    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    move-result-object v1

    .line 257
    .local v1, "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    const/16 v2, 0x67

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v4}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v5}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsGroupCallSession;)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_19} :catch_6c

    .line 273
    .local v0, "result":I
    nop

    .line 274
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5f

    .line 280
    if-eqz v0, :cond_32

    .line 281
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v2}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v2

    const-string v4, "Error returned during initialization"

    invoke-virtual {v2, v0, v4}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 283
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    return-void

    .line 287
    :cond_32
    :try_start_32
    invoke-interface {v1}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v4}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsGroupCallSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3f} :catch_4a

    .line 293
    nop

    .line 294
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v2}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 295
    return-void

    .line 288
    :catch_4a
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v4}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "Middleware lost during initialization"

    invoke-virtual {v4, v5, v6}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 291
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    return-void

    .line 276
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5f
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-virtual {v2}, Landroid/telephony/MbmsGroupCallSession;->close()V

    .line 277
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Middleware must not return an unknown error code"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    .end local v0    # "result":I
    :catch_6c
    move-exception v4

    .line 267
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "Runtime exception during initialization"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v0

    .line 270
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {v0, v2, v5}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 272
    return-void

    .line 259
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_87
    move-exception v4

    .line 260
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Service died before initialization"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    move-result-object v0

    .line 263
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v0, v2, v5}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 264
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 299
    invoke-static {}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 300
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession$3;->this$0:Landroid/telephony/MbmsGroupCallSession;

    invoke-static {v0}, Landroid/telephony/MbmsGroupCallSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 301
    return-void
.end method
