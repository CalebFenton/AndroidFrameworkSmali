.class public final Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
.super Ljava/lang/Object;
.source "ManagedProfileProvisioningParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ManagedProfileProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccountToMigrate:Landroid/accounts/Account;

.field private blacklist mAdminExtras:Landroid/os/PersistableBundle;

.field private blacklist mKeepingAccountOnMigration:Z

.field private blacklist mLeaveAllSystemAppsEnabled:Z

.field private blacklist mOrganizationOwnedProvisioning:Z

.field private final blacklist mOwnerName:Ljava/lang/String;

.field private final blacklist mProfileAdminComponentName:Landroid/content/ComponentName;

.field private blacklist mProfileName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 3
    .param p1, "profileAdminComponentName"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileAdminComponentName:Landroid/content/ComponentName;

    .line 195
    iput-object p2, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/admin/ManagedProfileProvisioningParams;
    .registers 11

    .line 270
    new-instance v0, Landroid/app/admin/ManagedProfileProvisioningParams;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileAdminComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAccountToMigrate:Landroid/accounts/Account;

    iget-boolean v5, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    iget-boolean v6, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOrganizationOwnedProvisioning:Z

    iget-boolean v7, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mKeepingAccountOnMigration:Z

    .line 278
    iget-object v8, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    if-eqz v8, :cond_17

    iget-object v8, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    goto :goto_1c

    :cond_17
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    :goto_1c
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V

    .line 270
    return-object v0
.end method

.method public whitelist setAccountToMigrate(Landroid/accounts/Account;)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2
    .param p1, "accountToMigrate"    # Landroid/accounts/Account;

    .line 216
    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAccountToMigrate:Landroid/accounts/Account;

    .line 217
    return-object p0
.end method

.method public whitelist setAdminExtras(Landroid/os/PersistableBundle;)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 3
    .param p1, "adminExtras"    # Landroid/os/PersistableBundle;

    .line 257
    if-eqz p1, :cond_8

    .line 258
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    goto :goto_d

    .line 259
    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_d
    iput-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    .line 260
    return-object p0
.end method

.method public whitelist setKeepingAccountOnMigration(Z)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2
    .param p1, "keepingAccountOnMigration"    # Z

    .line 247
    iput-boolean p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mKeepingAccountOnMigration:Z

    .line 248
    return-object p0
.end method

.method public whitelist setLeaveAllSystemAppsEnabled(Z)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2
    .param p1, "leaveAllSystemAppsEnabled"    # Z

    .line 227
    iput-boolean p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    .line 228
    return-object p0
.end method

.method public whitelist setOrganizationOwnedProvisioning(Z)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2
    .param p1, "organizationOwnedProvisioning"    # Z

    .line 237
    iput-boolean p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOrganizationOwnedProvisioning:Z

    .line 238
    return-object p0
.end method

.method public whitelist setProfileName(Ljava/lang/String;)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2
    .param p1, "profileName"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileName:Ljava/lang/String;

    .line 206
    return-object p0
.end method
