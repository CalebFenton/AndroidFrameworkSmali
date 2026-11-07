.class public final Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
.super Ljava/lang/Object;
.source "WifiMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration$SettingsMigrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mP2pDeviceName:Ljava/lang/String;

.field private blacklist mP2pFactoryResetPending:Z

.field private blacklist mScanAlwaysAvailable:Z

.field private blacklist mScanThrottleEnabled:Z

.field private blacklist mSoftApTimeoutEnabled:Z

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWakeupEnabled:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .registers 10

    .line 552
    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    iget-boolean v1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanAlwaysAvailable:Z

    iget-boolean v2, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pFactoryResetPending:Z

    iget-object v3, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pDeviceName:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mSoftApTimeoutEnabled:Z

    iget-boolean v5, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mWakeupEnabled:Z

    iget-boolean v6, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanThrottleEnabled:Z

    iget-boolean v7, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mVerboseLoggingEnabled:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/WifiMigration$SettingsMigrationData;-><init>(ZZLjava/lang/String;ZZZZLandroid/net/wifi/WifiMigration-IA;)V

    return-object v0
.end method

.method public whitelist setP2pDeviceName(Ljava/lang/String;)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 498
    iput-object p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pDeviceName:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public whitelist setP2pFactoryResetPending(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "pending"    # Z

    .line 487
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mP2pFactoryResetPending:Z

    .line 488
    return-object p0
.end method

.method public whitelist setScanAlwaysAvailable(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "available"    # Z

    .line 476
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanAlwaysAvailable:Z

    .line 477
    return-object p0
.end method

.method public whitelist setScanThrottleEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 531
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mScanThrottleEnabled:Z

    .line 532
    return-object p0
.end method

.method public whitelist setSoftApTimeoutEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 509
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mSoftApTimeoutEnabled:Z

    .line 510
    return-object p0
.end method

.method public whitelist setVerboseLoggingEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 542
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mVerboseLoggingEnabled:Z

    .line 543
    return-object p0
.end method

.method public whitelist setWakeUpEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 520
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->mWakeupEnabled:Z

    .line 521
    return-object p0
.end method
