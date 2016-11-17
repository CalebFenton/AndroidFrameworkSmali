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

.field private static final TAG:Ljava/lang/String; = "ContextImpl"

.field private static sSharedPrefsCache:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContextImpl.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
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

.field private mDisplay:Landroid/view/Display;

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

.field private final mFlags:I

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

.field final mServiceCache:[Ljava/lang/Object;

.field private mSharedPrefsPaths:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContextImpl.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mSync:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V
    .locals 15
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "flags"    # I
    .param p7, "display"    # Landroid/view/Display;
    .param p8, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p9, "createDisplayWithId"    # I

    #@0
    .prologue
    .line 2023
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    #@3
    .line 168
    const/4 v2, 0x0

    #@4
    iput v2, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@6
    .line 169
    const/4 v2, 0x0

    #@7
    iput-object v2, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@9
    .line 171
    const/4 v2, 0x0

    #@a
    iput-object v2, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@c
    .line 173
    new-instance v2, Ljava/lang/Object;

    #@e
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@13
    .line 198
    invoke-static {}, Landroid/app/SystemServiceRegistry;->createServiceCache()[Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    #@19
    .line 2026
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    #@1b
    .line 2030
    and-int/lit8 v2, p6, 0x18

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    #@22
    move-result-object v13

    #@23
    .line 2033
    .local v13, "dataDir":Ljava/io/File;
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    #@26
    move-result-object v2

    #@27
    invoke-static {v13, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_6

    #@2d
    .line 2034
    or-int/lit8 p6, p6, 0x10

    #@2f
    .line 2040
    .end local v13    # "dataDir":Ljava/io/File;
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    #@31
    iput-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@33
    .line 2041
    move-object/from16 v0, p4

    #@35
    iput-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@37
    .line 2042
    move/from16 v0, p6

    #@39
    iput v0, p0, Landroid/app/ContextImpl;->mFlags:I

    #@3b
    .line 2044
    if-nez p5, :cond_1

    #@3d
    .line 2045
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@40
    move-result-object p5

    #@41
    .line 2047
    :cond_1
    move-object/from16 v0, p5

    #@43
    iput-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@45
    .line 2049
    move-object/from16 v0, p3

    #@47
    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@49
    .line 2050
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@4c
    move-result-object v2

    #@4d
    iput-object v2, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@4f
    .line 2052
    const/4 v2, -0x1

    #@50
    move/from16 v0, p9

    #@52
    if-eq v0, v2, :cond_7

    #@54
    .line 2053
    move/from16 v8, p9

    #@56
    .line 2056
    .local v8, "displayId":I
    :goto_1
    const/4 v10, 0x0

    #@57
    .line 2057
    .local v10, "compatInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz p1, :cond_2

    #@59
    .line 2058
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v0, v8}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@62
    move-result-object v10

    #@63
    .line 2060
    .end local v10    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :cond_2
    if-nez v10, :cond_3

    #@65
    .line 2061
    if-nez v8, :cond_9

    #@67
    .line 2062
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@6a
    move-result-object v10

    #@6b
    .line 2066
    :cond_3
    :goto_2
    move-object/from16 v0, p3

    #@6d
    move-object/from16 v1, p2

    #@6f
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    #@72
    move-result-object v14

    #@73
    .line 2067
    .local v14, "resources":Landroid/content/res/Resources;
    if-eqz v14, :cond_5

    #@75
    .line 2068
    if-nez v8, :cond_4

    #@77
    .line 2069
    if-eqz p8, :cond_a

    #@79
    .line 2073
    :cond_4
    :goto_3
    if-eqz p1, :cond_b

    #@7b
    .line 2076
    iget-object v2, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@7d
    .line 2078
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    .line 2079
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    .line 2080
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@8c
    move-result-object v3

    #@8d
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@8f
    .line 2085
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@92
    move-result-object v11

    #@93
    move-object/from16 v3, p4

    #@95
    move-object/from16 v9, p8

    #@97
    .line 2076
    invoke-virtual/range {v2 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    #@9a
    move-result-object v14

    #@9b
    .line 2102
    :cond_5
    :goto_4
    iput-object v14, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@9d
    .line 2104
    const/4 v2, -0x1

    #@9e
    move/from16 v0, p9

    #@a0
    if-ne v0, v2, :cond_c

    #@a2
    .end local p7    # "display":Landroid/view/Display;
    :goto_5
    move-object/from16 v0, p7

    #@a4
    iput-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@a6
    .line 2107
    if-eqz p1, :cond_d

    #@a8
    .line 2108
    move-object/from16 v0, p1

    #@aa
    iget-object v2, v0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@ac
    iput-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@ae
    .line 2109
    move-object/from16 v0, p1

    #@b0
    iget-object v2, v0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@b2
    iput-object v2, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@b4
    .line 2124
    :goto_6
    new-instance v2, Landroid/app/ContextImpl$ApplicationContentResolver;

    #@b6
    move-object/from16 v0, p2

    #@b8
    move-object/from16 v1, p5

    #@ba
    invoke-direct {v2, p0, v0, v1}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V

    #@bd
    iput-object v2, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    #@bf
    .line 2025
    return-void

    #@c0
    .line 2035
    .end local v8    # "displayId":I
    .end local v14    # "resources":Landroid/content/res/Resources;
    .restart local v13    # "dataDir":Ljava/io/File;
    .restart local p7    # "display":Landroid/view/Display;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    #@c3
    move-result-object v2

    #@c4
    invoke-static {v13, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_0

    #@ca
    .line 2036
    or-int/lit8 p6, p6, 0x8

    #@cc
    goto/16 :goto_0

    #@ce
    .line 2054
    .end local v13    # "dataDir":Ljava/io/File;
    :cond_7
    if-eqz p7, :cond_8

    #@d0
    invoke-virtual/range {p7 .. p7}, Landroid/view/Display;->getDisplayId()I

    #@d3
    move-result v8

    #@d4
    .restart local v8    # "displayId":I
    goto :goto_1

    #@d5
    .end local v8    # "displayId":I
    :cond_8
    const/4 v8, 0x0

    #@d6
    .restart local v8    # "displayId":I
    goto :goto_1

    #@d7
    .line 2063
    :cond_9
    sget-object v10, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@d9
    .local v10, "compatInfo":Landroid/content/res/CompatibilityInfo;
    goto :goto_2

    #@da
    .line 2070
    .end local v10    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v14    # "resources":Landroid/content/res/Resources;
    :cond_a
    if-eqz v10, :cond_5

    #@dc
    iget v2, v10, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@de
    .line 2071
    invoke-virtual {v14}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@e1
    move-result-object v3

    #@e2
    iget v3, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@e4
    .line 2070
    cmpl-float v2, v2, v3

    #@e6
    if-eqz v2, :cond_5

    #@e8
    goto :goto_3

    #@e9
    .line 2089
    :cond_b
    iget-object v2, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@eb
    .line 2091
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    #@ee
    move-result-object v4

    #@ef
    .line 2092
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    #@f2
    move-result-object v5

    #@f3
    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    #@f6
    move-result-object v6

    #@f7
    .line 2094
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@fa
    move-result-object v3

    #@fb
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@fd
    .line 2098
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@100
    move-result-object v11

    #@101
    move-object/from16 v3, p4

    #@103
    move-object/from16 v9, p8

    #@105
    .line 2089
    invoke-virtual/range {v2 .. v11}, Landroid/app/ResourcesManager;->createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    #@108
    move-result-object v14

    #@109
    goto :goto_4

    #@10a
    .line 2105
    :cond_c
    iget-object v2, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@10c
    iget-object v3, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@10e
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@111
    move-result-object v3

    #@112
    invoke-virtual {v2, v8, v3}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@115
    move-result-object p7

    #@116
    goto :goto_5

    #@117
    .line 2111
    .end local p7    # "display":Landroid/view/Display;
    :cond_d
    move-object/from16 v0, p3

    #@119
    iget-object v2, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@11b
    iput-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@11d
    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@120
    move-result-object v12

    #@121
    .line 2113
    .local v12, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    #@123
    const/16 v3, 0x3e8

    #@125
    if-ne v2, v3, :cond_e

    #@127
    iget v2, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    #@129
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12c
    move-result v3

    #@12d
    if-eq v2, v3, :cond_e

    #@12f
    .line 2118
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@132
    move-result-object v2

    #@133
    iput-object v2, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@135
    goto/16 :goto_6

    #@137
    .line 2120
    :cond_e
    iget-object v2, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    #@139
    iput-object v2, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    #@13b
    goto/16 :goto_6
.end method

.method private bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .locals 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1474
    if-nez p2, :cond_0

    #@2
    .line 1475
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "connection is null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 1477
    :cond_0
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 1478
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@11
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@14
    move-result-object v4

    #@15
    move-object/from16 v0, p2

    #@17
    move-object/from16 v1, p4

    #@19
    move/from16 v2, p3

    #@1b
    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    #@1e
    move-result-object v8

    #@1f
    .line 1482
    .local v8, "sd":Landroid/app/IServiceConnection;
    invoke-direct/range {p0 .. p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    #@22
    .line 1484
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    #@25
    move-result-object v14

    #@26
    .line 1485
    .local v14, "token":Landroid/os/IBinder;
    if-nez v14, :cond_1

    #@28
    and-int/lit8 v3, p3, 0x1

    #@2a
    if-nez v3, :cond_1

    #@2c
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 1486
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@32
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@35
    move-result-object v3

    #@36
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@38
    .line 1487
    const/16 v4, 0xe

    #@3a
    .line 1486
    if-ge v3, v4, :cond_1

    #@3c
    .line 1488
    or-int/lit8 p3, p3, 0x20

    #@3e
    .line 1490
    :cond_1
    move-object/from16 v0, p1

    #@40
    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@43
    .line 1491
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@46
    move-result-object v3

    #@47
    .line 1492
    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@49
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    #@50
    move-result-object v5

    #@51
    .line 1493
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@54
    move-result-object v6

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    .line 1494
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    #@62
    move-result v11

    #@63
    move-object/from16 v6, p1

    #@65
    move/from16 v9, p3

    #@67
    .line 1491
    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    #@6a
    move-result v13

    #@6b
    .line 1495
    .local v13, "res":I
    if-gez v13, :cond_3

    #@6d
    .line 1496
    new-instance v3, Ljava/lang/SecurityException;

    #@6f
    .line 1497
    new-instance v4, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v5, "Not allowed to bind to service "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    .line 1496
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@88
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@89
    .line 1500
    .end local v13    # "res":I
    .end local v14    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v12

    #@8a
    .line 1501
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@8d
    move-result-object v3

    #@8e
    throw v3

    #@8f
    .line 1480
    .end local v8    # "sd":Landroid/app/IServiceConnection;
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    #@91
    const-string/jumbo v4, "Not supported in system context"

    #@94
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@97
    throw v3

    #@98
    .line 1499
    .restart local v8    # "sd":Landroid/app/IServiceConnection;
    .restart local v13    # "res":I
    .restart local v14    # "token":Landroid/os/IBinder;
    :cond_3
    if-eqz v13, :cond_4

    #@9a
    const/4 v3, 0x1

    #@9b
    :goto_0
    return v3

    #@9c
    :cond_4
    const/4 v3, 0x0

    #@9d
    goto :goto_0
.end method

.method private checkMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 2160
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    const/16 v1, 0x18

    #@8
    if-lt v0, v1, :cond_1

    #@a
    .line 2161
    and-int/lit8 v0, p1, 0x1

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2162
    new-instance v0, Ljava/lang/SecurityException;

    #@10
    const-string/jumbo v1, "MODE_WORLD_READABLE no longer supported"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 2164
    :cond_0
    and-int/lit8 v0, p1, 0x2

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 2165
    new-instance v0, Ljava/lang/SecurityException;

    #@1d
    const-string/jumbo v1, "MODE_WORLD_WRITEABLE no longer supported"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 2159
    :cond_1
    return-void
.end method

.method static createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;
    .locals 10
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "overrideConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2018
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
    .line 2019
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@e
    const/4 v6, 0x0

    #@f
    move-object v2, p0

    #@10
    move-object v3, p1

    #@11
    move-object v4, p2

    #@12
    move-object v5, v1

    #@13
    move-object v7, v1

    #@14
    move-object v8, p4

    #@15
    move v9, p3

    #@16
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

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
    .line 2010
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
    .line 2011
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@e
    .line 2012
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
    .line 2011
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@19
    return-object v0
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .locals 10
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2001
    new-instance v3, Landroid/app/LoadedApk;

    #@3
    invoke-direct {v3, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    #@6
    .line 2002
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    new-instance v0, Landroid/app/ContextImpl;

    #@8
    .line 2003
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
    .line 2002
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@12
    .line 2004
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@14
    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@16
    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@19
    move-result-object v2

    #@1a
    .line 2005
    iget-object v4, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@1c
    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1f
    move-result-object v4

    #@20
    .line 2004
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@23
    .line 2006
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
    .line 1612
    if-eqz p2, :cond_2

    #@2
    .line 1613
    new-instance v1, Ljava/lang/SecurityException;

    #@4
    .line 1614
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
    .line 1615
    if-eqz p3, :cond_1

    #@25
    .line 1616
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
    .line 1614
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 1619
    const-string/jumbo v2, "."

    #@4b
    .line 1614
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 1613
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1

    #@57
    .line 1614
    :cond_0
    const-string/jumbo v0, ""

    #@5a
    goto :goto_0

    #@5b
    .line 1617
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
    .line 1611
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
    .line 1769
    if-eqz p2, :cond_2

    #@2
    .line 1770
    new-instance v1, Ljava/lang/SecurityException;

    #@4
    .line 1771
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
    .line 1772
    if-eqz p3, :cond_1

    #@25
    .line 1773
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
    .line 1771
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 1775
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 1771
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 1776
    const-string/jumbo v2, " permission on "

    #@4f
    .line 1771
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 1778
    const-string/jumbo v2, "."

    #@5a
    .line 1771
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    .line 1770
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    .line 1771
    :cond_0
    const-string/jumbo v0, ""

    #@69
    goto :goto_0

    #@6a
    .line 1774
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
    .line 1768
    :cond_2
    return-void
.end method

.method private ensureExternalDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    .locals 9
    .param p1, "dirs"    # [Ljava/io/File;

    #@0
    .prologue
    .line 2202
    array-length v6, p1

    #@1
    new-array v5, v6, [Ljava/io/File;

    #@3
    .line 2203
    .local v5, "result":[Ljava/io/File;
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    array-length v6, p1

    #@5
    if-ge v2, v6, :cond_1

    #@7
    .line 2204
    aget-object v0, p1, v2

    #@9
    .line 2205
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_0

    #@f
    .line 2206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_0

    #@15
    .line 2208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@18
    move-result v6

    #@19
    if-nez v6, :cond_0

    #@1b
    .line 2212
    const-string/jumbo v6, "mount"

    #@1e
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@21
    move-result-object v6

    #@22
    .line 2211
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@25
    move-result-object v3

    #@26
    .line 2214
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
    .line 2215
    .local v4, "res":I
    if-eqz v4, :cond_0

    #@34
    .line 2216
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
    .line 2217
    const/4 v0, 0x0

    #@5a
    .line 2226
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "mount":Landroid/os/storage/IMountService;
    .end local v4    # "res":I
    :cond_0
    :goto_1
    aput-object v0, v5, v2

    #@5c
    .line 2203
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 2219
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "mount":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v1

    #@60
    .line 2220
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
    .line 2221
    const/4 v0, 0x0

    #@86
    .local v0, "dir":Ljava/io/File;
    goto :goto_1

    #@87
    .line 2228
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mount":Landroid/os/storage/IMountService;
    :cond_1
    return-object v5
.end method

.method private static ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 521
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 523
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x1f9

    #@c
    invoke-static {v1, v2}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    #@f
    .line 524
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    const/16 v2, 0x1f9

    #@15
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 533
    :cond_0
    :goto_0
    return-object p0

    #@19
    .line 525
    :catch_0
    move-exception v0

    #@1a
    .line 526
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    #@1c
    sget v2, Landroid/system/OsConstants;->EEXIST:I

    #@1e
    if-eq v1, v2, :cond_0

    #@20
    .line 529
    const-string/jumbo v1, "ContextImpl"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Failed to ensure "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, ": "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 735
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 736
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 737
    const-string/jumbo v0, "android"

    #@a
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 738
    new-instance v0, Ljava/io/File;

    #@16
    const-string/jumbo v2, "/data/system"

    #@19
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@1e
    .line 743
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    #@20
    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v0

    #@24
    monitor-exit v1

    #@25
    return-object v0

    #@26
    .line 740
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    #@28
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, "databases"

    #@2f
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@32
    iput-object v0, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 735
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0
.end method

.method static getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 202
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v1, p0

    #@5
    .line 203
    check-cast v1, Landroid/content/ContextWrapper;

    #@7
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    .local v0, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    #@d
    .line 204
    move-object p0, v0

    #@e
    goto :goto_0

    #@f
    .line 206
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
    .line 473
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 475
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "shared_prefs"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    #@15
    .line 477
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 473
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method private getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 385
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 386
    new-instance v2, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@9
    sput-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    #@b
    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 390
    .local v0, "packageName":Ljava/lang/String;
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/util/ArrayMap;

    #@17
    .line 391
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_1

    #@19
    .line 392
    new-instance v1, Landroid/util/ArrayMap;

    #@1b
    .end local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    .line 393
    .restart local v1    # "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 396
    :cond_1
    return-object v1
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    #@0
    .prologue
    .line 790
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
    .line 277
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 278
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@c
    .line 280
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@e
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@14
    .line 276
    return-void
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2190
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 2191
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    return-object v0

    #@e
    .line 2193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    .line 2194
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
    .line 2193
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method

.method private static moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .locals 10
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    new-instance v5, Landroid/app/ContextImpl$1;

    #@2
    invoke-direct {v5, p2}, Landroid/app/ContextImpl$1;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {p0, v5}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@8
    move-result-object v3

    #@9
    .line 413
    .local v3, "sourceFiles":[Ljava/io/File;
    const/4 v1, 0x0

    #@a
    .line 414
    .local v1, "res":I
    const/4 v5, 0x0

    #@b
    array-length v6, v3

    #@c
    :goto_0
    if-ge v5, v6, :cond_2

    #@e
    aget-object v2, v3, v5

    #@10
    .line 415
    .local v2, "sourceFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    #@12
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-direct {v4, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@19
    .line 416
    .local v4, "targetFile":Ljava/io/File;
    const-string/jumbo v7, "ContextImpl"

    #@1c
    new-instance v8, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v9, "Migrating "

    #@24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    const-string/jumbo v9, " to "

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 418
    :try_start_0
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    #@41
    .line 419
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    #@44
    .line 420
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@47
    move-result v7

    #@48
    if-nez v7, :cond_1

    #@4a
    .line 421
    new-instance v7, Ljava/io/IOException;

    #@4c
    new-instance v8, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v9, "Failed to clean up "

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@63
    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 426
    :catch_0
    move-exception v0

    #@65
    .line 427
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ContextImpl"

    #@68
    new-instance v8, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v9, "Failed to migrate "

    #@70
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    const-string/jumbo v9, ": "

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    .line 428
    const/4 v1, -0x1

    #@8b
    .line 414
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@8d
    goto/16 :goto_0

    #@8f
    .line 423
    :cond_1
    const/4 v7, -0x1

    #@90
    if-eq v1, v7, :cond_0

    #@92
    .line 424
    add-int/lit8 v1, v1, 0x1

    #@94
    goto :goto_1

    #@95
    .line 431
    .end local v2    # "sourceFile":Ljava/io/File;
    .end local v4    # "targetFile":Ljava/io/File;
    :cond_2
    return v1
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
    const/4 v4, 0x0

    #@2
    .line 1324
    const/4 v3, 0x0

    #@3
    .line 1325
    .local v3, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_1

    #@5
    .line 1326
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@7
    if-eqz v0, :cond_3

    #@9
    if-eqz p6, :cond_3

    #@b
    .line 1327
    if-nez p5, :cond_0

    #@d
    .line 1328
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object p5

    #@13
    .line 1330
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@15
    .line 1332
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
    .line 1330
    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@21
    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    move-result-object v3

    #@22
    .line 1342
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@25
    move-result-object v0

    #@26
    .line 1343
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
    .line 1342
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    #@34
    move-result-object v8

    #@35
    .line 1345
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_2

    #@37
    .line 1346
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@3e
    .line 1347
    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 1349
    :cond_2
    return-object v8

    #@42
    .line 1334
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v3    # "rd":Landroid/content/IIntentReceiver;
    :cond_3
    if-nez p5, :cond_4

    #@44
    .line 1335
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@46
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@49
    move-result-object p5

    #@4a
    .line 1337
    :cond_4
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@4c
    move-object v1, p1

    #@4d
    move-object v2, p6

    #@4e
    move-object v3, p5

    #@4f
    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@52
    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@55
    move-result-object v3

    #@56
    .local v3, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@57
    .line 1350
    .end local v3    # "rd":Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v7

    #@58
    .line 1351
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@5b
    move-result-object v0

    #@5c
    throw v0
.end method

.method private resolveUserId(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1698
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
    .line 2173
    or-int/lit16 v0, p2, 0x1b0

    #@3
    .line 2176
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2177
    or-int/lit8 v0, v0, 0x4

    #@9
    .line 2179
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2180
    or-int/lit8 v0, v0, 0x2

    #@f
    .line 2186
    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@12
    .line 2172
    return-void
.end method

.method private startServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1402
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    #@3
    .line 1403
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@6
    .line 1404
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v0

    #@a
    .line 1405
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@c
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@f
    move-result-object v1

    #@10
    .line 1406
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v2

    #@14
    .line 1405
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1406
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
    .line 1404
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    #@24
    move-result-object v6

    #@25
    .line 1407
    .local v6, "cn":Landroid/content/ComponentName;
    if-eqz v6, :cond_1

    #@27
    .line 1408
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
    .line 1409
    new-instance v0, Ljava/lang/SecurityException;

    #@36
    .line 1410
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
    .line 1411
    const-string/jumbo v2, " without permission "

    #@49
    .line 1410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1411
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 1410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 1409
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 1419
    .end local v6    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    #@5e
    .line 1420
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@61
    move-result-object v0

    #@62
    throw v0

    #@63
    .line 1412
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    const-string/jumbo v1, "!!"

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_1

    #@70
    .line 1413
    new-instance v0, Ljava/lang/SecurityException;

    #@72
    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v2, "Unable to start service "

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    .line 1415
    const-string/jumbo v2, ": "

    #@85
    .line 1414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    .line 1415
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    .line 1414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    .line 1413
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@98
    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@99
    .line 1418
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
    .line 1431
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    #@4
    .line 1432
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@7
    .line 1433
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v3

    #@b
    .line 1434
    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@d
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@10
    move-result-object v4

    #@11
    .line 1435
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
    .line 1433
    invoke-interface {v3, v4, p1, v5, v6}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    #@20
    move-result v1

    #@21
    .line 1436
    .local v1, "res":I
    if-gez v1, :cond_0

    #@23
    .line 1437
    new-instance v2, Ljava/lang/SecurityException;

    #@25
    .line 1438
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
    .line 1437
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 1441
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    #@3e
    .line 1442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@41
    move-result-object v2

    #@42
    throw v2

    #@43
    .line 1440
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_0
    if-eqz v1, :cond_1

    #@45
    const/4 v2, 0x1

    #@46
    :cond_1
    return v2
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .locals 4
    .param p1, "uriModeFlags"    # I

    #@0
    .prologue
    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1745
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1746
    const-string/jumbo v1, "read and "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 1748
    :cond_0
    and-int/lit8 v1, p1, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1749
    const-string/jumbo v1, "write and "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1751
    :cond_1
    and-int/lit8 v1, p1, 0x40

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 1752
    const-string/jumbo v1, "persistable and "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1754
    :cond_2
    and-int/lit16 v1, p1, 0x80

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 1755
    const-string/jumbo v1, "prefix and "

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 1758
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x5

    #@32
    if-le v1, v2, :cond_4

    #@34
    .line 1759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@37
    move-result v1

    #@38
    add-int/lit8 v1, v1, -0x5

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3d
    .line 1760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1

    #@42
    .line 1762
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

.method private validateServiceIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1371
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
    .line 1372
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
    .line 1373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    .line 1374
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
    .line 1373
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    .line 1375
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    throw v0

    #@30
    .line 1377
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
    .line 1378
    const-string/jumbo v3, " "

    #@46
    .line 1377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 1378
    const/4 v3, 0x2

    #@4b
    const/4 v4, 0x3

    #@4c
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 1377
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
    .line 1370
    :cond_1
    return-void
.end method

.method private warnIfCallingFromSystemProcess()V
    .locals 3

    #@0
    .prologue
    .line 1828
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1829
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
    .line 1830
    const/4 v2, 0x5

    #@18
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1829
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
    .line 1827
    :cond_0
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1449
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1450
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@5
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@8
    move-result-object v4

    #@9
    .line 1451
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@c
    move-result-object v5

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move-object v2, p2

    #@10
    move v3, p3

    #@11
    .line 1450
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1465
    if-nez p4, :cond_0

    #@2
    .line 1466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "handler must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1468
    :cond_0
    invoke-direct/range {p0 .. p5}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1458
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v4

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move v3, p3

    #@a
    move-object v5, p4

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1592
    if-nez p1, :cond_0

    #@2
    .line 1593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "permission is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1596
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v0

    #@f
    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v1

    #@13
    .line 1596
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
    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 1714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v1

    #@8
    .line 1713
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
    .line 1579
    if-nez p1, :cond_0

    #@2
    .line 1580
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "permission is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1583
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v0

    #@f
    .line 1584
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@12
    move-result v1

    #@13
    if-eq v0, v1, :cond_1

    #@15
    .line 1585
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
    .line 1587
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
    .line 1703
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3
    move-result v0

    #@4
    .line 1704
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7
    move-result v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 1706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v1

    #@e
    .line 1705
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 1708
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
    .line 1550
    if-nez p1, :cond_0

    #@2
    .line 1551
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "permission is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1555
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
    .line 1557
    :catch_0
    move-exception v0

    #@15
    .line 1558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method

.method public checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1565
    if-nez p1, :cond_0

    #@2
    .line 1566
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "permission is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1570
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
    .line 1572
    :catch_0
    move-exception v0

    #@15
    .line 1573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1602
    if-nez p1, :cond_0

    #@2
    .line 1603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "permission is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1606
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
    .line 1677
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1678
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 1679
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
    .line 1677
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1680
    :catch_0
    move-exception v7

    #@16
    .line 1681
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v0

    #@1a
    throw v0
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
    .line 1689
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1690
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 1691
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
    .line 1689
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1692
    :catch_0
    move-exception v7

    #@16
    .line 1693
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v0

    #@1a
    throw v0
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
    .line 1725
    and-int/lit8 v0, p6, 0x1

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1726
    if-eqz p2, :cond_0

    #@7
    .line 1727
    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1729
    :cond_0
    return v1

    #@e
    .line 1732
    :cond_1
    and-int/lit8 v0, p6, 0x2

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1733
    if-eqz p3, :cond_2

    #@14
    .line 1734
    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_3

    #@1a
    .line 1736
    :cond_2
    return v1

    #@1b
    .line 1739
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
    .line 1740
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
    .line 786
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    #@7
    .line 785
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
    .line 1837
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@3
    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@5
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@8
    move-result-object v2

    #@9
    .line 1838
    const/high16 v4, 0x40000000    # 2.0f

    #@b
    or-int/2addr v4, p2

    #@c
    .line 1837
    invoke-virtual {v1, p1, v2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    #@f
    move-result-object v3

    #@10
    .line 1839
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_0

    #@12
    .line 1840
    new-instance v0, Landroid/app/ContextImpl;

    #@14
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@16
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@18
    .line 1841
    new-instance v5, Landroid/os/UserHandle;

    #@1a
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1c
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@1f
    move-result v1

    #@20
    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@23
    .line 1842
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@25
    const/4 v9, -0x1

    #@26
    move-object v1, p0

    #@27
    move v6, p2

    #@28
    .line 1840
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@2b
    .line 1843
    .local v0, "c":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 1844
    return-object v0

    #@30
    .line 1848
    .end local v0    # "c":Landroid/app/ContextImpl;
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@32
    .line 1849
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "Application package "

    #@3a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v4, " not found"

    #@47
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 1848
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@52
    throw v1
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 10
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1884
    if-nez p1, :cond_0

    #@2
    .line 1885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "overrideConfiguration must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1888
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@d
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@11
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@13
    .line 1889
    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@15
    iget v6, p0, Landroid/app/ContextImpl;->mFlags:I

    #@17
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@19
    const/4 v9, -0x1

    #@1a
    move-object v1, p0

    #@1b
    move-object v8, p1

    #@1c
    .line 1888
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@1f
    return-object v0
.end method

.method public createCredentialProtectedStorageContext()Landroid/content/Context;
    .locals 10

    #@0
    .prologue
    .line 1912
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x9

    #@4
    or-int/lit8 v6, v0, 0x10

    #@6
    .line 1914
    .local v6, "flags":I
    new-instance v0, Landroid/app/ContextImpl;

    #@8
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@a
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@c
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@e
    .line 1915
    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@10
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@12
    const/4 v8, 0x0

    #@13
    const/4 v9, -0x1

    #@14
    move-object v1, p0

    #@15
    .line 1914
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@18
    return-object v0
.end method

.method public createDeviceProtectedStorageContext()Landroid/content/Context;
    .locals 10

    #@0
    .prologue
    .line 1904
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x11

    #@4
    or-int/lit8 v6, v0, 0x8

    #@6
    .line 1906
    .local v6, "flags":I
    new-instance v0, Landroid/app/ContextImpl;

    #@8
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@a
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@c
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@e
    .line 1907
    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@10
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@12
    const/4 v8, 0x0

    #@13
    const/4 v9, -0x1

    #@14
    move-object v1, p0

    #@15
    .line 1906
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@18
    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 10
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1894
    if-nez p1, :cond_0

    #@3
    .line 1895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "display must not be null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1898
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@e
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@10
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@12
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@14
    .line 1899
    iget-object v5, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@16
    iget v6, p0, Landroid/app/ContextImpl;->mFlags:I

    #@18
    const/4 v9, -0x1

    #@19
    move-object v1, p0

    #@1a
    move-object v7, p1

    #@1b
    .line 1898
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

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
    .line 1856
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    #@6
    .line 1855
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1856
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
    .line 1862
    const-string/jumbo v1, "system"

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const-string/jumbo v1, "android"

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1863
    :cond_0
    new-instance v0, Landroid/app/ContextImpl;

    #@16
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@1a
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@1c
    .line 1864
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@1e
    move-object v1, p0

    #@1f
    move-object v5, p3

    #@20
    move v6, p2

    #@21
    .line 1863
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@24
    return-object v0

    #@25
    .line 1867
    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@27
    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@29
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@2c
    move-result-object v2

    #@2d
    .line 1868
    const/high16 v4, 0x40000000    # 2.0f

    #@2f
    or-int/2addr v4, p2

    #@30
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@33
    move-result v5

    #@34
    .line 1867
    invoke-virtual {v1, p1, v2, v4, v5}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    #@37
    move-result-object v3

    #@38
    .line 1869
    .local v3, "pi":Landroid/app/LoadedApk;
    if-eqz v3, :cond_2

    #@3a
    .line 1870
    new-instance v0, Landroid/app/ContextImpl;

    #@3c
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@3e
    iget-object v4, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@40
    .line 1871
    iget-object v7, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@42
    move-object v1, p0

    #@43
    move-object v5, p3

    #@44
    move v6, p2

    #@45
    .line 1870
    invoke-direct/range {v0 .. v9}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/os/UserHandle;ILandroid/view/Display;Landroid/content/res/Configuration;I)V

    #@48
    .line 1872
    .local v0, "c":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 1873
    return-object v0

    #@4d
    .line 1878
    .end local v0    # "c":Landroid/app/ContextImpl;
    :cond_2
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@4f
    .line 1879
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v4, "Application package "

    #@57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    const-string/jumbo v4, " not found"

    #@62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    .line 1878
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 731
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 698
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 699
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 700
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    #@a
    .line 702
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 514
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public deleteSharedPreferences(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    const-class v4, Landroid/app/ContextImpl;

    #@2
    monitor-enter v4

    #@3
    .line 457
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v1

    #@7
    .line 458
    .local v1, "prefs":Ljava/io/File;
    invoke-static {v1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    #@a
    move-result-object v2

    #@b
    .line 461
    .local v2, "prefsBackup":Ljava/io/File;
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    #@e
    move-result-object v0

    #@f
    .line 462
    .local v0, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 464
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@15
    .line 465
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@18
    .line 468
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    :cond_0
    const/4 v3, 0x0

    #@25
    :goto_0
    monitor-exit v4

    #@26
    return v3

    #@27
    :cond_1
    const/4 v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 456
    .end local v0    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    .end local v1    # "prefs":Ljava/io/File;
    .end local v2    # "prefsBackup":Ljava/io/File;
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit v4

    #@2b
    throw v3
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1646
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@3
    move-result v2

    #@4
    .line 1648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1647
    const/4 v3, 0x1

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v5, p2

    #@c
    .line 1645
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    #@f
    .line 1644
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1804
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@3
    move-result v2

    #@4
    .line 1805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1804
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
    .line 1802
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@10
    .line 1801
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1636
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    #@3
    move-result v2

    #@4
    .line 1638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1637
    const/4 v3, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v5, p2

    #@c
    .line 1635
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    #@f
    .line 1634
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1794
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    #@3
    move-result v2

    #@4
    .line 1796
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    .line 1795
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
    .line 1793
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@10
    .line 1792
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
    .line 1627
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    #@3
    move-result v2

    #@4
    .line 1628
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
    .line 1626
    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    #@c
    .line 1625
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
    .line 1786
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    #@3
    move-result v2

    #@4
    .line 1787
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
    .line 1785
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@d
    .line 1784
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
    .line 1813
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    #@3
    move-result v2

    #@4
    .line 1816
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
    .line 1812
    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    #@d
    .line 1811
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 2156
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 247
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    #@9
    move-result-object v0

    #@a
    .line 246
    :goto_0
    return-object v0

    #@b
    .line 247
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
    .line 313
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 314
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 316
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
    .line 211
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
    .line 302
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
    .line 600
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 601
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 602
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "cache"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    #@15
    .line 604
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 600
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
    .line 285
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 286
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 285
    :goto_0
    return-object v0

    #@b
    .line 286
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
    .line 610
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 611
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 612
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "code_cache"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    #@15
    .line 614
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 610
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
    .line 236
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    #@2
    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 1955
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v1, :cond_4

    #@4
    .line 1956
    const/4 v0, 0x0

    #@5
    .line 1957
    .local v0, "res":Ljava/io/File;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1958
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@d
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    .line 1965
    .local v0, "res":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_3

    #@13
    .line 1966
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1c
    move-result v1

    #@1d
    const/16 v2, 0x3e8

    #@1f
    if-ne v1, v2, :cond_0

    #@21
    .line 1967
    const-string/jumbo v1, "ContextImpl"

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Data directory doesn\'t exist for package "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 1968
    new-instance v3, Ljava/lang/Throwable;

    #@3e
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@41
    .line 1967
    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 1970
    :cond_0
    return-object v0

    #@45
    .line 1959
    .local v0, "res":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isDeviceProtectedStorage()Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 1960
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@4d
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    #@50
    move-result-object v0

    #@51
    .local v0, "res":Ljava/io/File;
    goto :goto_0

    #@52
    .line 1962
    .local v0, "res":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@54
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    #@57
    move-result-object v0

    #@58
    .local v0, "res":Ljava/io/File;
    goto :goto_0

    #@59
    .line 1972
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@5b
    .line 1973
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v3, "No data directory found for package "

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 1972
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@76
    throw v1

    #@77
    .line 1976
    .end local v0    # "res":Ljava/io/File;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    #@79
    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v3, "No package details found for package "

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    .line 1976
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@94
    throw v1
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 710
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v3

    #@6
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@8
    if-ne v3, v4, :cond_1

    #@a
    .line 711
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
    .line 712
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@16
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@19
    .line 713
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
    .line 714
    new-instance v2, Ljava/io/File;

    #@25
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 716
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_0

    #@34
    .line 717
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 718
    const/16 v4, 0x1f9

    #@3a
    .line 717
    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@3d
    .line 726
    .end local v1    # "dirPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    #@3e
    .line 722
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    #@41
    move-result-object v0

    #@42
    .line 723
    .restart local v0    # "dir":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@45
    move-result-object v2

    #@46
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1983
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    #@3
    .line 1984
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "app_"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    .line 1985
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@1e
    move-result-object v0

    #@1f
    .line 1986
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 1987
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@28
    .line 1988
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 1989
    const/16 v2, 0x1f9

    #@2e
    .line 1988
    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    #@31
    .line 1991
    :cond_0
    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 3

    #@0
    .prologue
    .line 1935
    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@5
    move-result-object v0

    #@6
    .line 1936
    .local v0, "displayAdjustments":Landroid/view/DisplayAdjustments;
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1937
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1941
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@14
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 1942
    iget-object v1, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    #@20
    iget-object v2, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@22
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2, v0}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@2c
    .line 1945
    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    #@2e
    return-object v1
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1950
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 621
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
    .line 626
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 627
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 628
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
    .line 632
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalCacheDirs:[Ljava/io/File;

    #@13
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 626
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
    .line 559
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
    .line 564
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 566
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
    .line 570
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalFilesDirs:[Ljava/io/File;

    #@13
    .line 571
    .local v0, "dirs":[Ljava/io/File;
    if-eqz p1, :cond_1

    #@15
    .line 572
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
    .line 576
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v1

    #@23
    monitor-exit v2

    #@24
    return-object v1

    #@25
    .line 564
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
    .line 638
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 639
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalMediaDirs:[Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 640
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
    .line 644
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalMediaDirs:[Ljava/io/File;

    #@13
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 638
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
    .line 650
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
    .line 538
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 540
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "files"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    #@15
    .line 542
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 538
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
    .line 241
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
    .line 548
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 550
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "no_backup"

    #@10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iput-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    #@15
    .line 552
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    #@17
    invoke-static {v0}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v0

    #@1b
    monitor-exit v1

    #@1c
    return-object v0

    #@1d
    .line 548
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
    .line 583
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
    .line 588
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 590
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
    .line 594
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mExternalObbDirs:[Ljava/io/File;

    #@13
    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    .line 588
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
    .line 308
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
    .line 2152
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 330
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 332
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
    .line 221
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 222
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7
    return-object v1

    #@8
    .line 225
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@b
    move-result-object v0

    #@c
    .line 226
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_1

    #@e
    .line 228
    new-instance v1, Landroid/app/ApplicationPackageManager;

    #@10
    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    #@13
    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    #@15
    return-object v1

    #@16
    .line 231
    :cond_1
    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 292
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 296
    :cond_0
    const-string/jumbo v0, "android"

    #@e
    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 322
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 324
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
    .line 2141
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2142
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    #@6
    return-object v0

    #@7
    .line 2144
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
    .line 216
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 363
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    #@3
    .line 365
    const-class v3, Landroid/app/ContextImpl;

    #@5
    monitor-enter v3

    #@6
    .line 366
    :try_start_0
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    #@9
    move-result-object v0

    #@a
    .line 367
    .local v0, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/app/SharedPreferencesImpl;

    #@10
    .line 368
    .local v1, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v1, :cond_0

    #@12
    .line 369
    new-instance v1, Landroid/app/SharedPreferencesImpl;

    #@14
    .end local v1    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-direct {v1, p1, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    #@17
    .line 370
    .restart local v1    # "sp":Landroid/app/SharedPreferencesImpl;
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v3

    #@1b
    .line 371
    return-object v1

    #@1c
    :cond_0
    monitor-exit v3

    #@1d
    .line 374
    and-int/lit8 v2, p2, 0x4

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 375
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@24
    move-result-object v2

    #@25
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@27
    const/16 v3, 0xb

    #@29
    if-ge v2, v3, :cond_2

    #@2b
    .line 379
    :cond_1
    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    #@2e
    .line 381
    :cond_2
    return-object v1

    #@2f
    .line 365
    .end local v0    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    .end local v1    # "sp":Landroid/app/SharedPreferencesImpl;
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 340
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v1

    #@6
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    .line 341
    const/16 v2, 0x13

    #@a
    .line 340
    if-ge v1, v2, :cond_0

    #@c
    .line 342
    if-nez p1, :cond_0

    #@e
    .line 343
    const-string/jumbo p1, "null"

    #@11
    .line 348
    :cond_0
    const-class v2, Landroid/app/ContextImpl;

    #@13
    monitor-enter v2

    #@14
    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    #@16
    if-nez v1, :cond_1

    #@18
    .line 350
    new-instance v1, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    iput-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    #@1f
    .line 352
    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/io/File;

    #@27
    .line 353
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    #@29
    .line 354
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@2c
    move-result-object v0

    #@2d
    .line 355
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_2
    monitor-exit v2

    #@33
    .line 358
    invoke-virtual {p0, v0, p2}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    #@36
    move-result-object v1

    #@37
    return-object v1

    #@38
    .line 348
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v2

    #@3a
    throw v1
.end method

.method public getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 655
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
    .line 1540
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
    .line 1545
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
    .line 265
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@6
    return-object v0

    #@7
    .line 269
    :cond_0
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@9
    .line 270
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
    .line 269
    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@19
    .line 271
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    #@1c
    .line 273
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    #@1e
    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    #@0
    .prologue
    .line 260
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@2
    return v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 1997
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
    .line 750
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
    .line 768
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
    .line 762
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
    .line 1655
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 1656
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@6
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@9
    move-result-object v1

    #@a
    .line 1657
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
    .line 1655
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1653
    return-void

    #@18
    .line 1658
    :catch_0
    move-exception v6

    #@19
    .line 1659
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v0

    #@1d
    throw v0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2128
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    #@5
    .line 2127
    return-void
.end method

.method public isCredentialProtectedStorage()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1930
    iget v1, p0, Landroid/app/ContextImpl;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isDeviceProtectedStorage()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1925
    iget v1, p0, Landroid/app/ContextImpl;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isRestricted()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1920
    iget v1, p0, Landroid/app/ContextImpl;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 687
    const-class v3, Landroid/app/ContextImpl;

    #@2
    monitor-enter v3

    #@3
    .line 688
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 689
    .local v0, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    .line 690
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@12
    move-result-object v4

    #@13
    .line 691
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 690
    invoke-static {v2, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v2

    #@1b
    .line 691
    const/4 v4, -0x1

    #@1c
    .line 690
    if-eq v2, v4, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    :goto_0
    monitor-exit v3

    #@20
    return v2

    #@21
    :cond_0
    const/4 v2, 0x0

    #@22
    goto :goto_0

    #@23
    .line 687
    .end local v0    # "source":Ljava/io/File;
    .end local v1    # "target":Ljava/io/File;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 436
    const-class v5, Landroid/app/ContextImpl;

    #@3
    monitor-enter v5

    #@4
    .line 437
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 438
    .local v2, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@b
    move-result-object v3

    #@c
    .line 440
    .local v3, "target":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@13
    move-result-object v7

    #@14
    .line 441
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    .line 440
    invoke-static {v6, v7, v8}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    .line 442
    .local v1, "res":I
    if-lez v1, :cond_0

    #@1e
    .line 446
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    #@21
    move-result-object v0

    #@22
    .line 447
    .local v0, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 448
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 450
    .end local v0    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :cond_0
    const/4 v6, -0x1

    #@29
    if-eq v1, v6, :cond_1

    #@2b
    const/4 v4, 0x1

    #@2c
    :cond_1
    monitor-exit v5

    #@2d
    return v4

    #@2e
    .line 436
    .end local v1    # "res":I
    .end local v2    # "source":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4
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
    .line 484
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 485
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
    .line 490
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    #@5
    .line 491
    const v5, 0x8000

    #@8
    and-int/2addr v5, p2

    #@9
    if-eqz v5, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 492
    .local v0, "append":Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    #@f
    move-result-object v5

    #@10
    invoke-direct {p0, v5, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@13
    move-result-object v2

    #@14
    .line 494
    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    #@16
    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@19
    .line 495
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-static {v5, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 496
    return-object v3

    #@22
    .line 491
    .end local v0    # "append":Z
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v0, 0x0

    #@23
    .restart local v0    # "append":Z
    goto :goto_0

    #@24
    .line 497
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    #@25
    .line 500
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@28
    move-result-object v4

    #@29
    .line 501
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    #@2c
    .line 503
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 504
    const/16 v6, 0x1f9

    #@32
    .line 502
    invoke-static {v5, v6, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@35
    .line 506
    new-instance v3, Ljava/io/FileOutputStream;

    #@37
    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@3a
    .line 507
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v5, p2, v7}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    #@41
    .line 508
    return-object v3
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 665
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
    .line 671
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    #@4
    .line 672
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    .line 673
    .local v1, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    #@a
    .line 674
    .local v2, "flags":I
    and-int/lit8 v3, p2, 0x8

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 675
    const/high16 v2, 0x30000000

    #@10
    .line 677
    :cond_0
    and-int/lit8 v3, p2, 0x10

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 678
    or-int/lit8 v2, v2, 0x10

    #@16
    .line 680
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v3, p3, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@1d
    move-result-object v0

    #@1e
    .line 681
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    #@25
    .line 682
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 756
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
    .line 2137
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 2135
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
    .line 1304
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
    .line 1310
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    #@3
    move-result v2

    #@4
    .line 1311
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
    .line 1310
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
    .line 1317
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v2

    #@4
    .line 1318
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
    .line 1317
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
    .line 1206
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1207
    .local v2, "resolvedType":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    .line 1208
    new-instance v1, Landroid/content/Intent;

    #@c
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f
    .line 1209
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
    .line 1212
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@1a
    .line 1213
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1d
    move-result-object v3

    #@1e
    .line 1214
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
    .line 1213
    invoke-interface {v3, v4, p1, v5}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1205
    return-void

    #@2c
    .line 1215
    :catch_0
    move-exception v0

    #@2d
    .line 1216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@30
    move-result-object v3

    #@31
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
    .line 1288
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1289
    .local v2, "resolvedType":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    .line 1290
    new-instance v1, Landroid/content/Intent;

    #@c
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f
    .line 1291
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
    .line 1294
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@1a
    .line 1295
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1d
    move-result-object v3

    #@1e
    .line 1296
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
    .line 1295
    invoke-interface {v3, v4, p1, v5}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1287
    return-void

    #@2c
    .line 1297
    :catch_0
    move-exception v0

    #@2d
    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@30
    move-result-object v3

    #@31
    throw v3
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 1666
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1667
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@6
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@9
    move-result-object v2

    #@a
    .line 1668
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@d
    move-result-object v3

    #@e
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    #@11
    move-result v4

    #@12
    .line 1666
    invoke-interface {v1, v2, v3, p2, v4}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1664
    return-void

    #@16
    .line 1669
    :catch_0
    move-exception v0

    #@17
    .line 1670
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v1

    #@1b
    throw v1
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2132
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 2131
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 905
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 906
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 908
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@14
    .line 909
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v2

    #@18
    .line 910
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1c
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1f
    move-result-object v3

    #@20
    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@23
    move-result v15

    #@24
    .line 910
    const/4 v6, 0x0

    #@25
    .line 911
    const/4 v7, -0x1

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v10, 0x0

    #@29
    const/4 v11, -0x1

    #@2a
    const/4 v12, 0x0

    #@2b
    const/4 v13, 0x0

    #@2c
    const/4 v14, 0x0

    #@2d
    move-object/from16 v4, p1

    #@2f
    .line 909
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 904
    return-void

    #@33
    .line 913
    :catch_0
    move-exception v16

    #@34
    .line 914
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@37
    move-result-object v2

    #@38
    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 920
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 921
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 922
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v10, 0x0

    #@10
    .line 925
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    #@12
    move-object/from16 v1, p0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@17
    .line 926
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v2

    #@1b
    .line 927
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@22
    move-result-object v3

    #@23
    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@26
    move-result v15

    #@27
    .line 927
    const/4 v6, 0x0

    #@28
    .line 928
    const/4 v7, -0x1

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x0

    #@2b
    const/4 v11, -0x1

    #@2c
    .line 929
    const/4 v12, 0x0

    #@2d
    const/4 v13, 0x0

    #@2e
    const/4 v14, 0x0

    #@2f
    move-object/from16 v4, p1

    #@31
    .line 926
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 919
    return-void

    #@35
    .line 923
    :cond_0
    const/4 v2, 0x1

    #@36
    new-array v10, v2, [Ljava/lang/String;

    #@38
    const/4 v2, 0x0

    #@39
    aput-object p2, v10, v2

    #@3b
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@3c
    .line 930
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@3d
    .line 931
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@40
    move-result-object v2

    #@41
    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    #@0
    .prologue
    .line 969
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 970
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 971
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v10, 0x0

    #@10
    .line 974
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    #@12
    move-object/from16 v1, p0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@17
    .line 975
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v2

    #@1b
    .line 976
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@22
    move-result-object v3

    #@23
    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@26
    move-result v15

    #@27
    .line 976
    const/4 v6, 0x0

    #@28
    .line 977
    const/4 v7, -0x1

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x0

    #@2b
    const/4 v12, 0x0

    #@2c
    const/4 v13, 0x0

    #@2d
    const/4 v14, 0x0

    #@2e
    move-object/from16 v4, p1

    #@30
    move/from16 v11, p3

    #@32
    .line 975
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 968
    return-void

    #@36
    .line 972
    :cond_0
    const/4 v2, 0x1

    #@37
    new-array v10, v2, [Ljava/lang/String;

    #@39
    const/4 v2, 0x0

    #@3a
    aput-object p2, v10, v2

    #@3c
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 979
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@3e
    .line 980
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@41
    move-result-object v2

    #@42
    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 952
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 953
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 954
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v10, 0x0

    #@10
    .line 957
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    #@12
    move-object/from16 v1, p0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@17
    .line 958
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v2

    #@1b
    .line 959
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@22
    move-result-object v3

    #@23
    .line 961
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@26
    move-result v15

    #@27
    .line 959
    const/4 v6, 0x0

    #@28
    .line 960
    const/4 v7, -0x1

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x0

    #@2b
    const/4 v11, -0x1

    #@2c
    .line 961
    const/4 v13, 0x0

    #@2d
    const/4 v14, 0x0

    #@2e
    move-object/from16 v4, p1

    #@30
    move-object/from16 v12, p3

    #@32
    .line 958
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 951
    return-void

    #@36
    .line 955
    :cond_0
    const/4 v2, 0x1

    #@37
    new-array v10, v2, [Ljava/lang/String;

    #@39
    const/4 v2, 0x0

    #@3a
    aput-object p2, v10, v2

    #@3c
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 962
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@3e
    .line 963
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@41
    move-result-object v2

    #@42
    throw v2
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v2

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 1068
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@c
    move-object/from16 v1, p0

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@11
    .line 1069
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@14
    move-result-object v2

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@19
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1c
    move-result-object v3

    #@1d
    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@20
    move-result v15

    #@21
    .line 1070
    const/4 v6, 0x0

    #@22
    const/4 v7, -0x1

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v9, 0x0

    #@25
    const/4 v10, 0x0

    #@26
    .line 1071
    const/4 v11, -0x1

    #@27
    const/4 v12, 0x0

    #@28
    const/4 v13, 0x0

    #@29
    const/4 v14, 0x0

    #@2a
    move-object/from16 v4, p1

    #@2c
    .line 1069
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 1065
    return-void

    #@30
    .line 1072
    :catch_0
    move-exception v16

    #@31
    .line 1073
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@34
    move-result-object v2

    #@35
    throw v2
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1080
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    #@4
    .line 1079
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    #@0
    .prologue
    .line 1086
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v2

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 1087
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_0

    #@c
    const/4 v10, 0x0

    #@d
    .line 1090
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@14
    .line 1091
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v2

    #@18
    .line 1092
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1c
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1f
    move-result-object v3

    #@20
    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@23
    move-result v15

    #@24
    .line 1092
    const/4 v6, 0x0

    #@25
    .line 1093
    const/4 v7, -0x1

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v12, 0x0

    #@29
    const/4 v13, 0x0

    #@2a
    const/4 v14, 0x0

    #@2b
    move-object/from16 v4, p1

    #@2d
    move/from16 v11, p4

    #@2f
    .line 1091
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 1085
    return-void

    #@33
    .line 1088
    :cond_0
    const/4 v2, 0x1

    #@34
    new-array v10, v2, [Ljava/lang/String;

    #@36
    const/4 v2, 0x0

    #@37
    aput-object p3, v10, v2

    #@39
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 1095
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@3b
    .line 1096
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3e
    move-result-object v2

    #@3f
    throw v2
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 937
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 940
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@14
    .line 941
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v2

    #@18
    .line 942
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1c
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1f
    move-result-object v3

    #@20
    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@23
    move-result v15

    #@24
    .line 942
    const/4 v6, 0x0

    #@25
    .line 943
    const/4 v7, -0x1

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v11, -0x1

    #@29
    .line 944
    const/4 v12, 0x0

    #@2a
    const/4 v13, 0x0

    #@2b
    const/4 v14, 0x0

    #@2c
    move-object/from16 v4, p1

    #@2e
    move-object/from16 v10, p2

    #@30
    .line 941
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 936
    return-void

    #@34
    .line 945
    :catch_0
    move-exception v16

    #@35
    .line 946
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@38
    move-result-object v2

    #@39
    throw v2
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 986
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 988
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_0

    #@f
    const/4 v10, 0x0

    #@10
    .line 991
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    #@12
    move-object/from16 v1, p0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@17
    .line 992
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v2

    #@1b
    .line 993
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@22
    move-result-object v3

    #@23
    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@26
    move-result v15

    #@27
    .line 993
    const/4 v6, 0x0

    #@28
    .line 994
    const/4 v7, -0x1

    #@29
    const/4 v8, 0x0

    #@2a
    const/4 v9, 0x0

    #@2b
    const/4 v11, -0x1

    #@2c
    .line 995
    const/4 v12, 0x0

    #@2d
    const/4 v13, 0x1

    #@2e
    const/4 v14, 0x0

    #@2f
    move-object/from16 v4, p1

    #@31
    .line 992
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 985
    return-void

    #@35
    .line 989
    :cond_0
    const/4 v2, 0x1

    #@36
    new-array v10, v2, [Ljava/lang/String;

    #@38
    const/4 v2, 0x0

    #@39
    aput-object p2, v10, v2

    #@3b
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_0

    #@3c
    .line 996
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@3d
    .line 997
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@40
    move-result-object v2

    #@41
    throw v2
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
    .line 1025
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
    .line 1024
    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@10
    .line 1023
    return-void
.end method

.method sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 17
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
    .line 1032
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1033
    const/4 v6, 0x0

    #@4
    .line 1034
    .local v6, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_1

    #@6
    .line 1035
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 1036
    if-nez p5, :cond_0

    #@e
    .line 1037
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@12
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object p5

    #@16
    .line 1039
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@1a
    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1d
    move-result-object v4

    #@1e
    .line 1041
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@22
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@25
    move-result-object v6

    #@26
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    const/4 v7, 0x0

    #@27
    move-object/from16 v3, p4

    #@29
    move-object/from16 v5, p5

    #@2b
    .line 1039
    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2e
    move-result-object v6

    #@2f
    .line 1050
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 1051
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_4

    #@3b
    const/4 v10, 0x0

    #@3c
    .line 1054
    :goto_1
    :try_start_0
    move-object/from16 v0, p1

    #@3e
    move-object/from16 v1, p0

    #@40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@43
    .line 1055
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@46
    move-result-object v2

    #@47
    .line 1056
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@4b
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@4e
    move-result-object v3

    #@4f
    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@52
    move-result v15

    #@53
    const/4 v13, 0x1

    #@54
    const/4 v14, 0x0

    #@55
    move-object/from16 v4, p1

    #@57
    move/from16 v7, p6

    #@59
    move-object/from16 v8, p7

    #@5b
    move-object/from16 v9, p8

    #@5d
    move/from16 v11, p3

    #@5f
    move-object/from16 v12, p9

    #@61
    .line 1055
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 1031
    return-void

    #@65
    .line 1043
    .end local v5    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p5, :cond_3

    #@67
    .line 1044
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@6b
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@6e
    move-result-object p5

    #@6f
    .line 1046
    :cond_3
    new-instance v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@71
    .line 1047
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@74
    move-result-object v4

    #@75
    const/4 v6, 0x0

    #@76
    const/4 v7, 0x0

    #@77
    move-object/from16 v3, p4

    #@79
    move-object/from16 v5, p5

    #@7b
    .line 1046
    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@7e
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@81
    move-result-object v6

    #@82
    .local v6, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@83
    .line 1052
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    .restart local v5    # "resolvedType":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    #@84
    new-array v10, v2, [Ljava/lang/String;

    #@86
    const/4 v2, 0x0

    #@87
    aput-object p2, v10, v2

    #@89
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_1

    #@8a
    .line 1059
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@8b
    .line 1060
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@8e
    move-result-object v2

    #@8f
    throw v2
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
    .line 1006
    const/4 v3, -0x1

    #@1
    .line 1007
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
    .line 1006
    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@f
    .line 1005
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
    .line 1015
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
    .line 1014
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
    .line 1113
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
    .line 1112
    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@13
    .line 1111
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
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
    .line 1120
    const/4 v6, 0x0

    #@1
    .line 1121
    .local v6, "rd":Landroid/content/IIntentReceiver;
    if-eqz p6, :cond_1

    #@3
    .line 1122
    move-object/from16 v0, p0

    #@5
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 1123
    if-nez p7, :cond_0

    #@b
    .line 1124
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object p7

    #@13
    .line 1126
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@17
    .line 1127
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1a
    move-result-object v4

    #@1b
    .line 1128
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@22
    move-result-object v6

    #@23
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    const/4 v7, 0x0

    #@24
    move-object/from16 v3, p6

    #@26
    move-object/from16 v5, p7

    #@28
    .line 1126
    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2b
    move-result-object v6

    #@2c
    .line 1137
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v2

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 1138
    .local v5, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_4

    #@38
    const/4 v10, 0x0

    #@39
    .line 1141
    :goto_1
    :try_start_0
    move-object/from16 v0, p1

    #@3b
    move-object/from16 v1, p0

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@40
    .line 1142
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@43
    move-result-object v2

    #@44
    .line 1143
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@48
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@4b
    move-result-object v3

    #@4c
    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@4f
    move-result v15

    #@50
    const/4 v13, 0x1

    #@51
    const/4 v14, 0x0

    #@52
    move-object/from16 v4, p1

    #@54
    move/from16 v7, p8

    #@56
    move-object/from16 v8, p9

    #@58
    move-object/from16 v9, p10

    #@5a
    move/from16 v11, p4

    #@5c
    move-object/from16 v12, p5

    #@5e
    .line 1142
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 1119
    return-void

    #@62
    .line 1130
    .end local v5    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p7, :cond_3

    #@64
    .line 1131
    move-object/from16 v0, p0

    #@66
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@68
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@6b
    move-result-object p7

    #@6c
    .line 1133
    :cond_3
    new-instance v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@6e
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@71
    move-result-object v4

    #@72
    .line 1134
    const/4 v6, 0x0

    #@73
    const/4 v7, 0x0

    #@74
    move-object/from16 v3, p6

    #@76
    move-object/from16 v5, p7

    #@78
    .line 1133
    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@7b
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@7e
    move-result-object v6

    #@7f
    .local v6, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@80
    .line 1139
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    .restart local v5    # "resolvedType":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    #@81
    new-array v10, v2, [Ljava/lang/String;

    #@83
    const/4 v2, 0x0

    #@84
    aput-object p3, v10, v2

    #@86
    .local v10, "receiverPermissions":[Ljava/lang/String;
    goto :goto_1

    #@87
    .line 1146
    .end local v10    # "receiverPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v16

    #@88
    .line 1147
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@8b
    move-result-object v2

    #@8c
    throw v2
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
    .line 1104
    const/4 v4, -0x1

    #@1
    .line 1105
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
    .line 1104
    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@12
    .line 1103
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1154
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 1157
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@14
    .line 1158
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@17
    move-result-object v2

    #@18
    .line 1159
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1c
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1f
    move-result-object v3

    #@20
    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@23
    move-result v15

    #@24
    .line 1159
    const/4 v6, 0x0

    #@25
    .line 1160
    const/4 v7, -0x1

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v10, 0x0

    #@29
    const/4 v11, -0x1

    #@2a
    const/4 v12, 0x0

    #@2b
    const/4 v13, 0x0

    #@2c
    const/4 v14, 0x1

    #@2d
    move-object/from16 v4, p1

    #@2f
    .line 1158
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 1153
    return-void

    #@33
    .line 1162
    :catch_0
    move-exception v16

    #@34
    .line 1163
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@37
    move-result-object v2

    #@38
    throw v2
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v2

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 1225
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@c
    move-object/from16 v1, p0

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@11
    .line 1226
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@14
    move-result-object v2

    #@15
    .line 1227
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@19
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1c
    move-result-object v3

    #@1d
    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@20
    move-result v15

    #@21
    .line 1227
    const/4 v6, 0x0

    #@22
    .line 1228
    const/4 v7, -0x1

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v9, 0x0

    #@25
    const/4 v10, 0x0

    #@26
    const/4 v11, -0x1

    #@27
    const/4 v12, 0x0

    #@28
    const/4 v13, 0x0

    #@29
    const/4 v14, 0x1

    #@2a
    move-object/from16 v4, p1

    #@2c
    .line 1226
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 1222
    return-void

    #@30
    .line 1230
    :catch_0
    move-exception v16

    #@31
    .line 1231
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@34
    move-result-object v2

    #@35
    throw v2
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v2

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 1240
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@c
    move-object/from16 v1, p0

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@11
    .line 1241
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@14
    move-result-object v2

    #@15
    .line 1242
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@19
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1c
    move-result-object v3

    #@1d
    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@20
    move-result v15

    #@21
    .line 1242
    const/4 v6, 0x0

    #@22
    .line 1243
    const/4 v7, -0x1

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v9, 0x0

    #@25
    const/4 v10, 0x0

    #@26
    const/4 v11, -0x1

    #@27
    const/4 v13, 0x0

    #@28
    const/4 v14, 0x1

    #@29
    move-object/from16 v4, p1

    #@2b
    move-object/from16 v12, p3

    #@2d
    .line 1241
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 1237
    return-void

    #@31
    .line 1245
    :catch_0
    move-exception v16

    #@32
    .line 1246
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@35
    move-result-object v2

    #@36
    throw v2
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
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
    .line 1173
    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1174
    const/4 v6, 0x0

    #@4
    .line 1175
    .local v6, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_1

    #@6
    .line 1176
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 1177
    if-nez p3, :cond_0

    #@e
    .line 1178
    move-object/from16 v0, p0

    #@10
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@12
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object p3

    #@16
    .line 1180
    :cond_0
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@1a
    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1d
    move-result-object v4

    #@1e
    .line 1182
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@22
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@25
    move-result-object v6

    #@26
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    const/4 v7, 0x0

    #@27
    move-object/from16 v3, p2

    #@29
    move-object/from16 v5, p3

    #@2b
    .line 1180
    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2e
    move-result-object v6

    #@2f
    .line 1191
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 1193
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@3b
    move-object/from16 v1, p0

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@40
    .line 1194
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@43
    move-result-object v2

    #@44
    .line 1195
    move-object/from16 v0, p0

    #@46
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@48
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@4b
    move-result-object v3

    #@4c
    .line 1197
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    #@4f
    move-result v15

    #@50
    .line 1196
    const/4 v10, 0x0

    #@51
    .line 1197
    const/4 v11, -0x1

    #@52
    const/4 v12, 0x0

    #@53
    const/4 v13, 0x1

    #@54
    const/4 v14, 0x1

    #@55
    move-object/from16 v4, p1

    #@57
    move/from16 v7, p4

    #@59
    move-object/from16 v8, p5

    #@5b
    move-object/from16 v9, p6

    #@5d
    .line 1194
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 1172
    return-void

    #@61
    .line 1184
    .end local v5    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p3, :cond_3

    #@63
    .line 1185
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@67
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@6a
    move-result-object p3

    #@6b
    .line 1187
    :cond_3
    new-instance v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@6d
    .line 1188
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@70
    move-result-object v4

    #@71
    const/4 v6, 0x0

    #@72
    const/4 v7, 0x0

    #@73
    move-object/from16 v3, p2

    #@75
    move-object/from16 v5, p3

    #@77
    .line 1187
    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@7a
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@7d
    move-result-object v6

    #@7e
    .local v6, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@7f
    .line 1198
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    .restart local v5    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v16

    #@80
    .line 1199
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@83
    move-result-object v2

    #@84
    throw v2
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
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
    .line 1256
    const/4 v6, 0x0

    #@1
    .line 1257
    .local v6, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_1

    #@3
    .line 1258
    move-object/from16 v0, p0

    #@5
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@7
    if-eqz v2, :cond_2

    #@9
    .line 1259
    if-nez p4, :cond_0

    #@b
    .line 1260
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@f
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object p4

    #@13
    .line 1262
    :cond_0
    move-object/from16 v0, p0

    #@15
    iget-object v2, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@17
    .line 1263
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@1a
    move-result-object v4

    #@1b
    .line 1264
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1f
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@22
    move-result-object v6

    #@23
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    const/4 v7, 0x0

    #@24
    move-object/from16 v3, p3

    #@26
    move-object/from16 v5, p4

    #@28
    .line 1262
    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    #@2b
    move-result-object v6

    #@2c
    .line 1273
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v2

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    .line 1275
    .local v5, "resolvedType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    #@38
    move-object/from16 v1, p0

    #@3a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@3d
    .line 1276
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@40
    move-result-object v2

    #@41
    .line 1277
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@45
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@48
    move-result-object v3

    #@49
    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@4c
    move-result v15

    #@4d
    .line 1278
    const/4 v10, 0x0

    #@4e
    .line 1279
    const/4 v11, -0x1

    #@4f
    const/4 v12, 0x0

    #@50
    const/4 v13, 0x1

    #@51
    const/4 v14, 0x1

    #@52
    move-object/from16 v4, p1

    #@54
    move/from16 v7, p5

    #@56
    move-object/from16 v8, p6

    #@58
    move-object/from16 v9, p7

    #@5a
    .line 1276
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 1255
    return-void

    #@5e
    .line 1266
    .end local v5    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "rd":Landroid/content/IIntentReceiver;
    :cond_2
    if-nez p4, :cond_3

    #@60
    .line 1267
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@64
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@67
    move-result-object p4

    #@68
    .line 1269
    :cond_3
    new-instance v2, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@6a
    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@6d
    move-result-object v4

    #@6e
    const/4 v6, 0x0

    #@6f
    const/4 v7, 0x0

    #@70
    move-object/from16 v3, p3

    #@72
    move-object/from16 v5, p4

    #@74
    .line 1269
    invoke-direct/range {v2 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    #@77
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@7a
    move-result-object v6

    #@7b
    .local v6, "rd":Landroid/content/IIntentReceiver;
    goto :goto_0

    #@7c
    .line 1280
    .end local v6    # "rd":Landroid/content/IIntentReceiver;
    .restart local v5    # "resolvedType":Ljava/lang/String;
    :catch_0
    move-exception v16

    #@7d
    .line 1281
    .local v16, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@80
    move-result-object v2

    #@81
    throw v2
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2148
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    #@2
    .line 2147
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 253
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    #@6
    .line 254
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    #@9
    .line 251
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
    .line 774
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    #@7
    .line 773
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
    .line 780
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    #@7
    .line 779
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 840
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 841
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    #@7
    .line 839
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
    .line 860
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@5
    .line 861
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
    .line 862
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@12
    .line 863
    const-string/jumbo v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    #@15
    .line 862
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 867
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@1b
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@1e
    move-result-object v0

    #@1f
    .line 868
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
    .line 869
    check-cast v4, Landroid/app/Activity;

    #@2c
    move-object v5, p1

    #@2d
    move-object v6, p2

    #@2e
    .line 867
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    #@31
    .line 859
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
    .line 847
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
    .line 848
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@f
    .line 849
    const-string/jumbo v1, "Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    #@12
    .line 848
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 853
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@18
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@1b
    move-result-object v0

    #@1c
    .line 854
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
    .line 855
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
    .line 853
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    #@32
    .line 846
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 795
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 796
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@7
    .line 794
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 807
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@5
    .line 812
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@8
    move-result v0

    #@9
    const/high16 v1, 0x10000000

    #@b
    and-int/2addr v0, v1

    #@c
    if-nez v0, :cond_0

    #@e
    .line 813
    if-eqz p2, :cond_0

    #@10
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@17
    move-result v0

    #@18
    if-ne v0, v6, :cond_0

    #@1a
    .line 814
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@1c
    .line 815
    const-string/jumbo v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    #@1f
    .line 814
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 819
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@25
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@28
    move-result-object v0

    #@29
    .line 820
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@2f
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@32
    move-result-object v2

    #@33
    move-object v4, v3

    #@34
    .line 821
    check-cast v4, Landroid/app/Activity;

    #@36
    move-object v5, p1

    #@37
    move-object v7, p2

    #@38
    .line 819
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    #@3b
    .line 806
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 828
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 829
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
    .line 830
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@19
    move-result v11

    #@1a
    .line 831
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
    .line 828
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 826
    return-void

    #@26
    .line 833
    :catch_0
    move-exception v12

    #@27
    .line 834
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2a
    move-result-object v0

    #@2b
    throw v0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 802
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@4
    .line 801
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1527
    if-eqz p3, :cond_0

    #@2
    .line 1528
    const/4 v0, 0x0

    #@3
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@6
    .line 1530
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v0

    #@a
    .line 1531
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
    .line 1532
    const/4 v8, 0x0

    #@12
    move-object v1, p1

    #@13
    move-object v2, p2

    #@14
    move-object v4, p3

    #@15
    .line 1530
    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 1533
    :catch_0
    move-exception v9

    #@1b
    .line 1534
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1e
    move-result-object v0

    #@1f
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
    .line 876
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
    .line 875
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
    .line 884
    const/4 v4, 0x0

    #@1
    .line 885
    .local v4, "resolvedType":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@3
    .line 886
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    #@6
    .line 887
    invoke-virtual {p2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    #@9
    .line 888
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 890
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@14
    move-result-object v0

    #@15
    .line 891
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@17
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@1a
    move-result-object v1

    #@1b
    .line 892
    const/4 v5, 0x0

    #@1c
    const/4 v6, 0x0

    #@1d
    .line 893
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
    .line 890
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    #@29
    move-result v12

    #@2a
    .line 894
    .local v12, "result":I
    const/4 v0, -0x6

    #@2b
    if-ne v12, v0, :cond_1

    #@2d
    .line 895
    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    #@2f
    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    #@32
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 898
    .end local v12    # "result":I
    :catch_0
    move-exception v11

    #@34
    .line 899
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@37
    move-result-object v0

    #@38
    throw v0

    #@39
    .line 897
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v12    # "result":I
    :cond_1
    const/4 v0, 0x0

    #@3a
    :try_start_1
    invoke-static {v12, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3d
    .line 882
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1385
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1386
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
    .line 1397
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
    .line 1391
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    #@3
    .line 1392
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
    .line 1426
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
    .line 1507
    if-nez p1, :cond_0

    #@2
    .line 1508
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "connection is null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1510
    :cond_0
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1511
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@11
    .line 1512
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@14
    move-result-object v3

    #@15
    .line 1511
    invoke-virtual {v2, v3, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    #@18
    move-result-object v1

    #@19
    .line 1514
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
    .line 1506
    return-void

    #@21
    .line 1515
    :catch_0
    move-exception v0

    #@22
    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@25
    move-result-object v2

    #@26
    throw v2

    #@27
    .line 1519
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "sd":Landroid/app/IServiceConnection;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@29
    const-string/jumbo v3, "Not supported in system context"

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 1357
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1358
    iget-object v2, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@6
    .line 1359
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@9
    move-result-object v3

    #@a
    .line 1358
    invoke-virtual {v2, v3, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    #@d
    move-result-object v1

    #@e
    .line 1361
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
    .line 1356
    return-void

    #@16
    .line 1362
    :catch_0
    move-exception v0

    #@17
    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v2

    #@1b
    throw v2

    #@1c
    .line 1366
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "rd":Landroid/content/IIntentReceiver;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@1e
    const-string/jumbo v3, "Not supported in system context"

    #@21
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2
.end method
