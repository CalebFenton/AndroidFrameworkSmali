.class public final Landroid/content/pm/UserProperties;
.super Ljava/lang/Object;
.source "UserProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserProperties$Builder;,
        Landroid/content/pm/UserProperties$ProfileApiVisibility;,
        Landroid/content/pm/UserProperties$CrossProfileContentSharingStrategy;,
        Landroid/content/pm/UserProperties$ShowInSharingSurfaces;,
        Landroid/content/pm/UserProperties$ShowInQuietMode;,
        Landroid/content/pm/UserProperties$CrossProfileIntentResolutionStrategy;,
        Landroid/content/pm/UserProperties$CrossProfileIntentFilterAccessControlLevel;,
        Landroid/content/pm/UserProperties$InheritDevicePolicy;,
        Landroid/content/pm/UserProperties$ShowInSettings;,
        Landroid/content/pm/UserProperties$ShowInLauncher;,
        Landroid/content/pm/UserProperties$PropertyIndex;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_ALLOW_STOPPING_USER_WITH_DELAYED_LOCKING:Ljava/lang/String; = "allowStoppingUserWithDelayedLocking"

.field private static final blacklist ATTR_ALWAYS_VISIBLE:Ljava/lang/String; = "alwaysVisible"

.field private static final blacklist ATTR_AUTH_ALWAYS_REQUIRED_TO_DISABLE_QUIET_MODE:Ljava/lang/String; = "authAlwaysRequiredToDisableQuietMode"

.field private static final blacklist ATTR_CREDENTIAL_SHAREABLE_WITH_PARENT:Ljava/lang/String; = "credentialShareableWithParent"

.field private static final blacklist ATTR_CROSS_PROFILE_CONTENT_SHARING_STRATEGY:Ljava/lang/String; = "crossProfileContentSharingStrategy"

.field private static final blacklist ATTR_CROSS_PROFILE_INTENT_FILTER_ACCESS_CONTROL:Ljava/lang/String; = "crossProfileIntentFilterAccessControl"

.field private static final blacklist ATTR_CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY:Ljava/lang/String; = "crossProfileIntentResolutionStrategy"

.field private static final blacklist ATTR_DELETE_APP_WITH_PARENT:Ljava/lang/String; = "deleteAppWithParent"

.field private static final blacklist ATTR_INHERIT_DEVICE_POLICY:Ljava/lang/String; = "inheritDevicePolicy"

.field private static final blacklist ATTR_MEDIA_SHARED_WITH_PARENT:Ljava/lang/String; = "mediaSharedWithParent"

.field private static final blacklist ATTR_PROFILE_API_VISIBILITY:Ljava/lang/String; = "profileApiVisibility"

.field private static final blacklist ATTR_SHOW_IN_LAUNCHER:Ljava/lang/String; = "showInLauncher"

.field private static final blacklist ATTR_SHOW_IN_QUIET_MODE:Ljava/lang/String; = "showInQuietMode"

.field private static final blacklist ATTR_SHOW_IN_SETTINGS:Ljava/lang/String; = "showInSettings"

.field private static final blacklist ATTR_SHOW_IN_SHARING_SURFACES:Ljava/lang/String; = "showInSharingSurfaces"

.field private static final blacklist ATTR_START_WITH_PARENT:Ljava/lang/String; = "startWithParent"

.field private static final blacklist ATTR_UPDATE_CROSS_PROFILE_INTENT_FILTERS_ON_OTA:Ljava/lang/String; = "updateCrossProfileIntentFiltersOnOTA"

.field private static final blacklist ATTR_USE_PARENTS_CONTACTS:Ljava/lang/String; = "useParentsContacts"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/UserProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CROSS_PROFILE_CONTENT_SHARING_DELEGATE_FROM_PARENT:I = 0x1

.field public static final whitelist CROSS_PROFILE_CONTENT_SHARING_NO_DELEGATION:I = 0x0

.field public static final whitelist CROSS_PROFILE_CONTENT_SHARING_UNKNOWN:I = -0x1

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_ALL:I = 0x0

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_SYSTEM:I = 0xa

.field public static final blacklist CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_SYSTEM_ADD_ONLY:I = 0x14

.field public static final blacklist CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY_DEFAULT:I = 0x0

