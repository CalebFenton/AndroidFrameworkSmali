.class public final Landroid/multiuser/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/multiuser/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addLauncherUserConfig()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist addUiForSoundsFromBackgroundUsers()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowMainUserToAccessBlockedNumberProvider()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowResolverSheetForPrivateSpace()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowSupervisingProfile()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist avatarSync()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist bindWallpaperServiceOnItsOwnThreadDuringAUserSwitch()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist blockPrivateSpaceCreation()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheProfileIdsReadOnly()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheProfileParentReadOnly()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheProfileTypeReadOnly()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheProfilesReadOnly()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheQuietModeState()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserInfoReadOnly()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheUserPropertiesCorrectlyReadOnly()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserRestrictionsReadOnly()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheUserSerialNumber()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserSerialNumberReadOnly()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheUserStartRealtimeReadOnly()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheUserUnlockRealtimeReadOnly()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist cachesNotInvalidatedAtStartReadOnly()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cachingDevelopmentImprovements()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist deletePrivateSpaceFromReset()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disablePrivateSpaceItemsOnHome()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBiometricsToUnlockPrivateSpace()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableHidingProfiles()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableLauncherAppsHiddenProfileChecks()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMovingContentIntoPrivateSpace()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePermissionToAccessHiddenProfiles()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivateSpaceAutolockOnRestarts()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivateSpaceFeatures()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePrivateSpaceIntentRedirection()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePsSensitiveNotificationsToggle()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSystemUserOnlyForServicesAndProviders()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarConcurrentFileWrite()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarContentProviderNullAuthority()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fixAvatarCrossUserLeak()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarPickerNotRespondingForNewUser()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarPickerReadBackOrder()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAvatarPickerSelectedReadBack()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixDisablingOfMuToggleWhenRestrictionApplied()Z
    .registers 2

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixGetUserPropertyCache()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixLargeDisplayPrivateSpaceSettings()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getUserSwitchabilityPermission()Z
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public greylist handleInterleavedSettingsForPrivateSpace()Z
    .registers 2

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreRestrictionsWhenDeletingPrivateProfile()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist invalidateCacheOnUsersChangedReadOnly()Z
    .registers 2

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist logoutUserApi()Z
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public greylist modifyPrivateSpaceSecondaryUnlockSetupFlow()Z
    .registers 2

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public greylist moveQuietModeOperationsToSeparateThread()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist multipleAlarmNotificationsSupport()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist multiuserWidget()Z
    .registers 2

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public greylist newMultiuserSettingsUx()Z
    .registers 2

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public greylist placeAddUserDialogWithinActivity()Z
    .registers 2

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist privateSpaceSearchIllustrationConfig()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public greylist profilesForAll()Z
    .registers 2

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public greylist propertyInvalidatedCacheBypassMismatchedUids()Z
    .registers 2

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public greylist reorderWallpaperDuringUserSwitch()Z
    .registers 2

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public greylist requirePinBeforeUserDeletion()Z
    .registers 2

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public greylist restrictQuietModeCredentialBugFixToManagedProfiles()Z
    .registers 2

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXml()Z
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public greylist saveGlobalAndGuestRestrictionsOnSystemUserXmlReadOnly()Z
    .registers 2

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public greylist scheduleStopOfBackgroundUser()Z
    .registers 2

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public greylist setPowerModeDuringUserSwitch()Z
    .registers 2

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public greylist showCustomUnlockTitleInsidePrivateProfile()Z
    .registers 2

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public greylist showDifferentCreationErrorForUnsupportedDevices()Z
    .registers 2

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public greylist showSetScreenLockDialog()Z
    .registers 2

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public greylist stopPreviousUserApps()Z
    .registers 2

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportAutolockForPrivateSpace()Z
    .registers 2

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportCommunalProfile()Z
    .registers 2

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public greylist supportCommunalProfileNextgen()Z
    .registers 2

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public greylist unicornModeRefactoringForHsumReadOnly()Z
    .registers 2

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useAllCpusDuringUserSwitch()Z
    .registers 2

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public greylist usePrivateSpaceIconInBiometricPrompt()Z
    .registers 2

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useUnifiedResources()Z
    .registers 2

    .line 528
    const/4 v0, 0x0

    return v0
.end method
