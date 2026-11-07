.class Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;
.super Ljava/lang/Object;
.source "WifiMigration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration$SettingsMigrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiMigration$SettingsMigrationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 370
    .local v1, "scanAlwaysAvailable":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 371
    .local v2, "p2pFactoryResetPending":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "p2pDeviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 373
    .local v4, "softApTimeoutEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 374
    .local v5, "wakeupEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 375
    .local v6, "scanThrottleEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 376
    .local v7, "verboseLoggingEnabled":Z
    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/WifiMigration$SettingsMigrationData;-><init>(ZZLjava/lang/String;ZZZZLandroid/net/wifi/WifiMigration-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .registers 3
    .param p1, "size"    # I

    .line 384
    new-array v0, p1, [Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;->newArray(I)[Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object p1

    return-object p1
.end method