.field public static final blacklist CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY_NO_FILTERING:I = 0x1

.field private static final blacklist INDEX_ALLOW_STOPPING_USER_WITH_DELAYED_LOCKING:I = 0x10

.field private static final blacklist INDEX_ALWAYS_VISIBLE:I = 0xb

.field private static final blacklist INDEX_AUTH_ALWAYS_REQUIRED_TO_DISABLE_QUIET_MODE:I = 0xd

.field private static final blacklist INDEX_CREDENTIAL_SHAREABLE_WITH_PARENT:I = 0x9

.field private static final blacklist INDEX_CROSS_PROFILE_CONTENT_SHARING_STRATEGY:I = 0xf

.field private static final blacklist INDEX_CROSS_PROFILE_INTENT_FILTER_ACCESS_CONTROL:I = 0x6

.field private static final blacklist INDEX_CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY:I = 0x7

.field private static final blacklist INDEX_DELETE_APP_WITH_PARENT:I = 0xa

.field private static final blacklist INDEX_INHERIT_DEVICE_POLICY:I = 0x3

.field private static final blacklist INDEX_ITEMS_RESTRICTED_ON_HOME_SCREEN:I = 0x12

.field private static final blacklist INDEX_MEDIA_SHARED_WITH_PARENT:I = 0x8

.field private static final blacklist INDEX_PROFILE_API_VISIBILITY:I = 0x11

.field private static final blacklist INDEX_SHOW_IN_LAUNCHER:I = 0x0

.field private static final blacklist INDEX_SHOW_IN_QUIET_MODE:I = 0xc

.field private static final blacklist INDEX_SHOW_IN_SETTINGS:I = 0x2

.field private static final blacklist INDEX_SHOW_IN_SHARING_SURFACES:I = 0xe

.field private static final blacklist INDEX_START_WITH_PARENT:I = 0x1

.field private static final blacklist INDEX_UPDATE_CROSS_PROFILE_INTENT_FILTERS_ON_OTA:I = 0x5

.field private static final blacklist INDEX_USE_PARENTS_CONTACTS:I = 0x4

.field public static final blacklist INHERIT_DEVICE_POLICY_FROM_PARENT:I = 0x1

.field public static final blacklist INHERIT_DEVICE_POLICY_NO:I = 0x0

.field private static final blacklist ITEMS_RESTRICTED_ON_HOME_SCREEN:Ljava/lang/String; = "itemsRestrictedOnHomeScreen"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist PROFILE_API_VISIBILITY_HIDDEN:I = 0x1

.field public static final blacklist PROFILE_API_VISIBILITY_UNKNOWN:I = -0x1

.field public static final blacklist PROFILE_API_VISIBILITY_VISIBLE:I = 0x0

.field public static final blacklist SHOW_IN_LAUNCHER_NO:I = 0x2

.field public static final blacklist SHOW_IN_LAUNCHER_SEPARATE:I = 0x1

.field public static final blacklist SHOW_IN_LAUNCHER_UNKNOWN:I = -0x1

.field public static final blacklist SHOW_IN_LAUNCHER_WITH_PARENT:I = 0x0

.field public static final whitelist SHOW_IN_QUIET_MODE_DEFAULT:I = 0x2

.field public static final whitelist SHOW_IN_QUIET_MODE_HIDDEN:I = 0x1

.field public static final whitelist SHOW_IN_QUIET_MODE_PAUSED:I = 0x0

.field public static final whitelist SHOW_IN_QUIET_MODE_UNKNOWN:I = -0x1

.field public static final blacklist SHOW_IN_SETTINGS_NO:I = 0x2

.field public static final blacklist SHOW_IN_SETTINGS_SEPARATE:I = 0x1

.field public static final blacklist SHOW_IN_SETTINGS_UNKNOWN:I = -0x1

.field public static final blacklist SHOW_IN_SETTINGS_WITH_PARENT:I = 0x0

.field public static final whitelist SHOW_IN_SHARING_SURFACES_NO:I = 0x2

.field public static final whitelist SHOW_IN_SHARING_SURFACES_SEPARATE:I = 0x1

.field public static final whitelist SHOW_IN_SHARING_SURFACES_UNKNOWN:I = -0x1

