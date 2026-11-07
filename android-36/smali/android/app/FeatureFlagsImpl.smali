.class public final Landroid/app/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/app/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist accurateWallpaperDownsampling()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist apiRichOngoing()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist apiTvextender()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist appRestrictionsApi()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist appStartInfo()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist appStartInfoCleanupOldRecords()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist appStartInfoComponent()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist appStartInfoKeepRecordsSorted()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist appStartInfoTimestamps()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist backgroundInstallControlCallbackApi()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist backupRestoreLogging()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist bicClient()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheGetCurrentUserId()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist categoryVoicemail()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist checkAutogroupBeforePost()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cleanUpSpansAndNewLines()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist clearDnsCacheOnNetworkRulesUpdate()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist compactHeadsUpNotification()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist compactHeadsUpNotificationReply()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deviceUnlockListener()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableConnectedDisplaysWallpaper()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableCurrentModeTypeBinderCache()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFgsTimeoutCrashBehavior()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNightModeBinderCache()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePipUiStateCallbackOnEntering()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableProcessObserverBroadcastOnProcessStarted()Z
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableTvImplicitEnterPipRestriction()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enforcePicTestmodeProtocol()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist evenlyDividedCallStyleActionLayout()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist expandingPublicView()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fixWallpaperChanged()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getBindingUidImportance()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist introduceNewServiceOntimeoutCallback()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist jankPerceptibleNarrow()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist jankPerceptibleNarrowHoldback()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist keyguardPrivateNotifications()Z
    .registers 2

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist lifetimeExtensionRefactor()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist liveWallpaperContentHandling()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesApi()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesCleanupImplicit()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesHsum()Z
    .registers 2

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesMultiuser()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesUi()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesUiDndTile()Z
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public greylist modesUiEmptyShade()Z
    .registers 2

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist modesUiIcons()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist nmBinderPerfCacheChannels()Z
    .registers 2

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmBinderPerfGetAppsWithChannels()Z
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmBinderPerfLogNmThrottling()Z
    .registers 2

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmBinderPerfPermissionCheck()Z
    .registers 2

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmBinderPerfThrottleNotify()Z
    .registers 2

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmCollapsedLines()Z
    .registers 2

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmSummarization()Z
    .registers 2

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public greylist nmSummarizationUi()Z
    .registers 2

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public greylist noSbnholder()Z
    .registers 2

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notifChannelCropVibrationEffects()Z
    .registers 2

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist notifChannelEstimateEffectSize()Z
    .registers 2

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public greylist notifEntryCreationTimeUseElapsedRealtime()Z
    .registers 2

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notificationChannelVibrationEffectApi()Z
    .registers 2

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public greylist notificationClassificationUi()Z
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notificationExpansionOptional()Z
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notificationNoCustomViewConversations()Z
    .registers 2

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notificationsRedesignAppIcons()Z
    .registers 2

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notificationsRedesignTemplates()Z
    .registers 2

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notificationsRedesignThemedAppIcons()Z
    .registers 2

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public greylist notifyKeyguardEvents()Z
    .registers 2

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public greylist picCacheNulls()Z
    .registers 2

    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public greylist picIsolateCacheByUid()Z
    .registers 2

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public greylist picIsolatedCacheStatistics()Z
    .registers 2

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public greylist picSeparatePermissionNotifications()Z
    .registers 2

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public greylist picTestMode()Z
    .registers 2

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public greylist picUsesSharedMemory()Z
    .registers 2

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public greylist pinnerServiceClientApi()Z
    .registers 2

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitGetMemoryInfo()Z
    .registers 2

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitGetMyMemoryState()Z
    .registers 2

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitGetProcessesInErrorState()Z
    .registers 2

    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitGetRunningAppProcesses()Z
    .registers 2

    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public greylist redactSensitiveContentNotificationsOnLockscreen()Z
    .registers 2

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public greylist redactionOnLockscreenMetrics()Z
    .registers 2

    .line 556
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeNextWallpaperComponent()Z
    .registers 2

    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeRemoteViews()Z
    .registers 2

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public greylist reportPostgcMemoryMetrics()Z
    .registers 2

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public greylist restrictAudioAttributesAlarm()Z
    .registers 2

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public greylist restrictAudioAttributesCall()Z
    .registers 2

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public greylist restrictAudioAttributesMedia()Z
    .registers 2

    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public greylist secureAllowlistToken()Z
    .registers 2

    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipBgMemTrimOnFgApp()Z
    .registers 2

    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public greylist sortSectionByTime()Z
    .registers 2

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public greylist systemTermsOfAddressEnabled()Z
    .registers 2

    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public greylist uiRichOngoing()Z
    .registers 2

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public greylist uidImportanceListenerForUids()Z
    .registers 2

    .line 640
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useAppInfoNotLaunched()Z
    .registers 2

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useStickyBcastCache()Z
    .registers 2

    .line 654
    const/4 v0, 0x1

    return v0
.end method
