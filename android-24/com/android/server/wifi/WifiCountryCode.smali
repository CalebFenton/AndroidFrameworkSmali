.class public Lcom/android/server/wifi/WifiCountryCode;
.super Ljava/lang/Object;
.source "WifiCountryCode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCountryCode"


# instance fields
.field private DBG:Z

.field private mCurrentCountryCode:Ljava/lang/String;

.field private mDefaultCountryCode:Ljava/lang/String;

.field private mReady:Z

.field private mRevertCountryCodeOnCellularLoss:Z

.field private mTelephonyCountryCode:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "oemDefaultCountryCode"    # Ljava/lang/String;
    .param p3, "persistentCountryCode"    # Ljava/lang/String;
    .param p4, "revertCountryCodeOnCellularLoss"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 28
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@7
    .line 29
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    #@9
    .line 35
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@b
    .line 36
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    #@d
    .line 37
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    #@f
    .line 45
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@11
    .line 46
    iput-boolean p4, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    #@13
    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    .line 49
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@1f
    .line 61
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 62
    const-string/jumbo v0, "WifiCountryCode"

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Country code will be reverted to "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 63
    const-string/jumbo v2, " on MCC loss"

    #@3b
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 43
    :cond_1
    return-void

    #@47
    .line 50
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_3

    #@4d
    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@53
    goto :goto_0

    #@54
    .line 53
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    #@56
    if-eqz v0, :cond_0

    #@58
    .line 54
    const-string/jumbo v0, "WifiCountryCode"

    #@5b
    const-string/jumbo v1, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code."

    #@5e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 56
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    #@63
    .line 57
    return-void
.end method

.method private pickCountryCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 176
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 179
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@d
    return-object v0

    #@e
    .line 182
    :cond_1
    const-string/jumbo v0, ""

    #@11
    return-object v0
.end method

.method private setCountryCodeNative(Ljava/lang/String;)Z
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 187
    const-string/jumbo v0, "WifiCountryCode"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Succeeded to set country code to: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 188
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    #@24
    .line 189
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 191
    :cond_0
    const-string/jumbo v0, "WifiCountryCode"

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "Failed to set country code to: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 192
    const/4 v0, 0x0

    #@41
    return v0
.end method

.method private updateCountryCode()V
    .locals 3

    #@0
    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "WifiCountryCode"

    #@7
    const-string/jumbo v2, "Update country code"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 166
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 167
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeNative(Ljava/lang/String;)Z

    #@1a
    .line 158
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized airplaneModeEnabled()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 100
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "WifiCountryCode"

    #@8
    const-string/jumbo v1, "Airplane Mode Enabled"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 101
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    #@11
    .line 103
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 104
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_1
    monitor-exit p0

    #@19
    .line 99
    return-void

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 71
    if-lez p1, :cond_0

    #@3
    .line 72
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@6
    .line 70
    :goto_0
    return-void

    #@7
    .line 74
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@9
    goto :goto_0
.end method

.method public declared-synchronized getCurrentCountryCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "WifiCountryCode"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Receive set country code request: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 135
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 136
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@27
    if-eqz v0, :cond_1

    #@29
    const-string/jumbo v0, "WifiCountryCode"

    #@2c
    const-string/jumbo v1, "Ignore empty country code"

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 137
    :cond_1
    const/4 v0, 0x0

    #@33
    monitor-exit p0

    #@34
    return v0

    #@35
    .line 139
    :cond_2
    if-eqz p2, :cond_3

    #@37
    .line 140
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    #@39
    .line 142
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    #@3f
    .line 145
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    #@41
    if-eqz v0, :cond_4

    #@43
    .line 146
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 148
    :cond_4
    const/4 v0, 0x1

    #@47
    monitor-exit p0

    #@48
    return v0

    #@49
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit p0

    #@4b
    throw v0
.end method

.method public declared-synchronized setReadyForChange(Z)V
    .locals 3
    .param p1, "ready"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "WifiCountryCode"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Set ready: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 117
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    #@21
    .line 120
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 121
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_1
    monitor-exit p0

    #@29
    .line 115
    return-void

    #@2a
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit p0

    #@2c
    throw v0
.end method

.method public declared-synchronized simCardRemoved()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "WifiCountryCode"

    #@8
    const-string/jumbo v1, "SIM Card Removed"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 87
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    #@15
    .line 88
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 89
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_1
    monitor-exit p0

    #@1d
    .line 83
    return-void

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method
