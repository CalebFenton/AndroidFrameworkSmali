.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080640

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "scanResults"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@5
    .line 97
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7
    .line 98
    const/4 v1, 0x4

    #@8
    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    #@a
    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    #@c
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@f
    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    #@12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@15
    .line 102
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1b
    .line 103
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@21
    .line 105
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@23
    .line 106
    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    #@25
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    #@28
    .line 105
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2b
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v1

    #@2f
    .line 135
    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    #@32
    const/16 v3, 0x384

    #@34
    .line 134
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@37
    move-result v1

    #@38
    int-to-long v2, v1

    #@39
    .line 135
    const-wide/16 v4, 0x3e8

    #@3b
    .line 134
    mul-long/2addr v2, v4

    #@3c
    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    #@3e
    .line 136
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    #@40
    new-instance v2, Landroid/os/Handler;

    #@42
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #@45
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    #@48
    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    #@4a
    .line 137
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    #@4c
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    #@4f
    .line 95
    return-void
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 8
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v6, 0x3

    #@1
    monitor-enter p0

    #@2
    .line 146
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v4, :cond_0

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    .line 147
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    if-eq v4, v6, :cond_1

    #@c
    monitor-exit p0

    #@d
    return-void

    #@e
    .line 149
    :cond_1
    :try_start_2
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@10
    .line 150
    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-eqz p1, :cond_2

    #@12
    .line 151
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@15
    move-result-object v3

    #@16
    .line 153
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@18
    if-eq v3, v4, :cond_3

    #@1a
    .line 154
    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #@1c
    if-ne v3, v4, :cond_7

    #@1e
    .line 155
    :cond_3
    if-eqz p2, :cond_7

    #@20
    .line 156
    const/4 v1, 0x0

    #@21
    .line 157
    .local v1, "numOpenNetworks":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@24
    move-result v4

    #@25
    add-int/lit8 v0, v4, -0x1

    #@27
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@29
    .line 158
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/net/wifi/ScanResult;

    #@2f
    .line 162
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@31
    if-eqz v4, :cond_4

    #@33
    .line 163
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@35
    const-string/jumbo v5, "[ESS]"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v4

    #@3c
    .line 162
    if-eqz v4, :cond_4

    #@3e
    .line 164
    add-int/lit8 v1, v1, 0x1

    #@40
    .line 157
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@42
    goto :goto_0

    #@43
    .line 168
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    if-lez v1, :cond_7

    #@45
    .line 169
    iget v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    #@47
    add-int/lit8 v4, v4, 0x1

    #@49
    iput v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    #@4b
    if-lt v4, v6, :cond_6

    #@4d
    .line 177
    const/4 v4, 0x1

    #@4e
    const/4 v5, 0x0

    #@4f
    const/4 v6, 0x0

    #@50
    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    :cond_6
    monitor-exit p0

    #@54
    .line 179
    return-void

    #@55
    .line 185
    .end local v0    # "i":I
    .end local v1    # "numOpenNetworks":I
    :cond_7
    const/4 v4, 0x0

    #@56
    const/4 v5, 0x0

    #@57
    const/4 v6, 0x0

    #@58
    const/4 v7, 0x0

    #@59
    :try_start_3
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    monitor-exit p0

    #@5d
    .line 141
    return-void

    #@5e
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v4

    #@5f
    monitor-exit p0

    #@60
    throw v4
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 193
    const-wide/16 v0, 0x0

    #@3
    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    #@5
    .line 194
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    #@8
    .line 195
    const/4 v0, 0x0

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 192
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const v9, 0x1080640

    #@4
    const/4 v8, 0x0

    #@5
    .line 217
    if-nez p1, :cond_0

    #@7
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 221
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@d
    .line 222
    const-string/jumbo v4, "notification"

    #@10
    .line 221
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/NotificationManager;

    #@16
    .line 225
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    #@18
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    #@1e
    cmp-long v3, v4, v6

    #@20
    if-gez v3, :cond_2

    #@22
    .line 229
    return-void

    #@23
    .line 217
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    if-nez p3, :cond_0

    #@25
    .line 218
    return-void

    #@26
    .line 232
    .restart local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 234
    new-instance v3, Landroid/app/Notification$Builder;

    #@2c
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@2e
    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@31
    .line 235
    const-wide/16 v4, 0x0

    #@33
    .line 234
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@3a
    move-result-object v3

    #@3b
    .line 237
    const/4 v4, 0x1

    #@3c
    .line 234
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v3

    #@40
    .line 238
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@42
    invoke-static {v4}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    #@45
    move-result-object v4

    #@46
    .line 240
    new-instance v5, Landroid/content/Intent;

    #@48
    const-string/jumbo v6, "android.net.wifi.PICK_WIFI_NETWORK"

    #@4b
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4e
    .line 238
    invoke-virtual {v4, v5}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    #@51
    move-result-object v4

    #@52
    .line 241
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@54
    .line 238
    invoke-virtual {v4, v10, v10, v8, v5}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@57
    move-result-object v4

    #@58
    .line 234
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@5b
    move-result-object v3

    #@5c
    .line 242
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@5e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@61
    move-result-object v4

    #@62
    .line 243
    const v5, 0x1060059

    #@65
    .line 242
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    #@68
    move-result v4

    #@69
    .line 234
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@6c
    move-result-object v3

    #@6d
    iput-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    #@6f
    .line 246
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@71
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@74
    move-result-object v3

    #@75
    .line 247
    const v4, 0x1140005

    #@78
    .line 246
    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@7b
    move-result-object v2

    #@7c
    .line 248
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    #@7e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@81
    move-result-object v3

    #@82
    .line 249
    const v4, 0x1140006

    #@85
    .line 248
    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@88
    move-result-object v0

    #@89
    .line 250
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    #@8b
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8e
    .line 251
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    #@90
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@93
    .line 252
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    #@95
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@98
    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9b
    move-result-wide v4

    #@9c
    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    #@9e
    add-long/2addr v4, v6

    #@9f
    iput-wide v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    #@a1
    .line 257
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    #@a3
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@a6
    move-result-object v3

    #@a7
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a9
    .line 256
    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@ac
    .line 262
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    #@ae
    .line 208
    return-void

    #@af
    .line 259
    :cond_4
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@b1
    invoke-virtual {v1, v8, v9, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@b4
    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mNotificationEnabled "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "mNotificationRepeatTime "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    #@27
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "mNotificationShown "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "mNumScansSinceNetworkStateChange "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 265
    return-void
.end method
