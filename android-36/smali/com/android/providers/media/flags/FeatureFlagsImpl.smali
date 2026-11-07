.class public final Lcom/android/providers/media/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/providers/media/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist accessMediaOwnerPackageNamePermission()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist audioSampleColumns()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cloudMediaProviderSearch()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBackupAndRestore()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableCloudMediaProviderCapabilities()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableEmbeddedPhotopicker()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableExclusionListForDefaultFolders()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableLocalMediaProviderCapabilities()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMaliciousAppDetector()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMarkIsFavoriteStatusApi()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMarkMediaAsFavoriteApi()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableMimeTypeFixForAndroid15()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableModernPhotopicker()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableOemMetadata()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableOemMetadataUpdate()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePhotopickerDatescrubber()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePhotopickerExpressiveTheme()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePhotopickerSearch()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePhotopickerTranscoding()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableStableUrisForExternalPrimaryVolume()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableStableUrisForPublicVolume()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableUnicodeCheck()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist excludeUnreliableVolumes()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public greylist indexMediaLatitudeLongitude()Z
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public greylist inferredMediaDate()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist mediaCognitionService()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist mediaStoreOpenFile()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist motionPhotoIntent()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pickOrderedImages()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pickerAccentColor()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pickerDefaultTab()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pickerPreSelectionExtra()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pickerRecentSelection()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist revokeAccessOwnedPhotos()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist versionLockdown()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method
