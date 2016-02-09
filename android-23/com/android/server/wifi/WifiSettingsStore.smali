.class final Lcom/android/server/wifi/WifiSettingsStore;
.super Ljava/lang/Object;
.source "WifiSettingsStore.java"


# static fields
.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2


# instance fields
.field private mAirplaneModeOn:Z

.field private mCheckSavedStateAtBoot:Z

.field private final mContext:Landroid/content/Context;

.field private mPersistWifiState:I

.field private mScanAlwaysAvailable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    #@6
    .line 39
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@8
    .line 48
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    #@a
    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@c
    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    #@f
    move-result v0

    #@10
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@12
    .line 53
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiState()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    #@18
    .line 54
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    #@1b
    move-result v0

    #@1c
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z

    #@1e
    .line 50
    return-void
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 188
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 189
    const-string/jumbo v3, "airplane_mode_on"

    #@b
    .line 188
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v2

    #@f
    if-ne v2, v0, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0
.end method

.method private getPersistedScanAlwaysAvailable()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 193
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 194
    const-string/jumbo v3, "wifi_scan_always_enabled"

    #@b
    .line 193
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@e
    move-result v2

    #@f
    if-ne v2, v0, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 178
    iget-object v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    .line 180
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v2, "wifi_on"

    #@a
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 181
    :catch_0
    move-exception v1

    #@10
    .line 182
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "wifi_on"

    #@13
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@16
    .line 183
    return v3
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    #@0
    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 144
    const-string/jumbo v2, "airplane_mode_radios"

    #@9
    .line 143
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 145
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .line 146
    const-string/jumbo v1, "wifi"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@15
    move-result v1

    #@16
    .line 145
    :goto_0
    return v1

    #@17
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    #@0
    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 152
    const-string/jumbo v2, "airplane_mode_toggleable_radios"

    #@9
    .line 151
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 153
    .local v0, "toggleableRadios":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .line 154
    const-string/jumbo v1, "wifi"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@15
    move-result v1

    #@16
    .line 153
    :goto_0
    return v1

    #@17
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method

.method private persistWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 137
    .local v0, "cr":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    #@8
    .line 138
    const-string/jumbo v1, "wifi_on"

    #@b
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@e
    .line 135
    return-void
.end method

.method private testAndClearWifiSavedState()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 165
    iget-object v5, p0, Lcom/android/server/wifi/WifiSettingsStore;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 166
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    #@9
    .line 168
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string/jumbo v5, "wifi_saved_state"

    #@c
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    .line 169
    if-ne v2, v3, :cond_0

    #@12
    .line 170
    const-string/jumbo v5, "wifi_saved_state"

    #@15
    const/4 v6, 0x0

    #@16
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 174
    :cond_0
    :goto_0
    if-ne v2, v3, :cond_1

    #@1b
    :goto_1
    return v3

    #@1c
    :cond_1
    move v3, v4

    #@1d
    goto :goto_1

    #@1e
    .line 171
    :catch_0
    move-exception v1

    #@1f
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mPersistWifiState "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "mAirplaneModeOn "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 130
    return-void
.end method

.method declared-synchronized handleAirplaneModeToggled()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneSensitive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 107
    const/4 v0, 0x0

    #@9
    monitor-exit p0

    #@a
    return v0

    #@b
    .line 110
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedAirplaneModeOn()Z

    #@e
    move-result v0

    #@f
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@11
    .line 111
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 113
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    #@17
    if-ne v0, v2, :cond_1

    #@19
    .line 114
    const/4 v0, 0x3

    #@1a
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    :cond_1
    :goto_0
    monitor-exit p0

    #@1e
    .line 123
    return v2

    #@1f
    .line 118
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_3

    #@25
    .line 119
    iget v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I

    #@27
    const/4 v1, 0x2

    #@28
    if-ne v0, v1, :cond_1

    #@2a
    .line 120
    :cond_3
    const/4 v0, 0x1

    #@2b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    :catchall_0
    move-exception v0

    #@30
    monitor-exit p0

    #@31
    throw v0
.end method

.method declared-synchronized handleWifiScanAlwaysAvailableToggled()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedScanAlwaysAvailable()Z

    #@4
    move-result v0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 126
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method declared-synchronized handleWifiToggled(Z)Z
    .locals 3
    .param p1, "wifiEnabled"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneToggleable()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 88
    :cond_0
    if-eqz p1, :cond_3

    #@f
    .line 89
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 90
    const/4 v0, 0x2

    #@14
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :goto_0
    monitor-exit p0

    #@18
    .line 101
    return v2

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 85
    return v1

    #@1b
    .line 92
    :cond_2
    const/4 v0, 0x1

    #@1c
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0

    #@23
    .line 99
    :cond_3
    const/4 v0, 0x0

    #@24
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    goto :goto_0
.end method

.method declared-synchronized isAirplaneModeOn()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized isScanAlwaysAvailable()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiSettingsStore;->mScanAlwaysAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :goto_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method declared-synchronized isWifiToggleEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    monitor-enter p0

    #@3
    .line 58
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 59
    const/4 v2, 0x1

    #@8
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mCheckSavedStateAtBoot:Z

    #@a
    .line 60
    invoke-direct {p0}, Lcom/android/server/wifi/WifiSettingsStore;->testAndClearWifiSavedState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    monitor-exit p0

    #@11
    return v0

    #@12
    .line 63
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mAirplaneModeOn:Z

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 64
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    const/4 v3, 0x2

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    :goto_0
    monitor-exit p0

    #@1c
    return v0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    goto :goto_0

    #@1f
    .line 66
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/server/wifi/WifiSettingsStore;->mPersistWifiState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    if-eqz v2, :cond_3

    #@23
    :goto_1
    monitor-exit p0

    #@24
    return v0

    #@25
    :cond_3
    move v0, v1

    #@26
    goto :goto_1

    #@27
    :catchall_0
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0
.end method