.field public static final whitelist SHOW_IN_SHARING_SURFACES_WITH_PARENT:I


# instance fields
.field private blacklist mAllowStoppingUserWithDelayedLocking:Z

.field private blacklist mAlwaysVisible:Z

.field private blacklist mAuthAlwaysRequiredToDisableQuietMode:Z

.field private blacklist mCredentialShareableWithParent:Z

.field private blacklist mCrossProfileContentSharingStrategy:I

.field private blacklist mCrossProfileIntentFilterAccessControl:I

.field private blacklist mCrossProfileIntentResolutionStrategy:I

.field private final blacklist mDefaultProperties:Landroid/content/pm/UserProperties;

.field private blacklist mDeleteAppWithParent:Z

.field private blacklist mInheritDevicePolicy:I

.field private blacklist mItemsRestrictedOnHomeScreen:Z

.field private blacklist mMediaSharedWithParent:Z

.field private blacklist mProfileApiVisibility:I

.field private blacklist mPropertiesPresent:J

.field private blacklist mShowInLauncher:I

.field private blacklist mShowInQuietMode:I

.field private blacklist mShowInSettings:I

.field private blacklist mShowInSharingSurfaces:I

.field private blacklist mStartWithParent:Z

.field private blacklist mUpdateCrossProfileIntentFiltersOnOTA:Z

.field private blacklist mUseParentsContacts:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Landroid/content/pm/UserProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/UserProperties;->LOG_TAG:Ljava/lang/String;

    .line 1388
    new-instance v0, Landroid/content/pm/UserProperties$1;

    invoke-direct {v0}, Landroid/content/pm/UserProperties$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IZIIIIZZIIZZZZZZIIZ)V
    .registers 36
    .param p1, "showInLauncher"    # I
    .param p2, "startWithParent"    # Z
    .param p3, "showInSettings"    # I
    .param p4, "showInQuietMode"    # I
    .param p5, "showInSharingSurfaces"    # I
    .param p6, "inheritDevicePolicy"    # I
    .param p7, "useParentsContacts"    # Z
    .param p8, "updateCrossProfileIntentFiltersOnOTA"    # Z
    .param p9, "crossProfileIntentFilterAccessControl"    # I
    .param p10, "crossProfileIntentResolutionStrategy"    # I
    .param p11, "mediaSharedWithParent"    # Z
    .param p12, "credentialShareableWithParent"    # Z
    .param p13, "authAlwaysRequiredToDisableQuietMode"    # Z
    .param p14, "allowStoppingUserWithDelayedLocking"    # Z
    .param p15, "deleteAppWithParent"    # Z
    .param p16, "alwaysVisible"    # Z
    .param p17, "crossProfileContentSharingStrategy"    # I
    .param p18, "profileApiVisibility"    # I
    .param p19, "itemsRestrictedOnHomeScreen"    # Z

    .line 1654
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 1655
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 1656
    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    .line 1657
    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    .line 1658
    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    .line 1659
    move/from16 v3, p4

    invoke-virtual {v0, v3}, Landroid/content/pm/UserProperties;->setShowInQuietMode(I)V

    .line 1660
    move/from16 v4, p5

    invoke-virtual {v0, v4}, Landroid/content/pm/UserProperties;->setShowInSharingSurfaces(I)V

    .line 1661
    move/from16 v5, p6

    invoke-virtual {v0, v5}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    .line 1662
    move/from16 v6, p7

    invoke-virtual {v0, v6}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    .line 1663
    move/from16 v7, p8

    invoke-virtual {v0, v7}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    .line 1664
    move/from16 v8, p9

    invoke-virtual {v0, v8}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    .line 1665
    move/from16 v9, p10

    invoke-virtual {v0, v9}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    .line 1666
    move/from16 v10, p11

    invoke-virtual {v0, v10}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    .line 1667
    move/from16 v11, p12

    invoke-virtual {v0, v11}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    .line 1668
    move/from16 v12, p13

    invoke-virtual {v0, v12}, Landroid/content/pm/UserProperties;->setAuthAlwaysRequiredToDisableQuietMode(Z)V

    .line 1670
    move/from16 v13, p14

    invoke-virtual {v0, v13}, Landroid/content/pm/UserProperties;->setAllowStoppingUserWithDelayedLocking(Z)V

    .line 1671
    move/from16 v14, p15

    invoke-virtual {v0, v14}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    .line 1672
    move/from16 v15, p16

    invoke-virtual {v0, v15}, Landroid/content/pm/UserProperties;->setAlwaysVisible(Z)V

    .line 1673
    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setCrossProfileContentSharingStrategy(I)V

    .line 1674
    move/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setProfileApiVisibility(I)V

    .line 1675
    move/from16 v1, p19

    invoke-virtual {v0, v1}, Landroid/content/pm/UserProperties;->setItemsRestrictedOnHomeScreen(Z)V

    .line 1676
    return-void
