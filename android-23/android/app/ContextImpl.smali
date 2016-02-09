.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContextImpl"

.field private static sSharedPrefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mBasePackageName:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mCodeCacheDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private mExternalCacheDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalFilesDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalMediaDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mExternalObbDirs:[Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field final mMainThread:Landroid/app/ActivityThread;

.field private mNoBackupFilesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mOpPackageName:Ljava/lang/String;

.field private mOuterContext:Landroid/content/Context;

.field final mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field private final mRestricted:Z

.field final mServiceCache:[Ljava/lang/Object;

.field private final mSync:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    sput-object v0, Landroid/app/ContextImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@5
    .line 125
    return-void
.end method

.method private constructor <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V
    .locals 11
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "restricted"    # Z
    .param p7, "display"    # Landroid/view/Display;
    .param p8, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p9, "createDisplayWithId"    # I

    #@0
    .prologue
    .line 1796
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    #@3
    .line 149
    new-instance v1, Landroid/view/DisplayAdjustments;

    #@5
    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    #@8
    iput-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    .line 154
    const/4 v1, 0x0

    #@b
    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@d
    .line 155
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@10
    .line 157
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@13
    .line 159
    new-instance v1, Ljava/lang/Object;

    #@15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@18
    iput-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@1a
    .line 186
    invoke-static {}, Landroid/app/SystemServiceRegistry;->createServiceCache()[Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    #@20
    .line 1799
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    #@22
    .line 1801
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@24
    .line 1802
    iput-object p4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@26
    .line 1803
    move/from16 v0, p6

    #@28
    iput-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    #@2a
    .line 1805
    if-nez p5, :cond_0

    #@2c
    .line 1806
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@2f
    move-result-object p5

    #@30
    .line 1808
    :cond_0
    move-object/from16 v0, p5

    #@32
    iput-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@34
    .line 1810
    iput-object p3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@36
    .line 1811
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@3c
    .line 1813
    const/4 v1, -0x1

    #@3d
    move/from16 v0, p9

    #@3f
    if-eq v0, v1, :cond_5

    #@41
    .line 1814
    move/from16 v6, p9

    #@43
    .line 1817
    .local v6, "displayId":I
    :goto_0
    const/4 v8, 0x0

    #@44
    .line 1818
    .local v8, "compatInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz p1, :cond_1

    #@46
    .line 1819
    invoke-virtual {p1, v6}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@4d
    move-result-object v8

    #@4e
    .line 1821
    .end local v8    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :cond_1
    if-nez v8, :cond_2

    #@50
    .line 1822
    if-nez v6, :cond_7

    #@52
    .line 1823
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@55
    move-result-object v8

    #@56
    .line 1826
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@58
    invoke-virtual {v1, v8}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@5b
    .line 1827
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@5d
    move-object/from16 v0, p8

    #@5f
    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    #@62
    .line 1829
    const/4 v1, -0x1

    #@63
    move/from16 v0, p9

    #@65
    if-ne v0, v1, :cond_8

    #@67
    .end local p7    # "display":Landroid/view/Display;
    :goto_2
    move-object/from16 v0, p7

    #@69
    iput-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@6b
    .line 1832
    invoke-virtual {p3, p2}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    #@6e
    move-result-object v10

    #@6f
    .line 1833
    .local v10, "resources":Landroid/content/res/Resources;
    if-eqz v10, :cond_4

    #@71
    .line 1834
    if-nez v6, :cond_3

    #@73
    .line 1835
    if-eqz p8, :cond_9

    #@75
    .line 1838
    :cond_3
    :goto_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@77
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    .line 1839
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    .line 1840
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@86
    move-result-object v5

    #@87
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@89
    move-object/from16 v7, p8

    #@8b
    .line 1838
    invoke-virtual/range {v1 .. v8}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    #@8e
    move-result-object v10

    #@8f
    .line 1844
    :cond_4
    iput-object v10, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@91
    .line 1846
    if-eqz p1, :cond_a

    #@93
    .line 1847
    iget-object v1, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@95
    iput-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@97
    .line 1848
    iget-object v1, p1, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@99
    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@9b
    .line 1863
    :goto_4
    new-instance v1, Landroid/app/ContextImpl$ApplicationContentResolver;

    #@9d
    move-object/from16 v0, p5

    #@9f
    invoke-direct {v1, p0, p2, v0}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V

    #@a2
    iput-object v1, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    #@a4
    .line 1798
    return-void

    #@a5
    .line 1815
    .end local v6    # "displayId":I
    .end local v10    # "resources":Landroid/content/res/Resources;
    .restart local p7    # "display":Landroid/view/Display;
    :cond_5
    if-eqz p7, :cond_6

    #@a7
    invoke-virtual/range {p7 .. p7}, Landroid/view/Display;->getDisplayId()I

    #@aa
    move-result v6

    #@ab
    .restart local v6    # "displayId":I
    goto :goto_0

    #@ac
    .end local v6    # "displayId":I
    :cond_6
    const/4 v6, 0x0

    #@ad
    .restart local v6    # "displayId":I
    goto :goto_0

    #@ae
    .line 1824
    :cond_7
    sget-object v8, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@b0
    .local v8, "compatInfo":Landroid/content/res/CompatibilityInfo;
    goto :goto_1

    #@b1
    .line 1830
    .end local v8    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :cond_8
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@b4
    move-result-object v1

    #@b5
    iget-object v2, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@b7
    invoke-virtual {v1, v6, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@ba
    move-result-object p7

    #@bb
    goto :goto_2

    #@bc
    .line 1836
    .end local p7    # "display":Landroid/view/Display;
    .restart local v10    # "resources":Landroid/content/res/Resources;
    :cond_9
    if-eqz v8, :cond_4

    #@be
    iget v1, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@c0
    .line 1837
    invoke-virtual {v10}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@c3
    move-result-object v2

    #@c4
    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@c6
    .line 1836
    cmpl-float v1, v1, v2

    #@c8
    if-eqz v1, :cond_4

    #@ca
    goto :goto_3

    #@cb
    .line 1850
    :cond_a
    iget-object v1, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@cd
    iput-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@cf
    .line 1851
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@d2
    move-result-object v9

    #@d3
    .line 1852
    .local v9, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@d5
    const/16 v2, 0x3e8

    #@d7
    if-ne v1, v2, :cond_b

    #@d9
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@db
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@de
    move-result v2

    #@df
    if-eq v1, v2, :cond_b

    #@e1
    .line 1857
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@e4
    move-result-object v1

    #@e5
    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@e7
    goto :goto_4

    #@e8
    .line 1859
    :cond_b
    iget-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@ea
    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@ec
    goto :goto_4
.end method

.method private bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1299
    if-nez p2, :cond_0

    #@2
    .line 1300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "connection is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1302
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 1303
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@11
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    .line 1304
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v2

    #@1b
    .line 1303
    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    #@1e
    move-result-object v5

    #@1f
    .line 1308
    .local v5, "sd":Landroid/app/IServiceConnection;
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    #@22
    .line 1310
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    #@25
    move-result-object v11

    #@26
    .line 1311
    .local v11, "token":Landroid/os/IBinder;
    if-nez v11, :cond_1

    #@28
    and-int/lit8 v0, p3, 0x1

    #@2a
    if-nez v0, :cond_1

    #@2c
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 1312
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@32
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@35
    move-result-object v0

    #@36
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@38
    .line 1313
    const/16 v1, 0xe

    #@3a
    .line 1312
    if-ge v0, v1, :cond_1

    #@3c
    .line 1314
    or-int/lit8 p3, p3, 0x20

    #@3e
    .line 1316
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@41
    .line 1317
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@44
    move-result-object v0

    #@45
    .line 1318
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@47
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    #@4e
    move-result-object v2

    #@4f
    .line 1319
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 1320
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@5e
    move-result v8

    #@5f
    move-object v3, p1

    #@60
    move v6, p3

    #@61
    .line 1317
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    #@64
    move-result v10

    #@65
    .line 1321
    .local v10, "res":I
    if-gez v10, :cond_3

    #@67
    .line 1322
    new-instance v0, Ljava/lang/SecurityException;

    #@69
    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "Not allowed to bind to service "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    .line 1322
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 1326
    .end local v10    # "res":I
    .end local v11    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v9

    #@82
    .line 1327
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@84
    const-string/jumbo v1, "Failure from system"

    #@87
    invoke-direct {v0, v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8a
    throw v0

    #@8b
    .line 1306
    .end local v5    # "sd":Landroid/app/IServiceConnection;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@8d
    const-string/jumbo v1, "Not supported in system context"

    #@90
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@93
    throw v0

    #@94
    .line 1325
    .restart local v5    # "sd":Landroid/app/IServiceConnection;
    .restart local v10    # "res":I
    .restart local v11    # "token":Landroid/os/IBinder;
    :cond_3
    if-eqz v10, :cond_4

    #@96
    const/4 v0, 0x1

    #@97
    :goto_0
    return v0

    #@98
    :cond_4
    const/4 v0, 0x0

    #@99
    goto :goto_0
.end method

.method static createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;
    .locals 10
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1791
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "packageInfo"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1792
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@e
    const/4 v6, 0x0

    #@f
    move-object v2, p0

    #@10
    move-object v3, p1

    #@11
    move-object v4, v1

    #@12
    move-object v5, v1

    #@13
    move-object v7, v1

    #@14
    move-object v8, p3

    #@15
    move v9, p2

    #@16
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@19
    return-object v0
.end method

.method static createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .locals 10
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1784
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "packageInfo"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1785
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@e
    .line 1786
    const/4 v6, 0x0

    #@f
    const/4 v9, -0x1

    #@10
    move-object v2, p0

    #@11
    move-object v3, p1

    #@12
    move-object v4, v1

    #@13
    move-object v5, v1

    #@14
    move-object v7, v1

    #@15
    move-object v8, v1

    #@16
    .line 1785
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@19
    return-object v0
.end method

.method private static createFilesDirLocked(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 418
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_2

    #@7
    .line 419
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 420
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 422
    return-object p0

    #@14
    .line 424
    :cond_0
    const-string/jumbo v0, "ContextImpl"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Unable to create files subdir "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 425
    const/4 v0, 0x0

    #@33
    return-object v0

    #@34
    .line 428
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 429
    const/16 v1, 0x1f9

    #@3a
    .line 427
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@3d
    .line 432
    :cond_2
    return-object p0
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .locals 10
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1775
    new-instance v3, Landroid/app/LoadedApk;

    #@3
    invoke-direct {v3, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    #@6
    .line 1776
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    new-instance v0, Landroid/app/ContextImpl;

    #@8
    .line 1777
    const/4 v6, 0x0

    #@9
    const/4 v9, -0x1

    #@a
    move-object v2, p0

    #@b
    move-object v4, v1

    #@c
    move-object v5, v1

    #@d
    move-object v7, v1

    #@e
    move-object v8, v1

    #@f
    .line 1776
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@12
    .line 1778
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@14
    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@16
    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@19
    move-result-object v2

    #@1a
    .line 1779
    iget-object v4, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@1c
    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked()Landroid/util/DisplayMetrics;

    #@1f
    move-result-object v4

    #@20
    .line 1778
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@23
    .line 1780
    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1437
    if-eqz p2, :cond_2

    #@2
    .line 1438
    new-instance v1, Ljava/lang/SecurityException;

    #@4
    .line 1439
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    if-eqz p5, :cond_0

    #@b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v3, ": "

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 1440
    if-eqz p3, :cond_1

    #@25
    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Neither user "

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string/jumbo v3, " nor current process has "

    #@38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 1439
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 1444
    const-string/jumbo v2, "."

    #@4b
    .line 1439
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 1438
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1

    #@57
    .line 1439
    :cond_0
    const-string/jumbo v0, ""

    #@5a
    goto :goto_0

    #@5b
    .line 1442
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v3, "uid "

    #@63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    const-string/jumbo v3, " does not have "

    #@6e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    goto :goto_1

    #@77
    .line 1436
    :cond_2
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "modeFlags"    # I
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1592
    if-eqz p2, :cond_2

    #@2
    .line 1593
    new-instance v1, Ljava/lang/SecurityException;

    #@4
    .line 1594
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    if-eqz p6, :cond_0

    #@b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v3, ": "

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 1595
    if-eqz p3, :cond_1

    #@25
    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Neither user "

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string/jumbo v3, " nor current process has "

    #@38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 1594
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 1598
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 1594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 1599
    const-string/jumbo v2, " permission on "

    #@4f
    .line 1594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 1601
    const-string/jumbo v2, "."

    #@5a
    .line 1594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    .line 1593
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    .line 1594
    :cond_0
    const-string/jumbo v0, ""

    #@69
    goto :goto_0

    #@6a
    .line 1597
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "User "

    #@72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    const-string/jumbo v3, " does not have "

    #@7d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    goto :goto_1

    #@86
    .line 1591
    :cond_2
    return-void
.end method

.method private ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    .locals 9
    .param p1, "dirs"    # [Ljava/io/File;

    #@0
    .prologue
    .line 1953
    array-length v6, p1

    #@1
    new-array v5, v6, [Ljava/io/File;

    #@3
    .line 1954
    .local v5, "result":[Ljava/io/File;
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    array-length v6, p1

    #@5
    if-ge v2, v6, :cond_1

    #@7
    .line 1955
    aget-object v0, p1, v2

    #@9
    .line 1956
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_0

    #@f
    .line 1957
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_0

    #@15
    .line 1959
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@18
    move-result v6

    #@19
    if-nez v6, :cond_0

    #@1b
    .line 1963
    const-string/jumbo v6, "mount"

    #@1e
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@21
    move-result-object v6

    #@22
    .line 1962
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@25
    move-result-object v3

    #@26
    .line 1965
    .local v3, "mount":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-interface {v3, v6, v7}, Landroid/os/storage/IMountService;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    move-result v4

    #@32
    .line 1966
    .local v4, "res":I
    if-eqz v4, :cond_0

    #@34
    .line 1967
    const-string/jumbo v6, "ContextImpl"

    #@37
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "Failed to ensure "

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    const-string/jumbo v8, ": "

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 1968
    const/4 v0, 0x0

    #@5a
    .line 1977
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "mount":Landroid/os/storage/IMountService;
    .end local v4    # "res":I
    :cond_0
    :goto_1
    aput-object v0, v5, v2

    #@5c
    .line 1954
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 1970
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "mount":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v1

    #@60
    .line 1971
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ContextImpl"

    #@63
    new-instance v7, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "Failed to ensure "

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    const-string/jumbo v8, ": "

    #@76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v7

    #@82
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 1972
    const/4 v0, 0x0

    #@86
    .local v0, "dir":Ljava/io/File;
    goto :goto_1

    #@87
    .line 1979
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mount":Landroid/os/storage/IMountService;
    :cond_1
    return-object v5
.end method

.method private getDataDirFile()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 1750
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1751
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1753
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "Not supported in system context"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 599
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 600
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 601
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "databases"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@15
    .line 603
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@17
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v2, "databases"

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 604
    new-instance v0, Ljava/io/File;

    #@26
    const-string/jumbo v2, "/data/system"

    #@29
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2c
    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@2e
    .line 606
    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v1

    #@31
    return-object v0

    #@32
    .line 599
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method private getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 1736
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@6
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method static getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 190
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v1, p0

    #@5
    .line 191
    check-cast v1, Landroid/content/ContextWrapper;

    #@7
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    .local v0, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    #@d
    .line 192
    move-object p0, v0

    #@e
    goto :goto_0

    #@f
    .line 194
    .end local v0    # "nextContext":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/ContextImpl;

    #@11
    .end local p0    # "context":Landroid/content/Context;
    return-object p0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 372
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 373
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 374
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "shared_prefs"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    #@15
    .line 376
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 372
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    #@0
    .prologue
    .line 653
    const-class v0, Landroid/app/WallpaperManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/WallpaperManager;

    #@8
    return-object v0
.end method

.method private initializeTheme()V
    .locals 3

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@c
    .line 268
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@e
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@14
    .line 264
    return-void
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1941
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1942
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    return-object v0

    #@e
    .line 1944
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "File "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " contains a path separator"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 1944
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "userId"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1166
    const/4 v3, 0x0

    #@3
    .line 1167
    .local v3, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_1

    #@5
    .line 1168
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@7
    if-eqz v0, :cond_2

    #@9
    if-eqz p6, :cond_2

    #@b
    .line 1169
    if-nez p5, :cond_0

    #@d
    .line 1170
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object p5

    #@13
    .line 1172
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@15
    .line 1174
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@1a
    move-result-object v4

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p6

    #@1d
    move-object v3, p5

    #@1e
    .line 1172
    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@21
    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    move-result-object v3

    #@22
    .line 1184
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@25
    move-result-object v0

    #@26
    .line 1185
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@28
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@2e
    move-object v4, p3

    #@2f
    move-object v5, p4

    #@30
    move v6, p2

    #@31
    .line 1184
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 1176
    .restart local v3    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p5, :cond_3

    #@38
    .line 1177
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@3a
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@3d
    move-result-object p5

    #@3e
    .line 1179
    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@40
    move-object v1, p1

    #@41
    move-object v2, p6

    #@42
    move-object v3, p5

    #@43
    move-object v4, v8

    #@44
    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@47
    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@4a
    move-result-object v3

    #@4b
    .local v3, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@4c
    .line 1187
    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v7

    #@4d
    .line 1188
    .local v7, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method private resolveUserId(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1521
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1901
    or-int/lit16 v0, p2, 0x1b0

    #@3
    .line 1904
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1905
    or-int/lit8 v0, v0, 0x4

    #@9
    .line 1907
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1908
    or-int/lit8 v0, v0, 0x2

    #@f
    .line 1914
    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@12
    .line 1900
    return-void
.end method

.method private startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1238
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    #@3
    .line 1239
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@6
    .line 1240
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v0

    #@a
    .line 1241
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@c
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@f
    move-result-object v1

    #@10
    .line 1242
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v2

    #@14
    .line 1241
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1242
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1f
    move-result v5

    #@20
    move-object v2, p1

    #@21
    .line 1240
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@24
    move-result-object v6

    #@25
    .line 1243
    .local v6, "cn":Landroid/content/ComponentName;
    if-eqz v6, :cond_1

    #@27
    .line 1244
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, "!"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_0

    #@34
    .line 1245
    new-instance v0, Ljava/lang/SecurityException;

    #@36
    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Not allowed to start service "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1247
    const-string/jumbo v2, " without permission "

    #@49
    .line 1246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1247
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 1246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 1245
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 1255
    .end local v6    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    #@5e
    .line 1256
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@60
    const-string/jumbo v1, "Failure from system"

    #@63
    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    throw v0

    #@67
    .line 1248
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    const-string/jumbo v1, "!!"

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_1

    #@74
    .line 1249
    new-instance v0, Ljava/lang/SecurityException;

    #@76
    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v2, "Unable to start service "

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    .line 1251
    const-string/jumbo v2, ": "

    #@89
    .line 1250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    .line 1251
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    .line 1250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 1249
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@9d
    .line 1254
    :cond_1
    return-object v6
.end method

.method private stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1267
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    #@4
    .line 1268
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@7
    .line 1269
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v3

    #@b
    .line 1270
    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@d
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@10
    move-result-object v4

    #@11
    .line 1271
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1c
    move-result v6

    #@1d
    .line 1269
    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    #@20
    move-result v1

    #@21
    .line 1272
    .local v1, "res":I
    if-gez v1, :cond_0

    #@23
    .line 1273
    new-instance v2, Ljava/lang/SecurityException;

    #@25
    .line 1274
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Not allowed to stop service "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 1273
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 1277
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    #@3e
    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@40
    const-string/jumbo v3, "Failure from system"

    #@43
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v2

    #@47
    .line 1276
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_0
    if-eqz v1, :cond_1

    #@49
    const/4 v2, 0x1

    #@4a
    :cond_1
    return v2
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "uriModeFlags"    # I

    #@0
    .prologue
    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1568
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1569
    const-string/jumbo v1, "read and "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 1571
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1572
    const-string/jumbo v1, "write and "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1574
    :cond_1
    and-int/lit8 v1, p1, 0x40

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 1575
    const-string/jumbo v1, "persistable and "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1577
    :cond_2
    and-int/lit16 v1, p1, 0x80

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 1578
    const-string/jumbo v1, "prefix and "

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 1581
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x5

    #@32
    if-le v1, v2, :cond_4

    #@34
    .line 1582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@37
    move-result v1

    #@38
    add-int/lit8 v1, v1, -0x5

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3d
    .line 1583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1

    #@42
    .line 1585
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "Unknown permission mode flags: "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v1
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createDirectory"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 1921
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v3

    #@6
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@8
    if-ne v3, v4, :cond_1

    #@a
    .line 1922
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@f
    move-result v3

    #@10
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 1923
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@16
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@19
    .line 1924
    .local v0, "dir":Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@1b
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    .line 1925
    new-instance v2, Ljava/io/File;

    #@25
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 1931
    .end local v1    # "dirPath":Ljava/lang/String;
    .local v2, "f":Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_0

    #@2a
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 1937
    :cond_0
    :goto_1
    return-object v2

    #@31
    .line 1927
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    #@34
    move-result-object v0

    #@35
    .line 1928
    .restart local v0    # "dir":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@38
    move-result-object v2

    #@39
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_0

    #@3a
    .line 1931
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_0

    #@40
    .line 1932
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 1933
    const/16 v4, 0x1f9

    #@46
    .line 1932
    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@49
    goto :goto_1
.end method

.method private validateServiceIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1207
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v1

    #@4
    if-nez v1, :cond_1

    #@6
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 1208
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@f
    move-result-object v1

    #@10
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@12
    const/16 v2, 0x15

    #@14
    if-lt v1, v2, :cond_0

    #@16
    .line 1209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Service Intent must be explicit: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 1209
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    .line 1211
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    throw v0

    #@30
    .line 1213
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string/jumbo v1, "ContextImpl"

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Implicit intents with startService are not safe: "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 1214
    const-string/jumbo v3, " "

    #@46
    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 1214
    const/4 v3, 0x2

    #@4b
    const/4 v4, 0x3

    #@4c
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 1213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1206
    :cond_1
    return-void
.end method

.method private warnIfCallingFromSystemProcess()V
    .locals 3

    #@0
    .prologue
    .line 1651
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1652
    const-string/jumbo v0, "ContextImpl"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Calling a method in the system process without a qualified user: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 1653
    const/4 v2, 0x5

    #@18
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1650
    :cond_0
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1285
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1286
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1293
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1417
    if-nez p1, :cond_0

    #@2
    .line 1418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "permission is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1421
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v0

    #@f
    .line 1422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v1

    #@13
    .line 1421
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 1537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1536
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1404
    if-nez p1, :cond_0

    #@2
    .line 1405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "permission is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1408
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v0

    #@f
    .line 1409
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@12
    move-result v1

    #@13
    if-eq v0, v1, :cond_1

    #@15
    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 1412
    :cond_1
    const/4 v1, -0x1

    #@1f
    return v1
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1526
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 1527
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v1

    #@e
    .line 1528
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 1531
    :cond_0
    const/4 v1, -0x1

    #@14
    return v1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 1375
    if-nez p1, :cond_0

    #@2
    .line 1376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "permission is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1380
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 1382
    :catch_0
    move-exception v0

    #@15
    .line 1383
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method public checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1390
    if-nez p1, :cond_0

    #@2
    .line 1391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "permission is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1395
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 1397
    :catch_0
    move-exception v0

    #@15
    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1427
    if-nez p1, :cond_0

    #@2
    .line 1428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "permission is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1431
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@e
    move-result v0

    #@f
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    #@0
    .prologue
    .line 1500
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1501
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 1502
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    #@b
    move-result v5

    #@c
    const/4 v6, 0x0

    #@d
    move v2, p2

    #@e
    move v3, p3

    #@f
    move v4, p4

    #@10
    .line 1500
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1503
    :catch_0
    move-exception v7

    #@16
    .line 1504
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    #@17
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "callerToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1512
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1513
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 1514
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    #@b
    move-result v5

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    move v4, p4

    #@f
    move-object v6, p5

    #@10
    .line 1512
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1515
    :catch_0
    move-exception v7

    #@16
    .line 1516
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    #@17
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1548
    and-int/lit8 v0, p6, 0x1

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1549
    if-eqz p2, :cond_0

    #@7
    .line 1550
    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1552
    :cond_0
    return v1

    #@e
    .line 1555
    :cond_1
    and-int/lit8 v0, p6, 0x2

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1556
    if-eqz p3, :cond_2

    #@14
    .line 1557
    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 1559
    :cond_2
    return v1

    #@1b
    .line 1562
    :cond_3
    if-eqz p1, :cond_4

    #@1d
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    #@20
    move-result v0

    #@21
    :goto_0
    return v0

    #@22
    .line 1563
    :cond_4
    const/4 v0, -0x1

    #@23
    goto :goto_0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 649
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    #@7
    .line 648
    return-void
.end method

.method public createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .locals 10
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1660
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@3
    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@8
    move-result-object v2

    #@9
    .line 1661
    const/high16 v4, 0x40000000    # 2.0f

    #@b
    or-int/2addr v4, p2

    #@c
    .line 1660
    invoke-virtual {v1, p1, v2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    #@f
    move-result-object v3

    #@10
    .line 1662
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_1

    #@12
    .line 1663
    and-int/lit8 v1, p2, 0x4

    #@14
    const/4 v2, 0x4

    #@15
    if-ne v1, v2, :cond_0

    #@17
    const/4 v6, 0x1

    #@18
    .line 1664
    .local v6, "restricted":Z
    :goto_0
    new-instance v0, Landroid/app/ContextImpl;

    #@1a
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1c
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@1e
    .line 1665
    new-instance v5, Landroid/os/UserHandle;

    #@20
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@22
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@25
    move-result v1

    #@26
    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@29
    .line 1666
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@2b
    const/4 v9, -0x1

    #@2c
    move-object v1, p0

    #@2d
    .line 1664
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@30
    .line 1667
    .local v0, "c":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 1668
    return-object v0

    #@35
    .line 1663
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v6    # "restricted":Z
    :cond_0
    const/4 v6, 0x0

    #@36
    .restart local v6    # "restricted":Z
    goto :goto_0

    #@37
    .line 1672
    .end local v6    # "restricted":Z
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@39
    .line 1673
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Application package "

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@47
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    const-string/jumbo v4, " not found"

    #@4e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 1672
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@59
    throw v1
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 10
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1709
    if-nez p1, :cond_0

    #@2
    .line 1710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "overrideConfiguration must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1713
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@d
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@11
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@13
    .line 1714
    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@15
    iget-boolean v6, p0, Landroid/app/ContextImpl;->mRestricted:Z

    #@17
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@19
    const/4 v9, -0x1

    #@1a
    move-object v1, p0

    #@1b
    move-object v8, p1

    #@1c
    .line 1713
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@1f
    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 10
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1719
    if-nez p1, :cond_0

    #@3
    .line 1720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "display must not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1723
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@e
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@10
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@12
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@14
    .line 1724
    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@16
    iget-boolean v6, p0, Landroid/app/ContextImpl;->mRestricted:Z

    #@18
    const/4 v9, -0x1

    #@19
    move-object v1, p0

    #@1a
    move-object v7, p1

    #@1b
    .line 1723
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@1e
    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1680
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@6
    .line 1679
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1680
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1686
    and-int/lit8 v1, p2, 0x4

    #@4
    const/4 v2, 0x4

    #@5
    if-ne v1, v2, :cond_1

    #@7
    const/4 v6, 0x1

    #@8
    .line 1687
    .local v6, "restricted":Z
    :goto_0
    const-string/jumbo v1, "system"

    #@b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    const-string/jumbo v1, "android"

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1688
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@1c
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1e
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@20
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@22
    .line 1689
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@24
    move-object v1, p0

    #@25
    move-object v5, p3

    #@26
    .line 1688
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@29
    return-object v0

    #@2a
    .line 1686
    .end local v6    # "restricted":Z
    :cond_1
    const/4 v6, 0x0

    #@2b
    .restart local v6    # "restricted":Z
    goto :goto_0

    #@2c
    .line 1692
    :cond_2
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@2e
    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@30
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@33
    move-result-object v2

    #@34
    .line 1693
    const/high16 v4, 0x40000000    # 2.0f

    #@36
    or-int/2addr v4, p2

    #@37
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@3a
    move-result v5

    #@3b
    .line 1692
    invoke-virtual {v1, p1, v2, v4, v5}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    #@3e
    move-result-object v3

    #@3f
    .line 1694
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_3

    #@41
    .line 1695
    new-instance v0, Landroid/app/ContextImpl;

    #@43
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@45
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@47
    .line 1696
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@49
    move-object v1, p0

    #@4a
    move-object v5, p3

    #@4b
    .line 1695
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ZLandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@4e
    .line 1697
    .local v0, "c":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@50
    if-eqz v1, :cond_3

    #@52
    .line 1698
    return-object v0

    #@53
    .line 1703
    .end local v0    # "c":Landroid/app/ContextImpl;
    :cond_3
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@55
    .line 1704
    new-instance v2, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "Application package "

    #@5d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    const-string/jumbo v4, " not found"

    #@68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .line 1703
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@73
    throw v1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 593
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 594
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "list":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@d
    goto :goto_0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 579
    const/4 v2, 0x0

    #@2
    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 580
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 581
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@c
    .line 583
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 413
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@3
    move-result v2

    #@4
    .line 1473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1472
    const/4 v3, 0x1

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v5, p2

    #@c
    .line 1470
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    #@f
    .line 1469
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1627
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@3
    move-result v2

    #@4
    .line 1628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1627
    const/4 v3, 0x1

    #@9
    move-object v0, p0

    #@a
    move v1, p2

    #@b
    move-object v5, p1

    #@c
    move-object v6, p3

    #@d
    .line 1625
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@10
    .line 1624
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1461
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    #@3
    move-result v2

    #@4
    .line 1463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1462
    const/4 v3, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v5, p2

    #@c
    .line 1460
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    #@f
    .line 1459
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1617
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    #@3
    move-result v2

    #@4
    .line 1619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1618
    const/4 v3, 0x0

    #@9
    move-object v0, p0

    #@a
    move v1, p2

    #@b
    move-object v5, p1

    #@c
    move-object v6, p3

    #@d
    .line 1616
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@10
    .line 1615
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1452
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@3
    move-result v2

    #@4
    .line 1453
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v4, p3

    #@8
    move-object v5, p4

    #@9
    .line 1451
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    #@c
    .line 1450
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1609
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    #@3
    move-result v2

    #@4
    .line 1610
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p4

    #@7
    move v4, p3

    #@8
    move-object v5, p1

    #@9
    move-object v6, p5

    #@a
    .line 1608
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@d
    .line 1607
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1636
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    #@3
    move-result v2

    #@4
    .line 1639
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p6

    #@7
    move v4, p5

    #@8
    move-object v5, p1

    #@9
    move-object v6, p7

    #@a
    .line 1635
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@d
    .line 1634
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 555
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "list":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/app/ContextImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@d
    goto :goto_0
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 1895
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 235
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    #@9
    move-result-object v0

    #@a
    .line 234
    :goto_0
    return-object v0

    #@b
    .line 235
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@d
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 302
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 304
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "Not supported in system context"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 499
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 501
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "cache"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    #@15
    .line 503
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->createFilesDirLocked(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 499
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 274
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 273
    :goto_0
    return-object v0

    #@b
    .line 274
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 509
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 510
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 511
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "code_cache"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    #@15
    .line 513
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->createFilesDirLocked(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 509
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    #@2
    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 588
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1758
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "app_"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    .line 1759
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@1b
    move-result-object v0

    #@1c
    .line 1760
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 1761
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@25
    .line 1762
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 1763
    const/16 v2, 0x1f9

    #@2b
    .line 1762
    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    #@2e
    .line 1765
    :cond_0
    return-object v0
.end method

.method getDisplay()Landroid/view/Display;
    .locals 3

    #@0
    .prologue
    .line 1728
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1729
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@6
    return-object v0

    #@7
    .line 1731
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@a
    move-result-object v0

    #@b
    .line 1732
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@d
    const/4 v2, 0x0

    #@e
    .line 1731
    invoke-virtual {v0, v2, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1746
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 525
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 526
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 527
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    #@11
    .line 531
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    #@13
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 525
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 458
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 463
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 465
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    #@11
    .line 469
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    #@13
    .line 470
    .local v0, "dirs":[Ljava/io/File;
    if-eqz p1, :cond_1

    #@15
    .line 471
    const/4 v1, 0x1

    #@16
    new-array v1, v1, [Ljava/lang/String;

    #@18
    const/4 v3, 0x0

    #@19
    aput-object p1, v1, v3

    #@1b
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@1e
    move-result-object v0

    #@1f
    .line 475
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v1

    #@23
    monitor-exit v2

    #@24
    return-object v1

    #@25
    .line 463
    .end local v0    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 537
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 538
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalMediaDirs:[Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 539
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalMediaDirs:[Ljava/io/File;

    #@11
    .line 543
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalMediaDirs:[Ljava/io/File;

    #@13
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 537
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 437
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 439
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "files"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    #@15
    .line 441
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->createFilesDirLocked(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 437
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 447
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 448
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 449
    new-instance v0, Ljava/io/File;

    #@9
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "no_backup"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    #@15
    .line 451
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->createFilesDirLocked(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 447
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 489
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    #@11
    .line 493
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    #@13
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 487
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method final getOuterContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 1891
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 318
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 320
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "Not supported in system context"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 209
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 210
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    return-object v1

    #@8
    .line 213
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@b
    move-result-object v0

    #@c
    .line 214
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_1

    #@e
    .line 216
    new-instance v1, Landroid/app/ApplicationPackageManager;

    #@10
    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    #@13
    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    #@15
    return-object v1

    #@16
    .line 219
    :cond_1
    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 280
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 284
    :cond_0
    const-string/jumbo v0, "android"

    #@e
    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 310
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 312
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v1, "Not supported in system context"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .locals 2

    #@0
    .prologue
    .line 1880
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1881
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@6
    return-object v0

    #@7
    .line 1883
    :cond_0
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    #@9
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    #@10
    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@12
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 331
    const-class v5, Landroid/app/ContextImpl;

    #@2
    monitor-enter v5

    #@3
    .line 332
    :try_start_0
    sget-object v4, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 333
    new-instance v4, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@c
    sput-object v4, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    #@e
    .line 336
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 337
    .local v0, "packageName":Ljava/lang/String;
    sget-object v4, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/util/ArrayMap;

    #@1a
    .line 338
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_1

    #@1c
    .line 339
    new-instance v1, Landroid/util/ArrayMap;

    #@1e
    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@21
    .line 340
    .restart local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    sget-object v4, Landroid/app/ContextImpl;->sSharedPrefs:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 346
    :cond_1
    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@28
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2b
    move-result-object v4

    #@2c
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2e
    .line 347
    const/16 v6, 0x13

    #@30
    .line 346
    if-ge v4, v6, :cond_2

    #@32
    .line 348
    if-nez p1, :cond_2

    #@34
    .line 349
    const-string/jumbo p1, "null"

    #@37
    .line 353
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroid/app/SharedPreferencesImpl;

    #@3d
    .line 354
    .local v3, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v3, :cond_3

    #@3f
    .line 355
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    #@42
    move-result-object v2

    #@43
    .line 356
    .local v2, "prefsFile":Ljava/io/File;
    new-instance v3, Landroid/app/SharedPreferencesImpl;

    #@45
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-direct {v3, v2, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    #@48
    .line 357
    .restart local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit v5

    #@4c
    .line 358
    return-object v3

    #@4d
    .end local v2    # "prefsFile":Ljava/io/File;
    :cond_3
    monitor-exit v5

    #@4e
    .line 361
    and-int/lit8 v4, p2, 0x4

    #@50
    if-nez v4, :cond_4

    #@52
    .line 362
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@55
    move-result-object v4

    #@56
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@58
    const/16 v5, 0xb

    #@5a
    if-ge v4, v5, :cond_5

    #@5c
    .line 366
    :cond_4
    invoke-virtual {v3}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    #@5f
    .line 368
    :cond_5
    return-object v3

    #@60
    .line 331
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "sp":Landroid/app/SharedPreferencesImpl;
    :catchall_0
    move-exception v4

    #@61
    monitor-exit v5

    #@62
    throw v4
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ".xml"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1365
    invoke-static {p0, p1}, Landroid/app/SystemServiceRegistry;->getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1370
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@6
    return-object v0

    #@7
    .line 257
    :cond_0
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@9
    .line 258
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v1

    #@11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@13
    .line 257
    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@19
    .line 259
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    #@1c
    .line 261
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@1e
    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    #@0
    .prologue
    .line 248
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@2
    return v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 1771
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 613
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 631
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 625
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 7
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    #@0
    .prologue
    .line 1480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1481
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@6
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@9
    move-result-object v1

    #@a
    .line 1482
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v3

    #@e
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v5

    #@12
    move-object v2, p1

    #@13
    move v4, p3

    #@14
    .line 1480
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1478
    :goto_0
    return-void

    #@18
    .line 1483
    :catch_0
    move-exception v6

    #@19
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1867
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    #@5
    .line 1866
    return-void
.end method

.method public isRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 1741
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    #@2
    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 384
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    #@a
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@d
    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 390
    const v5, 0x8000

    #@5
    and-int/2addr v5, p2

    #@6
    if-eqz v5, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 391
    .local v0, "append":Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@c
    move-result-object v5

    #@d
    invoke-direct {p0, v5, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@10
    move-result-object v2

    #@11
    .line 393
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    #@13
    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@16
    .line 394
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    const/4 v6, 0x0

    #@1b
    invoke-static {v5, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 395
    return-object v3

    #@1f
    .line 390
    .end local v0    # "append":Z
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v0, 0x0

    #@20
    .restart local v0    # "append":Z
    goto :goto_0

    #@21
    .line 396
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    #@22
    .line 399
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@25
    move-result-object v4

    #@26
    .line 400
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    #@29
    .line 402
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 403
    const/16 v6, 0x1f9

    #@2f
    .line 401
    invoke-static {v5, v6, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@32
    .line 405
    new-instance v3, Ljava/io/FileOutputStream;

    #@34
    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@37
    .line 406
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-static {v5, p2, v7}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    #@3e
    .line 407
    return-object v3
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 560
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 566
    const/4 v3, 0x1

    #@2
    invoke-direct {p0, p1, v3}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 567
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    #@8
    .line 568
    .local v2, "flags":I
    and-int/lit8 v3, p2, 0x8

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 569
    const/high16 v2, 0x30000000

    #@e
    .line 571
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@15
    move-result-object v0

    #@16
    .line 572
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    #@1d
    .line 573
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 619
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1876
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1874
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1146
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1152
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    #@3
    move-result v2

    #@4
    .line 1153
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@7
    move-result-object v6

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p3

    #@c
    move-object v5, p4

    #@d
    .line 1152
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1159
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v2

    #@4
    .line 1160
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@7
    move-result-object v6

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    .line 1159
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1065
    .local v2, "resolvedType":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    .line 1066
    new-instance v1, Landroid/content/Intent;

    #@c
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f
    .line 1067
    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    move-object p1, v1

    #@17
    .line 1070
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@1a
    .line 1071
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1d
    move-result-object v3

    #@1e
    .line 1072
    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@20
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    #@27
    move-result v5

    #@28
    .line 1071
    invoke-interface {v3, v4, p1, v5}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1063
    return-void

    #@2c
    .line 1073
    :catch_0
    move-exception v0

    #@2d
    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v4, "Failure from system"

    #@32
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v3
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1130
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1131
    .local v2, "resolvedType":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    .line 1132
    new-instance v1, Landroid/content/Intent;

    #@c
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f
    .line 1133
    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@16
    move-object p1, v1

    #@17
    .line 1136
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@1a
    .line 1137
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1d
    move-result-object v3

    #@1e
    .line 1138
    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@20
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@27
    move-result v5

    #@28
    .line 1137
    invoke-interface {v3, v4, p1, v5}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1129
    return-void

    #@2c
    .line 1139
    :catch_0
    move-exception v0

    #@2d
    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v4, "Failure from system"

    #@32
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v3
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1490
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1491
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@6
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@9
    move-result-object v2

    #@a
    .line 1492
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v3

    #@e
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v4

    #@12
    .line 1490
    invoke-interface {v1, v2, v3, p2, v4}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1488
    :goto_0
    return-void

    #@16
    .line 1493
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1871
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1870
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 763
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 766
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@10
    .line 767
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@13
    move-result-object v1

    #@14
    .line 768
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1b
    move-result-object v2

    #@1c
    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@1f
    move-result v14

    #@20
    .line 768
    const/4 v5, 0x0

    #@21
    .line 769
    const/4 v6, -0x1

    #@22
    const/4 v7, 0x0

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v9, 0x0

    #@25
    const/4 v10, -0x1

    #@26
    const/4 v11, 0x0

    #@27
    const/4 v12, 0x0

    #@28
    const/4 v13, 0x0

    #@29
    move-object/from16 v3, p1

    #@2b
    .line 767
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 762
    return-void

    #@2f
    .line 771
    :catch_0
    move-exception v15

    #@30
    .line 772
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@32
    const-string/jumbo v2, "Failure from system"

    #@35
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 778
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 780
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v9, 0x0

    #@10
    .line 783
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 784
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 785
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1e
    move-result-object v2

    #@1f
    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@22
    move-result v14

    #@23
    .line 785
    const/4 v5, 0x0

    #@24
    .line 786
    const/4 v6, -0x1

    #@25
    const/4 v7, 0x0

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v10, -0x1

    #@28
    .line 787
    const/4 v11, 0x0

    #@29
    const/4 v12, 0x0

    #@2a
    const/4 v13, 0x0

    #@2b
    move-object/from16 v3, p1

    #@2d
    .line 784
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 777
    return-void

    #@31
    .line 781
    :cond_0
    const/4 v1, 0x1

    #@32
    new-array v9, v1, [Ljava/lang/String;

    #@34
    const/4 v1, 0x0

    #@35
    aput-object p2, v9, v1

    #@37
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@38
    .line 788
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@39
    .line 789
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v2, "Failure from system"

    #@3e
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    #@0
    .prologue
    .line 827
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 828
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 829
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v9, 0x0

    #@10
    .line 832
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 833
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 834
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1e
    move-result-object v2

    #@1f
    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@22
    move-result v14

    #@23
    .line 834
    const/4 v5, 0x0

    #@24
    .line 835
    const/4 v6, -0x1

    #@25
    const/4 v7, 0x0

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v11, 0x0

    #@28
    const/4 v12, 0x0

    #@29
    const/4 v13, 0x0

    #@2a
    move-object/from16 v3, p1

    #@2c
    move/from16 v10, p3

    #@2e
    .line 833
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 826
    return-void

    #@32
    .line 830
    :cond_0
    const/4 v1, 0x1

    #@33
    new-array v9, v1, [Ljava/lang/String;

    #@35
    const/4 v1, 0x0

    #@36
    aput-object p2, v9, v1

    #@38
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@39
    .line 837
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@3a
    .line 838
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@3c
    const-string/jumbo v2, "Failure from system"

    #@3f
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v1
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 810
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 811
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 812
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v9, 0x0

    #@10
    .line 815
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 816
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 817
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1e
    move-result-object v2

    #@1f
    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@22
    move-result v14

    #@23
    .line 817
    const/4 v5, 0x0

    #@24
    .line 818
    const/4 v6, -0x1

    #@25
    const/4 v7, 0x0

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v10, -0x1

    #@28
    .line 819
    const/4 v12, 0x0

    #@29
    const/4 v13, 0x0

    #@2a
    move-object/from16 v3, p1

    #@2c
    move-object/from16 v11, p3

    #@2e
    .line 816
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 809
    return-void

    #@32
    .line 813
    :cond_0
    const/4 v1, 0x1

    #@33
    new-array v9, v1, [Ljava/lang/String;

    #@35
    const/4 v1, 0x0

    #@36
    aput-object p2, v9, v1

    #@38
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@39
    .line 820
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@3a
    .line 821
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@3c
    const-string/jumbo v2, "Failure from system"

    #@3f
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v1
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 924
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 926
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@d
    .line 927
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@10
    move-result-object v1

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@15
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@18
    move-result-object v2

    #@19
    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1c
    move-result v14

    #@1d
    .line 928
    const/4 v5, 0x0

    #@1e
    const/4 v6, -0x1

    #@1f
    const/4 v7, 0x0

    #@20
    const/4 v8, 0x0

    #@21
    const/4 v9, 0x0

    #@22
    .line 929
    const/4 v10, -0x1

    #@23
    const/4 v11, 0x0

    #@24
    const/4 v12, 0x0

    #@25
    const/4 v13, 0x0

    #@26
    move-object/from16 v3, p1

    #@28
    .line 927
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 923
    return-void

    #@2c
    .line 930
    :catch_0
    move-exception v15

    #@2d
    .line 931
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v2, "Failure from system"

    #@32
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v1
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 938
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    #@4
    .line 937
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    #@0
    .prologue
    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 945
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_0

    #@c
    const/4 v9, 0x0

    #@d
    .line 948
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@10
    .line 949
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@13
    move-result-object v1

    #@14
    .line 950
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1b
    move-result-object v2

    #@1c
    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1f
    move-result v14

    #@20
    .line 950
    const/4 v5, 0x0

    #@21
    .line 951
    const/4 v6, -0x1

    #@22
    const/4 v7, 0x0

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v11, 0x0

    #@25
    const/4 v12, 0x0

    #@26
    const/4 v13, 0x0

    #@27
    move-object/from16 v3, p1

    #@29
    move/from16 v10, p4

    #@2b
    .line 949
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 943
    return-void

    #@2f
    .line 946
    :cond_0
    const/4 v1, 0x1

    #@30
    new-array v9, v1, [Ljava/lang/String;

    #@32
    const/4 v1, 0x0

    #@33
    aput-object p3, v9, v1

    #@35
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@36
    .line 953
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@37
    .line 954
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@39
    const-string/jumbo v2, "Failure from system"

    #@3c
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v1
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 795
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 796
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 798
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@10
    .line 799
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@13
    move-result-object v1

    #@14
    .line 800
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1b
    move-result-object v2

    #@1c
    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@1f
    move-result v14

    #@20
    .line 800
    const/4 v5, 0x0

    #@21
    .line 801
    const/4 v6, -0x1

    #@22
    const/4 v7, 0x0

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v10, -0x1

    #@25
    .line 802
    const/4 v11, 0x0

    #@26
    const/4 v12, 0x0

    #@27
    const/4 v13, 0x0

    #@28
    move-object/from16 v3, p1

    #@2a
    move-object/from16 v9, p2

    #@2c
    .line 799
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 794
    return-void

    #@30
    .line 803
    :catch_0
    move-exception v15

    #@31
    .line 804
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@33
    const-string/jumbo v2, "Failure from system"

    #@36
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v1
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 844
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 845
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 846
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v9, 0x0

    #@10
    .line 849
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@13
    .line 850
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 851
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1e
    move-result-object v2

    #@1f
    .line 853
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@22
    move-result v14

    #@23
    .line 851
    const/4 v5, 0x0

    #@24
    .line 852
    const/4 v6, -0x1

    #@25
    const/4 v7, 0x0

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v10, -0x1

    #@28
    .line 853
    const/4 v11, 0x0

    #@29
    const/4 v12, 0x1

    #@2a
    const/4 v13, 0x0

    #@2b
    move-object/from16 v3, p1

    #@2d
    .line 850
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 843
    return-void

    #@31
    .line 847
    :cond_0
    const/4 v1, 0x1

    #@32
    new-array v9, v1, [Ljava/lang/String;

    #@34
    const/4 v1, 0x0

    #@35
    aput-object p2, v9, v1

    #@37
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@38
    .line 854
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@39
    .line 855
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v2, "Failure from system"

    #@3e
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v1
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 883
    const/4 v9, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move/from16 v6, p6

    #@9
    move-object/from16 v7, p7

    #@b
    move-object/from16 v8, p8

    #@d
    .line 882
    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@10
    .line 881
    return-void
.end method

.method sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 890
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 891
    const/4 v5, 0x0

    #@4
    .line 892
    .local v5, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_1

    #@6
    .line 893
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 894
    if-nez p5, :cond_0

    #@e
    .line 895
    move-object/from16 v0, p0

    #@10
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@12
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object p5

    #@16
    .line 897
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@1a
    .line 898
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1d
    move-result-object v3

    #@1e
    .line 899
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@22
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@25
    move-result-object v5

    #@26
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    const/4 v6, 0x0

    #@27
    move-object/from16 v2, p4

    #@29
    move-object/from16 v4, p5

    #@2b
    .line 897
    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2e
    move-result-object v5

    #@2f
    .line 908
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v1

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 909
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_4

    #@3b
    const/4 v9, 0x0

    #@3c
    .line 912
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@3f
    .line 913
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@42
    move-result-object v1

    #@43
    .line 914
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@47
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@4a
    move-result-object v2

    #@4b
    .line 916
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@4e
    move-result v14

    #@4f
    const/4 v12, 0x1

    #@50
    const/4 v13, 0x0

    #@51
    move-object/from16 v3, p1

    #@53
    move/from16 v6, p6

    #@55
    move-object/from16 v7, p7

    #@57
    move-object/from16 v8, p8

    #@59
    move/from16 v10, p3

    #@5b
    move-object/from16 v11, p9

    #@5d
    .line 913
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 889
    return-void

    #@61
    .line 901
    .end local v4    # "resolvedType":Ljava/lang/String;
    .restart local v5    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p5, :cond_3

    #@63
    .line 902
    move-object/from16 v0, p0

    #@65
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@67
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@6a
    move-result-object p5

    #@6b
    .line 904
    :cond_3
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@6d
    .line 905
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@70
    move-result-object v3

    #@71
    const/4 v5, 0x0

    #@72
    const/4 v6, 0x0

    #@73
    move-object/from16 v2, p4

    #@75
    move-object/from16 v4, p5

    #@77
    .line 904
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@7a
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@7d
    move-result-object v5

    #@7e
    .local v5, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@7f
    .line 910
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    #@80
    new-array v9, v1, [Ljava/lang/String;

    #@82
    const/4 v1, 0x0

    #@83
    aput-object p2, v9, v1

    #@85
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_1

    #@86
    .line 917
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@87
    .line 918
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@89
    const-string/jumbo v2, "Failure from system"

    #@8c
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8f
    throw v1
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 864
    const/4 v3, -0x1

    #@1
    .line 865
    const/4 v9, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move-object/from16 v8, p7

    #@c
    .line 864
    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@f
    .line 863
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 873
    const/4 v3, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p4

    #@5
    move-object v5, p5

    #@6
    move/from16 v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    move-object/from16 v8, p8

    #@c
    move-object v9, p3

    #@d
    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@10
    .line 872
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 971
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object/from16 v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move/from16 v8, p7

    #@c
    move-object/from16 v9, p8

    #@e
    move-object/from16 v10, p9

    #@10
    .line 970
    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@13
    .line 969
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 16
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

    #@0
    .prologue
    .line 978
    const/4 v5, 0x0

    #@1
    .line 979
    .local v5, "rd":Landroid/content/IIntentReceiver;
    if-eqz p6, :cond_1

    #@3
    .line 980
    move-object/from16 v0, p0

    #@5
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 981
    if-nez p7, :cond_0

    #@b
    .line 982
    move-object/from16 v0, p0

    #@d
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object p7

    #@13
    .line 984
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@17
    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    .line 986
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@22
    move-result-object v5

    #@23
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    const/4 v6, 0x0

    #@24
    move-object/from16 v2, p6

    #@26
    move-object/from16 v4, p7

    #@28
    .line 984
    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2b
    move-result-object v5

    #@2c
    .line 995
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v1

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 996
    .local v4, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_4

    #@38
    const/4 v9, 0x0

    #@39
    .line 999
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@3c
    .line 1000
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3f
    move-result-object v1

    #@40
    .line 1001
    move-object/from16 v0, p0

    #@42
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@44
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@47
    move-result-object v2

    #@48
    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@4b
    move-result v14

    #@4c
    const/4 v12, 0x1

    #@4d
    const/4 v13, 0x0

    #@4e
    move-object/from16 v3, p1

    #@50
    move/from16 v6, p8

    #@52
    move-object/from16 v7, p9

    #@54
    move-object/from16 v8, p10

    #@56
    move/from16 v10, p4

    #@58
    move-object/from16 v11, p5

    #@5a
    .line 1000
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 977
    return-void

    #@5e
    .line 988
    .end local v4    # "resolvedType":Ljava/lang/String;
    .restart local v5    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p7, :cond_3

    #@60
    .line 989
    move-object/from16 v0, p0

    #@62
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@64
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@67
    move-result-object p7

    #@68
    .line 991
    :cond_3
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@6a
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@6d
    move-result-object v3

    #@6e
    .line 992
    const/4 v5, 0x0

    #@6f
    const/4 v6, 0x0

    #@70
    move-object/from16 v2, p6

    #@72
    move-object/from16 v4, p7

    #@74
    .line 991
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@77
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@7a
    move-result-object v5

    #@7b
    .local v5, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@7c
    .line 997
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    #@7d
    new-array v9, v1, [Ljava/lang/String;

    #@7f
    const/4 v1, 0x0

    #@80
    aput-object p3, v9, v1

    #@82
    .local v9, "receiverPermissions":[Ljava/lang/String;
    goto :goto_1

    #@83
    .line 1004
    .end local v9    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v15

    #@84
    .line 1005
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@86
    const-string/jumbo v2, "Failure from system"

    #@89
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8c
    throw v1
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 962
    const/4 v4, -0x1

    #@1
    .line 963
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v6, p4

    #@7
    move-object/from16 v7, p5

    #@9
    move/from16 v8, p6

    #@b
    move-object/from16 v9, p7

    #@d
    move-object/from16 v10, p8

    #@f
    .line 962
    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@12
    .line 961
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1012
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1015
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@10
    .line 1016
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@13
    move-result-object v1

    #@14
    .line 1017
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1b
    move-result-object v2

    #@1c
    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@1f
    move-result v14

    #@20
    .line 1017
    const/4 v5, 0x0

    #@21
    .line 1018
    const/4 v6, -0x1

    #@22
    const/4 v7, 0x0

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v9, 0x0

    #@25
    const/4 v10, -0x1

    #@26
    const/4 v11, 0x0

    #@27
    const/4 v12, 0x0

    #@28
    const/4 v13, 0x1

    #@29
    move-object/from16 v3, p1

    #@2b
    .line 1016
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 1011
    return-void

    #@2f
    .line 1020
    :catch_0
    move-exception v15

    #@30
    .line 1021
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@32
    const-string/jumbo v2, "Failure from system"

    #@35
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v1
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 1083
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@d
    .line 1084
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@10
    move-result-object v1

    #@11
    .line 1085
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@15
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@18
    move-result-object v2

    #@19
    .line 1086
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1c
    move-result v14

    #@1d
    .line 1085
    const/4 v5, 0x0

    #@1e
    .line 1086
    const/4 v6, -0x1

    #@1f
    const/4 v7, 0x0

    #@20
    const/4 v8, 0x0

    #@21
    const/4 v9, 0x0

    #@22
    const/4 v10, -0x1

    #@23
    const/4 v11, 0x0

    #@24
    const/4 v12, 0x0

    #@25
    const/4 v13, 0x1

    #@26
    move-object/from16 v3, p1

    #@28
    .line 1084
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1080
    return-void

    #@2c
    .line 1087
    :catch_0
    move-exception v15

    #@2d
    .line 1088
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v2, "Failure from system"

    #@32
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v1
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1031
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1032
    const/4 v5, 0x0

    #@4
    .line 1033
    .local v5, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_1

    #@6
    .line 1034
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 1035
    if-nez p3, :cond_0

    #@e
    .line 1036
    move-object/from16 v0, p0

    #@10
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@12
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object p3

    #@16
    .line 1038
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@1a
    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1d
    move-result-object v3

    #@1e
    .line 1040
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@22
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@25
    move-result-object v5

    #@26
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    const/4 v6, 0x0

    #@27
    move-object/from16 v2, p2

    #@29
    move-object/from16 v4, p3

    #@2b
    .line 1038
    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2e
    move-result-object v5

    #@2f
    .line 1049
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v1

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 1051
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@3c
    .line 1052
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3f
    move-result-object v1

    #@40
    .line 1053
    move-object/from16 v0, p0

    #@42
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@44
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@47
    move-result-object v2

    #@48
    .line 1055
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@4b
    move-result v14

    #@4c
    .line 1054
    const/4 v9, 0x0

    #@4d
    .line 1055
    const/4 v10, -0x1

    #@4e
    const/4 v11, 0x0

    #@4f
    const/4 v12, 0x1

    #@50
    const/4 v13, 0x1

    #@51
    move-object/from16 v3, p1

    #@53
    move/from16 v6, p4

    #@55
    move-object/from16 v7, p5

    #@57
    move-object/from16 v8, p6

    #@59
    .line 1052
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 1030
    return-void

    #@5d
    .line 1042
    .end local v4    # "resolvedType":Ljava/lang/String;
    .restart local v5    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p3, :cond_3

    #@5f
    .line 1043
    move-object/from16 v0, p0

    #@61
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@63
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@66
    move-result-object p3

    #@67
    .line 1045
    :cond_3
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@69
    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@6c
    move-result-object v3

    #@6d
    const/4 v5, 0x0

    #@6e
    const/4 v6, 0x0

    #@6f
    move-object/from16 v2, p2

    #@71
    move-object/from16 v4, p3

    #@73
    .line 1045
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@76
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@79
    move-result-object v5

    #@7a
    .local v5, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@7b
    .line 1056
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v15

    #@7c
    .line 1057
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@7e
    const-string/jumbo v2, "Failure from system"

    #@81
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@84
    throw v1
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1098
    const/4 v5, 0x0

    #@1
    .line 1099
    .local v5, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_1

    #@3
    .line 1100
    move-object/from16 v0, p0

    #@5
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1101
    if-nez p4, :cond_0

    #@b
    .line 1102
    move-object/from16 v0, p0

    #@d
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object p4

    #@13
    .line 1104
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@17
    .line 1105
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    .line 1106
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@22
    move-result-object v5

    #@23
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    const/4 v6, 0x0

    #@24
    move-object/from16 v2, p3

    #@26
    move-object/from16 v4, p4

    #@28
    .line 1104
    invoke-virtual/range {v1 .. v6}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2b
    move-result-object v5

    #@2c
    .line 1115
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v1

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 1117
    .local v4, "resolvedType":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@39
    .line 1118
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3c
    move-result-object v1

    #@3d
    .line 1119
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@41
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@44
    move-result-object v2

    #@45
    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@48
    move-result v14

    #@49
    .line 1120
    const/4 v9, 0x0

    #@4a
    .line 1121
    const/4 v10, -0x1

    #@4b
    const/4 v11, 0x0

    #@4c
    const/4 v12, 0x1

    #@4d
    const/4 v13, 0x1

    #@4e
    move-object/from16 v3, p1

    #@50
    move/from16 v6, p5

    #@52
    move-object/from16 v7, p6

    #@54
    move-object/from16 v8, p7

    #@56
    .line 1118
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 1097
    return-void

    #@5a
    .line 1108
    .end local v4    # "resolvedType":Ljava/lang/String;
    .restart local v5    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p4, :cond_3

    #@5c
    .line 1109
    move-object/from16 v0, p0

    #@5e
    iget-object v1, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@60
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@63
    move-result-object p4

    #@64
    .line 1111
    :cond_3
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@66
    .line 1112
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@69
    move-result-object v3

    #@6a
    const/4 v5, 0x0

    #@6b
    const/4 v6, 0x0

    #@6c
    move-object/from16 v2, p3

    #@6e
    move-object/from16 v4, p4

    #@70
    .line 1111
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@73
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@76
    move-result-object v5

    #@77
    .local v5, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@78
    .line 1122
    .end local v5    # "rd":Landroid/content/IIntentReceiver;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v15

    #@79
    .line 1123
    .local v15, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@7b
    const-string/jumbo v2, "Failure from system"

    #@7e
    invoke-direct {v1, v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@81
    throw v1
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1887
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    #@2
    .line 1886
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 240
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 241
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@6
    .line 242
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    #@9
    .line 239
    :cond_0
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 637
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    #@7
    .line 636
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 643
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    #@7
    .line 642
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 698
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 699
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    #@7
    .line 697
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 718
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@5
    .line 719
    aget-object v0, p1, v0

    #@7
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@a
    move-result v0

    #@b
    const/high16 v1, 0x10000000

    #@d
    and-int/2addr v0, v1

    #@e
    if-nez v0, :cond_0

    #@10
    .line 720
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@12
    .line 721
    const-string/jumbo v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    #@15
    .line 720
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 725
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@1e
    move-result-object v0

    #@1f
    .line 726
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@25
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@28
    move-result-object v2

    #@29
    move-object v4, v3

    #@2a
    .line 727
    check-cast v4, Landroid/app/Activity;

    #@2c
    move-object v5, p1

    #@2d
    move-object v6, p2

    #@2e
    .line 725
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@31
    .line 717
    return-void
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 705
    aget-object v0, p1, v0

    #@4
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@7
    move-result v0

    #@8
    const/high16 v1, 0x10000000

    #@a
    and-int/2addr v0, v1

    #@b
    if-nez v0, :cond_0

    #@d
    .line 706
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@f
    .line 707
    const-string/jumbo v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    #@12
    .line 706
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 711
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@1b
    move-result-object v0

    #@1c
    .line 712
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@22
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@25
    move-result-object v2

    #@26
    move-object v4, v3

    #@27
    .line 713
    check-cast v4, Landroid/app/Activity;

    #@29
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@2c
    move-result v7

    #@2d
    move-object v5, p1

    #@2e
    move-object v6, p2

    #@2f
    .line 711
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    #@32
    .line 704
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 658
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 659
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@7
    .line 657
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 670
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@4
    .line 671
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@7
    move-result v0

    #@8
    const/high16 v1, 0x10000000

    #@a
    and-int/2addr v0, v1

    #@b
    if-nez v0, :cond_0

    #@d
    .line 672
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@f
    .line 673
    const-string/jumbo v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    #@12
    .line 672
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 677
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@1b
    move-result-object v0

    #@1c
    .line 678
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@22
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@25
    move-result-object v2

    #@26
    move-object v4, v3

    #@27
    .line 679
    check-cast v4, Landroid/app/Activity;

    #@29
    const/4 v6, -0x1

    #@2a
    move-object v5, p1

    #@2b
    move-object v7, p2

    #@2c
    .line 677
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@2f
    .line 669
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 686
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 687
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@6
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 688
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@19
    move-result v11

    #@1a
    .line 689
    const/4 v5, 0x0

    #@1b
    const/4 v6, 0x0

    #@1c
    const/4 v7, 0x0

    #@1d
    const/high16 v8, 0x10000000

    #@1f
    const/4 v9, 0x0

    #@20
    move-object v3, p1

    #@21
    move-object v10, p2

    #@22
    .line 686
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 684
    return-void

    #@26
    .line 691
    :catch_0
    move-exception v12

    #@27
    .line 692
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@29
    const-string/jumbo v1, "Failure from system"

    #@2c
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2f
    throw v0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 665
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@4
    .line 664
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1352
    if-eqz p3, :cond_0

    #@2
    .line 1353
    const/4 v0, 0x0

    #@3
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@6
    .line 1355
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v0

    #@a
    .line 1356
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    #@d
    move-result v7

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x0

    #@11
    .line 1357
    const/4 v8, 0x0

    #@12
    move-object v1, p1

    #@13
    move-object v2, p2

    #@14
    move-object v4, p3

    #@15
    .line 1355
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 1358
    :catch_0
    move-exception v9

    #@1b
    .line 1359
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v1, "Failure from system"

    #@20
    invoke-direct {v0, v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
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

    #@0
    .prologue
    .line 734
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    #@a
    .line 733
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 13
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

    #@0
    .prologue
    .line 742
    const/4 v4, 0x0

    #@1
    .line 743
    .local v4, "resolvedType":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@3
    .line 744
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@6
    .line 745
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@9
    .line 746
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 748
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@14
    move-result-object v0

    #@15
    .line 749
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1a
    move-result-object v1

    #@1b
    .line 750
    const/4 v5, 0x0

    #@1c
    const/4 v6, 0x0

    #@1d
    .line 751
    const/4 v7, 0x0

    #@1e
    move-object v2, p1

    #@1f
    move-object v3, p2

    #@20
    move/from16 v8, p3

    #@22
    move/from16 v9, p4

    #@24
    move-object/from16 v10, p6

    #@26
    .line 748
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    #@29
    move-result v12

    #@2a
    .line 752
    .local v12, "result":I
    const/4 v0, -0x6

    #@2b
    if-ne v12, v0, :cond_1

    #@2d
    .line 753
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    #@2f
    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    #@32
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 756
    .end local v12    # "result":I
    :catch_0
    move-exception v11

    #@34
    .line 757
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@36
    const-string/jumbo v1, "Failure from system"

    #@39
    invoke-direct {v0, v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    throw v0

    #@3d
    .line 755
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v12    # "result":I
    :cond_1
    const/4 v0, 0x0

    #@3e
    :try_start_1
    invoke-static {v12, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    .line 740
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1221
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1222
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@5
    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1233
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1227
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1228
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@5
    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1262
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 4
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 1333
    if-nez p1, :cond_0

    #@2
    .line 1334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "connection is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1336
    :cond_0
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1337
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@11
    .line 1338
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@14
    move-result-object v3

    #@15
    .line 1337
    invoke-virtual {v2, v3, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    #@18
    move-result-object v1

    #@19
    .line 1340
    .local v1, "sd":Landroid/app/IServiceConnection;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1332
    :goto_0
    return-void

    #@21
    .line 1344
    .end local v1    # "sd":Landroid/app/IServiceConnection;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v3, "Not supported in system context"

    #@26
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1341
    .restart local v1    # "sd":Landroid/app/IServiceConnection;
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 1194
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1195
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    .line 1196
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@9
    move-result-object v3

    #@a
    .line 1195
    invoke-virtual {v2, v3, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    #@d
    move-result-object v1

    #@e
    .line 1198
    .local v1, "rd":Landroid/content/IIntentReceiver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1193
    :goto_0
    return-void

    #@16
    .line 1202
    .end local v1    # "rd":Landroid/content/IIntentReceiver;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v3, "Not supported in system context"

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 1199
    .restart local v1    # "rd":Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v0

    #@20
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
