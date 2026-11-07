.class final Landroid/location/provider/LocationProviderBase$Service;
.super Landroid/location/provider/ILocationProvider$Stub;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/LocationProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/provider/LocationProviderBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$fz8I5UF4bGVOCWmbHSzkv2MRI2I(Landroid/location/provider/LocationProviderBase$Service;)V
    .registers 1

    invoke-direct {p0}, Landroid/location/provider/LocationProviderBase$Service;->onFlushComplete()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/location/provider/LocationProviderBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-direct {p0}, Landroid/location/provider/ILocationProvider$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$flush$1(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 349
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic blacklist lambda$sendExtraCommand$2(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 373
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic blacklist lambda$setRequest$0(Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 336
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private blacklist onFlushComplete()V
    .registers 4

    .line 355
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v0, v0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 356
    .local v0, "manager":Landroid/location/provider/ILocationProviderManager;
    if-eqz v0, :cond_12

    .line 358
    :try_start_6
    invoke-interface {v0}, Landroid/location/provider/ILocationProviderManager;->onFlushComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a

    .line 361
    goto :goto_12

    .line 359
    :catch_a
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .registers 4

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    new-instance v1, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;-><init>(Landroid/location/provider/LocationProviderBase$Service;)V

    invoke-virtual {v0, v1}, Landroid/location/provider/LocationProviderBase;->onFlush(Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    .line 351
    goto :goto_24

    .line 345
    :catch_b
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda3;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method

.method public blacklist sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1, p2}, Landroid/location/provider/LocationProviderBase;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 375
    goto :goto_1f

    .line 369
    :catch_6
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1f
    return-void
.end method

.method public blacklist setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V
    .registers 6
    .param p1, "manager"    # Landroid/location/provider/ILocationProviderManager;

    .line 317
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v0, v0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 319
    :try_start_5
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-boolean v1, v1, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    iget-object v3, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v3, v3, Landroid/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/location/provider/ILocationProviderManager;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_14} :catch_17
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 322
    goto :goto_1f

    .line 325
    :catchall_15
    move-exception v1

    goto :goto_25

    .line 320
    :catch_17
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iput-object p1, v1, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_15

    throw v1
.end method

.method public blacklist setRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/location/provider/ProviderRequest;

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProviderBase;->onSetRequest(Landroid/location/provider/ProviderRequest;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 338
    goto :goto_1f

    .line 332
    :catch_6
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1f
    return-void
.end method
