.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$ServiceDispatcher;,
        Landroid/app/LoadedApk$WarningContextClassLoader;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LoadedApk"


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field private mCredentialProtectedDataDirFile:Ljava/io/File;

.field private mDataDir:Ljava/lang/String;

.field private mDataDirFile:Ljava/io/File;

.field private mDeviceProtectedDataDirFile:Ljava/io/File;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mIncludeCode:Z

.field private mLibDir:Ljava/lang/String;

.field private mOverlayDirs:[Ljava/lang/String;

.field final mPackageName:Ljava/lang/String;

.field private final mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRegisterPackage:Z

.field private mResDir:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSharedLibraries:[Ljava/lang/String;

.field private mSplitAppDirs:[Ljava/lang/String;

.field private mSplitResDirs:[Ljava/lang/String;

.field private final mUnboundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/app/LoadedApk;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/app/LoadedApk;->-assertionsDisabled:Z

    #@b
    .line 88
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 4
    .param p1, "activityThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 110
    new-instance v0, Landroid/view/DisplayAdjustments;

    #@7
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@c
    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    .line 116
    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@13
    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    #@15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@18
    .line 118
    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@1a
    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1f
    .line 120
    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@21
    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    #@23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@26
    .line 122
    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@28
    .line 125
    iput v3, p0, Landroid/app/LoadedApk;->mClientCount:I

    #@2a
    .line 183
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@2c
    .line 184
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@2e
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@31
    iput-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    .line 185
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    const-string/jumbo v1, "android"

    #@38
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3a
    .line 186
    const-string/jumbo v0, "android"

    #@3d
    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@3f
    .line 187
    iput-object v2, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@41
    .line 188
    iput-object v2, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@43
    .line 189
    iput-object v2, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@45
    .line 190
    iput-object v2, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@47
    .line 191
    iput-object v2, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@49
    .line 192
    iput-object v2, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    #@4b
    .line 193
    iput-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@4d
    .line 194
    iput-object v2, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    #@4f
    .line 195
    iput-object v2, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    #@51
    .line 196
    iput-object v2, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    #@53
    .line 197
    iput-object v2, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@55
    .line 198
    iput-object v2, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@57
    .line 199
    iput-boolean v3, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    #@59
    .line 200
    const/4 v0, 0x1

    #@5a
    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    #@5c
    .line 201
    iput-boolean v3, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    #@5e
    .line 202
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@64
    .line 203
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@67
    move-result-object v0

    #@68
    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@6a
    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V
    .locals 1
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p5, "securityViolation"    # Z
    .param p6, "includeCode"    # Z
    .param p7, "registerPackage"    # Z

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    new-instance v0, Landroid/view/DisplayAdjustments;

    #@5
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 116
    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@11
    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    #@13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@16
    .line 118
    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@18
    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    #@1a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1d
    .line 120
    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@1f
    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    .line 122
    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@26
    .line 125
    const/4 v0, 0x0

    #@27
    iput v0, p0, Landroid/app/LoadedApk;->mClientCount:I

    #@29
    .line 141
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@2b
    .line 142
    invoke-direct {p0, p2}, Landroid/app/LoadedApk;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    #@2e
    .line 143
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@30
    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@32
    .line 144
    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@34
    .line 145
    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    #@36
    .line 146
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    #@38
    .line 147
    iput-boolean p7, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    #@3a
    .line 148
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@3c
    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@3f
    .line 139
    return-void
.end method

.method private static adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 155
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@2
    if-eqz v4, :cond_1

    #@4
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 156
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 160
    .local v1, "runtimeIsa":Ljava/lang/String;
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@12
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 161
    .local v3, "secondaryIsa":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "ro.dalvik.vm.isa."

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 162
    .local v2, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_0

    #@34
    .line 167
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_1

    #@3a
    .line 168
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@3c
    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    #@3f
    .line 169
    .local v0, "modified":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@41
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@43
    .line 170
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@45
    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@47
    .line 171
    return-object v0

    #@48
    .end local v0    # "modified":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move-object v3, v2

    #@49
    .line 162
    goto :goto_0

    #@4a
    .line 175
    .end local v1    # "runtimeIsa":Ljava/lang/String;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private createOrUpdateClassLoaderLocked(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 423
    .local p1, "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@2
    const-string/jumbo v2, "android"

    #@5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 426
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 428
    return-void

    #@10
    .line 431
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 432
    iget-object v0, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@16
    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@18
    .line 437
    :goto_0
    return-void

    #@19
    .line 434
    :cond_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@1f
    goto :goto_0

    #@20
    .line 443
    :cond_2
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@22
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_3

    #@2c
    .line 444
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@33
    .line 446
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@36
    move-result-object v0

    #@37
    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@39
    .line 447
    const/4 v6, 0x6

    #@3a
    .line 446
    invoke-interface {v0, v2, v6}, Landroid/content/pm/IPackageManager;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 453
    :cond_3
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    #@3f
    if-eqz v0, :cond_4

    #@41
    .line 455
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@44
    move-result-object v0

    #@45
    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@47
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@4a
    .line 467
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    #@4c
    const/16 v0, 0xa

    #@4e
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@51
    .line 468
    .local v13, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@53
    const/16 v0, 0xa

    #@55
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@58
    .line 469
    .local v9, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@5a
    iget-object v2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5c
    invoke-static {v0, v2, v13, v9}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    #@5f
    .line 471
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@61
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 472
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@69
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_7

    #@6f
    const/4 v3, 0x0

    #@70
    .line 474
    .local v3, "isBundledApp":Z
    :goto_1
    iget-object v5, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@72
    .line 475
    .local v5, "libraryPermittedPath":Ljava/lang/String;
    if-eqz v3, :cond_5

    #@74
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@7f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    .line 479
    const-string/jumbo v2, "java.library.path"

    #@86
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    .line 482
    :cond_5
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@94
    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    .line 489
    .local v4, "librarySearchPath":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    #@9a
    if-nez v0, :cond_9

    #@9c
    .line 490
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@9e
    if-nez v0, :cond_6

    #@a0
    .line 491
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@a3
    move-result-object v11

    #@a4
    .line 492
    .local v11, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    #@a7
    move-result-object v0

    #@a8
    .line 493
    const-string/jumbo v1, ""

    #@ab
    iget-object v2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ad
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@af
    .line 494
    iget-object v6, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@b1
    .line 492
    invoke-virtual/range {v0 .. v6}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@b4
    move-result-object v0

    #@b5
    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@b7
    .line 495
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@ba
    .line 498
    .end local v11    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_6
    return-void

    #@bb
    .line 448
    .end local v3    # "isBundledApp":Z
    .end local v4    # "librarySearchPath":Ljava/lang/String;
    .end local v5    # "libraryPermittedPath":Ljava/lang/String;
    .end local v9    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v12

    #@bc
    .line 449
    .local v12, "re":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@bf
    move-result-object v0

    #@c0
    throw v0

    #@c1
    .line 456
    .end local v12    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    #@c2
    .line 457
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c5
    move-result-object v0

    #@c6
    throw v0

    #@c7
    .line 472
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v9    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const/4 v3, 0x1

    #@c8
    .restart local v3    # "isBundledApp":Z
    goto :goto_1

    #@c9
    .line 471
    .end local v3    # "isBundledApp":Z
    :cond_8
    const/4 v3, 0x0

    #@ca
    .restart local v3    # "isBundledApp":Z
    goto :goto_1

    #@cb
    .line 507
    .restart local v4    # "librarySearchPath":Ljava/lang/String;
    .restart local v5    # "libraryPermittedPath":Ljava/lang/String;
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@ce
    move-result v0

    #@cf
    const/4 v2, 0x1

    #@d0
    if-ne v0, v2, :cond_d

    #@d2
    const/4 v0, 0x0

    #@d3
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d6
    move-result-object v1

    #@d7
    check-cast v1, Ljava/lang/String;

    #@d9
    .line 514
    .local v1, "zip":Ljava/lang/String;
    :goto_2
    const/4 v10, 0x0

    #@da
    .line 515
    .local v10, "needToSetupJitProfiles":Z
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@dc
    if-nez v0, :cond_a

    #@de
    .line 518
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@e1
    move-result-object v11

    #@e2
    .line 520
    .restart local v11    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    #@e5
    move-result-object v0

    #@e6
    .line 521
    iget-object v2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e8
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@ea
    .line 522
    iget-object v6, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@ec
    .line 520
    invoke-virtual/range {v0 .. v6}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@ef
    move-result-object v0

    #@f0
    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@f2
    .line 524
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@f5
    .line 526
    const/4 v10, 0x1

    #@f6
    .line 529
    .end local v11    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_a
    if-eqz p1, :cond_b

    #@f8
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@fb
    move-result v0

    #@fc
    if-lez v0, :cond_b

    #@fe
    .line 530
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@100
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@103
    move-result-object v7

    #@104
    .line 531
    .local v7, "add":Ljava/lang/String;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    #@107
    move-result-object v0

    #@108
    iget-object v2, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@10a
    invoke-virtual {v0, v2, v7}, Landroid/app/ApplicationLoaders;->addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@10d
    .line 533
    const/4 v10, 0x1

    #@10e
    .line 545
    .end local v7    # "add":Ljava/lang/String;
    :cond_b
    if-eqz v10, :cond_c

    #@110
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    #@113
    move-result v0

    #@114
    if-eqz v0, :cond_e

    #@116
    .line 422
    :cond_c
    :goto_3
    return-void

    #@117
    .line 508
    .end local v1    # "zip":Ljava/lang/String;
    .end local v10    # "needToSetupJitProfiles":Z
    :cond_d
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@119
    invoke-static {v0, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@11c
    move-result-object v1

    #@11d
    .restart local v1    # "zip":Ljava/lang/String;
    goto :goto_2

    #@11e
    .line 546
    .restart local v10    # "needToSetupJitProfiles":Z
    :cond_e
    invoke-direct {p0}, Landroid/app/LoadedApk;->setupJitProfileSupport()V

    #@121
    goto :goto_3
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 249
    const/4 v0, 0x0

    #@2
    .line 251
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@5
    move-result-object v2

    #@6
    .line 252
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x400

    #@c
    .line 251
    invoke-interface {v2, p0, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v0

    #@10
    .line 257
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    #@12
    .line 258
    return-object v5

    #@13
    .line 253
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@14
    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v2

    #@18
    throw v2

    #@19
    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@1b
    return-object v2
.end method

.method private static getPrimaryProfileFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 562
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    .line 561
    invoke-static {v1, p0}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    .line 563
    .local v0, "profileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@a
    const-string/jumbo v2, "primary.prof"

    #@d
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    return-object v1
.end method

.method private initializeJavaContextClassLoader()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 625
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v3

    #@5
    .line 628
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@7
    .line 629
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a
    move-result v8

    #@b
    .line 628
    const/high16 v9, 0x10000000

    #@d
    invoke-interface {v3, v7, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    .line 633
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    #@13
    .line 634
    new-instance v7, Ljava/lang/IllegalStateException;

    #@15
    new-instance v8, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v9, "Unable to get package info for "

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    .line 635
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@23
    .line 634
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    .line 635
    const-string/jumbo v9, "; is package not installed?"

    #@2a
    .line 634
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v7

    #@36
    .line 630
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    #@37
    .line 631
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3a
    move-result-object v7

    #@3b
    throw v7

    #@3c
    .line 649
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@3e
    if-eqz v7, :cond_1

    #@40
    const/4 v6, 0x1

    #@41
    .line 651
    .local v6, "sharedUserIdSet":Z
    :goto_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43
    if-eqz v7, :cond_3

    #@45
    .line 652
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@47
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_2

    #@51
    const/4 v4, 0x0

    #@52
    .line 653
    .local v4, "processNameNotDefault":Z
    :goto_1
    if-nez v6, :cond_4

    #@54
    move v5, v4

    #@55
    .line 655
    .local v5, "sharable":Z
    :goto_2
    if-eqz v5, :cond_5

    #@57
    .line 656
    new-instance v0, Landroid/app/LoadedApk$WarningContextClassLoader;

    #@59
    invoke-direct {v0, v10}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$WarningContextClassLoader;)V

    #@5c
    .line 658
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@63
    .line 624
    return-void

    #@64
    .line 649
    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v4    # "processNameNotDefault":Z
    .end local v5    # "sharable":Z
    .end local v6    # "sharedUserIdSet":Z
    :cond_1
    const/4 v6, 0x0

    #@65
    .restart local v6    # "sharedUserIdSet":Z
    goto :goto_0

    #@66
    .line 652
    :cond_2
    const/4 v4, 0x1

    #@67
    .restart local v4    # "processNameNotDefault":Z
    goto :goto_1

    #@68
    .line 651
    .end local v4    # "processNameNotDefault":Z
    :cond_3
    const/4 v4, 0x0

    #@69
    .restart local v4    # "processNameNotDefault":Z
    goto :goto_1

    #@6a
    .line 653
    :cond_4
    const/4 v5, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 657
    .restart local v5    # "sharable":Z
    :cond_5
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@6e
    .restart local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    goto :goto_3
.end method

.method public static makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 318
    .local p2, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@2
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@4
    .line 319
    .local v4, "appDir":Ljava/lang/String;
    move-object/from16 v0, p1

    #@6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@8
    move-object/from16 v16, v0

    #@a
    .line 320
    .local v16, "splitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@c
    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@e
    .line 321
    .local v14, "libDir":Ljava/lang/String;
    move-object/from16 v0, p1

    #@10
    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@12
    .line 323
    .local v15, "sharedLibraries":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    #@15
    .line 324
    move-object/from16 v0, p2

    #@17
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 325
    if-eqz v16, :cond_0

    #@1c
    .line 326
    move-object/from16 v0, p2

    #@1e
    move-object/from16 v1, v16

    #@20
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@23
    .line 329
    :cond_0
    if-eqz p3, :cond_1

    #@25
    .line 330
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    #@28
    .line 342
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v8, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    #@2c
    .line 343
    .local v8, "instrumentationPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e
    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    #@30
    .line 344
    .local v5, "instrumentationAppDir":Ljava/lang/String;
    move-object/from16 v0, p0

    #@32
    iget-object v9, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    #@34
    .line 345
    .local v9, "instrumentationSplitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@36
    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    #@38
    .line 347
    .local v6, "instrumentationLibDir":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3a
    iget-object v10, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    #@3c
    .line 348
    .local v10, "instrumentedAppDir":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3e
    iget-object v12, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    #@40
    .line 349
    .local v12, "instrumentedSplitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@42
    iget-object v11, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    #@44
    .line 350
    .local v11, "instrumentedLibDir":Ljava/lang/String;
    const/4 v7, 0x0

    #@45
    .line 352
    .local v7, "instrumentationLibs":[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v17

    #@49
    if-nez v17, :cond_2

    #@4b
    .line 353
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v17

    #@4f
    .line 352
    if-eqz v17, :cond_6

    #@51
    .line 354
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    #@54
    .line 355
    move-object/from16 v0, p2

    #@56
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@59
    .line 356
    if-eqz v9, :cond_3

    #@5b
    .line 357
    move-object/from16 v0, p2

    #@5d
    invoke-static {v0, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@60
    .line 359
    :cond_3
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v17

    #@64
    if-nez v17, :cond_4

    #@66
    .line 360
    move-object/from16 v0, p2

    #@68
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    .line 361
    if-eqz v12, :cond_4

    #@6d
    .line 362
    move-object/from16 v0, p2

    #@6f
    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@72
    .line 366
    :cond_4
    if-eqz p3, :cond_5

    #@74
    .line 367
    move-object/from16 v0, p3

    #@76
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@79
    .line 368
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v17

    #@7d
    if-nez v17, :cond_5

    #@7f
    .line 369
    move-object/from16 v0, p3

    #@81
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@84
    .line 373
    :cond_5
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v17

    #@88
    if-nez v17, :cond_6

    #@8a
    .line 374
    invoke-static {v8}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    #@8d
    move-result-object v7

    #@8e
    .line 378
    .end local v7    # "instrumentationLibs":[Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_b

    #@90
    .line 379
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    #@93
    move-result v17

    #@94
    if-eqz v17, :cond_7

    #@96
    .line 380
    move-object/from16 v0, p3

    #@98
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9b
    .line 385
    :cond_7
    move-object/from16 v0, p1

    #@9d
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@9f
    move-object/from16 v17, v0

    #@a1
    if-eqz v17, :cond_a

    #@a3
    .line 387
    move-object/from16 v0, p1

    #@a5
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a7
    move/from16 v17, v0

    #@a9
    const/16 v18, 0x17

    #@ab
    move/from16 v0, v17

    #@ad
    move/from16 v1, v18

    #@af
    if-gt v0, v1, :cond_8

    #@b1
    .line 388
    new-instance v17, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v18, "/system/fake-libs"

    #@b9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v18

    #@bd
    .line 389
    move-object/from16 v0, p1

    #@bf
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@c1
    move-object/from16 v17, v0

    #@c3
    invoke-static/range {v17 .. v17}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    #@c6
    move-result v17

    #@c7
    if-eqz v17, :cond_9

    #@c9
    const-string/jumbo v17, "64"

    #@cc
    .line 388
    :goto_0
    move-object/from16 v0, v18

    #@ce
    move-object/from16 v1, v17

    #@d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v17

    #@d4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v17

    #@d8
    move-object/from16 v0, p3

    #@da
    move-object/from16 v1, v17

    #@dc
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@df
    .line 391
    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e2
    move-result-object v3

    #@e3
    .local v3, "apk$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e6
    move-result v17

    #@e7
    if-eqz v17, :cond_a

    #@e9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ec
    move-result-object v2

    #@ed
    check-cast v2, Ljava/lang/String;

    #@ef
    .line 392
    .local v2, "apk":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    move-object/from16 v0, v17

    #@f6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v17

    #@fa
    const-string/jumbo v18, "!/lib/"

    #@fd
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v17

    #@101
    move-object/from16 v0, p1

    #@103
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@105
    move-object/from16 v18, v0

    #@107
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v17

    #@10b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v17

    #@10f
    move-object/from16 v0, p3

    #@111
    move-object/from16 v1, v17

    #@113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@116
    goto :goto_1

    #@117
    .line 389
    .end local v2    # "apk":Ljava/lang/String;
    .end local v3    # "apk$iterator":Ljava/util/Iterator;
    :cond_9
    const-string/jumbo v17, ""

    #@11a
    goto :goto_0

    #@11b
    .line 396
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@11e
    move-result v17

    #@11f
    if-eqz v17, :cond_b

    #@121
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@124
    move-result v17

    #@125
    if-eqz v17, :cond_d

    #@127
    .line 405
    :cond_b
    :goto_2
    if-eqz v15, :cond_e

    #@129
    .line 406
    const/16 v17, 0x0

    #@12b
    array-length v0, v15

    #@12c
    move/from16 v18, v0

    #@12e
    :goto_3
    move/from16 v0, v17

    #@130
    move/from16 v1, v18

    #@132
    if-ge v0, v1, :cond_e

    #@134
    aget-object v13, v15, v17

    #@136
    .line 407
    .local v13, "lib":Ljava/lang/String;
    move-object/from16 v0, p2

    #@138
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13b
    move-result v19

    #@13c
    if-nez v19, :cond_c

    #@13e
    .line 408
    const/16 v19, 0x0

    #@140
    move-object/from16 v0, p2

    #@142
    move/from16 v1, v19

    #@144
    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@147
    .line 406
    :cond_c
    add-int/lit8 v17, v17, 0x1

    #@149
    goto :goto_3

    #@14a
    .line 401
    .end local v13    # "lib":Ljava/lang/String;
    :cond_d
    const-string/jumbo v17, "java.library.path"

    #@14d
    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@150
    move-result-object v17

    #@151
    move-object/from16 v0, p3

    #@153
    move-object/from16 v1, v17

    #@155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@158
    goto :goto_2

    #@159
    .line 413
    :cond_e
    if-eqz v7, :cond_10

    #@15b
    .line 414
    const/16 v17, 0x0

    #@15d
    array-length v0, v7

    #@15e
    move/from16 v18, v0

    #@160
    :goto_4
    move/from16 v0, v17

    #@162
    move/from16 v1, v18

    #@164
    if-ge v0, v1, :cond_10

    #@166
    aget-object v13, v7, v17

    #@168
    .line 415
    .restart local v13    # "lib":Ljava/lang/String;
    move-object/from16 v0, p2

    #@16a
    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@16d
    move-result v19

    #@16e
    if-nez v19, :cond_f

    #@170
    .line 416
    const/16 v19, 0x0

    #@172
    move-object/from16 v0, p2

    #@174
    move/from16 v1, v19

    #@176
    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@179
    .line 414
    :cond_f
    add-int/lit8 v17, v17, 0x1

    #@17b
    goto :goto_4

    #@17c
    .line 317
    .end local v13    # "lib":Ljava/lang/String;
    :cond_10
    return-void
.end method

.method private rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 11
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    #@0
    .prologue
    .line 844
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v7

    #@9
    const-string/jumbo v8, ".R"

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {p1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v6

    #@18
    .line 854
    .local v6, "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v7, "onResourcesLoaded"

    #@1b
    const/4 v8, 0x1

    #@1c
    new-array v8, v8, [Ljava/lang/Class;

    #@1e
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    const/4 v10, 0x0

    #@21
    aput-object v9, v8, v10

    #@23
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@26
    move-result-object v0

    #@27
    .line 862
    .local v0, "callback":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    #@28
    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    #@2a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v8

    #@2e
    const/4 v9, 0x0

    #@2f
    aput-object v8, v7, v9

    #@31
    const/4 v8, 0x0

    #@32
    invoke-virtual {v0, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    #@35
    .line 863
    return-void

    #@36
    .line 845
    .end local v0    # "callback":Ljava/lang/reflect/Method;
    .end local v6    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@37
    .line 848
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "LoadedApk"

    #@3a
    new-instance v8, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v9, "No resource references to update in package "

    #@42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 849
    return-void

    #@52
    .line 855
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    #@53
    .line 857
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    return-void

    #@54
    .line 866
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "callback":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v5

    #@55
    .line 867
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@58
    move-result-object v1

    #@59
    .line 870
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_0
    new-instance v7, Ljava/lang/RuntimeException;

    #@5b
    new-instance v8, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v9, "Failed to rewrite resource references for "

    #@63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@72
    throw v7

    #@73
    .line 864
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    #@74
    .line 865
    .local v3, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v3

    #@75
    .restart local v1    # "cause":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 300
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    .line 301
    .local v0, "myUid":I
    invoke-static {p1}, Landroid/app/LoadedApk;->adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object p1

    #@8
    .line 302
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    .line 303
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@c
    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@e
    .line 304
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@10
    if-ne v1, v0, :cond_0

    #@12
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@14
    :goto_0
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@16
    .line 305
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@18
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@1a
    .line 306
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1c
    if-ne v1, v0, :cond_1

    #@1e
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@20
    :goto_1
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@22
    .line 307
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@24
    iput-object v1, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@26
    .line 308
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@28
    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    #@2a
    .line 309
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@2c
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@2e
    .line 310
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@30
    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@32
    .line 311
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@34
    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    #@37
    move-result-object v1

    #@38
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    #@3a
    .line 312
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    #@3c
    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    #@42
    .line 313
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    #@44
    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    #@4a
    .line 299
    return-void

    #@4b
    .line 304
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@4d
    goto :goto_0

    #@4e
    .line 306
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@50
    goto :goto_1
.end method

.method private setupJitProfileSupport()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 567
    const-string/jumbo v3, "dalvik.vm.usejitprofiles"

    #@4
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 568
    return-void

    #@b
    .line 575
    :cond_0
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@f
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v4

    #@13
    if-eq v3, v4, :cond_1

    #@15
    .line 576
    return-void

    #@16
    .line 579
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 580
    .local v0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1f
    and-int/lit8 v3, v3, 0x4

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 581
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@27
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 583
    :cond_2
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2c
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2e
    if-eqz v3, :cond_3

    #@30
    .line 584
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@32
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@34
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@37
    .line 587
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_4

    #@3d
    .line 590
    return-void

    #@3e
    .line 593
    :cond_4
    iget-object v3, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@40
    invoke-static {v3}, Landroid/app/LoadedApk;->getPrimaryProfileFile(Ljava/lang/String;)Ljava/io/File;

    #@43
    move-result-object v2

    #@44
    .line 595
    .local v2, "profileFile":Ljava/io/File;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@47
    move-result v3

    #@48
    invoke-static {v3}, Landroid/os/Environment;->getDataProfilesDeForeignDexDirectory(I)Ljava/io/File;

    #@4b
    move-result-object v1

    #@4c
    .line 597
    .local v1, "foreignDexProfilesFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@54
    .line 598
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@57
    move-result v3

    #@58
    new-array v3, v3, [Ljava/lang/String;

    #@5a
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, [Ljava/lang/String;

    #@60
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 597
    invoke-static {v4, v5, v3, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 566
    return-void
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 965
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 966
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/util/ArrayMap;

    #@b
    .line 967
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    #@c
    .line 968
    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    #@e
    .line 969
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@14
    .line 970
    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    #@16
    .line 971
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 972
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 973
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 975
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 977
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/util/ArrayMap;

    #@32
    .line 978
    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    #@34
    .line 979
    new-instance v1, Landroid/util/ArrayMap;

    #@36
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@39
    .line 980
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 982
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    .line 983
    const-string/jumbo v4, "Originally unregistered here:"

    #@43
    .line 982
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    .line 984
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@49
    .line 985
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    #@4c
    .line 986
    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 988
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    const/4 v4, 0x1

    #@50
    iput-boolean v4, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    #@52
    .line 989
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    move-result-object v4

    #@56
    monitor-exit v5

    #@57
    return-object v4

    #@58
    .line 993
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Landroid/util/ArrayMap;

    #@60
    .line 994
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    #@62
    .line 995
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@68
    .line 996
    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    #@6a
    .line 997
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    #@6d
    move-result-object v0

    #@6e
    .line 998
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@70
    .line 999
    new-instance v6, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v7, "Unregistering Receiver "

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    .line 1000
    const-string/jumbo v7, " that was already unregistered"

    #@83
    .line 999
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    .line 998
    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8e
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    .line 965
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_0
    move-exception v4

    #@90
    monitor-exit v5

    #@91
    throw v4

    #@92
    .line 1003
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_4
    if-nez p1, :cond_5

    #@94
    .line 1004
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    #@96
    new-instance v6, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v7, "Unbinding Receiver "

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    .line 1005
    const-string/jumbo v7, " from Context that is no longer in use: "

    #@a9
    .line 1004
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v6

    #@b1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v6

    #@b5
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v4

    #@b9
    .line 1007
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@bb
    new-instance v6, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v7, "Receiver not registered: "

    #@c3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 1246
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 1248
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/util/ArrayMap;

    #@b
    .line 1249
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    #@c
    .line 1250
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    #@e
    .line 1251
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    #@14
    .line 1252
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    #@16
    .line 1253
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 1254
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    #@1c
    .line 1255
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_0

    #@22
    .line 1256
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@24
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 1258
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    #@2a
    move-result v4

    #@2b
    and-int/lit8 v4, v4, 0x2

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 1260
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/util/ArrayMap;

    #@37
    .line 1261
    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    #@39
    .line 1262
    new-instance v1, Landroid/util/ArrayMap;

    #@3b
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@3e
    .line 1263
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 1265
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    .line 1266
    const-string/jumbo v4, "Originally unbound here:"

    #@48
    .line 1265
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    .line 1267
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@4e
    .line 1268
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    #@51
    .line 1269
    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 1271
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    move-result-object v4

    #@58
    monitor-exit v5

    #@59
    return-object v4

    #@5a
    .line 1275
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@5c
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Landroid/util/ArrayMap;

    #@62
    .line 1276
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    #@64
    .line 1277
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    #@6a
    .line 1278
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    #@6c
    .line 1279
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    #@6f
    move-result-object v0

    #@70
    .line 1280
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@72
    .line 1281
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "Unbinding Service "

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    .line 1282
    const-string/jumbo v7, " that was already unbound"

    #@85
    .line 1281
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 1280
    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@90
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@91
    .line 1246
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v4

    #@92
    monitor-exit v5

    #@93
    throw v4

    #@94
    .line 1285
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_4
    if-nez p1, :cond_5

    #@96
    .line 1286
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    #@98
    new-instance v6, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v7, "Unbinding Service "

    #@a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v6

    #@a8
    .line 1287
    const-string/jumbo v7, " from Context that is no longer in use: "

    #@ab
    .line 1286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v6

    #@af
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v6

    #@b7
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v4

    #@bb
    .line 1289
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@bd
    new-instance v6, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v7, "Service not registered: "

    #@c5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v6

    #@c9
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v6

    #@cd
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v6

    #@d1
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 761
    invoke-virtual {p0, p1}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 551
    monitor-enter p0

    #@1
    .line 552
    :try_start_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 553
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    #@9
    .line 555
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    .line 551
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCredentialProtectedDataDirFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 757
    iget-object v0, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 749
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public getDeviceProtectedDataDirFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 725
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOverlayDirs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .param p1, "r"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    #@0
    .prologue
    .line 936
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v10

    #@3
    .line 937
    const/4 v1, 0x0

    #@4
    .line 938
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    #@5
    .line 939
    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    #@7
    .line 940
    :try_start_0
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    move-object v0, v2

    #@e
    check-cast v0, Landroid/util/ArrayMap;

    #@10
    move-object v7, v0

    #@11
    .line 941
    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v7, :cond_3

    #@13
    .line 942
    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    move-object v0, v2

    #@18
    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@1a
    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    move-object v8, v7

    #@1c
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    #@1d
    .line 945
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    #@1f
    .line 946
    :try_start_1
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@21
    move-object v2, p1

    #@22
    move-object v3, p2

    #@23
    move-object v4, p3

    #@24
    move-object v5, p4

    #@25
    move/from16 v6, p5

    #@27
    invoke-direct/range {v1 .. v6}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    .line 948
    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    #@2c
    .line 949
    if-nez v8, :cond_1

    #@2e
    .line 950
    :try_start_2
    new-instance v7, Landroid/util/ArrayMap;

    #@30
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@33
    .line 951
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {v2, p2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 953
    :goto_1
    invoke-virtual {v7, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 958
    :goto_2
    const/4 v2, 0x0

    #@3c
    iput-boolean v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    #@3e
    .line 959
    invoke-virtual {v1}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    move-result-object v2

    #@42
    monitor-exit v10

    #@43
    return-object v2

    #@44
    .line 956
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@47
    move-object v7, v8

    #@48
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    #@49
    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_2

    #@4a
    .line 936
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_0
    move-exception v2

    #@4b
    :goto_3
    monitor-exit v10

    #@4c
    throw v2

    #@4d
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    #@4e
    move-object v7, v8

    #@4f
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v1, v9

    #@50
    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_3

    #@51
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    #@52
    move-object v7, v8

    #@53
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_3

    #@54
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    #@55
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_1

    #@56
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    #@57
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    goto :goto_2

    #@58
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_3
    move-object v8, v7

    #@59
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    move-object v9, v1

    #@5a
    .restart local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 766
    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@8
    iget-object v3, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@a
    .line 767
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@e
    const/4 v5, 0x0

    #@f
    move-object v0, p1

    #@10
    move-object v6, p0

    #@11
    .line 766
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@17
    .line 769
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@19
    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1224
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 1225
    const/4 v2, 0x0

    #@4
    .line 1226
    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/util/ArrayMap;

    #@c
    .line 1227
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    #@e
    .line 1228
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    move-object v0, v4

    #@13
    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    #@15
    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    move-object v3, v2

    #@17
    .line 1230
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    #@19
    .line 1231
    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    #@1b
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 1232
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    #@20
    .line 1233
    :try_start_2
    new-instance v1, Landroid/util/ArrayMap;

    #@22
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@25
    .line 1234
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v4, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1236
    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 1240
    :goto_1
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    move-result-object v4

    #@31
    monitor-exit v5

    #@32
    return-object v4

    #@33
    .line 1238
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@36
    move-object v2, v3

    #@37
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_1

    #@38
    .line 1224
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_0
    move-exception v4

    #@39
    :goto_2
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :catchall_1
    move-exception v4

    #@3c
    move-object v2, v3

    #@3d
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_2

    #@3e
    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :cond_2
    move-object v3, v2

    #@3f
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_0
.end method

.method public getSplitAppDirs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 733
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSplitResDirs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 737
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTargetSdkVersion()I
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4
    return v0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 210
    sget-boolean v0, Landroid/app/LoadedApk;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "android"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    .line 211
    :cond_0
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17
    .line 212
    iput-object p2, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@19
    .line 209
    return-void
.end method

.method public isSecurityViolation()Z
    .locals 1

    #@0
    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    #@2
    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 12
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    #@0
    .prologue
    .line 774
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@2
    if-eqz v9, :cond_0

    #@4
    .line 775
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@6
    return-object v9

    #@7
    .line 778
    :cond_0
    const-string/jumbo v9, "makeApplication"

    #@a
    const-wide/16 v10, 0x40

    #@c
    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@f
    .line 780
    const/4 v1, 0x0

    #@10
    .line 782
    .local v1, "app":Landroid/app/Application;
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@14
    .line 783
    .local v2, "appClass":Ljava/lang/String;
    if-nez p1, :cond_1

    #@16
    if-nez v2, :cond_2

    #@18
    .line 784
    :cond_1
    const-string/jumbo v2, "android.app.Application"

    #@1b
    .line 788
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@1e
    move-result-object v4

    #@1f
    .line 789
    .local v4, "cl":Ljava/lang/ClassLoader;
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@21
    const-string/jumbo v10, "android"

    #@24
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v9

    #@28
    if-nez v9, :cond_3

    #@2a
    .line 791
    const-string/jumbo v9, "initializeJavaContextClassLoader"

    #@2d
    .line 790
    const-wide/16 v10, 0x40

    #@2f
    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@32
    .line 792
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    #@35
    .line 793
    const-wide/16 v10, 0x40

    #@37
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@3a
    .line 795
    :cond_3
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@3c
    invoke-static {v9, p0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@3f
    move-result-object v3

    #@40
    .line 796
    .local v3, "appContext":Landroid/app/ContextImpl;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@42
    iget-object v9, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@44
    invoke-virtual {v9, v4, v2, v3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    #@47
    move-result-object v1

    #@48
    .line 798
    .local v1, "app":Landroid/app/Application;
    invoke-virtual {v3, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 807
    .end local v1    # "app":Landroid/app/Application;
    .end local v3    # "appContext":Landroid/app/ContextImpl;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@4d
    iget-object v9, v9, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@52
    .line 808
    iput-object v1, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@54
    .line 810
    if-eqz p2, :cond_5

    #@56
    .line 812
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@59
    .line 824
    :cond_5
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@5b
    invoke-virtual {p0, v9}, Landroid/app/LoadedApk;->getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    #@62
    move-result-object v8

    #@63
    .line 826
    .local v8, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@66
    move-result v0

    #@67
    .line 827
    .local v0, "N":I
    const/4 v6, 0x0

    #@68
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_8

    #@6a
    .line 828
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@6d
    move-result v7

    #@6e
    .line 829
    .local v7, "id":I
    const/4 v9, 0x1

    #@6f
    if-eq v7, v9, :cond_6

    #@71
    const/16 v9, 0x7f

    #@73
    if-ne v7, v9, :cond_7

    #@75
    .line 827
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_0

    #@78
    .line 799
    .end local v0    # "N":I
    .end local v6    # "i":I
    .end local v7    # "id":I
    .end local v8    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    #@79
    .line 800
    .local v5, "e":Ljava/lang/Exception;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@7b
    iget-object v9, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@7d
    invoke-virtual {v9, v1, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@80
    move-result v9

    #@81
    if-nez v9, :cond_4

    #@83
    .line 801
    const-wide/16 v10, 0x40

    #@85
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@88
    .line 802
    new-instance v9, Ljava/lang/RuntimeException;

    #@8a
    .line 803
    new-instance v10, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v11, "Unable to instantiate application "

    #@92
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v10

    #@96
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v10

    #@9a
    .line 804
    const-string/jumbo v11, ": "

    #@9d
    .line 803
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v10

    #@a1
    .line 804
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a4
    move-result-object v11

    #@a5
    .line 803
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v10

    #@a9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v10

    #@ad
    .line 802
    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b0
    throw v9

    #@b1
    .line 813
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    #@b2
    .line 814
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {p2, v1, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@b5
    move-result v9

    #@b6
    if-nez v9, :cond_5

    #@b8
    .line 815
    const-wide/16 v10, 0x40

    #@ba
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@bd
    .line 816
    new-instance v9, Ljava/lang/RuntimeException;

    #@bf
    .line 817
    new-instance v10, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v11, "Unable to create application "

    #@c7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v10

    #@cb
    invoke-virtual {v1}, Landroid/app/Application;->getClass()Ljava/lang/Class;

    #@ce
    move-result-object v11

    #@cf
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d2
    move-result-object v11

    #@d3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v10

    #@d7
    .line 818
    const-string/jumbo v11, ": "

    #@da
    .line 817
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v10

    #@de
    .line 818
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@e1
    move-result-object v11

    #@e2
    .line 817
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v10

    #@e6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v10

    #@ea
    .line 816
    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ed
    throw v9

    #@ee
    .line 833
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "N":I
    .restart local v6    # "i":I
    .restart local v7    # "id":I
    .restart local v8    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@f1
    move-result-object v10

    #@f2
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f5
    move-result-object v9

    #@f6
    check-cast v9, Ljava/lang/String;

    #@f8
    invoke-direct {p0, v10, v9, v7}, Landroid/app/LoadedApk;->rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    #@fb
    goto/16 :goto_1

    #@fd
    .line 836
    .end local v7    # "id":I
    :cond_8
    const-wide/16 v10, 0x40

    #@ff
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@102
    .line 838
    return-object v1
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 876
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    #@3
    move-result v5

    #@4
    .line 877
    .local v5, "reportRegistrationLeaks":Z
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@6
    monitor-enter v10

    #@7
    .line 879
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v6

    #@d
    check-cast v6, Landroid/util/ArrayMap;

    #@f
    .line 880
    .local v6, "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v6, :cond_1

    #@11
    .line 881
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v9

    #@16
    if-ge v1, v9, :cond_1

    #@18
    .line 882
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@1e
    .line 883
    .local v4, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    #@20
    .line 884
    new-instance v9, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v9

    #@29
    const-string/jumbo v11, " "

    #@2c
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    const-string/jumbo v11, " has leaked IntentReceiver "

    #@37
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v9

    #@3b
    .line 885
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    #@3e
    move-result-object v11

    #@3f
    .line 884
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    .line 885
    const-string/jumbo v11, " that was "

    #@46
    .line 884
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    .line 886
    const-string/jumbo v11, "originally registered here. Are you missing a "

    #@4d
    .line 884
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    .line 887
    const-string/jumbo v11, "call to unregisterReceiver()?"

    #@54
    .line 884
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    .line 883
    invoke-direct {v2, v9}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    #@5f
    .line 888
    .local v2, "leak":Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v2, v9}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@6a
    .line 889
    const-string/jumbo v9, "ActivityThread"

    #@6d
    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    invoke-static {v9, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@74
    .line 890
    if-eqz v5, :cond_0

    #@76
    .line 891
    invoke-static {v2}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 894
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7c
    move-result-object v9

    #@7d
    .line 895
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@80
    move-result-object v11

    #@81
    .line 894
    invoke-interface {v9, v11}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@84
    .line 881
    add-int/lit8 v1, v1, 0x1

    #@86
    goto :goto_0

    #@87
    .line 896
    :catch_0
    move-exception v0

    #@88
    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@8b
    move-result-object v9

    #@8c
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8d
    .line 877
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "leak":Landroid/app/IntentReceiverLeaked;
    .end local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v6    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_0
    move-exception v9

    #@8e
    monitor-exit v10

    #@8f
    throw v9

    #@90
    .line 901
    .restart local v6    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_1
    :try_start_3
    iget-object v9, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@92
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@95
    monitor-exit v10

    #@96
    .line 904
    iget-object v10, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@98
    monitor-enter v10

    #@99
    .line 907
    :try_start_4
    iget-object v9, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@9b
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    move-result-object v8

    #@9f
    check-cast v8, Landroid/util/ArrayMap;

    #@a1
    .line 908
    .local v8, "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v8, :cond_3

    #@a3
    .line 909
    const/4 v1, 0x0

    #@a4
    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@a7
    move-result v9

    #@a8
    if-ge v1, v9, :cond_3

    #@aa
    .line 910
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@ad
    move-result-object v7

    #@ae
    check-cast v7, Landroid/app/LoadedApk$ServiceDispatcher;

    #@b0
    .line 911
    .local v7, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v3, Landroid/app/ServiceConnectionLeaked;

    #@b2
    .line 912
    new-instance v9, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v9

    #@bb
    const-string/jumbo v11, " "

    #@be
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v9

    #@c2
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v9

    #@c6
    const-string/jumbo v11, " has leaked ServiceConnection "

    #@c9
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v9

    #@cd
    .line 913
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    #@d0
    move-result-object v11

    #@d1
    .line 912
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    .line 913
    const-string/jumbo v11, " that was originally bound here"

    #@d8
    .line 912
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v9

    #@dc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v9

    #@e0
    .line 911
    invoke-direct {v3, v9}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    #@e3
    .line 914
    .local v3, "leak":Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@ea
    move-result-object v9

    #@eb
    invoke-virtual {v3, v9}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@ee
    .line 915
    const-string/jumbo v9, "ActivityThread"

    #@f1
    invoke-virtual {v3}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    #@f4
    move-result-object v11

    #@f5
    invoke-static {v9, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f8
    .line 916
    if-eqz v5, :cond_2

    #@fa
    .line 917
    invoke-static {v3}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@fd
    .line 920
    :cond_2
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@100
    move-result-object v9

    #@101
    .line 921
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    #@104
    move-result-object v11

    #@105
    .line 920
    invoke-interface {v9, v11}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@108
    .line 925
    :try_start_6
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    #@10b
    .line 909
    add-int/lit8 v1, v1, 0x1

    #@10d
    goto :goto_1

    #@10e
    .line 922
    :catch_1
    move-exception v0

    #@10f
    .line 923
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@112
    move-result-object v9

    #@113
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@114
    .line 904
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v7    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_1
    move-exception v9

    #@115
    monitor-exit v10

    #@116
    throw v9

    #@117
    .line 928
    .restart local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_3
    :try_start_7
    iget-object v9, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@119
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@11c
    monitor-exit v10

    #@11d
    .line 875
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@5
    .line 235
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 17
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    .local p2, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Landroid/app/LoadedApk;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    #@3
    .line 267
    new-instance v11, Ljava/util/ArrayList;

    #@5
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 268
    .local v11, "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@a
    iget-object v1, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@c
    const/4 v2, 0x0

    #@d
    move-object/from16 v0, p1

    #@f
    invoke-static {v1, v0, v11, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    #@12
    .line 269
    new-instance v8, Ljava/util/ArrayList;

    #@14
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@17
    move-result v1

    #@18
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1b
    .line 271
    .local v8, "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    #@1d
    .line 272
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v16

    #@21
    .local v16, "path$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_4

    #@27
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v15

    #@2b
    check-cast v15, Ljava/lang/String;

    #@2d
    .line 273
    .local v15, "path":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@2f
    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@32
    move-result v1

    #@33
    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    .line 274
    .local v9, "apkName":Ljava/lang/String;
    const/4 v10, 0x0

    #@38
    .line 275
    .local v10, "match":Z
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v14

    #@3c
    .local v14, "oldPath$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_2

    #@42
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v13

    #@46
    check-cast v13, Ljava/lang/String;

    #@48
    .line 276
    .local v13, "oldPath":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@4a
    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@4d
    move-result v1

    #@4e
    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@51
    move-result-object v12

    #@52
    .line 277
    .local v12, "oldApkName":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_1

    #@58
    .line 278
    const/4 v10, 0x1

    #@59
    .line 282
    .end local v12    # "oldApkName":Ljava/lang/String;
    .end local v13    # "oldPath":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_0

    #@5b
    .line 283
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 287
    .end local v9    # "apkName":Ljava/lang/String;
    .end local v10    # "match":Z
    .end local v14    # "oldPath$iterator":Ljava/util/Iterator;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "path$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@62
    .line 289
    :cond_4
    monitor-enter p0

    #@63
    .line 290
    :try_start_0
    move-object/from16 v0, p0

    #@65
    invoke-direct {v0, v8}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    #@68
    .line 291
    move-object/from16 v0, p0

    #@6a
    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@6c
    if-eqz v1, :cond_5

    #@6e
    .line 292
    move-object/from16 v0, p0

    #@70
    iget-object v1, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@76
    move-object/from16 v0, p0

    #@78
    iget-object v3, v0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@7a
    .line 293
    move-object/from16 v0, p0

    #@7c
    iget-object v4, v0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v5, v0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@82
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@84
    const/4 v6, 0x0

    #@85
    move-object/from16 v7, p0

    #@87
    .line 292
    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;

    #@8a
    move-result-object v1

    #@8b
    move-object/from16 v0, p0

    #@8d
    iput-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8f
    :cond_5
    monitor-exit p0

    #@90
    .line 264
    return-void

    #@91
    .line 289
    :catchall_0
    move-exception v1

    #@92
    monitor-exit p0

    #@93
    throw v1
.end method
