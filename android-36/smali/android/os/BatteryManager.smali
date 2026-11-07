.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final whitelist ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final whitelist ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final whitelist BATTERY_CAPACITY_LEVEL_CRITICAL:I = 0x1

.field public static final whitelist BATTERY_CAPACITY_LEVEL_FULL:I = 0x5

.field public static final whitelist BATTERY_CAPACITY_LEVEL_HIGH:I = 0x4

.field public static final whitelist BATTERY_CAPACITY_LEVEL_LOW:I = 0x2

.field public static final whitelist BATTERY_CAPACITY_LEVEL_NORMAL:I = 0x3

.field public static final whitelist BATTERY_CAPACITY_LEVEL_UNKNOWN:I = 0x0

.field public static final whitelist BATTERY_CAPACITY_LEVEL_UNSUPPORTED:I = -0x1

.field public static final whitelist BATTERY_HEALTH_COLD:I = 0x7

.field public static final whitelist BATTERY_HEALTH_DEAD:I = 0x4

.field public static final whitelist BATTERY_HEALTH_GOOD:I = 0x2

.field public static final whitelist BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final whitelist BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final whitelist BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final whitelist BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final whitelist BATTERY_PLUGGED_AC:I = 0x1

.field public static final greylist-max-o BATTERY_PLUGGED_ANY:I = 0xf

.field public static final whitelist BATTERY_PLUGGED_DOCK:I = 0x8

.field public static final whitelist BATTERY_PLUGGED_USB:I = 0x2

.field public static final whitelist BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final whitelist BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final whitelist BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final whitelist BATTERY_PROPERTY_CHARGING_POLICY:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final whitelist BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final whitelist BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final whitelist BATTERY_PROPERTY_FIRST_USAGE_DATE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_PROPERTY_MANUFACTURING_DATE:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_PROPERTY_PART_STATUS:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_PROPERTY_SERIAL_NUMBER:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_PROPERTY_STATE_OF_HEALTH:I = 0xa

.field public static final whitelist BATTERY_PROPERTY_STATUS:I = 0x6

.field public static final whitelist BATTERY_STATUS_CHARGING:I = 0x2

.field public static final whitelist BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final whitelist BATTERY_STATUS_FULL:I = 0x5

.field public static final whitelist BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final whitelist BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final whitelist CHARGING_POLICY_ADAPTIVE_AC:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHARGING_POLICY_ADAPTIVE_AON:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHARGING_POLICY_ADAPTIVE_LONGLIFE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHARGING_POLICY_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_BATTERY_LOW:Ljava/lang/String; = "battery_low"

.field public static final whitelist EXTRA_CAPACITY_LEVEL:Ljava/lang/String; = "android.os.extra.CAPACITY_LEVEL"

.field public static final greylist-max-r EXTRA_CHARGE_COUNTER:Ljava/lang/String; = "charge_counter"

.field public static final whitelist EXTRA_CHARGING_STATUS:Ljava/lang/String; = "android.os.extra.CHARGING_STATUS"

.field public static final whitelist EXTRA_CYCLE_COUNT:Ljava/lang/String; = "android.os.extra.CYCLE_COUNT"

.field public static final whitelist EXTRA_EVENTS:Ljava/lang/String; = "android.os.extra.EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EVENT_TIMESTAMP:Ljava/lang/String; = "android.os.extra.EVENT_TIMESTAMP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final whitelist EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final greylist EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final whitelist EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final greylist-max-r EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final greylist-max-r EXTRA_MAX_CHARGING_VOLTAGE:Ljava/lang/String; = "max_charging_voltage"

.field public static final whitelist EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final whitelist EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final whitelist EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final greylist-max-o EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final whitelist EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final whitelist EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"

.field public static final whitelist PART_STATUS_ORIGINAL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PART_STATUS_REPLACED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PART_STATUS_UNSUPPORTED:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final greylist-max-o mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 526
    nop

    .line 527
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 528
    nop

    .line 529
    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 528
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 530
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Landroid/os/IBatteryPropertiesRegistrar;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "batteryPropertiesRegistrar"    # Landroid/os/IBatteryPropertiesRegistrar;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 537
    iput-object p2, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 538
    iput-object p3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 539
    return-void
.end method

.method public static blacklist isAdaptiveChargingPolicy(I)Z
    .registers 2
    .param p0, "policy"    # I

    .line 331
    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static greylist-max-o isPlugWired(I)Z
    .registers 3
    .param p0, "plugType"    # I

    .line 657
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_8

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_8
    return v1
.end method

.method private greylist-max-o queryProperty(I)J
    .registers 5
    .param p1, "id"    # I

    .line 564
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v0, :cond_7

    .line 565
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 569
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/BatteryProperty;

    invoke-direct {v0}, Landroid/os/BatteryProperty;-><init>()V

    .line 570
    .local v0, "prop":Landroid/os/BatteryProperty;
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v1, p1, v0}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v1

    if-nez v1, :cond_19

    .line 571
    invoke-virtual {v0}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1d

    .local v1, "ret":J
    goto :goto_1b

    .line 573
    .end local v1    # "ret":J
    :cond_19
    const-wide/high16 v1, -0x8000000000000000L

    .line 576
    .end local v0    # "prop":Landroid/os/BatteryProperty;
    .restart local v1    # "ret":J
    :goto_1b
    nop

    .line 578
    return-wide v1

    .line 574
    .end local v1    # "ret":J
    :catch_1d
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist queryStringProperty(I)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # I

    .line 585
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 586
    return-object v1

    .line 590
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/BatteryProperty;

    invoke-direct {v0}, Landroid/os/BatteryProperty;-><init>()V

    .line 591
    .local v0, "prop":Landroid/os/BatteryProperty;
    iget-object v2, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v2, p1, v0}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v2

    if-nez v2, :cond_18

    .line 592
    invoke-virtual {v0}, Landroid/os/BatteryProperty;->getString()Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    return-object v1

    .line 594
    :cond_18
    return-object v1

    .line 595
    .end local v0    # "prop":Landroid/os/BatteryProperty;
    :catch_19
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist computeChargeTimeRemaining()J
    .registers 3

    .line 670
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 671
    :catch_7
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIntProperty(I)I
    .registers 6
    .param p1, "id"    # I

    .line 610
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    .line 611
    .local v0, "value":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/os/BatteryManager;->mContext:Landroid/content/Context;

    .line 612
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1d

    .line 614
    const/high16 v2, -0x80000000

    return v2

    .line 617
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public whitelist getLongProperty(I)J
    .registers 4
    .param p1, "id"    # I

    .line 630
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getStringProperty(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 645
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryStringProperty(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isCharging()Z
    .registers 3

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 550
    :catch_7
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setChargingStateUpdateDelayMillis(I)Z
    .registers 4
    .param p1, "delayMillis"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 692
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->setChargingStateUpdateDelayMillis(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 693
    :catch_7
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
