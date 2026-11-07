.class public Landroid/app/sdksandbox/SdkSandboxLocalSingleton;
.super Ljava/lang/Object;
.source "SdkSandboxLocalSingleton.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SandboxLocalSingleton"

.field private static blacklist sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSdkToServiceCallback:Landroid/app/sdksandbox/ISdkToServiceCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/sdksandbox/ISdkToServiceCallback;)V
    .registers 3
    .param p1, "sdkToServiceCallback"    # Landroid/app/sdksandbox/ISdkToServiceCallback;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkToServiceCallback:Landroid/app/sdksandbox/ISdkToServiceCallback;

    .line 51
    return-void
.end method

.method public static blacklist destroySingleton()V
    .registers 1

    .line 95
    const/4 v0, 0x0

    sput-object v0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 96
    return-void
.end method

.method public static blacklist getExistingInstance()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;
    .registers 2

    .line 86
    sget-object v0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    if-eqz v0, :cond_7

    .line 89
    sget-object v0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    return-object v0

    .line 87
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxLocalSingleton not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized blacklist initInstance(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "sdkToServiceBinder"    # Landroid/os/IBinder;

    const-class v0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    if-eqz v1, :cond_10

    .line 65
    const-string v1, "SandboxLocalSingleton"

    const-string v2, "Already Initialised"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_38

    .line 66
    monitor-exit v0

    return-void

    .line 69
    :cond_10
    :try_start_10
    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz p0, :cond_2e

    .line 71
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.sdksandbox.ISdkToServiceCallback"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 73
    new-instance v1, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    .line 75
    invoke-static {p0}, Landroid/app/sdksandbox/ISdkToServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;-><init>(Landroid/app/sdksandbox/ISdkToServiceCallback;)V

    sput-object v1, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->sInstance:Landroid/app/sdksandbox/SdkSandboxLocalSingleton;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2c} :catch_2f
    .catchall {:try_start_10 .. :try_end_2c} :catchall_38

    .line 76
    monitor-exit v0

    return-void

    .line 80
    :cond_2e
    goto :goto_30

    .line 78
    :catch_2f
    move-exception v1

    .line 81
    :goto_30
    :try_start_30
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "IBinder not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local p0    # "sdkToServiceBinder":Landroid/os/IBinder;
    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw p0
.end method


# virtual methods
.method public blacklist getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkToServiceCallback:Landroid/app/sdksandbox/ISdkToServiceCallback;

    return-object v0
.end method

.method public blacklist notifySdkSandboxClientImportanceChange(Z)V
    .registers 5
    .param p1, "isForeground"    # Z

    .line 133
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 135
    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;

    .line 137
    invoke-virtual {v2, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->onForegroundImportanceChanged(Z)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 139
    .end local v1    # "i":I
    :cond_1a
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist registerSdkSandboxClientImportanceListener(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;

    .line 106
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist unregisterSdkSandboxClientImportanceListener(Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    .line 118
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

    .line 120
    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;

    iget-object v2, v2, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->listener:Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    if-ne v2, p1, :cond_1e

    .line 121
    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->mSdkSandboxClientImportanceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 124
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method
