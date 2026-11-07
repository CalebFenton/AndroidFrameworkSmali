.class Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;
.super Ljava/lang/Object;
.source "FullyManagedDeviceProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FullyManagedDeviceProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/FullyManagedDeviceProvisioningParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .registers 15
    .param p1, "in"    # Landroid/os/Parcel;

    .line 384
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 385
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "ownerName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 387
    .local v4, "leaveAllSystemAppsEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "timeZone":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 389
    .local v6, "localtime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, "locale":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 391
    .local v9, "deviceOwnerCanGrantSensorsPermissions":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v10

    .line 392
    .local v10, "adminExtras":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 394
    .local v11, "demoDevice":Z
    new-instance v1, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V

    return-object v1
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

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .registers 3
    .param p1, "size"    # I

    .line 408
    new-array v0, p1, [Landroid/app/admin/FullyManagedDeviceProvisioningParams;

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

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams$1;->newArray(I)[Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    move-result-object p1

    return-object p1
.end method
