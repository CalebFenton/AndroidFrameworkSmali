.class public Landroid/provider/DeviceConfigServiceDataStore;
.super Ljava/lang/Object;
.source "DeviceConfigServiceDataStore.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceConfigServiceDataStore"

.field private static final blacklist mLock:Ljava/lang/Object;


# instance fields
.field private blacklist mManager:Landroid/provider/DeviceConfigManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfigServiceDataStore;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/provider/DeviceConfigManager;)V
    .registers 2
    .param p1, "deviceConfigManager"    # Landroid/provider/DeviceConfigManager;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    .line 50
    return-void
.end method

.method private blacklist createManagerIfNeeded()Landroid/provider/DeviceConfigManager;
    .registers 5

    .line 53
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    if-eqz v0, :cond_7

    .line 54
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    return-object v0

    .line 56
    :cond_7
    sget-object v0, Landroid/provider/DeviceConfigServiceDataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_a
    iget-object v1, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    if-eqz v1, :cond_12

    .line 58
    iget-object v1, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    monitor-exit v0

    return-object v1

    .line 61
    :cond_12
    invoke-static {}, Landroid/provider/DeviceConfigInitializer;->getDeviceConfigServiceManager()Landroid/provider/DeviceConfigServiceManager;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/provider/DeviceConfigServiceManager;->getDeviceConfigUpdatableServiceRegisterer()Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/provider/DeviceConfigServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 65
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_2b

    .line 66
    invoke-static {v1}, Landroid/provider/aidl/IDeviceConfigManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/aidl/IDeviceConfigManager;

    move-result-object v2

    .line 68
    .local v2, "manager":Landroid/provider/aidl/IDeviceConfigManager;
    new-instance v3, Landroid/provider/DeviceConfigManager;

    invoke-direct {v3, v2}, Landroid/provider/DeviceConfigManager;-><init>(Landroid/provider/aidl/IDeviceConfigManager;)V

    iput-object v3, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    .line 70
    .end local v2    # "manager":Landroid/provider/aidl/IDeviceConfigManager;
    :cond_2b
    iget-object v2, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    monitor-exit v0

    return-object v2

    .line 71
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public blacklist clearMonitorCallback(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 153
    return-void
.end method

.method public blacklist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Landroid/provider/DeviceConfigServiceDataStore;->createManagerIfNeeded()Landroid/provider/DeviceConfigManager;

    .line 119
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    if-nez v0, :cond_9

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_9
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    invoke-virtual {v0, p1, p2}, Landroid/provider/DeviceConfigManager;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Landroid/provider/DeviceConfigServiceDataStore;->createManagerIfNeeded()Landroid/provider/DeviceConfigManager;

    .line 80
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    if-nez v0, :cond_12

    .line 85
    new-instance v0, Landroid/provider/DeviceConfig$Properties;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 87
    :cond_12
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    invoke-virtual {v0, p1, p2}, Landroid/provider/DeviceConfigManager;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSyncDisabledMode()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "contentObserver"    # Landroid/database/ContentObserver;

    .line 159
    return-void
.end method

.method public blacklist resetToDefaults(ILjava/lang/String;)V
    .registers 3
    .param p1, "resetMode"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public blacklist setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/provider/DeviceConfig$MonitorCallback;

    .line 148
    return-void
.end method

.method public blacklist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .registers 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Landroid/provider/DeviceConfigServiceDataStore;->createManagerIfNeeded()Landroid/provider/DeviceConfigManager;

    .line 94
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    if-nez v0, :cond_9

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_9
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getPropertyValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfigManager;->setProperties(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z

    .line 106
    invoke-direct {p0}, Landroid/provider/DeviceConfigServiceDataStore;->createManagerIfNeeded()Landroid/provider/DeviceConfigManager;

    .line 107
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    if-nez v0, :cond_9

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_9
    iget-object v0, p0, Landroid/provider/DeviceConfigServiceDataStore;->mManager:Landroid/provider/DeviceConfigManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/provider/DeviceConfigManager;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setSyncDisabledMode(I)V
    .registers 2
    .param p1, "syncDisabledMode"    # I

    .line 136
    return-void
.end method

.method public blacklist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .line 164
    return-void
.end method
