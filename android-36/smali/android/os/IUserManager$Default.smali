.class public Landroid/os/IUserManager$Default;
.super Ljava/lang/Object;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/os/IUserRestrictionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canAddMoreManagedProfiles(IZ)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .registers 5
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "allowedToRemoveOne"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canAddMoreUsersOfType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canAddPrivateProfile(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canHaveRestrictedProfile(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearSeedAccountData(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    return-void
.end method

.method public blacklist createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .registers 9
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userIcon"    # Landroid/graphics/Bitmap;
    .param p5, "accountName"    # Ljava/lang/String;
    .param p6, "accountType"    # Ljava/lang/String;
    .param p7, "accountOptions"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist evictCredentialEncryptionKey(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBootUser()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCommunalProfileId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCredentialOwnerProfile(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGuestUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMainDisplayIdAssignedToUser(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMainUserId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreviousFullUserToEnterForeground()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileAccessibilityLabelResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProfileIds(IZ)[I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileIdsExcludingHidden(IZ)[I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileLabelResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileParentId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProfileType(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfiles(IZ)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 3
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSeedAccountName(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedAccountType(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserAccount(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserBadgeColorResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserBadgeDarkColorResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserBadgeLabelResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserBadgeNoBackgroundResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserBadgeResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserCreationTime(I)J
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getUserHandle(I)I
    .registers 3
    .param p1, "userSerialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserIconBadgeResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserLogoutability(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserSerialNumber(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserStartRealtime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getUserStatusBarIconResId(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserSwitchability(I)I
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUserUnlockRealtime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getUsers(ZZZ)Ljava/util/List;
    .registers 5
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVisibleUsers()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasBadge(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasRestrictedProfiles(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAdminUser(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDemoUser(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isForegroundUserAdmin()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHeadlessSystemUserMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPreCreated(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isQuietModeEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRestricted(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSameProfileGroup(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "otherUserHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserForeground(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserNameSet(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserOfType(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserRunning(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserSwitcherEnabled(ZI)Z
    .registers 4
    .param p1, "showEvenIfNotActionable"    # Z
    .param p2, "mUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserUnlockingOrUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserVisible(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist markGuestForDeletion(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeUser(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeUserEvenWhenDisallowed(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeUserWhenPossible(IZ)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "overrideDevicePolicy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userId"    # I
    .param p4, "target"    # Landroid/content/IntentSender;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist revokeUserAdmin(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    return-void
.end method

.method public blacklist setBootUser(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    return-void
.end method

.method public blacklist setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public blacklist setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    return-void
.end method

.method public blacklist setUserAccount(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public blacklist setUserAdmin(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist setUserEnabled(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist setUserEphemeral(IZ)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enableEphemeral"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist setUserName(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist setUserRestriction(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    return-void
.end method

.method public blacklist someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    return v0
.end method