.end method

.method synthetic constructor blacklist <init>(IZIIIIZZIIZZZZZZIIZLandroid/content/pm/UserProperties-IA;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Landroid/content/pm/UserProperties;-><init>(IZIIIIZZIIZZZZZZIIZ)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/UserProperties;)V
    .registers 4
    .param p1, "defaultProperties"    # Landroid/content/pm/UserProperties;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 507
    iput-object p1, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 508
    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 509
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/UserProperties;ZZZ)V
    .registers 7
    .param p1, "orig"    # Landroid/content/pm/UserProperties;
    .param p2, "exposeAllFields"    # Z
    .param p3, "hasManagePermission"    # Z
    .param p4, "hasQueryOrManagePermission"    # Z

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 524
    iget-object v0, p1, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_9b

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 532
    if-eqz p2, :cond_49

    .line 534
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    .line 535
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    .line 536
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    .line 537
    nop

    .line 538
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v0

    .line 537
    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    .line 539
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    .line 540
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    .line 541
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setAlwaysVisible(Z)V

    .line 542
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setAllowStoppingUserWithDelayedLocking(Z)V

    .line 544
    :cond_49
    if-eqz p3, :cond_61

    .line 546
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    .line 547
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    .line 548
    nop

    .line 549
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v0

    .line 548
    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setAuthAlwaysRequiredToDisableQuietMode(Z)V

    .line 551
    :cond_61
    nop

    .line 555
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    .line 556
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    .line 557
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    .line 558
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInQuietMode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInQuietMode(I)V

    .line 559
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInSharingSurfaces()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInSharingSurfaces(I)V

    .line 560
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileContentSharingStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileContentSharingStrategy(I)V

    .line 561
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setProfileApiVisibility(I)V

    .line 562
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setItemsRestrictedOnHomeScreen(Z)V

    .line 563
    return-void

    .line 525
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to copy a non-original UserProperties."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    .line 1363
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    .line 1367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    .line 1369
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    .line 1372
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    .line 1373
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    .line 1374
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    .line 1375
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    .line 1376
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    .line 1377
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    .line 1378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    .line 1379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    .line 1380
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    .line 1381
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/UserProperties-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/UserProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V
    .registers 3
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "defaultUserPropertiesReference"    # Landroid/content/pm/UserProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1163
    invoke-direct {p0, p2}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    .line 1164
    invoke-virtual {p0, p1}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1165
    return-void
.end method

.method private blacklist isPresent(J)Z
    .registers 8
    .param p1, "index"    # J

    .line 572
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private blacklist listPropertiesAsStringBuilder()Ljava/lang/StringBuilder;
    .registers 3

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, ", mShowInLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    const-string v1, ", mStartWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1090
    const-string v1, ", mShowInSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1091
    const-string v1, ", mInheritDevicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1092
    const-string v1, ", mUseParentsContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1093
    const-string v1, ", mUpdateCrossProfileIntentFiltersOnOTA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1095
    const-string v1, ", mCrossProfileIntentFilterAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1097
    const-string v1, ", mCrossProfileIntentResolutionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1099
    const-string v1, ", mMediaSharedWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1100
    const-string v1, ", mCredentialShareableWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1101
    const-string v1, ", mAuthAlwaysRequiredToDisableQuietMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1103
    const-string v1, ", mAllowStoppingUserWithDelayedLocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1105
    const-string v1, ", mDeleteAppWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1106
    const-string v1, ", mAlwaysVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1107
    const-string v1, ", mCrossProfileContentSharingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileContentSharingStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1109
    const-string v1, ", mProfileApiVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1110
    const-string v1, ", mItemsRestrictedOnHomeScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1112
    return-object v0
