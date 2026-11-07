.class public Landroid/provider/DeviceConfigInitializer;
.super Ljava/lang/Object;
.source "DeviceConfigInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static blacklist sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfigInitializer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static blacklist getDeviceConfigServiceManager()Landroid/provider/DeviceConfigServiceManager;
    .registers 2

    .line 63
    sget-object v0, Landroid/provider/DeviceConfigInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Landroid/provider/DeviceConfigInitializer;->sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist setDeviceConfigServiceManager(Landroid/provider/DeviceConfigServiceManager;)V
    .registers 4
    .param p0, "serviceManager"    # Landroid/provider/DeviceConfigServiceManager;

    .line 47
    sget-object v0, Landroid/provider/DeviceConfigInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Landroid/provider/DeviceConfigInitializer;->sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

    if-nez v1, :cond_11

    .line 51
    const-string/jumbo v1, "serviceManager must not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    sput-object p0, Landroid/provider/DeviceConfigInitializer;->sDeviceConfigServiceManager:Landroid/provider/DeviceConfigServiceManager;

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 49
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setDeviceConfigServiceManager called twice!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "serviceManager":Landroid/provider/DeviceConfigServiceManager;
    throw v1

    .line 54
    .restart local p0    # "serviceManager":Landroid/provider/DeviceConfigServiceManager;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
