.class public Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
.super Ljava/lang/Object;
.source "SdkSandboxActivityRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;,
        Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SdkSandboxActivityRegistry"

.field private static blacklist sInstance:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mHandlerToHandlerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;",
            "Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

.field private final blacklist mMapsLock:Ljava/lang/Object;

.field private final blacklist mTokenToHandlerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)V
    .registers 3
    .param p1, "injector"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    .line 72
    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->setInjector(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)V

    .line 73
    return-void
.end method

.method private blacklist extractActivityInitiationTime(Landroid/content/Intent;)J
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 285
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 288
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.app.sdksandbox.extra.EXTRA_SANDBOXED_ACTIVITY_INITIATION_TIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 286
    :cond_14
    :goto_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist extractHandlerToken(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 278
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 281
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.app.sdksandbox.extra.SANDBOXED_ACTIVITY_HANDLER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 279
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    .registers 1

    .line 77
    new-instance v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    invoke-direct {v0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;-><init>()V

    invoke-static {v0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->getInstance(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    .registers 3
    .param p0, "injector"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    .line 88
    sget-object v0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-object v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->sInstance:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    if-nez v1, :cond_f

    .line 90
    new-instance v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    invoke-direct {v1, p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;-><init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)V

    sput-object v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->sInstance:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    goto :goto_14

    .line 92
    :cond_f
    sget-object v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->sInstance:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    invoke-direct {v1, p0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->setInjector(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)V

    .line 94
    :goto_14
    sget-object v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->sInstance:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private blacklist logSandboxActivityApiLatency(IIJ)V
    .registers 8
    .param p1, "method"    # I
    .param p2, "callResult"    # I
    .param p3, "timeEventStarted"    # J

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    .line 294
    invoke-virtual {v0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;->getSdkSandboxLocalSingleton()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getSdkToServiceCallback()Landroid/app/sdksandbox/ISdkToServiceCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    .line 299
    invoke-virtual {v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p3

    long-to-int v1, v1

    .line 296
    invoke-interface {v0, p1, p2, v1}, Landroid/app/sdksandbox/ISdkToServiceCallback;->logSandboxActivityApiLatencyFromSandbox(III)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    .line 302
    nop

    .line 303
    return-void

    .line 300
    :catch_17
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist setInjector(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;)V
    .registers 2
    .param p1, "injector"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    .line 99
    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    .line 100
    return-void
.end method


# virtual methods
.method public blacklist getContextInfo(Landroid/content/Intent;)Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->extractHandlerToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 240
    .local v1, "handlerToken":Landroid/os/IBinder;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 241
    monitor-exit v0

    return-object v2

    .line 243
    :cond_c
    iget-object v3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    .line 244
    .local v3, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    if-nez v3, :cond_18

    .line 245
    monitor-exit v0

    return-object v2

    .line 247
    :cond_18
    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getContextInfo()Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 248
    .end local v1    # "handlerToken":Landroid/os/IBinder;
    .end local v3    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist getSdkContext(Landroid/content/Intent;)Landroid/app/sdksandbox/SandboxedSdkContext;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 263
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->extractHandlerToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 265
    .local v1, "handlerToken":Landroid/os/IBinder;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 266
    monitor-exit v0

    return-object v2

    .line 268
    :cond_c
    iget-object v3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    .line 269
    .local v3, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    if-nez v3, :cond_18

    .line 270
    monitor-exit v0

    return-object v2

    .line 272
    :cond_18
    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getSdkContext()Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 273
    .end local v1    # "handlerToken":Landroid/os/IBinder;
    .end local v3    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist notifyOnActivityCreation(Landroid/content/Intent;Landroid/app/Activity;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 177
    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->extractActivityInitiationTime(Landroid/content/Intent;)J

    move-result-wide v0

    .line 178
    .local v0, "sandboxActivityInitiationTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 181
    const-string v4, "android.app.sdksandbox.extra.EXTRA_SANDBOXED_ACTIVITY_INITIATION_TIME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 183
    :cond_f
    iget-object v4, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 184
    :try_start_12
    iget-object v5, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    invoke-virtual {v5}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 185
    .local v5, "timeEventStarted":J
    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->extractHandlerToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v7

    .line 186
    .local v7, "handlerToken":Landroid/os/IBinder;
    const/4 v8, 0x2

    const/16 v9, 0x9

    if-eqz v7, :cond_4c

    .line 197
    iget-object v10, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    .line 198
    .local v10, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    if-eqz v10, :cond_41

    .line 210
    const/4 v8, 0x1

    invoke-direct {p0, v9, v8, v5, v6}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->logSandboxActivityApiLatency(IIJ)V

    .line 215
    invoke-virtual {v10}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getHandler()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;->onActivityCreated(Landroid/app/Activity;)V

    .line 216
    .end local v5    # "timeEventStarted":J
    .end local v7    # "handlerToken":Landroid/os/IBinder;
    .end local v10    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_57

    .line 217
    cmp-long v2, v0, v2

    if-eqz v2, :cond_40

    .line 218
    const/16 v2, 0xa

    invoke-direct {p0, v2, v8, v0, v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->logSandboxActivityApiLatency(IIJ)V

    .line 223
    :cond_40
    return-void

    .line 199
    .restart local v5    # "timeEventStarted":J
    .restart local v7    # "handlerToken":Landroid/os/IBinder;
    .restart local v10    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    :cond_41
    :try_start_41
    invoke-direct {p0, v9, v8, v5, v6}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->logSandboxActivityApiLatency(IIJ)V

    .line 204
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "There is no registered SdkSandboxActivityHandler to notify"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sandboxActivityInitiationTime":J
    .end local p0    # "this":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v2

    .line 187
    .end local v10    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    .restart local v0    # "sandboxActivityInitiationTime":J
    .restart local p0    # "this":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_4c
    invoke-direct {p0, v9, v8, v5, v6}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->logSandboxActivityApiLatency(IIJ)V

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Extra params of the intent are missing the IBinder value for the key (android.app.sdksandbox.extra.SANDBOXED_ACTIVITY_HANDLER)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sandboxActivityInitiationTime":J
    .end local p0    # "this":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v2

    .line 216
    .end local v5    # "timeEventStarted":J
    .end local v7    # "handlerToken":Landroid/os/IBinder;
    .restart local v0    # "sandboxActivityInitiationTime":J
    .restart local p0    # "this":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_57
    move-exception v2

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_57

    throw v2
.end method

.method public blacklist register(Landroid/app/sdksandbox/SandboxedSdkContext;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;)Landroid/os/IBinder;
    .registers 10
    .param p1, "sdkContext"    # Landroid/app/sdksandbox/SandboxedSdkContext;
    .param p2, "handler"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    .line 117
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    invoke-virtual {v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;->elapsedRealtime()J

    move-result-wide v1

    .line 119
    .local v1, "timeEventStarted":J
    iget-object v3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 120
    iget-object v3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    .line 121
    .local v3, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getToken()Landroid/os/IBinder;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 124
    .end local v3    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    :cond_1f
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 125
    .local v3, "token":Landroid/os/IBinder;
    new-instance v4, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    invoke-direct {v4, p1, p2, v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;-><init>(Landroid/app/sdksandbox/SandboxedSdkContext;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;Landroid/os/IBinder;)V

    .line 126
    .local v4, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    iget-object v5, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getHandler()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v5, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v1, v2}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->logSandboxActivityApiLatency(IIJ)V

    .line 133
    monitor-exit v0

    return-object v3

    .line 134
    .end local v1    # "timeEventStarted":J
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public blacklist unregister(Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;)V
    .registers 8
    .param p1, "handler"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    .line 144
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mInjector:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;

    invoke-virtual {v1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;->elapsedRealtime()J

    move-result-wide v1

    .line 146
    .local v1, "timeEventStarted":J
    iget-object v3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    .line 147
    .local v3, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    if-nez v3, :cond_15

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_15
    iget-object v4, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getHandler()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v4, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v1, v2}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->logSandboxActivityApiLatency(IIJ)V

    .line 157
    .end local v1    # "timeEventStarted":J
    .end local v3    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist unregisterAllActivityHandlersForSdk(Ljava/lang/String;)V
    .registers 8
    .param p1, "sdkName"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mMapsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mHandlerToHandlerInfoMap:Ljava/util/Map;

    .line 317
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 318
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 319
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 320
    .local v2, "handlerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;

    .line 321
    .local v3, "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getSdkContext()Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 322
    invoke-virtual {v3}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 323
    .local v4, "handlerToken":Landroid/os/IBinder;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 324
    iget-object v5, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->mTokenToHandlerInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v2    # "handlerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;>;"
    .end local v3    # "handlerInfo":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
    .end local v4    # "handlerToken":Landroid/os/IBinder;
    :cond_39
    goto :goto_d

    .line 327
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;>;>;"
    :cond_3a
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method