.end method

.method private blacklist setPresent(J)V
    .registers 8
    .param p1, "index"    # J

    .line 577
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 578
    return-void
.end method


# virtual methods
.method public blacklist areItemsRestrictedOnHomeScreen()Z
    .registers 3

    .line 1054
    const-wide/16 v0, 0x12

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1055
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    return v0

    .line 1057
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 1058
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    return v0

    .line 1060
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mItemsRestrictedOnHomeScreen"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowStoppingUserWithDelayedLocking()Z
    .registers 3

    .line 914
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 915
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    return v0

    .line 917
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 918
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    return v0

    .line 920
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query allowStoppingUserWithDelayedLocking"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlwaysVisible()Z
    .registers 3

    .line 739
    const-wide/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    return v0

    .line 740
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    return v0

    .line 741
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query alwaysVisible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCrossProfileContentSharingStrategy()I
    .registers 3

    .line 1000
    const-wide/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1001
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    return v0

    .line 1003
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 1004
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    return v0

    .line 1006
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileContentSharingStrategy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCrossProfileIntentFilterAccessControl()I
    .registers 3

    .line 938
    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 939
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    return v0

    .line 941
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 942
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    return v0

    .line 944
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileIntentFilterAccessControl"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCrossProfileIntentResolutionStrategy()I
    .registers 3

    .line 967
    const-wide/16 v0, 0x7

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 968
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    return v0

    .line 970
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 971
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    return v0

    .line 973
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileIntentResolutionStrategy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDeleteAppWithParent()Z
    .registers 3

    .line 719
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    return v0

    .line 720
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    return v0

    .line 721
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query deleteAppWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInheritDevicePolicy()I
    .registers 3

    .line 761
    const-wide/16 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    return v0

    .line 762
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    return v0

    .line 763
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query inheritDevicePolicy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getProfileApiVisibility()I
    .registers 3

    .line 1026
    const-wide/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    return v0

    .line 1027
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    return v0

    .line 1028
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query profileApiVisibility"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPropertiesPresent()J
    .registers 3

    .line 583
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    return-wide v0
.end method

