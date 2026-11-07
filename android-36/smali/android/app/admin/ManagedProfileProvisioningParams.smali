.class public final Landroid/app/admin/ManagedProfileProvisioningParams;
.super Ljava/lang/Object;
.source "ManagedProfileProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ACCOUNT_TO_MIGRATE_PROVIDED_PARAM:Ljava/lang/String; = "ACCOUNT_TO_MIGRATE_PROVIDED"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ManagedProfileProvisioningParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEEP_MIGRATED_ACCOUNT_PARAM:Ljava/lang/String; = "KEEP_MIGRATED_ACCOUNT"

.field private static final blacklist LEAVE_ALL_SYSTEM_APPS_ENABLED_PARAM:Ljava/lang/String; = "LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field private static final blacklist ORGANIZATION_OWNED_PROVISIONING_PARAM:Ljava/lang/String; = "ORGANIZATION_OWNED_PROVISIONING"


# instance fields
.field private final blacklist mAccountToMigrate:Landroid/accounts/Account;

.field private final blacklist mAdminExtras:Landroid/os/PersistableBundle;

.field private final blacklist mKeepAccountOnMigration:Z

.field private final blacklist mLeaveAllSystemAppsEnabled:Z

.field private final blacklist mOrganizationOwnedProvisioning:Z

.field private final blacklist mOwnerName:Ljava/lang/String;

.field private final blacklist mProfileAdminComponentName:Landroid/content/ComponentName;

.field private final blacklist mProfileName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 316
    new-instance v0, Landroid/app/admin/ManagedProfileProvisioningParams$1;

    invoke-direct {v0}, Landroid/app/admin/ManagedProfileProvisioningParams$1;-><init>()V

    sput-object v0, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "profileAdminComponentName"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "accountToMigrate"    # Landroid/accounts/Account;
    .param p5, "leaveAllSystemAppsEnabled"    # Z
    .param p6, "organizationOwnedProvisioning"    # Z
    .param p7, "keepAccountOnMigration"    # Z
    .param p8, "adminExtras"    # Landroid/os/PersistableBundle;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    .line 66
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    .line 69
    iput-boolean p5, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    .line 70
    iput-boolean p6, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    .line 71
    iput-boolean p7, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    .line 72
    iput-object p8, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;)V

    return-void
.end method

.method private blacklist logParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 156
    nop

    .line 157
    const/16 v0, 0xc5

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 163
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccountToMigrate()Landroid/accounts/Account;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    return-object v0
.end method

.method public whitelist getAdminExtras()Landroid/os/PersistableBundle;
    .registers 3

    .line 136
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getOwnerName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProfileAdminComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getProfileName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isKeepingAccountOnMigration()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    return v0
.end method

.method public whitelist isLeaveAllSystemAppsEnabled()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    return v0
.end method

.method public whitelist isOrganizationOwnedProvisioning()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    return v0
.end method

.method public blacklist logParams(Ljava/lang/String;)V
    .registers 4
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "LEAVE_ALL_SYSTEM_APPS_ENABLED"

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    const-string v0, "ORGANIZATION_OWNED_PROVISIONING"

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    const-string v0, "KEEP_MIGRATED_ACCOUNT"

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const-string v1, "ACCOUNT_TO_MIGRATE_PROVIDED"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagedProfileProvisioningParams{mProfileAdminComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_2c

    move-object v1, v2

    goto :goto_2e

    :cond_2c
    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccountToMigrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v2, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeaveAllSystemAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrganizationOwnedProvisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeepAccountOnMigration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdminExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 306
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 311
    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 314
    return-void
.end method
