.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiManagerDelegate"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mHasWifiPermission:Z

.field private blacklist mHasWifiPermissionComputed:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 512
    const-class v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mLock:Ljava/lang/Object;

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    .line 539
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mLock:Ljava/lang/Object;

    .line 531
    nop

    .line 532
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    .line 533
    return-void
.end method

.method private blacklist getWifiInfoLocked()Landroid/net/wifi/WifiInfo;
    .registers 4

    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 584
    :catch_7
    move-exception v0

    .line 587
    .local v0, "firstException":Ljava/lang/NullPointerException;
    :try_start_8
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v1

    .line 588
    :catch_f
    move-exception v1

    .line 589
    .local v1, "secondException":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist hasPermissionLocked()Z
    .registers 4

    .line 545
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermissionComputed:Z

    if-eqz v0, :cond_7

    .line 546
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    return v0

    .line 548
    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    .line 551
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 550
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    .line 554
    nop

    .line 555
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    if-eqz v0, :cond_31

    .line 556
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    goto :goto_32

    .line 557
    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 558
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermissionComputed:Z

    .line 559
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    return v0
.end method


# virtual methods
.method blacklist getWifiSsid()Ljava/lang/String;
    .registers 4

    .line 566
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->hasPermissionLocked()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 569
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getWifiInfoLocked()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 570
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_15

    .line 571
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 573
    :cond_15
    const-string v2, ""

    monitor-exit v0

    return-object v2

    .line 575
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1f

    .line 576
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method