.method public blacklist getShowInLauncher()I
    .registers 3

    .line 600
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    return v0

    .line 601
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    return v0

    .line 602
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query showInLauncher"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShowInQuietMode()I
    .registers 3

    .line 655
    const-wide/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    return v0

    .line 656
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    return v0

    .line 657
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query ShowInQuietMode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getShowInSettings()I
    .registers 3

    .line 625
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    return v0

    .line 626
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    return v0

    .line 627
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mShowInSettings"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShowInSharingSurfaces()I
    .registers 3

    .line 679
    const-wide/16 v0, 0xe

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    return v0

    .line 680
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    return v0

    .line 681
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query ShowInSharingSurfaces"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStartWithParent()Z
    .registers 3

    .line 699
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    return v0

    .line 700
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    return v0

    .line 701
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query startWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUpdateCrossProfileIntentFiltersOnOTA()Z
    .registers 3

    .line 814
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 815
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return v0

    .line 817
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 818
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return v0

    .line 820
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query updateCrossProfileIntentFiltersOnOTA"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUseParentsContacts()Z
    .registers 3

    .line 790
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    return v0

    .line 791
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    return v0

    .line 792
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query useParentsContacts"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAuthAlwaysRequiredToDisableQuietMode()Z
    .registers 3

    .line 879
    const-wide/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 880
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    return v0

    .line 882
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    .line 883
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    return v0

    .line 885
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query authAlwaysRequiredToDisableQuietMode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isCredentialShareableWithParent()Z
    .registers 3

    .line 855
    const-wide/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 856
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    return v0

    .line 858
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    return v0

    .line 859
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query credentialShareableWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isMediaSharedWithParent()Z
    .registers 3

    .line 839
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    return v0

    .line 840
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    return v0

    .line 841
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mediaSharedWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist println(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserProperties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mPropertiesPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mShowInLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mStartWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mShowInSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mInheritDevicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUseParentsContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUpdateCrossProfileIntentFiltersOnOTA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileIntentFilterAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1131
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileIntentResolutionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mMediaSharedWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCredentialShareableWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1136
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mAuthAlwaysRequiredToDisableQuietMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1138
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mAllowStoppingUserWithDelayedLocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1140
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mDeleteAppWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mAlwaysVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileContentSharingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1144
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileContentSharingStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mProfileApiVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mItemsRestrictedOnHomeScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public blacklist setAllowStoppingUserWithDelayedLocking(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 925
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    .line 926
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 927
    return-void
.end method

.method public blacklist setAlwaysVisible(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 745
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    .line 746
    const-wide/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 747
    return-void
.end method

.method public blacklist setAuthAlwaysRequiredToDisableQuietMode(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 890
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    .line 891
    const-wide/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 892
    return-void
.end method

.method public blacklist setCredentialShareableWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 864
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    .line 865
    const-wide/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 866
    return-void
.end method

.method public blacklist setCrossProfileContentSharingStrategy(I)V
    .registers 4
    .param p1, "val"    # I

    .line 1013
    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    .line 1014
    const-wide/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 1015
    return-void
.end method

.method public blacklist setCrossProfileIntentFilterAccessControl(I)V
    .registers 4
    .param p1, "val"    # I

    .line 954
    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    .line 955
    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 956
    return-void
.end method

.method public blacklist setCrossProfileIntentResolutionStrategy(I)V
    .registers 4
    .param p1, "val"    # I

    .line 980
    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    .line 981
    const-wide/16 v0, 0x7

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 982
    return-void
.end method

.method public blacklist setDeleteAppWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 725
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    .line 726
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 727
    return-void
.end method

.method public blacklist setInheritDevicePolicy(I)V
    .registers 4
    .param p1, "val"    # I

    .line 767
    iput p1, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    .line 768
    const-wide/16 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 769
    return-void
.end method

.method public blacklist setItemsRestrictedOnHomeScreen(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 1065
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    .line 1066
    const-wide/16 v0, 0x12

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 1067
    return-void
.end method

.method public blacklist setMediaSharedWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 845
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    .line 846
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 847
    return-void
.end method

.method public blacklist setProfileApiVisibility(I)V
    .registers 4
    .param p1, "profileApiVisibility"    # I

    .line 1033
    iput p1, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    .line 1034
    const-wide/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 1035
    return-void
.end method

.method public blacklist setShowInLauncher(I)V
    .registers 4
    .param p1, "val"    # I

    .line 606
    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    .line 607
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 608
    return-void
.end method

.method public blacklist setShowInQuietMode(I)V
    .registers 4
    .param p1, "showInQuietMode"    # I

    .line 662
    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    .line 663
    const-wide/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 664
    return-void
.end method

.method public blacklist setShowInSettings(I)V
    .registers 4
    .param p1, "val"    # I

    .line 631
    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    .line 632
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 633
    return-void
.end method

.method public blacklist setShowInSharingSurfaces(I)V
    .registers 4
    .param p1, "showInSharingSurfaces"    # I

    .line 686
    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    .line 687
    const-wide/16 v0, 0xe

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 688
    return-void
.end method

.method public blacklist setStartWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 705
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    .line 706
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 707
    return-void
.end method

.method public blacklist setUpdateCrossProfileIntentFiltersOnOTA(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 825
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 826
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 827
    return-void
.end method

.method public blacklist setUseParentsContacts(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 796
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    .line 797
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 798
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "UserProperties{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    const-string/jumbo v1, "mPropertiesPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :try_start_19
    invoke-direct {p0}, Landroid/content/pm/UserProperties;->listPropertiesAsStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_20} :catch_21

    .line 1079
    goto :goto_22

    .line 1077
    :catch_21
    move-exception v1

    .line 1080
    :goto_22
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1176
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v0

    .line 1177
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1b2

    .line 1178
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, "attributeName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1b4

    :cond_12
    goto/16 :goto_f2

    :sswitch_14
    const-string v3, "crossProfileIntentResolutionStrategy"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x9

    goto/16 :goto_f3

    :sswitch_20
    const-string/jumbo v3, "showInQuietMode"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x3

    goto/16 :goto_f3

    :sswitch_2c
    const-string/jumbo v3, "itemsRestrictedOnHomeScreen"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x12

    goto/16 :goto_f3

    :sswitch_39
    const-string/jumbo v3, "showInSharingSurfaces"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x4

    goto/16 :goto_f3

    :sswitch_45
    const-string v3, "authAlwaysRequiredToDisableQuietMode"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xc

    goto/16 :goto_f3

    :sswitch_51
    const-string/jumbo v3, "useParentsContacts"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x6

    goto/16 :goto_f3

    :sswitch_5d
    const-string/jumbo v3, "inheritDevicePolicy"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x5

    goto/16 :goto_f3

    :sswitch_69
    const-string v3, "credentialShareableWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xb

    goto/16 :goto_f3

    :sswitch_75
    const-string/jumbo v3, "showInLauncher"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    goto/16 :goto_f3

    :sswitch_81
    const-string/jumbo v3, "startWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto/16 :goto_f3

    :sswitch_8d
    const-string v3, "allowStoppingUserWithDelayedLocking"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xd

    goto :goto_f3

    :sswitch_98
    const-string/jumbo v3, "mediaSharedWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xa

    goto :goto_f3

    :sswitch_a4
    const-string v3, "crossProfileIntentFilterAccessControl"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x8

    goto :goto_f3

    :sswitch_af
    const-string/jumbo v3, "updateCrossProfileIntentFiltersOnOTA"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x7

    goto :goto_f3

    :sswitch_ba
    const-string v3, "deleteAppWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xe

    goto :goto_f3

    :sswitch_c5
    const-string/jumbo v3, "profileApiVisibility"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x11

    goto :goto_f3

    :sswitch_d1
    const-string v3, "alwaysVisible"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xf

    goto :goto_f3

    :sswitch_dc
    const-string/jumbo v3, "showInSettings"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x2

    goto :goto_f3

    :sswitch_e7
    const-string v3, "crossProfileContentSharingStrategy"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x10

    goto :goto_f3

    :goto_f2
    const/4 v3, -0x1

    :goto_f3
    packed-switch v3, :pswitch_data_202

    .line 1238
    sget-object v3, Landroid/content/pm/UserProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unknown property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    .line 1235
    :pswitch_110
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setItemsRestrictedOnHomeScreen(Z)V

    .line 1236
    goto/16 :goto_1ae

    .line 1232
    :pswitch_119
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setProfileApiVisibility(I)V

    .line 1233
    goto/16 :goto_1ae

    .line 1229
    :pswitch_122
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileContentSharingStrategy(I)V

    .line 1230
    goto/16 :goto_1ae

    .line 1226
    :pswitch_12b
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setAlwaysVisible(Z)V

    .line 1227
    goto/16 :goto_1ae

    .line 1223
    :pswitch_134
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    .line 1224
    goto/16 :goto_1ae

    .line 1220
    :pswitch_13d
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setAllowStoppingUserWithDelayedLocking(Z)V

    .line 1221
    goto/16 :goto_1ae

    .line 1217
    :pswitch_146
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setAuthAlwaysRequiredToDisableQuietMode(Z)V

    .line 1218
    goto :goto_1ae

    .line 1214
    :pswitch_14e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    .line 1215
    goto :goto_1ae

    .line 1211
    :pswitch_156
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    .line 1212
    goto :goto_1ae

    .line 1208
    :pswitch_15e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    .line 1209
    goto :goto_1ae

    .line 1205
    :pswitch_166
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    .line 1206
    goto :goto_1ae

    .line 1202
    :pswitch_16e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    .line 1203
    goto :goto_1ae

    .line 1199
    :pswitch_176
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    .line 1200
    goto :goto_1ae

    .line 1196
    :pswitch_17e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    .line 1197
    goto :goto_1ae

    .line 1193
    :pswitch_186
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInSharingSurfaces(I)V

    .line 1194
    goto :goto_1ae

    .line 1190
    :pswitch_18e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInQuietMode(I)V

    .line 1191
    goto :goto_1ae

    .line 1187
    :pswitch_196
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    .line 1188
    goto :goto_1ae

    .line 1184
    :pswitch_19e
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    .line 1185
    goto :goto_1ae

    .line 1181
    :pswitch_1a6
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    .line 1182
    nop

    .line 1177
    .end local v2    # "attributeName":Ljava/lang/String;
    :goto_1ae
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1241
    .end local v1    # "i":I
    :cond_1b2
    return-void

    nop

    :sswitch_data_1b4
    .sparse-switch
        -0x67c160a1 -> :sswitch_e7
        -0x6017e8bb -> :sswitch_dc
        -0x5dbba89d -> :sswitch_d1
        -0x412b3e5d -> :sswitch_c5
        -0x3e0e2dda -> :sswitch_ba
        -0x37ba4d70 -> :sswitch_af
        -0x323422c4 -> :sswitch_a4
        -0x25610ca7 -> :sswitch_98
        -0x20ec981d -> :sswitch_8d
        -0x12e678ee -> :sswitch_81
        -0x97b953e -> :sswitch_75
        0x198cd9d2 -> :sswitch_69
        0x1d3e5bc3 -> :sswitch_5d
        0x22e30bf5 -> :sswitch_51
        0x378721c0 -> :sswitch_45
        0x41b49d00 -> :sswitch_39
        0x4d618d45 -> :sswitch_2c
        0x53b3a315 -> :sswitch_20
        0x7c24f264 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_19e
        :pswitch_196
        :pswitch_18e
        :pswitch_186
        :pswitch_17e
        :pswitch_176
        :pswitch_16e
        :pswitch_166
        :pswitch_15e
        :pswitch_156
        :pswitch_14e
        :pswitch_146
        :pswitch_13d
        :pswitch_134
        :pswitch_12b
        :pswitch_122
        :pswitch_119
        :pswitch_110
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 1332
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1333
    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1335
    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    iget v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1340
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1341
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1344
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1345
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1346
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1347
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1348
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1349
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget v0, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1352
    return-void
.end method

.method public blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1254
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1255
    const-string/jumbo v0, "showInLauncher"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    :cond_11
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1258
    const-string/jumbo v0, "startWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    :cond_21
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1261
    const-string/jumbo v0, "showInSettings"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    :cond_31
    const-wide/16 v2, 0xc

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1264
    const-string/jumbo v0, "showInQuietMode"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInQuietMode:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    :cond_41
    const-wide/16 v2, 0xe

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1268
    const-string/jumbo v0, "showInSharingSurfaces"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInSharingSurfaces:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    :cond_51
    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1271
    const-string/jumbo v0, "inheritDevicePolicy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1274
    :cond_61
    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1275
    const-string/jumbo v0, "useParentsContacts"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1278
    :cond_71
    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1279
    const-string/jumbo v0, "updateCrossProfileIntentFiltersOnOTA"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    :cond_81
    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1284
    const-string v0, "crossProfileIntentFilterAccessControl"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1287
    :cond_90
    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1288
    const-string v0, "crossProfileIntentResolutionStrategy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1291
    :cond_9f
    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1292
    const-string/jumbo v0, "mediaSharedWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1295
    :cond_af
    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1296
    const-string v0, "credentialShareableWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1299
    :cond_be
    const-wide/16 v2, 0xd

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1300
    const-string v0, "authAlwaysRequiredToDisableQuietMode"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mAuthAlwaysRequiredToDisableQuietMode:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1303
    :cond_cd
    const-wide/16 v2, 0x10

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1304
    const-string v0, "allowStoppingUserWithDelayedLocking"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mAllowStoppingUserWithDelayedLocking:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1307
    :cond_dc
    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1308
    const-string v0, "deleteAppWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1311
    :cond_eb
    const-wide/16 v2, 0xb

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1312
    const-string v0, "alwaysVisible"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mAlwaysVisible:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1315
    :cond_fa
    const-wide/16 v2, 0xf

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1316
    const-string v0, "crossProfileContentSharingStrategy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileContentSharingStrategy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1319
    :cond_109
    const-wide/16 v2, 0x11

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1320
    const-string/jumbo v0, "profileApiVisibility"

    iget v2, p0, Landroid/content/pm/UserProperties;->mProfileApiVisibility:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1323
    :cond_119
    const-wide/16 v2, 0x12

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1324
    const-string/jumbo v0, "itemsRestrictedOnHomeScreen"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mItemsRestrictedOnHomeScreen:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1327
    :cond_129
    return-void
.end method
