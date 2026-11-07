.class Landroid/app/admin/ManagedProfileProvisioningParams$1;
.super Ljava/lang/Object;
.source "ManagedProfileProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ManagedProfileProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ManagedProfileProvisioningParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedProfileProvisioningParams;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 320
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 321
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "ownerName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "profileName":Ljava/lang/String;
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/accounts/Account;

    .line 324
    .local v5, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 325
    .local v6, "leaveAllSystemAppsEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 326
    .local v7, "organizationOwnedProvisioning":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 327
    .local v8, "keepAccountMigrated":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 329
    .local v9, "adminExtras":Landroid/os/PersistableBundle;
    new-instance v1, Landroid/app/admin/ManagedProfileProvisioningParams;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V

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

    .line 317
    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedProfileProvisioningParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedProfileProvisioningParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ManagedProfileProvisioningParams;
    .registers 3
    .param p1, "size"    # I

    .line 342
    new-array v0, p1, [Landroid/app/admin/ManagedProfileProvisioningParams;

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

    .line 317
    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedProfileProvisioningParams$1;->newArray(I)[Landroid/app/admin/ManagedProfileProvisioningParams;

    move-result-object p1

    return-object p1
.end method
