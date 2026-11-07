.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
        Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;,
        Landroid/app/ContextImpl$ServiceInitializationState;,
        Landroid/app/ContextImpl$ContextType;
    }
.end annotation


# static fields
.field private static final blacklist CONTEXT_TYPE_ACTIVITY:I = 0x2

.field private static final blacklist CONTEXT_TYPE_DISPLAY_CONTEXT:I = 0x1

.field private static final blacklist CONTEXT_TYPE_NON_UI:I = 0x0

.field private static final blacklist CONTEXT_TYPE_SYSTEM_OR_SYSTEM_UI:I = 0x4

.field private static final blacklist CONTEXT_TYPE_WINDOW_CONTEXT:I = 0x3

.field private static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o STATE_INITIALIZING:I = 0x1

.field static final greylist-max-o STATE_NOT_FOUND:I = 0x3

.field static final greylist-max-o STATE_READY:I = 0x2

.field static final greylist-max-o STATE_UNINITIALIZED:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContextImpl"

.field private static final greylist-max-o XATTR_INODE_CACHE:Ljava/lang/String; = "user.inode_cache"

.field private static final greylist-max-o XATTR_INODE_CODE_CACHE:Ljava/lang/String; = "user.inode_code_cache"

.field private static greylist sSharedPrefsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private greylist-max-o mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

.field private blacklist mAutofillOptions:Landroid/content/AutofillOptions;

.field private final greylist mBasePackageName:Ljava/lang/String;

.field private greylist-max-o mCacheDir:Ljava/io/File;

.field private final blacklist mCacheDirLock:Ljava/lang/Object;

.field private greylist mClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mCodeCacheDir:Ljava/io/File;

.field private final blacklist mCodeCacheDirLock:Ljava/lang/Object;

.field private blacklist mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

.field private final greylist mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private blacklist mContextType:I

.field private blacklist mCratesDir:Ljava/io/File;

.field private final blacklist mCratesDirLock:Ljava/lang/Object;

.field private greylist-max-o mDatabasesDir:Ljava/io/File;

.field private final blacklist mDatabasesDirLock:Ljava/lang/Object;

.field private blacklist mDeviceId:I

.field private blacklist mDeviceIdChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceIdListenerLock:Ljava/lang/Object;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFilesDir:Ljava/io/File;

.field private final blacklist mFilesDirLock:Ljava/lang/Object;

.field private final greylist-max-p mFlags:I

.field private blacklist mForceDisplayOverrideInResources:Z

.field private blacklist mIsConfigurationBasedContext:Z

.field private blacklist mIsExplicitDeviceId:Z

.field final greylist mMainThread:Landroid/app/ActivityThread;

.field private final blacklist mMiscDirsLock:Ljava/lang/Object;

.field private greylist-max-o mNoBackupFilesDir:Ljava/io/File;

.field private final blacklist mNoBackupFilesDirLock:Ljava/lang/Object;

.field private final greylist-max-p mOpPackageName:Ljava/lang/String;

.field private greylist mOuterContext:Landroid/content/Context;

.field private blacklist mOwnsToken:Z

.field final greylist mPackageInfo:Landroid/app/LoadedApk;

.field private greylist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mParams:Landroid/content/ContextParams;

.field private greylist mPreferencesDir:Ljava/io/File;

.field private final blacklist mPreferencesDirLock:Ljava/lang/Object;

.field private greylist-max-o mReceiverRestrictedContext:Landroid/content/Context;

.field private greylist mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mResourcesManager:Landroid/app/ResourcesManager;

.field final greylist mServiceCache:[Ljava/lang/Object;

.field final greylist-max-o mServiceInitializationStateArray:[I

.field private greylist-max-p mSharedPrefsPaths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSplitName:Ljava/lang/String;

.field private greylist mTheme:Landroid/content/res/Resources$Theme;

.field private final blacklist mThemeLock:Ljava/lang/Object;

.field private greylist mThemeResource:I

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final greylist-max-o mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V
    .registers 32
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "params"    # Landroid/content/ContextParams;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "nextAttributionSource"    # Landroid/content/AttributionSource;
    .param p7, "splitName"    # Ljava/lang/String;
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "flags"    # I
    .param p11, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "overrideOpPackageName"    # Ljava/lang/String;
    .param p13, "deviceId"    # I
    .param p14, "isExplicitDeviceId"    # Z

    .line 3565
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p14

    invoke-direct {v0}, Landroid/content/Context;-><init>()V

    .line 251
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 270
    iput-boolean v1, v0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 278
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    .line 279
    iput v1, v0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 282
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 288
    iput-object v2, v0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 291
    iput-object v2, v0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 293
    iput-object v2, v0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 296
    iput-object v2, v0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 347
    iput-boolean v1, v0, Landroid/app/ContextImpl;->mOwnsToken:Z

    .line 349
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mDatabasesDirLock:Ljava/lang/Object;

    .line 353
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mPreferencesDirLock:Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mFilesDirLock:Ljava/lang/Object;

    .line 362
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mCratesDirLock:Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mNoBackupFilesDirLock:Ljava/lang/Object;

    .line 370
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mCacheDirLock:Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mCodeCacheDirLock:Ljava/lang/Object;

    .line 378
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    .line 381
    nop

    .line 382
    invoke-static {}, Landroid/app/SystemServiceRegistry;->createServiceCache()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 403
    iget-object v1, v0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 406
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    .line 3566
    iput-object v0, v0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3569
    and-int/lit8 v1, p10, 0x18

    if-nez v1, :cond_9b

    .line 3571
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    .line 3572
    .local v1, "dataDir":Ljava/io/File;
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 3573
    or-int/lit8 v2, p10, 0x10

    move v10, v2

    .end local p10    # "flags":I
    .local v2, "flags":I
    goto :goto_9d

    .line 3574
    .end local v2    # "flags":I
    .restart local p10    # "flags":I
    :cond_8d
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 3575
    or-int/lit8 v2, p10, 0x8

    move v10, v2

    .end local p10    # "flags":I
    .restart local v2    # "flags":I
    goto :goto_9d

    .line 3579
    .end local v1    # "dataDir":Ljava/io/File;
    .end local v2    # "flags":I
    .restart local p10    # "flags":I
    :cond_9b
    move/from16 v10, p10

    .end local p10    # "flags":I
    .local v10, "flags":I
    :goto_9d
    iput-object v7, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 3580
    move-object/from16 v11, p8

    iput-object v11, v0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 3581
    iput v10, v0, Landroid/app/ContextImpl;->mFlags:I

    .line 3583
    if-nez p9, :cond_ad

    .line 3584
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    move-object v12, v1

    .end local p9    # "user":Landroid/os/UserHandle;
    .local v1, "user":Landroid/os/UserHandle;
    goto :goto_af

    .line 3583
    .end local v1    # "user":Landroid/os/UserHandle;
    .restart local p9    # "user":Landroid/os/UserHandle;
    :cond_ad
    move-object/from16 v12, p9

    .line 3586
    .end local p9    # "user":Landroid/os/UserHandle;
    .local v12, "user":Landroid/os/UserHandle;
    :goto_af
    iput-object v12, v0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    .line 3588
    iput-object v8, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3589
    move-object/from16 v13, p7

    iput-object v13, v0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 3590
    move-object/from16 v14, p11

    iput-object v14, v0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    .line 3591
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3595
    move/from16 v15, p13

    iput v15, v0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3596
    iput-boolean v9, v0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 3598
    if-eqz v6, :cond_f9

    .line 3599
    iget-object v1, v6, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3600
    iget-object v1, v6, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3601
    .local v1, "opPackageName":Ljava/lang/String;
    iget-object v2, v6, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3602
    iget-object v2, v6, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iput-object v2, v0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 3603
    if-nez v9, :cond_e2

    .line 3604
    iget-boolean v2, v6, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    iput-boolean v2, v0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 3605
    iget v2, v6, Landroid/app/ContextImpl;->mDeviceId:I

    iput v2, v0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3607
    :cond_e2
    iget-boolean v2, v6, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    iput-boolean v2, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3608
    iget-boolean v2, v6, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    iput-boolean v2, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3609
    iget v2, v6, Landroid/app/ContextImpl;->mContextType:I

    iput v2, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3610
    iget-object v2, v6, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    iput-object v2, v0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3611
    iget-object v2, v6, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    iput-object v2, v0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    move-object/from16 v16, v1

    goto :goto_11a

    .line 3613
    .end local v1    # "opPackageName":Ljava/lang/String;
    :cond_f9
    iget-object v1, v8, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3614
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3615
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_116

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_116

    .line 3620
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .local v2, "opPackageName":Ljava/lang/String;
    goto :goto_11a

    .line 3622
    .end local v2    # "opPackageName":Ljava/lang/String;
    :cond_116
    iget-object v2, v0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    move-object/from16 v16, v2

    .line 3626
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "opPackageName":Ljava/lang/String;
    :goto_11a
    if-eqz p12, :cond_11f

    move-object/from16 v1, p12

    goto :goto_121

    :cond_11f
    move-object/from16 v1, v16

    :goto_121
    iput-object v1, v0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3627
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContextParams;

    iput-object v1, v0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    .line 3628
    nop

    .line 3629
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContextParams;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroid/content/ContextParams;->shouldRegisterAttributionSource()Z

    move-result v4

    iget v5, v0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3628
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;ZI)Landroid/content/AttributionSource;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3630
    new-instance v1, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v1, v0, v7}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v1, v0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 3631
    return-void
.end method

.method private blacklist applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .line 1216
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1218
    return-object p1

    .line 1222
    :cond_7
    if-eqz p1, :cond_14

    .line 1223
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1224
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-static {v0}, Landroid/app/ActivityOptions;->hasLaunchTargetContainer(Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1226
    return-object p1

    .line 1229
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_14
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1231
    .restart local v0    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_18
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAssociatedDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private blacklist bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z
    .registers 21
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # J
    .param p5, "instanceName"    # Ljava/lang/String;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "user"    # Landroid/os/UserHandle;

    .line 2206
    if-eqz p2, :cond_b6

    .line 2209
    if-eqz p6, :cond_f

    if-nez p7, :cond_7

    goto :goto_f

    .line 2210
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Handler and Executor both supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2212
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_ae

    .line 2213
    if-eqz p7, :cond_25

    .line 2214
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p2

    move-wide v5, p3

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object v6, v0

    .local v0, "sd":Landroid/app/IServiceConnection;
    goto :goto_34

    .line 2216
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_25
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p2

    move-wide v5, p3

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object v6, v0

    .line 2221
    .local v6, "sd":Landroid/app/IServiceConnection;
    :goto_34
    invoke-direct/range {p0 .. p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2223
    :try_start_37
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2224
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_5b

    const-wide/16 v1, 0x1

    and-long/2addr v1, p3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5b

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2225
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_52} :catch_a7

    const/16 v2, 0xe

    if-ge v1, v2, :cond_5b

    .line 2227
    const-wide/16 v1, 0x20

    or-long/2addr v1, p3

    move-wide v7, v1

    .end local p3    # "flags":J
    .local v1, "flags":J
    goto :goto_5c

    .line 2229
    .end local v1    # "flags":J
    .restart local p3    # "flags":J
    :cond_5b
    move-wide v7, p3

    .end local p3    # "flags":J
    .local v7, "flags":J
    :goto_5c
    :try_start_5c
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2230
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2231
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 2232
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 2233
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 2230
    move-object v4, p1

    move-object/from16 v9, p5

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2234
    .local v1, "res":I
    if-ltz v1, :cond_8c

    .line 2238
    if-eqz v1, :cond_8a

    const/4 v2, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v2, 0x0

    :goto_8b
    return v2

    .line 2235
    :cond_8c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to bind to service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "sd":Landroid/app/IServiceConnection;
    .end local v7    # "flags":J
    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p5    # "instanceName":Ljava/lang/String;
    .end local p6    # "handler":Landroid/os/Handler;
    .end local p7    # "executor":Ljava/util/concurrent/Executor;
    .end local p8    # "user":Landroid/os/UserHandle;
    throw v2
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_a5} :catch_a5

    .line 2239
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "res":I
    .restart local v6    # "sd":Landroid/app/IServiceConnection;
    .restart local v7    # "flags":J
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local p5    # "instanceName":Ljava/lang/String;
    .restart local p6    # "handler":Landroid/os/Handler;
    .restart local p7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p8    # "user":Landroid/os/UserHandle;
    :catch_a5
    move-exception v0

    goto :goto_a9

    .end local v7    # "flags":J
    .restart local p3    # "flags":J
    :catch_a7
    move-exception v0

    move-wide v7, p3

    .line 2240
    .end local p3    # "flags":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "flags":J
    :goto_a9
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2219
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "sd":Landroid/app/IServiceConnection;
    .end local v7    # "flags":J
    .restart local p3    # "flags":J
    :cond_ae
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2207
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3735
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_23

    .line 3736
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1b

    .line 3739
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_13

    goto :goto_23

    .line 3740
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODE_WORLD_WRITEABLE no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3737
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODE_WORLD_READABLE no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3743
    :cond_23
    :goto_23
    return-void
