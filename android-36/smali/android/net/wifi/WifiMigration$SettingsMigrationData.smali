.class public final Landroid/net/wifi/WifiMigration$SettingsMigrationData;
.super Ljava/lang/Object;
.source "WifiMigration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsMigrationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiMigration$SettingsMigrationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mP2pDeviceName:Ljava/lang/String;

.field private final blacklist mP2pFactoryResetPending:Z

.field private final blacklist mScanAlwaysAvailable:Z

.field private final blacklist mScanThrottleEnabled:Z

.field private final blacklist mSoftApTimeoutEnabled:Z

.field private final blacklist mVerboseLoggingEnabled:Z

.field private final blacklist mWakeupEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 365
    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZLjava/lang/String;ZZZZ)V
    .registers 8
    .param p1, "scanAlwaysAvailable"    # Z
    .param p2, "p2pFactoryResetPending"    # Z
    .param p3, "p2pDeviceName"    # Ljava/lang/String;
    .param p4, "softApTimeoutEnabled"    # Z
    .param p5, "wakeupEnabled"    # Z
    .param p6, "scanThrottleEnabled"    # Z
    .param p7, "verboseLoggingEnabled"    # Z

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanAlwaysAvailable:Z

    .line 357
    iput-boolean p2, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pFactoryResetPending:Z

    .line 358
    iput-object p3, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pDeviceName:Ljava/lang/String;

    .line 359
    iput-boolean p4, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mSoftApTimeoutEnabled:Z

    .line 360
    iput-boolean p5, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mWakeupEnabled:Z

    .line 361
    iput-boolean p6, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanThrottleEnabled:Z

    .line 362
    iput-boolean p7, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mVerboseLoggingEnabled:Z

    .line 363
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLjava/lang/String;ZZZZLandroid/net/wifi/WifiMigration-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/WifiMigration$SettingsMigrationData;-><init>(ZZLjava/lang/String;ZZZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getP2pDeviceName()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isP2pFactoryResetPending()Z
    .registers 2

    .line 415
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pFactoryResetPending:Z

    return v0
.end method

.method public whitelist isScanAlwaysAvailable()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanAlwaysAvailable:Z

    return v0
.end method

.method public whitelist isScanThrottleEnabled()Z
    .registers 2

    .line 444
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanThrottleEnabled:Z

    return v0
.end method

.method public whitelist isSoftApTimeoutEnabled()Z
    .registers 2

    .line 430
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mSoftApTimeoutEnabled:Z

    return v0
.end method

.method public whitelist isVerboseLoggingEnabled()Z
    .registers 2

    .line 451
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method public whitelist isWakeUpEnabled()Z
    .registers 2

    .line 437
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mWakeupEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 395
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanAlwaysAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 396
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pFactoryResetPending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    iget-object v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mSoftApTimeoutEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mWakeupEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanThrottleEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 401
    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mVerboseLoggingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    return-void
.end method
