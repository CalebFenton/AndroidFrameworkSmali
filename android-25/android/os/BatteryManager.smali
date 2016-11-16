.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_CHARGE_COUNTER:Ljava/lang/String; = "charge_counter"

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final EXTRA_MAX_CHARGING_VOLTAGE:Ljava/lang/String; = "max_charging_voltage"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private final mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    const-string/jumbo v0, "batterystats"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 215
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@10
    .line 218
    const-string/jumbo v0, "batteryproperties"

    #@13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@16
    move-result-object v0

    #@17
    .line 217
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    #@1d
    .line 214
    return-void
.end method

.method private queryProperty(I)J
    .locals 6
    .param p1, "id"    # I

    #@0
    .prologue
    .line 244
    iget-object v4, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 245
    const-wide/high16 v4, -0x8000000000000000L

    #@6
    return-wide v4

    #@7
    .line 249
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/BatteryProperty;

    #@9
    invoke-direct {v1}, Landroid/os/BatteryProperty;-><init>()V

    #@c
    .line 251
    .local v1, "prop":Landroid/os/BatteryProperty;
    iget-object v4, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    #@e
    invoke-interface {v4, p1, v1}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 252
    invoke-virtual {v1}, Landroid/os/BatteryProperty;->getLong()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-wide v2

    #@18
    .line 259
    .local v2, "ret":J
    :goto_0
    return-wide v2

    #@19
    .line 254
    .end local v2    # "ret":J
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    #@1b
    .restart local v2    # "ret":J
    goto :goto_0

    #@1c
    .line 255
    .end local v1    # "prop":Landroid/os/BatteryProperty;
    .end local v2    # "ret":J
    :catch_0
    move-exception v0

    #@1d
    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@20
    move-result-object v4

    #@21
    throw v4
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 272
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public getLongProperty(I)J
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 285
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public isCharging()Z
    .locals 2

    #@0
    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 230
    :catch_0
    move-exception v0

    #@8
    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method