.end method

.method static greylist-max-r createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;
    .registers 34
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "displayId"    # I
    .param p5, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 3501
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    if-eqz v3, :cond_da

    .line 3503
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v1

    .line 3504
    .local v1, "splitDirs":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3506
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3507
    const-string v0, "SplitDependencies"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3509
    :try_start_1f
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v0

    .line 3510
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2c} :catch_37
    .catchall {:try_start_1f .. :try_end_2c} :catchall_35

    move-object v1, v0

    .line 3515
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3516
    move-object/from16 v19, v1

    move-object/from16 v26, v2

    goto :goto_46

    .line 3515
    :catchall_35
    move-exception v0

    goto :goto_3e

    .line 3511
    :catch_37
    move-exception v0

    .line 3513
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_38
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "splitDirs":[Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "mainThread":Landroid/app/ActivityThread;
    .end local p1    # "packageInfo":Landroid/app/LoadedApk;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p3    # "activityToken":Landroid/os/IBinder;
    .end local p4    # "displayId":I
    .end local p5    # "overrideConfiguration":Landroid/content/res/Configuration;
    throw v6
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    .line 3515
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "splitDirs":[Ljava/lang/String;
    .restart local v2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "mainThread":Landroid/app/ActivityThread;
    .restart local p1    # "packageInfo":Landroid/app/LoadedApk;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "activityToken":Landroid/os/IBinder;
    .restart local p4    # "displayId":I
    .restart local p5    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_3e
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3516
    throw v0

    .line 3506
    :cond_42
    move-object/from16 v19, v1

    move-object/from16 v26, v2

    .line 3520
    .end local v1    # "splitDirs":[Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .local v19, "splitDirs":[Ljava/lang/String;
    .local v26, "classLoader":Ljava/lang/ClassLoader;
    :goto_46
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v0, :cond_57

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_57

    .line 3521
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v0, v0, v16

    move-object v5, v0

    .local v0, "attributionTag":Ljava/lang/String;
    goto :goto_59

    .line 3523
    .end local v0    # "attributionTag":Ljava/lang/String;
    :cond_57
    const/4 v0, 0x0

    move-object v5, v0

    .line 3526
    .local v5, "attributionTag":Ljava/lang/String;
    :goto_59
    new-instance v0, Landroid/app/ContextImpl;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    iget-object v7, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    move-object/from16 v11, v26

    .end local v26    # "classLoader":Ljava/lang/ClassLoader;
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3529
    .end local v11    # "classLoader":Ljava/lang/ClassLoader;
    .local v0, "context":Landroid/app/ContextImpl;
    .restart local v26    # "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3530
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3533
    const/4 v1, -0x1

    move/from16 v2, p4

    if-eq v2, v1, :cond_7d

    move/from16 v23, v2

    goto :goto_7f

    :cond_7d
    move/from16 v23, v16

    .line 3535
    .end local p4    # "displayId":I
    .local v23, "displayId":I
    :goto_7f
    if-nez v23, :cond_88

    .line 3536
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_8c

    .line 3537
    :cond_88
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v25, v1

    :goto_8c
    nop

    .line 3539
    .local v25, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v16

    .line 3543
    .local v16, "resourcesManager":Landroid/app/ResourcesManager;
    nop

    .line 3544
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v18

    .line 3546
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v20

    .line 3547
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v21

    .line 3548
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3553
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-nez v2, :cond_ae

    const/4 v2, 0x0

    move-object/from16 v27, v2

    goto :goto_bc

    .line 3554
    :cond_ae
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v2

    move-object/from16 v27, v2

    .line 3543
    :goto_bc
    move-object/from16 v17, p3

    move-object/from16 v24, p5

    move-object/from16 v22, v1

    invoke-virtual/range {v16 .. v27}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v3, v16

    move/from16 v2, v23

    .end local v16    # "resourcesManager":Landroid/app/ResourcesManager;
    .end local v23    # "displayId":I
    .local v2, "displayId":I
    .local v3, "resourcesManager":Landroid/app/ResourcesManager;
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3555
    nop

    .line 3556
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3555
    invoke-virtual {v3, v2, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3557
    return-object v0

    .line 3501
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v2    # "displayId":I
    .end local v3    # "resourcesManager":Landroid/app/ResourcesManager;
    .end local v5    # "attributionTag":Ljava/lang/String;
    .end local v19    # "splitDirs":[Ljava/lang/String;
    .end local v25    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v26    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p4    # "displayId":I
    :cond_da
    move/from16 v2, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .registers 3
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    .line 3482
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method static blacklist createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;
    .registers 18
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3487
    if-eqz p1, :cond_2b

    .line 3488
    new-instance v0, Landroid/app/ContextImpl;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3491
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3492
    invoke-static {v0}, Landroid/app/ContextImpl;->isSystemOrSystemUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x4

    goto :goto_28

    .line 3493
    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3494
    return-object v0

    .line 3487
    .end local v0    # "context":Landroid/app/ContextImpl;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createApplicationContextAsUser(Landroid/content/pm/ApplicationInfo;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 20
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2748
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, p2, v3

    invoke-virtual {v0, v15, v2, v3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v3

    .line 2750
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_61

    .line 2751
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2752
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2756
    .local v0, "c":Landroid/app/ContextImpl;
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    .line 2757
    .local v2, "displayId":I
    iget-boolean v4, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_45

    .line 2758
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    move-object v7, v4

    .line 2760
    .local v7, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v4, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 2761
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    .line 2760
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    .end local v3    # "pi":Landroid/app/LoadedApk;
    .local v5, "pi":Landroid/app/LoadedApk;
    invoke-static/range {v4 .. v10}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2762
    iget-object v3, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_62

    .line 2763
    return-object v0

    .line 2750
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v2    # "displayId":I
    .end local v5    # "pi":Landroid/app/LoadedApk;
    .end local v7    # "overrideDisplayId":Ljava/lang/Integer;
    .restart local v3    # "pi":Landroid/app/LoadedApk;
    :cond_61
    move-object v5, v3

    .line 2767
    .end local v3    # "pi":Landroid/app/LoadedApk;
    .restart local v5    # "pi":Landroid/app/LoadedApk;
    :cond_62
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;ZI)Landroid/content/AttributionSource;
    .registers 14
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "nextAttributionSource"    # Landroid/content/AttributionSource;
    .param p4, "shouldRegister"    # Z
    .param p5, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/AttributionSource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Landroid/content/AttributionSource;"
        }
    .end annotation

    .line 3637
    .local p3, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3638
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3639
    if-eqz p3, :cond_18

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    move-object v5, v4

    move-object v4, p1

    move-object v7, p2

    move v6, p5

    .end local p1    # "attributionTag":Ljava/lang/String;
    .end local p2    # "nextAttributionSource":Landroid/content/AttributionSource;
    .end local p5    # "deviceId":I
    .local v4, "attributionTag":Ljava/lang/String;
    .local v6, "deviceId":I
    .local v7, "nextAttributionSource":Landroid/content/AttributionSource;
    invoke-direct/range {v0 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 3643
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    invoke-direct {p0, v0, p4}, Landroid/app/ContextImpl;->registerAttributionSourceIfNeeded(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createAttributionSourceWithDeviceId(Landroid/content/AttributionSource;I)Landroid/content/AttributionSource;
    .registers 5
    .param p1, "oldSource"    # Landroid/content/AttributionSource;
    .param p2, "deviceId"    # I

    .line 3648
    const/4 v0, 0x0

    .line 3649
    .local v0, "shouldRegister":Z
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->shouldRegisterAttributionSource()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3650
    iget-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v1}, Landroid/content/ContextParams;->shouldRegisterAttributionSource()Z

    move-result v0

    .line 3652
    :cond_d
    invoke-virtual {p1, p2}, Landroid/content/AttributionSource;->withDeviceId(I)Landroid/content/AttributionSource;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/app/ContextImpl;->registerAttributionSourceIfNeeded(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 20
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "pi"    # Landroid/app/LoadedApk;
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/app/LoadedApk;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 2721
    .local p6, "resourcesLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2722
    .local v4, "splitResDirs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v11
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_2e

    .line 2725
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    nop

    .line 2726
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    .line 2727
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    .line 2729
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    .line 2730
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    .line 2731
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2726
    move-object v2, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 2723
    .end local v4    # "splitResDirs":[Ljava/lang/String;
    .end local v11    # "classLoader":Ljava/lang/ClassLoader;
    :catch_2e
    move-exception v0

    .line 2724
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static greylist createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .registers 17
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    .line 3438
    new-instance v0, Landroid/app/LoadedApk;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    move-object v4, v0

    .line 3439
    .local v4, "packageInfo":Landroid/app/LoadedApk;
    new-instance v1, Landroid/app/ContextImpl;

    sget-object v5, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3442
    .local v1, "context":Landroid/app/ContextImpl;
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3443
    iget-object v0, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v2, v1, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3444
    invoke-virtual {v3}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 3443
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3445
    const/4 v0, 0x4

    iput v0, v1, Landroid/app/ContextImpl;->mContextType:I

    .line 3446
    return-object v1
.end method

.method static blacklist createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/content/Context;
    .registers 6
    .param p0, "systemContext"    # Landroid/app/ContextImpl;
    .param p1, "displayId"    # I

    .line 3458
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3459
    .local v0, "token":Landroid/window/WindowTokenClient;
    invoke-virtual {p0, v0, p1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v1

    .line 3464
    .local v1, "context":Landroid/app/ContextImpl;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->trackSystemUiContextBeforeWms()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3465
    new-instance v2, Landroid/window/SystemUiContext;

    invoke-direct {v2, v1}, Landroid/window/SystemUiContext;-><init>(Landroid/content/Context;)V

    .line 3466
    .local v2, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    goto :goto_19

    .line 3468
    .end local v2    # "systemUiContext":Landroid/content/Context;
    :cond_18
    move-object v2, v1

    .line 3470
    .restart local v2    # "systemUiContext":Landroid/content/Context;
    :goto_19
    invoke-virtual {v0, v2}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3473
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/window/WindowTokenClientController;->attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z

    .line 3474
    const/4 v3, 0x4

    iput v3, v1, Landroid/app/ContextImpl;->mContextType:I

    .line 3475
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/app/ContextImpl;->mOwnsToken:Z

    .line 3477
    return-object v2
.end method

.method private blacklist createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 3007
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3011
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    nop

    .line 3012
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 3011
    invoke-virtual {p0, v0, v1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v1

    .line 3017
    .local v1, "windowContextBase":Landroid/app/ContextImpl;
    new-instance v2, Landroid/window/WindowContext;

    invoke-direct {v2, v1, p2, p3}, Landroid/window/WindowContext;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 3018
    .local v2, "windowContext":Landroid/window/WindowContext;
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3023
    invoke-virtual {v0, v2}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3026
    invoke-virtual {v2}, Landroid/window/WindowContext;->attachToDisplayArea()V

    .line 3028
    return-object v2
.end method

.method private static blacklist createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;
    .registers 14
    .param p0, "windowContextBase"    # Landroid/app/ContextImpl;

    .line 3080
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3081
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 3082
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    .line 3084
    .local v2, "token":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    .line 3085
    .local v3, "resDir":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v4

    .line 3086
    .local v4, "splitResDirs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    .line 3087
    .local v5, "legacyOverlayDirs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    .line 3088
    .local v6, "overlayPaths":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3089
    .local v7, "libDirs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v8

    .line 3090
    .local v8, "displayId":I
    if-nez v8, :cond_2c

    .line 3091
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    move-object v10, v1

    goto :goto_2f

    .line 3092
    :cond_2c
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v10, v1

    :goto_2f
    nop

    .line 3093
    .local v10, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 3095
    .local v12, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 2432
    if-eqz p2, :cond_71

    .line 2433
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2434
    if-eqz p5, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2435
    if-eqz p3, :cond_41

    .line 2436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 2437
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2441
    :cond_71
    return-void
.end method

.method private greylist-max-o enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p1, "modeFlags"    # I
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "message"    # Ljava/lang/String;

    .line 2650
    if-eqz p2, :cond_7e

    .line 2651
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2652
    if-eqz p6, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2653
    if-eqz p3, :cond_41

    .line 2654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5a

    .line 2655
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2656
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2661
    :cond_7e
    return-void
.end method

.method private blacklist ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;
    .registers 10
    .param p1, "dirs"    # [Ljava/io/File;
    .param p2, "tryCreateInProcess"    # Z

    .line 3781
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3782
    .local v0, "sm":Landroid/os/storage/StorageManager;
    array-length v1, p1

    new-array v1, v1, [Ljava/io/File;

    .line 3783
    .local v1, "result":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_5d

    .line 3784
    aget-object v3, p1, v2

    .line 3785
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3787
    if-eqz p2, :cond_1f

    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3789
    :cond_1f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3792
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->mkdirs(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 3798
    :cond_28
    goto :goto_4d

    .line 3795
    :catch_29
    move-exception v4

    .line 3796
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to ensure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContextImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    const/4 v3, 0x0

    .line 3800
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_58

    .line 3805
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->fixupAppDir(Ljava/io/File;)V

    .line 3807
    :cond_58
    aput-object v3, v1, v2

    .line 3783
    .end local v3    # "dir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3809
    .end local v2    # "i":I
    :cond_5d
    return-object v1
.end method

.method private static greylist-max-o ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "xattr"    # Ljava/lang/String;

    .line 813
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v0

    .line 814
    .local v0, "gid":I
    const/16 v1, 0x5f9

    invoke-static {p0, v1, v0, p1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 809
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x1f9

    invoke-static {p0, v2, v0, v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;
    .registers 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "gid"    # I
    .param p3, "xattr"    # Ljava/lang/String;

    .line 818
    const-string v0, ": "

    const-string v1, "ContextImpl"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 819
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "path":Ljava/lang/String;
    :try_start_e
    invoke-static {v2, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 822
    invoke-static {v2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 823
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1a

    .line 824
    invoke-static {v2, v3, p2}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 832
    :cond_1a
    goto :goto_45

    .line 826
    :catch_1b
    move-exception v3

    .line 827
    .local v3, "e":Landroid/system/ErrnoException;
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EEXIST:I

    if-ne v4, v5, :cond_23

    goto :goto_45

    .line 830
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to ensure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_45
    if-eqz p3, :cond_8c

    .line 836
    :try_start_47
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    .line 837
    .local v3, "stat":Landroid/system/StructStat;
    const/16 v4, 0x8

    new-array v4, v4, [B

    .line 838
    .local v4, "value":[B
    iget-wide v5, v3, Landroid/system/StructStat;->st_ino:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v6, v7}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 839
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v4, v8}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_68
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_68} :catch_69

    .line 842
    .end local v3    # "stat":Landroid/system/StructStat;
    .end local v4    # "value":[B
    goto :goto_8c

    .line 840
    :catch_69
    move-exception v3

    .line 841
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "e":Landroid/system/ErrnoException;
    :cond_8c
    :goto_8c
    return-object p0
.end method

.method static blacklist getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "dataDir"    # Ljava/io/File;

    .line 945
    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o getDatabasesDir()Ljava/io/File;
    .registers 5

    .line 1070
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_2a

    .line 1072
    const-string v1, "android"

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1073
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    goto :goto_2a

    .line 1075
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1078
    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1079
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private blacklist getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    .registers 6
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 3306
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3307
    return-object v1

    .line 3309
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 3310
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    .line 3311
    .local v2, "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    iget-object v3, v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    if-ne v3, p1, :cond_1c

    .line 3312
    return-object v2

    .line 3309
    .end local v2    # "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3315
    .end local v0    # "i":I
    :cond_1f
    return-object v1
.end method

.method static greylist getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 427
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 428
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_11

    .line 429
    move-object p0, v1

    goto :goto_1

    .line 431
    .end local v1    # "nextContext":Landroid/content/Context;
    :cond_11
    move-object v0, p0

    check-cast v0, Landroid/app/ContextImpl;

    return-object v0
.end method

.method private greylist getPreferencesDir()Ljava/io/File;
    .registers 5

    .line 761
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 763
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 765
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 766
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private greylist-max-o getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;"
        }
    .end annotation

    .line 652
    sget-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 653
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    .line 656
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 658
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_24

    .line 659
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 660
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_24
    return-object v1
.end method

.method private greylist-max-o getWallpaperManager()Landroid/app/WallpaperManager;
    .registers 2

    .line 1125
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private greylist-max-o initializeTheme()V
    .registers 4

    .line 513
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_c

    .line 514
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 516
    :cond_c
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 517
    return-void
.end method

.method private blacklist isAssociatedWithDisplay()Z
    .registers 2

    .line 3170
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3178
    const/4 v0, 0x0

    return v0

    .line 3176
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist isSystemOrSystemUI(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2352
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2352
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method static synthetic blacklist lambda$notifyOnDeviceChangedListeners$0(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V
    .registers 3
    .param p0, "delegate"    # Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    .param p1, "deviceId"    # I

    .line 3323
    iget-object v0, p0, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private greylist-max-o makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 3765
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_19

    .line 3766
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3769
    .local v0, "res":Ljava/io/File;
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 3770
    return-object v0

    .line 3772
    .end local v0    # "res":Ljava/io/File;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .registers 13
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 693
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0, p2}, Landroid/app/ContextImpl$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 700
    .local v0, "sourceFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .line 701
    .local v1, "res":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_8b

    aget-object v4, v0, v3

    .line 702
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 703
    .local v5, "targetFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ContextImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :try_start_3b
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 706
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 707
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 710
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4c

    .line 711
    add-int/lit8 v1, v1, 0x1

    .line 716
    :cond_4c
    goto :goto_88

    .line 708
    :cond_4d
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clean up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sourceFiles":[Ljava/io/File;
    .end local v1    # "res":I
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local p0    # "sourceDir":Ljava/io/File;
    .end local p1    # "targetDir":Ljava/io/File;
    .end local p2    # "prefix":Ljava/lang/String;
    throw v6
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_66} :catch_66

    .line 713
    .restart local v0    # "sourceFiles":[Ljava/io/File;
    .restart local v1    # "res":I
    .restart local v4    # "sourceFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local p0    # "sourceDir":Ljava/io/File;
    .restart local p1    # "targetDir":Ljava/io/File;
    .restart local p2    # "prefix":Ljava/lang/String;
    :catch_66
    move-exception v6

    .line 714
    .local v6, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to migrate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v1, -0x1

    .line 701
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 718
    :cond_8b
    return v1
.end method

.method private blacklist notifyOnDeviceChangedListeners(I)V
    .registers 7
    .param p1, "deviceId"    # I

    .line 3319
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3320
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 3321
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    .line 3322
    .local v2, "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    iget-object v3, v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3324
    .end local v2    # "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    goto :goto_d

    .line 3326
    :cond_24
    monitor-exit v0

    .line 3327
    return-void

    .line 3326
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist registerAttributionSourceIfNeeded(Landroid/content/AttributionSource;Z)Landroid/content/AttributionSource;
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "shouldRegister"    # Z

    .line 3657
    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_a

    .line 3661
    :cond_9
    return-object p1

    .line 3658
    :cond_a
    :goto_a
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 3659
    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 3658
    return-object v0
.end method

.method private greylist-max-o registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;
    .registers 30
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "userId"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "flags"    # I

    .line 1906
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1907
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_50

    .line 1908
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_2c

    if-eqz p6, :cond_2c

    .line 1909
    if-nez p5, :cond_15

    .line 1910
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v6, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1909
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v6, p5

    .line 1912
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v6, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1914
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    .line 1912
    const/4 v8, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v3 .. v8}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v17, v0

    move-object v11, v6

    goto :goto_54

    .line 1916
    .end local v6    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_2c
    if-nez p5, :cond_36

    .line 1917
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v11, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_38

    .line 1916
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_36
    move-object/from16 v11, p5

    .line 1919
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v11, "scheduler":Landroid/os/Handler;
    :goto_38
    new-instance v7, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v7 .. v13}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1920
    invoke-virtual {v7}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_54

    .line 1907
    .end local v11    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_50
    move-object/from16 v11, p5

    move-object/from16 v17, v0

    .line 1925
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v11    # "scheduler":Landroid/os/Handler;
    .local v17, "rd":Landroid/content/IIntentReceiver;
    :goto_54
    if-nez p1, :cond_75

    :try_start_56
    invoke-static/range {p3 .. p3}, Landroid/app/BroadcastStickyCache;->useCache(Landroid/content/IntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1926
    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1927
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 1929
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1926
    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/app/BroadcastStickyCache;->getIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_95

    .line 1935
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_75
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1936
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v13

    iget-object v14, v1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v15

    .line 1937
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1935
    move/from16 v20, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move/from16 v21, p7

    invoke-interface/range {v12 .. v21}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 1941
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_95
    if-eqz v0, :cond_a9

    .line 1942
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1945
    invoke-static {v0}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v2

    .line 1946
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 1945
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_a9} :catch_aa

    .line 1948
    :cond_a9
    return-object v0

    .line 1949
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_aa
    move-exception v0

    .line 1950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private greylist-max-o resolveUserId(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2561
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method private blacklist setDisplay(Landroid/view/Display;)V
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .line 2936
    iput-object p1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2937
    if-eqz p1, :cond_b

    .line 2938
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->updateDeviceIdIfChanged(I)V

    .line 2940
    :cond_b
    invoke-direct {p0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 2941
    return-void
.end method

.method static greylist-max-o setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .line 3748
    or-int/lit16 v0, p2, 0x1b0

    .line 3751
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 3752
    or-int/lit8 v0, v0, 0x4

    .line 3754
    :cond_8
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_e

    .line 3755
    or-int/lit8 v0, v0, 0x2

    .line 3761
    :cond_e
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3762
    return-void
.end method

.method private greylist-max-o startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "requireForeground"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 2032
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2033
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2034
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2035
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2036
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 2037
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_e5

    .line 2034
    move-object v2, p1

    move v4, p2

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .local v2, "service":Landroid/content/Intent;
    .local v4, "requireForeground":Z
    :try_start_26
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1

    .line 2038
    .local p1, "cn":Landroid/content/ComponentName;
    if-eqz p1, :cond_c1

    .line 2039
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_36} :catch_e2

    const-string v0, "Not allowed to start service "

    if-nez p2, :cond_9c

    .line 2043
    :try_start_3a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "!!"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_e2

    const-string v1, ": "

    if-nez p2, :cond_77

    .line 2047
    :try_start_48
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v3, "?"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    goto :goto_c1

    .line 2048
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2049
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2048
    invoke-static {v4, p2}, Landroid/app/ServiceStartNotAllowedException;->newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;

    move-result-object p2

    .end local v2    # "service":Landroid/content/Intent;
    .end local v4    # "requireForeground":Z
    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p3    # "user":Landroid/os/UserHandle;
    throw p2

    .line 2044
    .restart local v2    # "service":Landroid/content/Intent;
    .restart local v4    # "requireForeground":Z
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_77
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2046
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "service":Landroid/content/Intent;
    .end local v4    # "requireForeground":Z
    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p3    # "user":Landroid/os/UserHandle;
    throw p2

    .line 2040
    .restart local v2    # "service":Landroid/content/Intent;
    .restart local v4    # "requireForeground":Z
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_9c
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2042
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "service":Landroid/content/Intent;
    .end local v4    # "requireForeground":Z
    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p3    # "user":Landroid/os/UserHandle;
    throw p2

    .line 2053
    .restart local v2    # "service":Landroid/content/Intent;
    .restart local v4    # "requireForeground":Z
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_c1
    :goto_c1
    if-eqz p1, :cond_e1

    if-eqz v4, :cond_e1

    .line 2054
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e1

    .line 2055
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/app/StackTrace;

    const-string v1, "Last startServiceCommon() call for this service was made here"

    invoke-direct {v0, v1}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Landroid/app/Service;->setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_e1} :catch_e2

    .line 2060
    :cond_e1
    return-object p1

    .line 2061
    .end local p1    # "cn":Landroid/content/ComponentName;
    :catch_e2
    move-exception v0

    move-object p1, v0

    goto :goto_e9

    .end local v2    # "service":Landroid/content/Intent;
    .end local v4    # "requireForeground":Z
    .local p1, "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    :catch_e5
    move-exception v0

    move-object v2, p1

    move v4, p2

    move-object p1, v0

    .line 2062
    .end local p2    # "requireForeground":Z
    .restart local v2    # "service":Landroid/content/Intent;
    .restart local v4    # "requireForeground":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_e9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method private greylist-max-o stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2074
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2075
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2076
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2077
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2078
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2076
    invoke-interface {v0, v1, p1, v2, v3}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 2079
    .local v0, "res":I
    if-ltz v0, :cond_28

    .line 2083
    if-eqz v0, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1

    .line 2080
    :cond_28
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to stop service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_41} :catch_41

    .line 2084
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catch_41
    move-exception v0

    .line 2085
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist updateDeviceIdIfChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 3215
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    if-eqz v0, :cond_5

    .line 3216
    return-void

    .line 3219
    :cond_5
    if-eqz p1, :cond_a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    :cond_a
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-nez v0, :cond_f

    .line 3223
    return-void

    .line 3226
    :cond_f
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3227
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_32

    .line 3228
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v1

    .line 3229
    .local v1, "deviceId":I
    iget v2, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-eq v1, v2, :cond_32

    .line 3230
    iput v1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3231
    iget-object v2, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    iget v3, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3232
    invoke-direct {p0, v2, v3}, Landroid/app/ContextImpl;->createAttributionSourceWithDeviceId(Landroid/content/AttributionSource;I)Landroid/content/AttributionSource;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3233
    iget v2, p0, Landroid/app/ContextImpl;->mDeviceId:I

    invoke-direct {p0, v2}, Landroid/app/ContextImpl;->notifyOnDeviceChangedListeners(I)V

    .line 3236
    .end local v1    # "deviceId":I
    :cond_32
    return-void
.end method

.method private blacklist updateResourceOverlayConstraints()V
    .registers 4

    .line 2944
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1d

    .line 2948
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2949
    .local v0, "displayId":I
    :goto_10
    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->setOverlayConstraints(II)V

    .line 2951
    .end local v0    # "displayId":I
    :cond_1d
    return-void
.end method

.method private greylist-max-o uriModeFlagToString(I)Ljava/lang/String;
    .registers 6
    .param p1, "uriModeFlags"    # I

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2626
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 2627
    const-string/jumbo v1, "read and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_19

    .line 2630
    const-string/jumbo v1, "write and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    :cond_19
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_23

    .line 2633
    const-string/jumbo v1, "persistable and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    :cond_23
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2d

    .line 2636
    const-string/jumbo v1, "prefix and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_41

    .line 2640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2643
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission mode flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o validateServiceIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;

    .line 1988
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_58

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 1989
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3f

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implicit intents with startService are not safe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1995
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1994
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1990
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Intent must be explicit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1992
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1998
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_58
    :goto_58
    return-void
.end method

.method private greylist-max-o warnIfCallingFromSystemProcess()V
    .registers 3

    .line 2709
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling a method in the system process without a qualified user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2711
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2710
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_25
    return-void
.end method


# virtual methods
.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 2121
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2122
    if-eqz p3, :cond_18

    .line 2125
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    .line 2126
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2125
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p4

    move-object v2, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p3    # "instanceName":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v5, "instanceName":Ljava/lang/String;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2123
    .end local v1    # "service":Landroid/content/Intent;
    .end local v2    # "conn":Landroid/content/ServiceConnection;
    .end local v5    # "instanceName":Ljava/lang/String;
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p3    # "instanceName":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "conn":Landroid/content/ServiceConnection;
    :cond_18
    move-object v1, p1

    move-object v5, p3

    .end local p1    # "service":Landroid/content/Intent;
    .end local p3    # "instanceName":Ljava/lang/String;
    .restart local v1    # "service":Landroid/content/Intent;
    .restart local v5    # "instanceName":Ljava/lang/String;
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p3, "null instanceName"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindIsolatedService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 2132
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2133
    if-eqz p3, :cond_18

    .line 2136
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    .line 2137
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2136
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p4

    move-object v2, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p3    # "instanceName":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v5, "instanceName":Ljava/lang/String;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2134
    .end local v1    # "service":Landroid/content/Intent;
    .end local v2    # "conn":Landroid/content/ServiceConnection;
    .end local v5    # "instanceName":Ljava/lang/String;
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p3    # "instanceName":Ljava/lang/String;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "conn":Landroid/content/ServiceConnection;
    :cond_18
    move-object v1, p1

    move-object v5, p3

    .end local p1    # "service":Landroid/content/Intent;
    .end local p3    # "instanceName":Ljava/lang/String;
    .restart local v1    # "service":Landroid/content/Intent;
    .restart local v5    # "instanceName":Ljava/lang/String;
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p3, "null instanceName"

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 2107
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    .line 2108
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2107
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object v2, p4

    .end local p1    # "service":Landroid/content/Intent;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 2114
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    .line 2115
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2114
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    move-object v2, p4

    .end local p1    # "service":Landroid/content/Intent;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 2091
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2092
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2093
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2092
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;

    .line 2099
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2100
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 2101
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2100
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 2158
    if-eqz p4, :cond_12

    .line 2161
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v8, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v6, "handler":Landroid/os/Handler;
    .local v8, "user":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2159
    .end local v1    # "service":Landroid/content/Intent;
    .end local v2    # "conn":Landroid/content/ServiceConnection;
    .end local v6    # "handler":Landroid/os/Handler;
    .end local v8    # "user":Landroid/os/UserHandle;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local p4    # "handler":Landroid/os/Handler;
    .restart local p5    # "user":Landroid/os/UserHandle;
    :cond_12
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local v1    # "service":Landroid/content/Intent;
    .restart local v2    # "conn":Landroid/content/ServiceConnection;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 2143
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2144
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 2143
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p4

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v8, "user":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public blacklist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 2168
    if-eqz p4, :cond_12

    .line 2171
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v8, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v6, "handler":Landroid/os/Handler;
    .local v8, "user":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 2169
    .end local v1    # "service":Landroid/content/Intent;
    .end local v2    # "conn":Landroid/content/ServiceConnection;
    .end local v6    # "handler":Landroid/os/Handler;
    .end local v8    # "user":Landroid/os/UserHandle;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local p4    # "handler":Landroid/os/Handler;
    .restart local p5    # "user":Landroid/os/UserHandle;
    :cond_12
    move-object v1, p1

    move-object v2, p2

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local v1    # "service":Landroid/content/Intent;
    .restart local v2    # "conn":Landroid/content/ServiceConnection;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 2150
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2151
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 2150
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p4

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v8, "user":Landroid/os/UserHandle;
    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o canLoadUnsafeResources()Z
    .registers 3

    .line 3150
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 3151
    return v1

    .line 3153
    :cond_10
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public whitelist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2408
    if-eqz p1, :cond_f

    .line 2412
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2412
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2409
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2588
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2588
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public whitelist checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2595
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist checkCallingPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2395
    if-eqz p1, :cond_17

    .line 2399
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2400
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 2401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 2403
    :cond_15
    const/4 v1, -0x1

    return v1

    .line 2396
    .end local v0    # "pid":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2566
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2567
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 2568
    nop

    .line 2569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2568
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    return v1

    .line 2571
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 6
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2577
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2578
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v1

    return-object v1

    .line 2581
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2582
    .local v1, "res":[I
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2583
    return-object v1
.end method

.method public whitelist checkContentUriPermissionFull(Landroid/net/Uri;III)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 2528
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2529
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2530
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 2528
    move v2, p2

    move v3, p3

    move v4, p4

    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "modeFlags":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkContentUriPermissionFull(Landroid/net/Uri;IIII)I

    move-result p2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return p2

    .line 2531
    :catch_14
    move-exception v0

    move-object p2, v0

    goto :goto_1c

    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local v4    # "modeFlags":I
    .restart local p2    # "pid":I
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    :catch_17
    move-exception v0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object p2, v0

    .line 2532
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .restart local v2    # "pid":I
    .restart local v3    # "uid":I
    .restart local v4    # "modeFlags":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist checkPermission(Ljava/lang/String;II)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 2360
    if-eqz p1, :cond_43

    .line 2363
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2364
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    const/4 v0, -0x1

    return v0

    .line 2368
    :cond_36
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 2370
    .local v0, "deviceId":I
    invoke-static {p1, p2, p3, v0}, Landroid/permission/PermissionManager;->checkPermission(Ljava/lang/String;III)I

    move-result v1

    return v1

    .line 2361
    .end local v0    # "deviceId":I
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    .line 2376
    if-eqz p1, :cond_3b

    .line 2379
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2380
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    const/4 v0, -0x1

    return v0

    .line 2384
    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2377
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkSelfPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2418
    if-eqz p1, :cond_37

    .line 2421
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/4 v0, -0x1

    return v0

    .line 2426
    :cond_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2419
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;III)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 2517
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2518
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2519
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_18

    .line 2517
    const/4 v6, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "modeFlags":I
    :try_start_10
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return p2

    .line 2520
    :catch_15
    move-exception v0

    move-object p2, v0

    goto :goto_1d

    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local v4    # "modeFlags":I
    .restart local p2    # "pid":I
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    :catch_18
    move-exception v0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object p2, v0

    .line 2521
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .restart local v2    # "pid":I
    .restart local v3    # "uid":I
    .restart local v4    # "modeFlags":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public greylist-max-o checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "callerToken"    # Landroid/os/IBinder;

    .line 2552
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2553
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2554
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_18

    .line 2552
    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .end local p5    # "callerToken":Landroid/os/IBinder;
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "modeFlags":I
    .local v6, "callerToken":Landroid/os/IBinder;
    :try_start_10
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return p2

    .line 2555
    :catch_15
    move-exception v0

    move-object p2, v0

    goto :goto_1e

    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local v4    # "modeFlags":I
    .end local v6    # "callerToken":Landroid/os/IBinder;
    .restart local p2    # "pid":I
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    .restart local p5    # "callerToken":Landroid/os/IBinder;
    :catch_18
    move-exception v0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object p2, v0

    .line 2556
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .end local p5    # "callerToken":Landroid/os/IBinder;
    .restart local v2    # "pid":I
    .restart local v3    # "uid":I
    .restart local v4    # "modeFlags":I
    .restart local v6    # "callerToken":Landroid/os/IBinder;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .line 2606
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2607
    if-eqz p2, :cond_d

    .line 2608
    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_e

    .line 2610
    :cond_d
    return v1

    .line 2613
    :cond_e
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1b

    .line 2614
    if-eqz p3, :cond_1a

    .line 2615
    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1b

    .line 2617
    :cond_1a
    return v1

    .line 2620
    :cond_1b
    if-eqz p1, :cond_22

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_23

    .line 2621
    :cond_22
    const/4 v0, -0x1

    .line 2620
    :goto_23
    return v0
.end method

.method public whitelist checkUriPermissions(Ljava/util/List;III)[I
    .registers 12
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 2541
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2542
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_15

    .line 2541
    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "modeFlags":I
    :try_start_d
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return-object p1

    .line 2543
    :catch_12
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local v4    # "modeFlags":I
    .restart local p1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local p2    # "pid":I
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    :catch_15
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object p1, v0

    .line 2544
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .restart local v1    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v2    # "pid":I
    .restart local v3    # "uid":I
    .restart local v4    # "modeFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist clearWallpaper()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1121
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1122
    return-void
.end method

.method public blacklist closeSystemDialogs()V
    .registers 4

    .line 3822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3823
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 3824
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3825
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3826
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3827
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3828
    .local v1, "options":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3829
    return-void
.end method

.method public greylist-max-o createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 5
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2742
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2743
    .local v0, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createApplicationContextAsUser(Landroid/content/pm/ApplicationInfo;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 3111
    new-instance v0, Landroid/content/ContextParams$Builder;

    iget-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-direct {v0, v1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 3112
    invoke-virtual {v0, p1}, Landroid/content/ContextParams$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    .line 3111
    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 19
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 2870
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_7d

    .line 2874
    iget-boolean v2, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    const/4 v15, 0x1

    if-eqz v2, :cond_26

    .line 2877
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 2878
    .local v2, "displayAdjustedConfig":Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/high16 v4, 0x20000000

    invoke-virtual {v2, v3, v4, v15}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 2880
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2881
    move-object v0, v2

    move-object/from16 v16, v0

    .end local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v0, "overrideConfiguration":Landroid/content/res/Configuration;
    goto :goto_28

    .line 2874
    .end local v0    # "overrideConfiguration":Landroid/content/res/Configuration;
    .end local v2    # "displayAdjustedConfig":Landroid/content/res/Configuration;
    .restart local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_26
    move-object/from16 v16, v0

    .line 2884
    .end local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v16, "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_28
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2885
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v1, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v1, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2888
    .local v0, "context":Landroid/app/ContextImpl;
    iput-boolean v15, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 2890
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    .line 2891
    .local v2, "displayId":I
    iget-boolean v3, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v3, :cond_5d

    .line 2892
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5e

    :cond_5d
    const/4 v3, 0x0

    :goto_5e
    move-object v6, v3

    .line 2893
    .local v6, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v3, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v4, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 2894
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    iget-object v7, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2895
    invoke-virtual {v7}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v9

    .line 2893
    move-object/from16 v7, v16

    .end local v16    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v7, "overrideConfiguration":Landroid/content/res/Configuration;
    invoke-static/range {v3 .. v9}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2896
    return-object v0

    .line 2871
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v2    # "displayId":I
    .end local v6    # "overrideDisplayId":Ljava/lang/Integer;
    .end local v7    # "overrideConfiguration":Landroid/content/res/Configuration;
    .restart local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_7d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "overrideConfiguration must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 17
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 3103
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3104
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextParams;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3103
    return-object v0
.end method

.method public whitelist createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "flags"    # I

    .line 2832
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2833
    :catch_9
    move-exception v0

    .line 2834
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Own package not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2835
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 8
    .param p1, "sdkInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2774
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2778
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ltz v0, :cond_16

    .line 2779
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_1a

    :cond_16
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2780
    .local v0, "user":Landroid/os/UserHandle;
    :goto_1a
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createApplicationContextAsUser(Landroid/content/pm/ApplicationInfo;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/ContextImpl;

    .line 2783
    .local v1, "ctx":Landroid/app/ContextImpl;
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 2786
    return-object v1

    .line 2775
    .end local v0    # "user":Landroid/os/UserHandle;
    .end local v1    # "ctx":Landroid/app/ContextImpl;
    :cond_28
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "API can only be called from SdkSandbox process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .registers 19
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2841
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2843
    return-object v1

    .line 2846
    :cond_11
    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v7}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v11

    .line 2847
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    iget-object v0, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v7}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2849
    .local v15, "paths":[Ljava/lang/String;
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2850
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v1, Landroid/app/ContextImpl;->mFlags:I

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    move-object v13, v1

    .line 2853
    .local v13, "context":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2855
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2857
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2858
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2859
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2860
    iget-boolean v4, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_72

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    move-object v8, v4

    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2862
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget-object v4, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2864
    invoke-virtual {v4}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 2853
    const/4 v9, 0x0

    move-object v4, v15

    .end local v15    # "paths":[Ljava/lang/String;
    .local v4, "paths":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2865
    return-object v13
.end method

.method public whitelist createCredentialProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 3126
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v10, v0, 0x10

    .line 3128
    .local v10, "flags":I
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3129
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3128
    return-object v0
.end method

.method public whitelist createDeviceContext(I)Landroid/content/Context;
    .registers 17
    .param p1, "deviceId"    # I

    .line 2955
    move/from16 v13, p1

    if-eqz v13, :cond_2e

    .line 2956
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2957
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_15

    invoke-virtual {v0, v13}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2e

    .line 2958
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid ID of the default device or any virtual device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2963
    .end local v0    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_2e
    :goto_2e
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2964
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2966
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-direct {v0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 2967
    return-object v0
.end method

.method public whitelist createDeviceProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 3117
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v10, v0, 0x8

    .line 3119
    .local v10, "flags":I
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3120
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3119
    return-object v0
.end method

.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 18
    .param p1, "display"    # Landroid/view/Display;

    .line 2901
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    if-eqz v15, :cond_75

    .line 2905
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2906
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v1, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v1, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v1, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2909
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 2912
    .local v2, "displayId":I
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v8, v3

    .line 2913
    .local v8, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/high16 v4, 0x20000000

    const/4 v11, 0x1

    invoke-virtual {v8, v3, v4, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 2916
    iget-object v4, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v5, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v6, v1, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2917
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget-object v3, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2918
    invoke-virtual {v3}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v10

    .line 2916
    invoke-static/range {v4 .. v10}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2919
    invoke-direct {v0, v15}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 2922
    iget v3, v1, Landroid/app/ContextImpl;->mContextType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6c

    .line 2923
    goto :goto_6d

    :cond_6c
    move v4, v11

    :goto_6d
    iput v4, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 2927
    iput-boolean v11, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 2931
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 2932
    return-object v0

    .line 2902
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v2    # "displayId":I
    .end local v8    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "display must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2792
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2798
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string/jumbo v0, "system"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "android"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_98

    .line 2806
    :cond_17
    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, v1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, p2, v3

    .line 2807
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2806
    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v3

    .line 2808
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_78

    .line 2809
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2810
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2813
    .local v0, "c":Landroid/app/ContextImpl;
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    .line 2814
    .local v2, "displayId":I
    iget-boolean v4, v1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_5c

    .line 2815
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5d

    :cond_5c
    const/4 v4, 0x0

    :goto_5d
    move-object v8, v4

    .line 2817
    .local v8, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v5, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 2818
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 2817
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    .end local v3    # "pi":Landroid/app/LoadedApk;
    .local v6, "pi":Landroid/app/LoadedApk;
    invoke-static/range {v5 .. v11}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2819
    iget-object v3, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_79

    .line 2820
    return-object v0

    .line 2808
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v2    # "displayId":I
    .end local v6    # "pi":Landroid/app/LoadedApk;
    .end local v8    # "overrideDisplayId":Ljava/lang/Integer;
    .restart local v3    # "pi":Landroid/app/LoadedApk;
    :cond_78
    move-object v6, v3

    .line 2825
    .end local v3    # "pi":Landroid/app/LoadedApk;
    .restart local v6    # "pi":Landroid/app/LoadedApk;
    :cond_79
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2801
    .end local v6    # "pi":Landroid/app/LoadedApk;
    :cond_98
    :goto_98
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v1, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v5, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2802
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v1, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget v13, v1, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, v1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 2801
    return-object v0
.end method

.method public blacklist createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "display"    # Landroid/view/Display;

    .line 3034
    if-eqz p2, :cond_b

    .line 3037
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0

    .line 3035
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 5
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 2974
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2980
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object v0

    return-object v0

    .line 2975
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please call this API with context associated with a display instance, such as Activity or context created via Context#createDisplayContext(Display), or try to invoke Context#createWindowContext(Display, int, Bundle)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2987
    if-eqz p1, :cond_7

    .line 2990
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object v0

    return-object v0

    .line 2988
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 3052
    new-instance v0, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3053
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    iget v13, p0, Landroid/app/ContextImpl;->mDeviceId:I

    iget-boolean v14, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;IZ)V

    .line 3057
    .local v0, "baseContext":Landroid/app/ContextImpl;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3058
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3060
    invoke-static {v0}, Landroid/app/ContextImpl;->createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3061
    .local v1, "windowContextResources":Landroid/content/res/Resources;
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3064
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3067
    return-object v0
.end method

.method public whitelist databaseList()[Ljava/lang/String;
    .registers 2

    .line 1066
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist deleteDatabase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1033
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1034
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 1035
    .end local v0    # "f":Ljava/io/File;
    :catch_9
    move-exception v0

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 801
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 802
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public whitelist deleteSharedPreferences(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 743
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 744
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 745
    .local v1, "prefs":Ljava/io/File;
    invoke-static {v1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 748
    .local v2, "prefsBackup":Ljava/io/File;
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v3

    .line 749
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 752
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 755
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    monitor-exit v0

    return v4

    .line 756
    .end local v1    # "prefs":Ljava/io/File;
    .end local v2    # "prefsBackup":Ljava/io/File;
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist destroy()V
    .registers 3

    .line 3817
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3818
    return-void
.end method

.method public whitelist enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2465
    nop

    .line 2466
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 2468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2465
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .local v1, "permission":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2470
    return-void
.end method

.method public whitelist enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2683
    nop

    .line 2685
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    .line 2686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2683
    const/4 v3, 0x1

    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move-object v6, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "message":Ljava/lang/String;
    .local v1, "modeFlags":I
    .local v5, "uri":Landroid/net/Uri;
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method public whitelist enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2455
    nop

    .line 2456
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    .line 2458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2455
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .end local p1    # "permission":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .local v1, "permission":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2460
    return-void
.end method

.method public whitelist enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2674
    nop

    .line 2675
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    .line 2677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2674
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move-object v6, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "message":Ljava/lang/String;
    .local v1, "modeFlags":I
    .local v5, "uri":Landroid/net/Uri;
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2678
    return-void
.end method

.method public whitelist enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 2446
    nop

    .line 2447
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 2446
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    .end local p1    # "permission":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "message":Ljava/lang/String;
    .local v1, "permission":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2451
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 2666
    nop

    .line 2667
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    .line 2666
    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    move v4, p3

    move v1, p4

    move-object v6, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .end local p5    # "message":Ljava/lang/String;
    .local v1, "modeFlags":I
    .local v4, "uid":I
    .local v5, "uri":Landroid/net/Uri;
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2669
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .line 2693
    nop

    .line 2694
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    .line 2693
    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move p2, p6

    .end local p3    # "writePermission":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p6    # "modeFlags":I
    .local v1, "readPermission":Ljava/lang/String;
    .local v2, "writePermission":Ljava/lang/String;
    .local v3, "pid":I
    .local p2, "modeFlags":I
    const/4 p4, 0x0

    move-object p6, p1

    move p3, v0

    move-object p1, p0

    .end local p1    # "uri":Landroid/net/Uri;
    .local p6, "uri":Landroid/net/Uri;
    invoke-direct/range {p1 .. p7}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2701
    move-object p1, p6

    .end local p6    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    return-void
.end method

.method public whitelist fileList()[Ljava/lang/String;
    .registers 2

    .line 995
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3429
    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/app/ContextImpl;->mOwnsToken:Z

    if-eqz v0, :cond_15

    .line 3430
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    check-cast v1, Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v1}, Landroid/window/WindowTokenClientController;->detachIfNeeded(Landroid/window/WindowTokenClient;)V

    .line 3433
    :cond_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3434
    return-void
.end method

.method public greylist getActivityToken()Landroid/os/IBinder;
    .registers 3

    .line 3720
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public whitelist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 477
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 476
    :goto_11
    return-object v0
.end method

.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 564
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 565
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 567
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 436
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 2

    .line 3187
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 559
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 549
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 3390
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 3402
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    return-object v0
.end method

.method public greylist-max-o getBasePackageName()Ljava/lang/String;
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist getCacheDir()Ljava/io/File;
    .registers 5

    .line 921
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 923
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 925
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 926
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_16

    :cond_7
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_16

    :cond_12
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public whitelist getCodeCacheDir()Ljava/io/File;
    .registers 4

    .line 931
    iget-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    if-nez v1, :cond_11

    .line 933
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    .line 935
    :cond_11
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_code_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 936
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 3414
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    return-object v0
.end method

.method public whitelist getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 461
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public blacklist getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "crateId"    # Ljava/lang/String;

    .line 860
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "invalidated crateId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 861
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "crates"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 862
    .local v0, "cratesRootPath":Ljava/nio/file/Path;
    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 863
    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    .line 865
    .local v1, "absoluteNormalizedCratePath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/app/ContextImpl;->mCratesDirLock:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_27
    iget-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    if-nez v3, :cond_31

    .line 867
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    .line 869
    :cond_31
    iget-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    invoke-static {v3}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    .line 870
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_40

    .line 872
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 873
    .local v2, "cratedDir":Ljava/io/File;
    invoke-static {v2}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 870
    .end local v2    # "cratedDir":Ljava/io/File;
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v3
.end method

.method public whitelist getDataDir()Ljava/io/File;
    .registers 5

    .line 3336
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_74

    .line 3337
    const/4 v0, 0x0

    .line 3338
    .local v0, "res":Ljava/io/File;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3339
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 3340
    :cond_12
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3341
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 3343
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 3346
    :goto_25
    if-eqz v0, :cond_57

    .line 3347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_56

    .line 3348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data directory doesn\'t exist for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ContextImpl"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3351
    :cond_56
    return-object v0

    .line 3353
    :cond_57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data directory found for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3354
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3357
    .end local v0    # "res":Ljava/io/File;
    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package details found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3358
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_3e

    .line 1046
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v1, "dir":Ljava/io/File;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1049
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1051
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1052
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1056
    .end local v0    # "dirPath":Ljava/lang/String;
    :cond_3d
    goto :goto_46

    .line 1057
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_3e
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    .line 1058
    .restart local v1    # "dir":Ljava/io/File;
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1061
    .restart local v2    # "f":Ljava/io/File;
    :goto_46
    return-object v2
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 3268
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    return v0
.end method

.method public whitelist getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 3364
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3366
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3367
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    .line 3368
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3369
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 3372
    :cond_30
    return-object v0
.end method

.method public whitelist getDisplay()Landroid/view/Display;
    .registers 3

    .line 3158
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3166
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3159
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tried to obtain display from a Context not associated with one. Only visual Contexts (such as Activity or one created with Context#createWindowContext) or ones created with Context#createDisplayContext are associated with displays. Other types of Contexts are typically related to background entities and may return an arbitrary display."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .registers 3
    .param p1, "displayId"    # I

    .line 3331
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 3

    .line 3202
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 3203
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public blacklist getDisplayNoVerify()Landroid/view/Display;
    .registers 4

    .line 3192
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_e

    .line 3193
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3197
    :cond_e
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getExternalCacheDir()Ljava/io/File;
    .registers 3

    .line 951
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    .line 952
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public whitelist getExternalCacheDirs()[Ljava/io/File;
    .registers 4

    .line 957
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 962
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 963
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 889
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 890
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public whitelist getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 895
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 897
    .local v1, "dirs":[Ljava/io/File;
    if-eqz p1, :cond_16

    .line 898
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 900
    :cond_16
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 901
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist getExternalMediaDirs()[Ljava/io/File;
    .registers 4

    .line 968
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 970
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 971
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 985
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFilesDir()Ljava/io/File;
    .registers 5

    .line 850
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 852
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 854
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 855
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 2185
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMainThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 2198
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNoBackupFilesDir()Ljava/io/File;
    .registers 5

    .line 878
    iget-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 880
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "no_backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    .line 882
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 883
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist getObbDir()Ljava/io/File;
    .registers 3

    .line 907
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    .line 908
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public whitelist getObbDirs()[Ljava/io/File;
    .registers 4

    .line 913
    iget-object v0, p0, Landroid/app/ContextImpl;->mMiscDirsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 915
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 916
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 543
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final greylist getOuterContext()Landroid/content/Context;
    .registers 2

    .line 3714
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPackageCodePath()Ljava/lang/String;
    .registers 3

    .line 580
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 581
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 3

    .line 446
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0

    .line 450
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 451
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_15

    .line 453
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v1

    .line 456
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 527
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 531
    :cond_b
    const-string v0, "android"

    return-object v0
.end method

.method public whitelist getPackageResourcePath()Ljava/lang/String;
    .registers 3

    .line 572
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_b

    .line 573
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getParams()Landroid/content/ContextParams;
    .registers 2

    .line 554
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    return-object v0
.end method

.method public blacklist getPermissionRequestState(Ljava/lang/String;)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 2475
    const-string v0, "Permission name can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2476
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 2477
    .local v0, "permissionManager":Landroid/permission/PermissionManager;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2478
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v2

    .line 2477
    invoke-virtual {v0, v1, p1, v2}, Landroid/permission/PermissionManager;->getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public whitelist getPreloadsFileCache()Ljava/io/File;
    .registers 2

    .line 980
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProcessToken()Landroid/os/IBinder;
    .registers 2

    .line 2192
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final greylist getReceiverRestrictedContext()Landroid/content/Context;
    .registers 3

    .line 3701
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 3702
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    return-object v0

    .line 3704
    :cond_7
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getRegisteredIntentFilters(Landroid/content/BroadcastReceiver;)Ljava/util/List;
    .registers 5
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/BroadcastReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 1972
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_26

    .line 1973
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1974
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 1973
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->findRegisteredReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1976
    .local v0, "rd":Landroid/content/IIntentReceiver;
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1977
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;

    move-result-object v1

    .line 1978
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-nez v1, :cond_1e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_20

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    :goto_1f
    return-object v2

    .line 1979
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :catch_20
    move-exception v1

    .line 1980
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1983
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public blacklist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 11
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # J

    .line 2179
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p1    # "conn":Landroid/content/ServiceConnection;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "flags":J
    .local v1, "conn":Landroid/content/ServiceConnection;
    .local v3, "handler":Landroid/os/Handler;
    .local v4, "flags":J
    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 615
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 616
    :try_start_3
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v1

    .line 617
    .local v1, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    .line 618
    .local v2, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v2, :cond_6c

    .line 619
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 620
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_62

    .line 621
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 622
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 623
    .local v3, "um":Landroid/os/UserManager;
    if-eqz v3, :cond_5a

    .line 628
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_62

    .line 629
    :cond_37
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SharedPreferences in credential encrypted storage are not available until after user (id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 631
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is unlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "mode":I
    throw v4

    .line 624
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "mode":I
    :cond_5a
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "SharedPreferences cannot be accessed if UserManager is not available. (e.g. from inside an isolated process)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "mode":I
    throw v4

    .line 635
    .end local v3    # "um":Landroid/os/UserManager;
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "mode":I
    :cond_62
    :goto_62
    new-instance v3, Landroid/app/SharedPreferencesImpl;

    invoke-direct {v3, p1, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    .line 636
    .end local v2    # "sp":Landroid/app/SharedPreferencesImpl;
    .local v3, "sp":Landroid/app/SharedPreferencesImpl;
    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    monitor-exit v0

    return-object v3

    .line 639
    .end local v1    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    .restart local v2    # "sp":Landroid/app/SharedPreferencesImpl;
    :cond_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_7f

    .line 640
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_7b

    .line 641
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7e

    .line 645
    :cond_7b
    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 647
    :cond_7e
    return-object v2

    .line 639
    .end local v2    # "sp":Landroid/app/SharedPreferencesImpl;
    :catchall_7f
    move-exception v1

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public whitelist getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 591
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_11

    .line 593
    if-nez p1, :cond_11

    .line 594
    const-string/jumbo p1, "null"

    .line 599
    :cond_11
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 600
    :try_start_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    if-nez v1, :cond_1f

    .line 601
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    .line 603
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 604
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_33

    .line 605
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 606
    iget-object v2, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_39

    .line 609
    invoke-virtual {p0, v1, p2}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 608
    .end local v1    # "file":Ljava/io/File;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 990
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 2300
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2302
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access visual service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2304
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a non-visual Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2305
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2306
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    .line 2310
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2311
    .local v2, "exception":Ljava/lang/Exception;
    const-string v3, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    invoke-static {v3, v2}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContextImpl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2315
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_62
    invoke-static {p0, p1}, Landroid/app/SystemServiceRegistry;->getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2320
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .line 499
    iget-object v0, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_b

    .line 501
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    monitor-exit v0

    return-object v1

    .line 504
    :cond_b
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 505
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 504
    invoke-static {v1, v2}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v1

    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 506
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 508
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    monitor-exit v0

    return-object v1

    .line 509
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public greylist-max-o getThemeResId()I
    .registers 3

    .line 492
    iget-object v0, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    monitor-exit v0

    return v1

    .line 494
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 3378
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 3384
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1085
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperDesiredMinimumHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaperDesiredMinimumWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1097
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 3725
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3730
    const/4 v0, 0x0

    return-object v0

    .line 3728
    :pswitch_7
    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    return-object v0

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2484
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2485
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2486
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_1c

    .line 2484
    move-object v2, p1

    move v4, p3

    .end local p1    # "toPackage":Ljava/lang/String;
    .end local p3    # "modeFlags":I
    .local v2, "toPackage":Ljava/lang/String;
    .local v4, "modeFlags":I
    :try_start_14
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 2489
    nop

    .line 2490
    return-void

    .line 2487
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v2    # "toPackage":Ljava/lang/String;
    .end local v4    # "modeFlags":I
    .restart local p1    # "toPackage":Ljava/lang/String;
    .restart local p3    # "modeFlags":I
    :catch_1c
    move-exception v0

    move-object v2, p1

    move v4, p3

    move-object p1, v0

    .line 2488
    .end local p3    # "modeFlags":I
    .restart local v2    # "toPackage":Ljava/lang/String;
    .restart local v4    # "modeFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3682
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3683
    return-void
.end method

.method public blacklist isConfigurationContext()Z
    .registers 2

    .line 2343
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist isCredentialProtectedStorage()Z
    .registers 2

    .line 3145
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isDeviceProtectedStorage()Z
    .registers 2

    .line 3140
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 3135
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isUiContext()Z
    .registers 3

    .line 2326
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_a

    .line 2336
    return v1

    .line 2330
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 2333
    :pswitch_9
    return v1

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 1022
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 1023
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1024
    .local v1, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1025
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 1026
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1025
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    monitor-exit v0

    return v3

    .line 1027
    .end local v1    # "source":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 723
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 724
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 725
    .local v1, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 727
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 728
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 727
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 729
    .local v3, "res":I
    if-lez v3, :cond_28

    .line 732
    nop

    .line 733
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v4

    .line 734
    .local v4, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .end local v4    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :cond_28
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    monitor-exit v0

    return v4

    .line 738
    .end local v1    # "source":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    .end local v3    # "res":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 773
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public whitelist openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 778
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 779
    const v0, 0x8000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    .line 780
    .local v0, "append":Z
    :goto_d
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 782
    .local v2, "f":Ljava/io/File;
    :try_start_15
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 783
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_21} :catch_22

    .line 784
    return-object v3

    .line 785
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v3

    .line 788
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 789
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 790
    nop

    .line 791
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 790
    const/16 v5, 0x1f9

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 794
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 795
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 796
    return-object v4
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1006
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 1007
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1008
    .local v0, "f":Ljava/io/File;
    const/high16 v1, 0x10000000

    .line 1009
    .local v1, "flags":I
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_10

    .line 1010
    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 1012
    :cond_10
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_16

    .line 1013
    or-int/lit8 v1, v1, 0x10

    .line 1015
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1016
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1017
    return-object v2
.end method

.method public whitelist peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 3692
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_19

    .line 3695
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->onSystemUiContextCleanup(Landroid/app/ContextImpl;)V

    .line 3697
    :cond_19
    return-void
.end method

.method public whitelist registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 3274
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3275
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3277
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3278
    :try_start_e
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 3284
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    .line 3285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    .line 3287
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;-><init>(Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3288
    monitor-exit v0

    .line 3289
    return-void

    .line 3279
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call registerDeviceIdChangeListener() on a previously registered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/util/function/IntConsumer;
    throw v1

    .line 3288
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/util/function/IntConsumer;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw v1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 1852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 1858
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    .local v5, "flags":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 1864
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1865
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1864
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1871
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1872
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1871
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .end local p5    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    .local v7, "flags":I
    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 1892
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1893
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1892
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "broadcastPermission":Ljava/lang/String;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 15
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "flags"    # I

    .line 1899
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1900
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1899
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "broadcastPermission":Ljava/lang/String;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .end local p6    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    .local v7, "flags":I
    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 1878
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1885
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .end local p5    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    .local v6, "flags":I
    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o reloadSharedPreferences()V
    .registers 6

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "spImpls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SharedPreferencesImpl;>;"
    const-class v1, Landroid/app/ContextImpl;

    monitor-enter v1

    .line 671
    :try_start_8
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 672
    .local v2, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 673
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SharedPreferencesImpl;

    .line 674
    .local v4, "sp":Landroid/app/SharedPreferencesImpl;
    if-eqz v4, :cond_1e

    .line 675
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v4    # "sp":Landroid/app/SharedPreferencesImpl;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 678
    .end local v2    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "i":I
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_36

    .line 681
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 682
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 684
    .end local v1    # "i":I
    :cond_35
    return-void

    .line 678
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public whitelist removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1752
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1754
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 1755
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1759
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1760
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 1759
    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1763
    nop

    .line 1764
    return-void

    .line 1761
    :catch_2d
    move-exception v1

    .line 1762
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1836
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1838
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 1839
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1842
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1843
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1844
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1843
    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1847
    nop

    .line 1848
    return-void

    .line 1845
    :catch_2d
    move-exception v1

    .line 1846
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2389
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 2390
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2389
    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V

    .line 2391
    return-void
.end method

.method public whitelist revokeUriPermission(Landroid/net/Uri;I)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2495
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2496
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2497
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_1c

    .line 2495
    const/4 v2, 0x0

    move v4, p2

    .end local p2    # "modeFlags":I
    .local v4, "modeFlags":I
    :try_start_14
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 2500
    nop

    .line 2501
    return-void

    .line 2498
    :catch_19
    move-exception v0

    move-object p2, v0

    goto :goto_1f

    .end local v4    # "modeFlags":I
    .restart local p2    # "modeFlags":I
    :catch_1c
    move-exception v0

    move v4, p2

    move-object p2, v0

    .line 2499
    .restart local v4    # "modeFlags":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2506
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2507
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2508
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_1c

    .line 2506
    move-object v2, p1

    move v4, p3

    .end local p1    # "targetPackage":Ljava/lang/String;
    .end local p3    # "modeFlags":I
    .local v2, "targetPackage":Ljava/lang/String;
    .local v4, "modeFlags":I
    :try_start_14
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 2511
    nop

    .line 2512
    return-void

    .line 2509
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v2    # "targetPackage":Ljava/lang/String;
    .end local v4    # "modeFlags":I
    .restart local p1    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "modeFlags":I
    :catch_1c
    move-exception v0

    move-object v2, p1

    move v4, p3

    move-object p1, v0

    .line 2510
    .end local p3    # "modeFlags":I
    .restart local v2    # "targetPackage":Ljava/lang/String;
    .restart local v4    # "modeFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method final greylist scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 3687
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    return-void
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1269
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1270
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1272
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1273
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1274
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1273
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_34} :catch_36

    .line 1279
    nop

    .line 1280
    return-void

    .line 1277
    :catch_36
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 1284
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1285
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1286
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_1b

    .line 1287
    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_1b
    nop

    .line 1289
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1290
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1291
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1294
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1290
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_40} :catch_42

    .line 1297
    nop

    .line 1298
    return-void

    .line 1295
    :catch_42
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .line 1396
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1397
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1398
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_1b

    .line 1399
    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_1b
    nop

    .line 1401
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1402
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1403
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1405
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1402
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v14, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_43

    .line 1408
    nop

    .line 1409
    return-void

    .line 1406
    :catch_43
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1368
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v15, p3

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1369
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1370
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_15

    const/4 v0, 0x0

    goto :goto_1b

    .line 1371
    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    :goto_1b
    nop

    .line 1372
    .local v0, "receiverPermissions":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1373
    .local v2, "excludedPermissions":[Ljava/lang/String;
    if-eqz v15, :cond_31

    .line 1374
    const-string v3, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1376
    .local v3, "receiverPermissionsBundle":[Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 1377
    move-object v0, v3

    .line 1379
    :cond_28
    const-string v4, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v11, v0

    move-object v12, v2

    goto :goto_33

    .line 1373
    .end local v3    # "receiverPermissionsBundle":[Ljava/lang/String;
    :cond_31
    move-object v11, v0

    move-object v12, v2

    .line 1383
    .end local v0    # "receiverPermissions":[Ljava/lang/String;
    .end local v2    # "excludedPermissions":[Ljava/lang/String;
    .local v11, "receiverPermissions":[Ljava/lang/String;
    .local v12, "excludedPermissions":[Ljava/lang/String;
    :goto_33
    :try_start_33
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1384
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1385
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1388
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1384
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_55} :catch_57

    .line 1391
    nop

    .line 1392
    return-void

    .line 1389
    :catch_57
    move-exception v0

    .line 1390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1501
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1503
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1504
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1505
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1504
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_31} :catch_33

    .line 1510
    nop

    .line 1511
    return-void

    .line 1508
    :catch_33
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .line 1516
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1517
    return-void
.end method

.method public greylist-max-o sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .line 1540
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1541
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_11

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_18

    .line 1542
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    move-object v11, v0

    :goto_18
    nop

    .line 1544
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_19
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1545
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1546
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1545
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v14, p4

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_40

    .line 1552
    nop

    .line 1553
    return-void

    .line 1550
    :catch_40
    move-exception v0

    .line 1551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1522
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1523
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_11

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_18

    .line 1524
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    move-object v11, v0

    :goto_18
    nop

    .line 1526
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_19
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1527
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1528
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1527
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, p4

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_40

    .line 1534
    nop

    .line 1535
    return-void

    .line 1532
    :catch_40
    move-exception v0

    .line 1533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermissions"    # [Ljava/lang/String;

    .line 1336
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1338
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1339
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1340
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1339
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_34

    .line 1346
    nop

    .line 1347
    return-void

    .line 1344
    :catch_34
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 1302
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1303
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1305
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1306
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1307
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1310
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1306
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p2

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_37

    .line 1313
    nop

    .line 1314
    return-void

    .line 1311
    :catch_37
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1319
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1320
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1322
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1323
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1324
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1327
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1323
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_36} :catch_38

    .line 1330
    nop

    .line 1331
    return-void

    .line 1328
    :catch_38
    move-exception v0

    .line 1329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/app/BroadcastOptions;

    .line 1352
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1353
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1356
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1357
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1360
    if-nez p5, :cond_24

    const/4 v0, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual/range {p5 .. p5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_28
    move-object v15, v0

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1356
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3f} :catch_41

    .line 1363
    nop

    .line 1364
    return-void

    .line 1361
    :catch_41
    move-exception v0

    .line 1362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialCode"    # I
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "receiverAppOp"    # Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1648
    const/4 v0, -0x1

    .line 1649
    .local v0, "intAppOp":I
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1650
    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_e

    .line 1649
    :cond_d
    move v5, v0

    .line 1652
    .end local v0    # "intAppOp":I
    .local v5, "intAppOp":I
    :goto_e
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v9, p2

    move-object v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1654
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1415
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1458
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1460
    return-void
.end method

.method greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 30
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1466
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1467
    const/4 v0, 0x0

    .line 1468
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_59

    .line 1469
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_31

    .line 1470
    if-nez p5, :cond_18

    .line 1471
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_1a

    .line 1470
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v9, p5

    .line 1473
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_1a
    iget-object v6, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1474
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1475
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v10

    .line 1473
    const/4 v11, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v6 .. v11}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v9

    goto :goto_5c

    .line 1477
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_31
    if-nez p5, :cond_3b

    .line 1478
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v14, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3d

    .line 1477
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_3b
    move-object/from16 v14, p5

    .line 1480
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v14, "scheduler":Landroid/os/Handler;
    :goto_3d
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    .line 1481
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p4

    invoke-direct/range {v10 .. v16}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1482
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v14

    goto :goto_5c

    .line 1468
    .end local v14    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_59
    move-object/from16 v19, p5

    move-object v7, v0

    .line 1485
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v7, "rd":Landroid/content/IIntentReceiver;
    .local v19, "scheduler":Landroid/os/Handler;
    :goto_5c
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1486
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_69

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_70

    .line 1487
    :cond_69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_70
    nop

    .line 1489
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_71
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1490
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1491
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1493
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1490
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v14, p3

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_99} :catch_9b

    .line 1496
    nop

    .line 1497
    return-void

    .line 1494
    :catch_9b
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .line 1440
    const/4 v3, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1442
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1419
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1420
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1421
    .local v6, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_1b

    .line 1422
    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    move-object v11, v0

    :goto_1b
    nop

    .line 1424
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1425
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1426
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1429
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1425
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_43

    .line 1432
    nop

    .line 1433
    return-void

    .line 1430
    :catch_43
    move-exception v0

    .line 1431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1449
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1451
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1621
    const/4 v0, -0x1

    .line 1622
    .local v0, "intAppOp":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1623
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_e

    .line 1622
    :cond_d
    move v5, v0

    .line 1625
    .end local v0    # "intAppOp":I
    .local v5, "intAppOp":I
    :goto_e
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1628
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    .line 1567
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1569
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 1575
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    .line 1576
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    :goto_a
    move-object v4, v0

    .line 1577
    .local v4, "receiverPermissions":[Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1579
    return-void
.end method

.method public whitelist sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1559
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1561
    return-void
.end method

.method public blacklist sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 31
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermissions"    # [Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 1586
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    const/4 v0, 0x0

    .line 1587
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p6, :cond_56

    .line 1588
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_2e

    .line 1589
    if-nez p7, :cond_15

    .line 1590
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1589
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v9, p7

    .line 1592
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v6, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1593
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1594
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v10

    .line 1592
    const/4 v11, 0x0

    move-object/from16 v7, p6

    invoke-virtual/range {v6 .. v11}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v9

    goto :goto_59

    .line 1596
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_2e
    if-nez p7, :cond_38

    .line 1597
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v14, v2

    .end local p7    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3a

    .line 1596
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_38
    move-object/from16 v14, p7

    .line 1599
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v14, "scheduler":Landroid/os/Handler;
    :goto_3a
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    .line 1600
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p6

    invoke-direct/range {v10 .. v16}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1601
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v14

    goto :goto_59

    .line 1587
    .end local v14    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_56
    move-object/from16 v19, p7

    move-object v7, v0

    .line 1604
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v7, "rd":Landroid/content/IIntentReceiver;
    .local v19, "scheduler":Landroid/os/Handler;
    :goto_59
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1606
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_61
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1607
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1608
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1607
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v11, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_8b} :catch_8d

    .line 1614
    nop

    .line 1615
    return-void

    .line 1612
    :catch_8d
    move-exception v0

    .line 1613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist sendOrderedBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1635
    const/4 v0, -0x1

    .line 1636
    .local v0, "intAppOp":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1637
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_e

    .line 1636
    :cond_d
    move v5, v0

    .line 1639
    .end local v0    # "intAppOp":I
    .local v5, "intAppOp":I
    :goto_e
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1642
    return-void
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1659
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1660
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1662
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1663
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1664
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1666
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1663
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_34} :catch_36

    .line 1669
    nop

    .line 1670
    return-void

    .line 1667
    :catch_36
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1698
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1699
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1701
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1702
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1703
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1705
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1702
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v15, p2

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_37

    .line 1708
    nop

    .line 1709
    return-void

    .line 1706
    :catch_37
    move-exception v0

    .line 1707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1769
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1771
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1772
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1773
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1772
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_31} :catch_33

    .line 1778
    nop

    .line 1779
    return-void

    .line 1776
    :catch_33
    move-exception v0

    .line 1777
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1786
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1787
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1788
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1787
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_34

    .line 1793
    nop

    .line 1794
    return-void

    .line 1791
    :catch_34
    move-exception v0

    .line 1792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 27
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1717
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct {v1}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1718
    const/4 v0, 0x0

    .line 1719
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_59

    .line 1720
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_31

    .line 1721
    if-nez p3, :cond_18

    .line 1722
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_1a

    .line 1721
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v9, p3

    .line 1724
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_1a
    iget-object v6, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1725
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1726
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v10

    .line 1724
    const/4 v11, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v6 .. v11}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v9

    goto :goto_5c

    .line 1728
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_31
    if-nez p3, :cond_3b

    .line 1729
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v14, v2

    .end local p3    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3d

    .line 1728
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_3b
    move-object/from16 v14, p3

    .line 1731
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v14, "scheduler":Landroid/os/Handler;
    :goto_3d
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    .line 1732
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p2

    invoke-direct/range {v10 .. v16}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1733
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v14

    goto :goto_5c

    .line 1719
    .end local v14    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_59
    move-object/from16 v19, p3

    move-object v7, v0

    .line 1736
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v7, "rd":Landroid/content/IIntentReceiver;
    .local v19, "scheduler":Landroid/os/Handler;
    :goto_5c
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1738
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_64
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1739
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1740
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1743
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1739
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_8b} :catch_8d

    .line 1746
    nop

    .line 1747
    return-void

    .line 1744
    :catch_8d
    move-exception v0

    .line 1745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 28
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1802
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    const/4 v0, 0x0

    .line 1803
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_56

    .line 1804
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_2e

    .line 1805
    if-nez p4, :cond_15

    .line 1806
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1805
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v9, p4

    .line 1808
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v6, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1809
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1810
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v10

    .line 1808
    const/4 v11, 0x0

    move-object/from16 v7, p3

    invoke-virtual/range {v6 .. v11}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v9

    goto :goto_59

    .line 1812
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_2e
    if-nez p4, :cond_38

    .line 1813
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v14, v2

    .end local p4    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3a

    .line 1812
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_38
    move-object/from16 v14, p4

    .line 1815
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v14, "scheduler":Landroid/os/Handler;
    :goto_3a
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    .line 1816
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p3

    invoke-direct/range {v10 .. v16}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1817
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v19, v14

    goto :goto_59

    .line 1803
    .end local v14    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_56
    move-object/from16 v19, p4

    move-object v7, v0

    .line 1820
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v7, "rd":Landroid/content/IIntentReceiver;
    .local v19, "scheduler":Landroid/os/Handler;
    :goto_59
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 1822
    .local v6, "resolvedType":Ljava/lang/String;
    :try_start_61
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1823
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1824
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1827
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1823
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_88} :catch_8a

    .line 1830
    nop

    .line 1831
    return-void

    .line 1828
    :catch_8a
    move-exception v0

    .line 1829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 2
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3396
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3397
    return-void
.end method

.method public blacklist setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/AutofillOptions;

    .line 3408
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    .line 3409
    return-void
.end method

.method public blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;

    .line 3420
    iput-object p1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3421
    return-void
.end method

.method final greylist setOuterContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 3709
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3710
    return-void
.end method

.method greylist-max-o setResources(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 3665
    instance-of v0, p1, Landroid/content/res/CompatResources;

    if-eqz v0, :cond_a

    .line 3666
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatResources;

    invoke-virtual {v0, p0}, Landroid/content/res/CompatResources;->setContext(Landroid/content/Context;)V

    .line 3668
    :cond_a
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3670
    if-eqz p1, :cond_2c

    .line 3672
    invoke-static {}, Landroid/content/res/Flags;->defaultLocale()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3673
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2c

    .line 3674
    invoke-static {p0}, Landroid/app/LocaleConfig;->fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;

    move-result-object v0

    .line 3675
    .local v0, "lc":Landroid/app/LocaleConfig;
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1, v0}, Landroid/app/ResourcesManager;->setLocaleConfig(Landroid/app/LocaleConfig;)V

    .line 3678
    .end local v0    # "lc":Landroid/app/LocaleConfig;
    :cond_2c
    invoke-direct {p0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 3679
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 482
    iget-object v0, p0, Landroid/app/ContextImpl;->mThemeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    if-eq v1, p1, :cond_c

    .line 484
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 485
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 487
    :cond_c
    monitor-exit v0

    .line 488
    return-void

    .line 487
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1109
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1110
    return-void
.end method

.method public whitelist setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1115
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1116
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 1182
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1184
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1203
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1204
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 1210
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1211
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1212
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1210
    const/4 v4, 0x0

    move-object v6, p1

    .end local p1    # "intents":[Landroid/content/Intent;
    .local v6, "intents":[Landroid/content/Intent;
    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1213
    return-void

    .line 1205
    .end local v6    # "intents":[Landroid/content/Intent;
    .restart local p1    # "intents":[Landroid/content/Intent;
    :cond_2d
    move-object v6, p1

    .end local p1    # "intents":[Landroid/content/Intent;
    .restart local v6    # "intents":[Landroid/content/Intent;
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Calling startActivities() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 13
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1189
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2f

    .line 1195
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1196
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1197
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1198
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1195
    const/4 v4, 0x0

    move-object v6, p1

    .end local p1    # "intents":[Landroid/content/Intent;
    .local v6, "intents":[Landroid/content/Intent;
    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    move-result p1

    return p1

    .line 1190
    .end local v6    # "intents":[Landroid/content/Intent;
    .restart local p1    # "intents":[Landroid/content/Intent;
    :cond_2f
    move-object v6, p1

    .end local p1    # "intents":[Landroid/content/Intent;
    .restart local v6    # "intents":[Landroid/content/Intent;
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Calling startActivities() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1130
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1132
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1142
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1148
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1150
    .local v0, "targetSdkVersion":I
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_30

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_30

    :cond_1a
    if-eqz p2, :cond_28

    .line 1154
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    goto :goto_30

    .line 1155
    :cond_28
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Calling startActivity() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_30
    :goto_30
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 1161
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v6

    check-cast v1, Landroid/app/Activity;

    .line 1162
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1160
    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object v7, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 1163
    return-void
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1169
    move-object/from16 v1, p0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 1170
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1171
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1172
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_38

    .line 1174
    move-object/from16 v15, p2

    :try_start_23
    invoke-direct {v1, v15}, Landroid/app/ContextImpl;->applyLaunchDisplayIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 1170
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_34} :catch_36

    .line 1177
    nop

    .line 1178
    return-void

    .line 1175
    :catch_36
    move-exception v0

    goto :goto_3b

    :catch_38
    move-exception v0

    move-object/from16 v15, p2

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1138
    return-void
.end method

.method public whitelist startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 2008
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2009
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2025
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2287
    if-eqz p3, :cond_c

    .line 2288
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_c

    .line 2293
    :catch_7
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    goto :goto_26

    .line 2290
    :cond_c
    :goto_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2291
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_22

    .line 2290
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "profileFile":Ljava/lang/String;
    .end local p3    # "arguments":Landroid/os/Bundle;
    .local v2, "className":Landroid/content/ComponentName;
    .local v3, "profileFile":Ljava/lang/String;
    .local v5, "arguments":Landroid/os/Bundle;
    :try_start_1b
    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_20

    return p1

    .line 2293
    :catch_20
    move-exception v0

    goto :goto_26

    .end local v2    # "className":Landroid/content/ComponentName;
    .end local v3    # "profileFile":Ljava/lang/String;
    .end local v5    # "arguments":Landroid/os/Bundle;
    .restart local p1    # "className":Landroid/content/ComponentName;
    .restart local p2    # "profileFile":Ljava/lang/String;
    .restart local p3    # "arguments":Landroid/os/Bundle;
    :catch_22
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 2294
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "profileFile":Ljava/lang/String;
    .end local p3    # "arguments":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "className":Landroid/content/ComponentName;
    .restart local v3    # "profileFile":Ljava/lang/String;
    .restart local v5    # "arguments":Landroid/os/Bundle;
    :goto_26
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1238
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .local v1, "intent":Landroid/content/IntentSender;
    .local v2, "fillInIntent":Landroid/content/Intent;
    .local v3, "flagsMask":I
    .local v4, "flagsValues":I
    .local v5, "extraFlags":I
    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1239
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz p2, :cond_14

    .line 1248
    :try_start_3
    invoke-virtual {p2, p0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1249
    invoke-virtual {p2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1250
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v6, v0

    goto :goto_15

    .line 1247
    :cond_14
    move-object v6, v0

    .line 1252
    .end local v0    # "resolvedType":Ljava/lang/String;
    .local v6, "resolvedType":Ljava/lang/String;
    :goto_15
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1253
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 1254
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    goto :goto_28

    :cond_27
    move-object v3, v0

    .line 1255
    :goto_28
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_30

    :cond_2f
    move-object v4, v0

    .line 1253
    :goto_30
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v1

    .line 1258
    .local v1, "result":I
    const/16 v2, -0x60

    if-eq v1, v2, :cond_47

    .line 1261
    invoke-static {v1, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1264
    .end local v1    # "result":I
    .end local v6    # "resolvedType":Ljava/lang/String;
    nop

    .line 1265
    return-void

    .line 1259
    .restart local v1    # "result":I
    .restart local v6    # "resolvedType":Ljava/lang/String;
    :cond_47
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .end local p6    # "options":Landroid/os/Bundle;
    throw v0
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_4d} :catch_4d

    .line 1262
    .end local v1    # "result":I
    .end local v6    # "resolvedType":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "intent":Landroid/content/IntentSender;
    .restart local p2    # "fillInIntent":Landroid/content/Intent;
    .restart local p3    # "flagsMask":I
    .restart local p4    # "flagsValues":I
    .restart local p5    # "extraFlags":I
    .restart local p6    # "options":Landroid/os/Bundle;
    :catch_4d
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 2002
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2003
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2020
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist stopService(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "service"    # Landroid/content/Intent;

    .line 2014
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2015
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2068
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 2267
    if-eqz p1, :cond_28

    .line 2270
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_20

    .line 2271
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2272
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2271
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2274
    .local v0, "sd":Landroid/app/IServiceConnection;
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_1a

    .line 2277
    nop

    .line 2278
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    nop

    .line 2281
    return-void

    .line 2275
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_1a
    move-exception v1

    .line 2276
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2279
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 3293
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3294
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3295
    :try_start_9
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    move-result-object v1

    .line 3296
    .local v1, "listenerToRemove":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    if-eqz v1, :cond_14

    .line 3297
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3299
    .end local v1    # "listenerToRemove":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    :cond_14
    monitor-exit v0

    .line 3300
    return-void

    .line 3299
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 1956
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1e

    .line 1957
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1958
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 1957
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1960
    .local v0, "rd":Landroid/content/IIntentReceiver;
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_18

    .line 1963
    nop

    .line 1964
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    nop

    .line 1967
    return-void

    .line 1961
    .restart local v0    # "rd":Landroid/content/IIntentReceiver;
    :catch_18
    move-exception v1

    .line 1962
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1965
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateDeviceId(I)V
    .registers 6
    .param p1, "updatedDeviceId"    # I

    .line 3240
    if-eqz p1, :cond_45

    .line 3241
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3242
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_2c

    .line 3247
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_45

    .line 3248
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid ID of the default device or any virtual device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3243
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VDM is not enabled when updating to non-default device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3253
    .end local v0    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_45
    :goto_45
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    if-nez v0, :cond_60

    .line 3258
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-eq v0, p1, :cond_5f

    .line 3259
    iput p1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3260
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    iget v1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->createAttributionSourceWithDeviceId(Landroid/content/AttributionSource;I)Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3261
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->notifyOnDeviceChangedListeners(I)V

    .line 3262
    invoke-direct {p0}, Landroid/app/ContextImpl;->updateResourceOverlayConstraints()V

    .line 3264
    :cond_5f
    return-void

    .line 3254
    :cond_60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot update device ID on a Context created with createDeviceContext()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o updateDisplay(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 3208
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3209
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    if-nez v0, :cond_12

    .line 3210
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3212
    :cond_12
    return-void
.end method

.method public whitelist updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 8
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 2246
    if-eqz p1, :cond_43

    .line 2249
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_3b

    .line 2250
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2251
    .local v0, "sd":Landroid/app/IServiceConnection;
    if-eqz v0, :cond_22

    .line 2256
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Landroid/app/IActivityManager;->updateServiceGroup(Landroid/app/IServiceConnection;II)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1c

    .line 2259
    nop

    .line 2260
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    nop

    .line 2263
    return-void

    .line 2257
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_1c
    move-exception v1

    .line 2258
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2252
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceConnection not currently bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2261
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2247
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
