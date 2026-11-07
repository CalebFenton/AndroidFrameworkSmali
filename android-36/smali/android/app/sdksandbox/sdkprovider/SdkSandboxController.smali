.class public Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;
.super Ljava/lang/Object;
.source "SdkSandboxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;,
        Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;
    }
.end annotation


# static fields
.field public static final blacklist CLIENT_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.android.sdksandbox.client_sharedpreferences"

.field public static final whitelist SDK_SANDBOX_CONTROLLER_SERVICE:Ljava/lang/String; = "sdk_sandbox_controller_service"

.field private static final blacklist TAG:Ljava/lang/String; = "SdkSandboxController"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSdkSandboxActivityRegistry:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

.field private blacklist mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogLatenciesFromSandbox(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->logLatenciesFromSandbox(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->initialize(Landroid/content/Context;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    .line 88
    return-void
.end method

.method private blacklist enforceSandboxedSdkContextInitialization()V
    .registers 3

    .line 356
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/sdksandbox/SandboxedSdkContext;

    if-eqz v0, :cond_7

    .line 361
    return-void

    .line 357
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only available from the context obtained by calling android.app.sdksandbox.SandboxedSdkProvider#getContext()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist logLatenciesFromSandbox(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppReceivedCallFromSystemServer(J)V

    .line 367
    :try_start_7
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 368
    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v0

    .line 369
    invoke-interface {v0, p1}, Landroid/app/sdksandbox/ISdkToServiceCallback;->logLatenciesFromSandbox(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 377
    goto :goto_3c

    .line 370
    :catch_11
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging metrics for method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    invoke-virtual {p1}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    const-string v2, "SdkSandboxController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method private blacklist logSandboxActivityApiLatency(IIJ)V
    .registers 8
    .param p1, "method"    # I
    .param p2, "callResult"    # I
    .param p3, "timeEventStarted"    # J

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 383
    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v0

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p3

    long-to-int v1, v1

    .line 384
    invoke-interface {v0, p1, p2, v1}, Landroid/app/sdksandbox/ISdkToServiceCallback;->logSandboxActivityApiLatencyFromSandbox(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 390
    nop

    .line 391
    return-void

    .line 388
    :catch_11
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist getAppOwnedSdkSandboxInterfaces()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 118
    :try_start_3
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 119
    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/sdksandbox/SandboxedSdkContext;

    .line 121
    invoke-virtual {v1}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Landroid/app/sdksandbox/ISdkToServiceCallback;->getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    .line 118
    return-object v0

    .line 122
    :catch_16
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 295
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 296
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/sdksandbox/SandboxedSdkContext;

    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .line 213
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 216
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    const-string v1, "com.android.sdksandbox.client_sharedpreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    return-object v0
.end method

.method public whitelist getSandboxedSdks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 136
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 140
    .local v0, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 143
    :try_start_11
    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 144
    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/sdksandbox/SandboxedSdkContext;

    .line 146
    invoke-virtual {v2}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-interface {v1, v2, v0}, Landroid/app/sdksandbox/ISdkToServiceCallback;->getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_24

    .line 143
    return-object v1

    .line 148
    :catch_24
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getExistingInstance()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 103
    invoke-static {}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->getInstance()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxActivityRegistry:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    .line 104
    return-object p0
.end method

.method public whitelist loadSdk(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            "Landroid/app/sdksandbox/LoadSdkException;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p4, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/LoadSdkException;>;"
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 176
    new-instance v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;

    invoke-direct {v0, p0, p3, p4}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;-><init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    move-object v6, v0

    .line 177
    .local v6, "callbackProxy":Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$LoadSdkReceiverProxy;
    new-instance v4, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 181
    .local v4, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 184
    :try_start_17
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxLocalSingleton:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 185
    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/sdksandbox/SandboxedSdkContext;

    .line 187
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_25} :catch_2f

    .line 186
    move-object v3, p1

    move-object v5, p2

    .end local p1    # "sdkName":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .local v3, "sdkName":Ljava/lang/String;
    .local v5, "params":Landroid/os/Bundle;
    :try_start_27
    invoke-interface/range {v1 .. v6}, Landroid/app/sdksandbox/ISdkToServiceCallback;->loadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2c

    .line 194
    nop

    .line 195
    return-void

    .line 192
    :catch_2c
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .end local v3    # "sdkName":Ljava/lang/String;
    .end local v5    # "params":Landroid/os/Bundle;
    .restart local p1    # "sdkName":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    :catch_2f
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move-object p1, v0

    .line 193
    .end local p2    # "params":Landroid/os/Bundle;
    .restart local v3    # "sdkName":Ljava/lang/String;
    .restart local v5    # "params":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist registerSdkSandboxActivityHandler(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;)Landroid/os/IBinder;
    .registers 6
    .param p1, "sdkSandboxActivityHandler"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    .line 237
    invoke-static {}, Landroid/app/sdksandbox/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 242
    .local v0, "timeEventStarted":J
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 244
    iget-object v2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxActivityRegistry:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    iget-object v3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/sdksandbox/SandboxedSdkContext;

    .line 245
    invoke-virtual {v2, v3, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->register(Landroid/app/sdksandbox/SandboxedSdkContext;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;)Landroid/os/IBinder;

    move-result-object v2

    .line 247
    .local v2, "token":Landroid/os/IBinder;
    const/4 v3, 0x1

    invoke-direct {p0, v3, v3, v0, v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->logSandboxActivityApiLatency(IIJ)V

    .line 252
    return-object v2

    .line 238
    .end local v0    # "timeEventStarted":J
    .end local v2    # "token":Landroid/os/IBinder;
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist registerSdkSandboxClientImportanceListener(Ljava/util/concurrent/Executor;Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    .line 311
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 314
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getExistingInstance()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    move-result-object v0

    new-instance v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;

    invoke-direct {v1, p1, p2}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;)V

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->registerSdkSandboxClientImportanceListener(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;)V

    .line 317
    return-void
.end method

.method public whitelist unregisterSdkSandboxActivityHandler(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;)V
    .registers 6
    .param p1, "sdkSandboxActivityHandler"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    .line 273
    invoke-static {}, Landroid/app/sdksandbox/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 277
    .local v0, "timeEventStarted":J
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 279
    iget-object v2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->mSdkSandboxActivityRegistry:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    invoke-virtual {v2, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->unregister(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;)V

    .line 280
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->logSandboxActivityApiLatency(IIJ)V

    .line 285
    return-void

    .line 274
    .end local v0    # "timeEventStarted":J
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist unregisterSdkSandboxClientImportanceListener(Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    .line 332
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    invoke-direct {p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;->enforceSandboxedSdkContextInitialization()V

    .line 334
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getExistingInstance()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p1}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->unregisterSdkSandboxClientImportanceListener(Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;)V

    .line 336
    return-void
.end method
