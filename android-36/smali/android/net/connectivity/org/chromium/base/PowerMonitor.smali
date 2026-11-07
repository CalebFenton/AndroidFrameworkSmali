.class public Landroid/net/connectivity/org/chromium/base/PowerMonitor;
.super Ljava/lang/Object;
.source "PowerMonitor.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/PowerMonitor$PowerStatus;,
        Landroid/net/connectivity/org/chromium/base/PowerMonitor$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sBatteryPowerStatus:I

.field private static blacklist sIsInitRequested:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$PvLgaapr92DEl37lwj4sHsRtq00()V
    .registers 0

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->createInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonBatteryChargingChanged(Z)V
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->onBatteryChargingChanged(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    nop

    .line 31
    const/4 v0, 0x0

    sput v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()V
    .registers 2

    .line 49
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 50
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-eqz v0, :cond_8

    return-void

    .line 51
    :cond_8
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sIsInitRequested:Z

    .line 52
    const-string v1, "PostPowerMonitorBroadcastReceiverInitToBackground"

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 54
    new-instance v1, Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    goto :goto_1f

    .line 56
    :cond_1c
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->createInternal()V

    .line 58
    :goto_1f
    return-void
.end method

.method public static blacklist createForTests()V
    .registers 1

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sIsInitRequested:Z

    .line 45
    return-void
.end method

.method private static blacklist createInternal()V
    .registers 7

    .line 61
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v1, "powerConnectedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    new-instance v2, Landroid/net/connectivity/org/chromium/base/PowerMonitor$1;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/PowerMonitor$1;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    nop

    .line 77
    nop

    .line 78
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 79
    .local v2, "powerManager":Landroid/os/PowerManager;
    if-eqz v2, :cond_2a

    .line 80
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/PowerMonitorForQ;->addThermalStatusListener(Landroid/os/PowerManager;)V

    .line 84
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_2a
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "ifilter":Landroid/content/IntentFilter;
    nop

    .line 86
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 90
    .local v3, "batteryStatusIntent":Landroid/content/Intent;
    if-eqz v3, :cond_49

    .line 94
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 96
    .local v4, "chargePlug":I
    new-instance v5, Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v6, 0x7

    invoke-static {v6, v5}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 106
    .end local v4    # "chargePlug":I
    :cond_49
    return-void
.end method

.method private static blacklist getBatteryPowerStatus()I
    .registers 3

    .line 125
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-nez v0, :cond_7

    .line 126
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->create()V

    .line 129
    :cond_7
    sget v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    packed-switch v0, :pswitch_data_2e

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_27
    const/4 v0, 0x2

    goto :goto_2c

    .line 134
    :pswitch_29
    const/4 v0, 0x1

    goto :goto_2c

    .line 132
    :pswitch_2b
    const/4 v0, 0x0

    .line 129
    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method

.method private static blacklist getCurrentThermalStatus()I
    .registers 2

    .line 160
    nop

    .line 165
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-nez v0, :cond_8

    .line 166
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->create()V

    .line 170
    :cond_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 172
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-nez v0, :cond_18

    const/4 v1, -0x1

    return v1

    .line 173
    :cond_18
    invoke-virtual {v0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v1

    return v1
.end method

.method private static blacklist getRemainingBatteryCapacity()I
    .registers 1

    .line 144
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sIsInitRequested:Z

    if-nez v0, :cond_7

    .line 145
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->create()V

    .line 147
    :cond_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->getRemainingBatteryCapacityImpl()I

    move-result v0

    return v0
.end method

.method private static blacklist getRemainingBatteryCapacityImpl()I
    .registers 2

    .line 152
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 151
    return v0
.end method

.method static synthetic blacklist lambda$createInternal$0(I)V
    .registers 2
    .param p0, "chargePlug"    # I

    .line 100
    sget v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    if-nez v0, :cond_c

    .line 102
    if-nez p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->onBatteryChargingChanged(Z)V

    .line 104
    :cond_c
    return-void
.end method

.method private static blacklist onBatteryChargingChanged(Z)V
    .registers 2
    .param p0, "isBatteryPower"    # Z

    .line 111
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 113
    nop

    .line 115
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    :goto_9
    sput v0, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->sBatteryPowerStatus:I

    .line 116
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitorJni;->get()Landroid/net/connectivity/org/chromium/base/PowerMonitor$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/PowerMonitor$Natives;->onBatteryChargingChanged()V

    .line 117
    return-void
.end method
