.class public interface abstract Landroid/provider/DeviceConfigDataStore;
.super Ljava/lang/Object;
.source "DeviceConfigDataStore.java"


# virtual methods
.method public abstract blacklist clearMonitorCallback(Landroid/content/ContentResolver;)V
.end method

.method public abstract blacklist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist getAllProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
.end method

.method public abstract blacklist getSyncDisabledMode()I
.end method

.method public abstract blacklist registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V
.end method

.method public abstract blacklist resetToDefaults(ILjava/lang/String;)V
.end method

.method public abstract blacklist setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
.end method

.method public abstract blacklist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation
.end method

.method public abstract blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract blacklist setSyncDisabledMode(I)V
.end method

.method public abstract blacklist unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method
