.class Landroid/provider/DeviceConfigInterface$1;
.super Ljava/lang/Object;
.source "DeviceConfigInterface.java"

# interfaces
.implements Landroid/provider/DeviceConfigInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DeviceConfigInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 191
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 192
    return-void
.end method

.method public blacklist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 153
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 179
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 185
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public blacklist getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 168
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 173
    invoke-static {p1, p2, p3, p4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 134
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 128
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 163
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 197
    invoke-static {p1}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 198
    return-void
.end method

.method public blacklist resetToDefaults(ILjava/lang/String;)V
    .registers 3
    .param p1, "resetMode"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .line 158
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public blacklist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .registers 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Landroid/provider/DeviceConfig;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z

    move-result v0

    return v0
.end method

.method public blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z

    .line 141
    invoke-static {p1, p2, p3, p4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
