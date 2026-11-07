.class public Landroid/provider/SettingsConfigDataStore;
.super Ljava/lang/Object;
.source "SettingsConfigDataStore.java"

# interfaces
.implements Landroid/provider/DeviceConfigDataStore;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearMonitorCallback(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 92
    invoke-static {p1}, Landroid/provider/Settings$Config;->clearMonitorCallback(Landroid/content/ContentResolver;)V

    .line 93
    return-void
.end method

.method public blacklist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 66
    invoke-static {p1, p2}, Landroid/provider/Settings$Config;->deleteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAllProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Landroid/provider/Settings$Config;->getAllStrings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/provider/DeviceConfig$Properties;

    .line 48
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/provider/Settings$Config;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    return-object v0
.end method

.method public blacklist getSyncDisabledMode()I
    .registers 2

    .line 81
    invoke-static {}, Landroid/provider/Settings$Config;->getSyncDisabledMode()I

    move-result v0

    return v0
.end method

.method public blacklist registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "notifyForescendants"    # Z
    .param p3, "contentObserver"    # Landroid/database/ContentObserver;

    .line 98
    const/4 v0, 0x1

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$Config;->registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    .line 99
    return-void
.end method

.method public blacklist resetToDefaults(ILjava/lang/String;)V
    .registers 3
    .param p1, "resetMode"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .line 71
    invoke-static {p1, p2}, Landroid/provider/Settings$Config;->resetToDefaults(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public blacklist setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/provider/DeviceConfig$MonitorCallback;

    .line 87
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Config;->setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    .line 88
    return-void
.end method

.method public blacklist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getPropertyValues()Ljava/util/Map;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/provider/Settings$Config;->setStrings(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z

    .line 61
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Config;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist setSyncDisabledMode(I)V
    .registers 2
    .param p1, "syncDisabledMode"    # I

    .line 76
    invoke-static {p1}, Landroid/provider/Settings$Config;->setSyncDisabledMode(I)V

    .line 77
    return-void
.end method

.method public blacklist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .line 103
    invoke-static {p1}, Landroid/provider/Settings$Config;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    return-void
.end method
