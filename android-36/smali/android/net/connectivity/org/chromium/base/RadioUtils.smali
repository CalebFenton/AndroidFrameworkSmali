.class public Landroid/net/connectivity/org/chromium/base/RadioUtils;
.super Ljava/lang/Object;
.source "RadioUtils.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sHaveAccessNetworkState:Ljava/lang/Boolean;

.field private static blacklist sHaveAccessWifiState:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 24
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCellDataActivity()I
    .registers 4

    .line 138
    nop

    .line 139
    const-string v0, "RadioUtils::getCellDataActivity"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 142
    .local v0, "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    .line 145
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v2
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_17} :catch_1d
    .catchall {:try_start_13 .. :try_end_17} :catchall_26

    .line 150
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 145
    :cond_1c
    return v2

    .line 146
    :catch_1d
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/SecurityException;
    nop

    .line 150
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 148
    :cond_24
    const/4 v3, -0x1

    return v3

    .line 139
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catchall_26
    move-exception v1

    if-eqz v0, :cond_31

    :try_start_29
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw v1
.end method

.method private static blacklist getCellSignalLevel()I
    .registers 5

    .line 110
    nop

    .line 111
    const-string v0, "RadioUtils::getCellSignalLevel"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 114
    .local v0, "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_28

    .line 116
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v2, -0x1

    .line 118
    .local v2, "level":I
    :try_start_14
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 119
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    if-eqz v3, :cond_1f

    .line 120
    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1e} :catch_20
    .catchall {:try_start_14 .. :try_end_1e} :catchall_28

    move v2, v4

    .line 125
    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_1f
    goto :goto_21

    .line 122
    :catch_20
    move-exception v3

    .line 126
    :goto_21
    nop

    .line 127
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 126
    :cond_27
    return v2

    .line 111
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "level":I
    :catchall_28
    move-exception v1

    if-eqz v0, :cond_33

    :try_start_2b
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw v1
.end method

.method private static blacklist haveAccessNetworkState()Z
    .registers 4

    .line 48
    sget-object v0, Landroid/net/connectivity/org/chromium/base/RadioUtils;->sHaveAccessNetworkState:Ljava/lang/Boolean;

    if-nez v0, :cond_21

    .line 51
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 54
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 50
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v3, v1, v2}, Landroid/net/connectivity/org/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/RadioUtils;->sHaveAccessNetworkState:Ljava/lang/Boolean;

    .line 57
    :cond_21
    sget-object v0, Landroid/net/connectivity/org/chromium/base/RadioUtils;->sHaveAccessNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static blacklist haveAccessWifiState()Z
    .registers 4

    .line 63
    sget-object v0, Landroid/net/connectivity/org/chromium/base/RadioUtils;->sHaveAccessWifiState:Ljava/lang/Boolean;

    if-nez v0, :cond_21

    .line 66
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 69
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 65
    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v3, v1, v2}, Landroid/net/connectivity/org/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/RadioUtils;->sHaveAccessWifiState:Ljava/lang/Boolean;

    .line 72
    :cond_21
    sget-object v0, Landroid/net/connectivity/org/chromium/base/RadioUtils;->sHaveAccessWifiState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static blacklist isSupported()Z
    .registers 1

    .line 40
    nop

    .line 41
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/RadioUtils;->haveAccessNetworkState()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/RadioUtils;->haveAccessWifiState()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 40
    :goto_10
    return v0
.end method

.method private static blacklist isWifiConnected()Z
    .registers 5

    .line 83
    nop

    .line 84
    const-string v0, "RadioUtils::isWifiConnected"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 87
    .local v0, "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 89
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_3a

    .line 90
    .local v2, "network":Landroid/net/Network;
    const/4 v3, 0x0

    if-nez v2, :cond_21

    .line 91
    nop

    .line 99
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 91
    :cond_20
    return v3

    .line 93
    :cond_21
    nop

    .line 94
    :try_start_22
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_3a

    .line 95
    .local v4, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-nez v4, :cond_2f

    .line 96
    nop

    .line 99
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 96
    :cond_2e
    return v3

    .line 98
    :cond_2f
    const/4 v3, 0x1

    :try_start_30
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_3a

    .line 99
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 98
    :cond_39
    return v3

    .line 84
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "network":Landroid/net/Network;
    .end local v4    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :catchall_3a
    move-exception v1

    if-eqz v0, :cond_45

    :try_start_3d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v1
.end method
