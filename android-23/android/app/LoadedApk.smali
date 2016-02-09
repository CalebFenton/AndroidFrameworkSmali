.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$WarningContextClassLoader;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$ServiceDispatcher;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LoadedApk"


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mIncludeCode:Z

.field private final mLibDir:Ljava/lang/String;

.field private final mOverlayDirs:[Ljava/lang/String;

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

.field private final mResDir:Ljava/lang/String;

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

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mSplitAppDirs:[Ljava/lang/String;

.field private final mSplitResDirs:[Ljava/lang/String;

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
    .line 80
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
    .line 100
    new-instance v0, Landroid/view/DisplayAdjustments;

    #@7
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@c
    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@11
    .line 105
    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@13
    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    #@15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@18
    .line 107
    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@1a
    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1f
    .line 109
    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@21
    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    #@23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@26
    .line 111
    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@28
    .line 114
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
    iput-object v2, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@51
    .line 196
    iput-object v2, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@53
    .line 197
    iput-boolean v3, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    #@55
    .line 198
    const/4 v0, 0x1

    #@56
    iput-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    #@58
    .line 199
    iput-boolean v3, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    #@5a
    .line 200
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@60
    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@66
    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V
    .locals 3
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p5, "securityViolation"    # Z
    .param p6, "includeCode"    # Z
    .param p7, "registerPackage"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 100
    new-instance v1, Landroid/view/DisplayAdjustments;

    #@6
    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    #@9
    iput-object v1, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@b
    .line 106
    new-instance v1, Landroid/util/ArrayMap;

    #@d
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@10
    .line 105
    iput-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@12
    .line 108
    new-instance v1, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@17
    .line 107
    iput-object v1, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@19
    .line 110
    new-instance v1, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    .line 109
    iput-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@20
    .line 112
    new-instance v1, Landroid/util/ArrayMap;

    #@22
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@25
    .line 111
    iput-object v1, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@27
    .line 114
    const/4 v1, 0x0

    #@28
    iput v1, p0, Landroid/app/LoadedApk;->mClientCount:I

    #@2a
    .line 129
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@2d
    move-result v0

    #@2e
    .line 130
    .local v0, "myUid":I
    invoke-static {p2}, Landroid/app/LoadedApk;->adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    #@31
    move-result-object p2

    #@32
    .line 132
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@34
    .line 133
    iput-object p2, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@36
    .line 134
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@38
    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@3a
    .line 135
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@3c
    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@3e
    .line 136
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@40
    if-ne v1, v0, :cond_0

    #@42
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@44
    :goto_0
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@46
    .line 137
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@48
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@4a
    .line 138
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4c
    if-ne v1, v0, :cond_1

    #@4e
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@50
    :goto_1
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@52
    .line 139
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@54
    iput-object v1, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@56
    .line 140
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@58
    iput-object v1, p0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    #@5a
    .line 141
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@5c
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@5e
    .line 142
    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@60
    if-eqz v1, :cond_2

    #@62
    new-instance v1, Ljava/io/File;

    #@64
    iget-object v2, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@66
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@69
    :goto_2
    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    #@6b
    .line 143
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@6d
    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@6f
    .line 144
    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@71
    .line 145
    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    #@73
    .line 146
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    #@75
    .line 147
    iput-boolean p7, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    #@77
    .line 148
    iget-object v1, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@79
    invoke-virtual {v1, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@7c
    .line 128
    return-void

    #@7d
    .line 136
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@7f
    goto :goto_0

    #@80
    .line 138
    :cond_1
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@82
    goto :goto_1

    #@83
    :cond_2
    move-object v1, v2

    #@84
    .line 142
    goto :goto_2
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
    .line 162
    .end local v0    # "modified":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move-object v3, v2

    #@49
    goto :goto_0

    #@4a
    .line 175
    .end local v1    # "runtimeIsa":Ljava/lang/String;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 243
    const/4 v0, 0x0

    #@2
    .line 245
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@5
    move-result-object v2

    #@6
    .line 246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x400

    #@c
    .line 245
    invoke-interface {v2, p0, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v0

    #@10
    .line 251
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    #@12
    .line 252
    return-object v5

    #@13
    .line 247
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@14
    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v2

    #@1a
    .line 255
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@1c
    return-object v2
.end method

.method private initializeJavaContextClassLoader()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 415
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v3

    #@5
    .line 418
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a
    move-result v8

    #@b
    const/4 v9, 0x0

    #@c
    invoke-interface {v3, v7, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    .line 423
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    #@12
    .line 424
    new-instance v7, Ljava/lang/IllegalStateException;

    #@14
    new-instance v8, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v9, "Unable to get package info for "

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    .line 425
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@22
    .line 424
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    .line 425
    const-string/jumbo v9, "; is package not installed?"

    #@29
    .line 424
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v7

    #@35
    .line 419
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    #@36
    .line 420
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/IllegalStateException;

    #@38
    new-instance v8, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v9, "Unable to get package info for "

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    .line 421
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@46
    .line 420
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    .line 421
    const-string/jumbo v9, "; is system dying?"

    #@4d
    .line 420
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@58
    throw v7

    #@59
    .line 439
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    #@5b
    if-eqz v7, :cond_1

    #@5d
    const/4 v6, 0x1

    #@5e
    .line 441
    .local v6, "sharedUserIdSet":Z
    :goto_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@60
    if-eqz v7, :cond_3

    #@62
    .line 442
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@64
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@66
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_2

    #@6e
    const/4 v4, 0x0

    #@6f
    .line 443
    .local v4, "processNameNotDefault":Z
    :goto_1
    if-nez v6, :cond_4

    #@71
    move v5, v4

    #@72
    .line 445
    :goto_2
    if-eqz v5, :cond_5

    #@74
    .line 446
    new-instance v0, Landroid/app/LoadedApk$WarningContextClassLoader;

    #@76
    invoke-direct {v0, v10}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk$WarningContextClassLoader;)V

    #@79
    .line 448
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7c
    move-result-object v7

    #@7d
    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@80
    .line 414
    return-void

    #@81
    .line 439
    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v4    # "processNameNotDefault":Z
    .end local v6    # "sharedUserIdSet":Z
    :cond_1
    const/4 v6, 0x0

    #@82
    .restart local v6    # "sharedUserIdSet":Z
    goto :goto_0

    #@83
    .line 442
    :cond_2
    const/4 v4, 0x1

    #@84
    .restart local v4    # "processNameNotDefault":Z
    goto :goto_1

    #@85
    .line 441
    .end local v4    # "processNameNotDefault":Z
    :cond_3
    const/4 v4, 0x0

    #@86
    .restart local v4    # "processNameNotDefault":Z
    goto :goto_1

    #@87
    .line 443
    :cond_4
    const/4 v5, 0x1

    #@88
    .local v5, "sharable":Z
    goto :goto_2

    #@89
    .line 447
    .end local v5    # "sharable":Z
    :cond_5
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@8b
    .restart local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    goto :goto_3
.end method

.method private rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 11
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    #@0
    .prologue
    .line 617
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
    .line 627
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
    .line 635
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
    .line 636
    return-void

    #@36
    .line 618
    .end local v0    # "callback":Ljava/lang/reflect/Method;
    .end local v6    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@37
    .line 621
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
    .line 622
    return-void

    #@52
    .line 628
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    #@53
    .line 630
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    return-void

    #@54
    .line 639
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "callback":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v5

    #@55
    .line 640
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@58
    move-result-object v1

    #@59
    .line 643
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
    .line 637
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    #@74
    .line 638
    .local v3, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v3

    #@75
    .restart local v1    # "cause":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 738
    iget-object v5, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 739
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/util/ArrayMap;

    #@b
    .line 740
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    #@c
    .line 741
    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v2, :cond_3

    #@e
    .line 742
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@14
    .line 743
    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_3

    #@16
    .line 744
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 745
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 746
    iget-object v4, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 748
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 750
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/util/ArrayMap;

    #@32
    .line 751
    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    #@34
    .line 752
    new-instance v1, Landroid/util/ArrayMap;

    #@36
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@39
    .line 753
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 755
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    .line 756
    const-string/jumbo v4, "Originally unregistered here:"

    #@43
    .line 755
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    .line 757
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@49
    .line 758
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    #@4c
    .line 759
    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 761
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_2
    const/4 v4, 0x1

    #@50
    iput-boolean v4, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    #@52
    .line 762
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
    .line 766
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
    .line 767
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    #@62
    .line 768
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@68
    .line 769
    .restart local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v3, :cond_4

    #@6a
    .line 770
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    #@6d
    move-result-object v0

    #@6e
    .line 771
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@70
    .line 772
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
    .line 773
    const-string/jumbo v7, " that was already unregistered"

    #@83
    .line 772
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    .line 771
    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8e
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    .line 738
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
    .line 776
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_4
    if-nez p1, :cond_5

    #@94
    .line 777
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
    .line 778
    const-string/jumbo v7, " from Context that is no longer in use: "

    #@a9
    .line 777
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
    .line 780
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
    .line 1001
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 1003
    :try_start_0
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/util/ArrayMap;

    #@b
    .line 1004
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v3, 0x0

    #@c
    .line 1005
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v2, :cond_3

    #@e
    .line 1006
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    #@14
    .line 1007
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_3

    #@16
    .line 1008
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 1009
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    #@1c
    .line 1010
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_0

    #@22
    .line 1011
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@24
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 1013
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()I

    #@2a
    move-result v4

    #@2b
    and-int/lit8 v4, v4, 0x2

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 1015
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/util/ArrayMap;

    #@37
    .line 1016
    .local v1, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    #@39
    .line 1017
    new-instance v1, Landroid/util/ArrayMap;

    #@3b
    .end local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@3e
    .line 1018
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 1020
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    .line 1021
    const-string/jumbo v4, "Originally unbound here:"

    #@48
    .line 1020
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    .line 1022
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@4e
    .line 1023
    invoke-virtual {v3, v0}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    #@51
    .line 1024
    invoke-virtual {v1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 1026
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
    .line 1030
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
    .line 1031
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    #@64
    .line 1032
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    #@6a
    .line 1033
    .restart local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v3, :cond_4

    #@6c
    .line 1034
    invoke-virtual {v3}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    #@6f
    move-result-object v0

    #@70
    .line 1035
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@72
    .line 1036
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
    .line 1037
    const-string/jumbo v7, " that was already unbound"

    #@85
    .line 1036
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 1035
    invoke-direct {v4, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@90
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@91
    .line 1001
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
    .line 1040
    .restart local v1    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_4
    if-nez p1, :cond_5

    #@96
    .line 1041
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
    .line 1042
    const-string/jumbo v7, " from Context that is no longer in use: "

    #@ab
    .line 1041
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
    .line 1044
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
    .line 511
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 543
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
    .locals 27

    #@0
    .prologue
    .line 259
    monitor-enter p0

    #@1
    .line 260
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v0, v0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@5
    move-object/from16 v23, v0

    #@7
    if-eqz v23, :cond_0

    #@9
    .line 261
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@d
    move-object/from16 v23, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    return-object v23

    #@11
    .line 264
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@13
    iget-boolean v0, v0, Landroid/app/LoadedApk;->mIncludeCode:Z

    #@15
    move/from16 v23, v0

    #@17
    if-eqz v23, :cond_1

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@1d
    move-object/from16 v23, v0

    #@1f
    const-string/jumbo v24, "android"

    #@22
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v23

    #@26
    if-eqz v23, :cond_2

    #@28
    .line 381
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@2c
    move-object/from16 v23, v0

    #@2e
    if-nez v23, :cond_f

    #@30
    .line 382
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@33
    move-result-object v23

    #@34
    move-object/from16 v0, v23

    #@36
    move-object/from16 v1, p0

    #@38
    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@3a
    .line 387
    :goto_0
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@3e
    move-object/from16 v23, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit p0

    #@41
    return-object v23

    #@42
    .line 268
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@46
    move-object/from16 v23, v0

    #@48
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@4b
    move-result-object v24

    #@4c
    invoke-static/range {v23 .. v24}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4f
    move-result v23

    #@50
    if-nez v23, :cond_3

    #@52
    .line 269
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@55
    move-result-object v23

    #@56
    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    move-result-object v16

    #@5a
    .line 271
    .local v16, "isa":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@5d
    move-result-object v23

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@62
    move-object/from16 v24, v0

    #@64
    move-object/from16 v0, v23

    #@66
    move-object/from16 v1, v24

    #@68
    move-object/from16 v2, v16

    #@6a
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    .line 277
    .end local v16    # "isa":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_4
    new-instance v22, Ljava/util/ArrayList;

    #@6f
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@72
    .line 278
    .local v22, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@74
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@77
    .line 279
    .local v6, "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    #@79
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@7c
    .line 281
    .local v18, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@7e
    iget-boolean v0, v0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    #@80
    move/from16 v23, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@82
    if-eqz v23, :cond_4

    #@84
    .line 283
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@87
    move-result-object v23

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@8c
    move-object/from16 v24, v0

    #@8e
    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@91
    .line 288
    :cond_4
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@95
    move-object/from16 v23, v0

    #@97
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9a
    .line 289
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@9e
    move-object/from16 v23, v0

    #@a0
    if-eqz v23, :cond_5

    #@a2
    .line 290
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@a6
    move-object/from16 v23, v0

    #@a8
    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@ab
    .line 293
    :cond_5
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@af
    move-object/from16 v23, v0

    #@b1
    move-object/from16 v0, v18

    #@b3
    move-object/from16 v1, v23

    #@b5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b8
    .line 304
    move-object/from16 v0, p0

    #@ba
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@bc
    move-object/from16 v23, v0

    #@be
    move-object/from16 v0, v23

    #@c0
    iget-object v11, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    #@c2
    .line 305
    .local v11, "instrumentationPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@c6
    move-object/from16 v23, v0

    #@c8
    move-object/from16 v0, v23

    #@ca
    iget-object v8, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    #@cc
    .line 306
    .local v8, "instrumentationAppDir":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@d0
    move-object/from16 v23, v0

    #@d2
    move-object/from16 v0, v23

    #@d4
    iget-object v12, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    #@d6
    .line 307
    .local v12, "instrumentationSplitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@da
    move-object/from16 v23, v0

    #@dc
    move-object/from16 v0, v23

    #@de
    iget-object v9, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    #@e0
    .line 309
    .local v9, "instrumentationLibDir":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@e4
    move-object/from16 v23, v0

    #@e6
    move-object/from16 v0, v23

    #@e8
    iget-object v13, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    #@ea
    .line 310
    .local v13, "instrumentedAppDir":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@ee
    move-object/from16 v23, v0

    #@f0
    move-object/from16 v0, v23

    #@f2
    iget-object v15, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    #@f4
    .line 311
    .local v15, "instrumentedSplitAppDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@f8
    move-object/from16 v23, v0

    #@fa
    move-object/from16 v0, v23

    #@fc
    iget-object v14, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    #@fe
    .line 312
    .local v14, "instrumentedLibDir":Ljava/lang/String;
    const/4 v10, 0x0

    #@ff
    .line 314
    .local v10, "instrumentationLibs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@103
    move-object/from16 v23, v0

    #@105
    move-object/from16 v0, v23

    #@107
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v23

    #@10b
    if-nez v23, :cond_6

    #@10d
    .line 315
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    #@111
    move-object/from16 v23, v0

    #@113
    move-object/from16 v0, v23

    #@115
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v23

    #@119
    .line 314
    if-eqz v23, :cond_9

    #@11b
    .line 316
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    #@11e
    .line 317
    move-object/from16 v0, v22

    #@120
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@123
    .line 318
    if-eqz v12, :cond_7

    #@125
    .line 319
    move-object/from16 v0, v22

    #@127
    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@12a
    .line 321
    :cond_7
    move-object/from16 v0, v22

    #@12c
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12f
    .line 322
    if-eqz v15, :cond_8

    #@131
    .line 323
    move-object/from16 v0, v22

    #@133
    invoke-static {v0, v15}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@136
    .line 326
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    #@139
    .line 327
    move-object/from16 v0, v18

    #@13b
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13e
    .line 328
    move-object/from16 v0, v18

    #@140
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@143
    .line 330
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@146
    move-result v23

    #@147
    if-nez v23, :cond_9

    #@149
    .line 331
    invoke-static {v11}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    #@14c
    move-result-object v10

    #@14d
    .line 335
    .end local v10    # "instrumentationLibs":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v22

    #@14f
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@152
    .line 337
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    #@156
    move-object/from16 v23, v0

    #@158
    if-eqz v23, :cond_b

    #@15a
    .line 338
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Landroid/app/LoadedApk;->mSharedLibraries:[Ljava/lang/String;

    #@15e
    move-object/from16 v24, v0

    #@160
    const/16 v23, 0x0

    #@162
    move-object/from16 v0, v24

    #@164
    array-length v0, v0

    #@165
    move/from16 v25, v0

    #@167
    :goto_3
    move/from16 v0, v23

    #@169
    move/from16 v1, v25

    #@16b
    if-ge v0, v1, :cond_b

    #@16d
    aget-object v17, v24, v23

    #@16f
    .line 339
    .local v17, "lib":Ljava/lang/String;
    move-object/from16 v0, v22

    #@171
    move-object/from16 v1, v17

    #@173
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@176
    move-result v26

    #@177
    if-nez v26, :cond_a

    #@179
    .line 340
    const/16 v26, 0x0

    #@17b
    move-object/from16 v0, v22

    #@17d
    move/from16 v1, v26

    #@17f
    move-object/from16 v2, v17

    #@181
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@184
    .line 338
    :cond_a
    add-int/lit8 v23, v23, 0x1

    #@186
    goto :goto_3

    #@187
    .line 345
    .end local v17    # "lib":Ljava/lang/String;
    :cond_b
    if-eqz v10, :cond_d

    #@189
    .line 346
    const/16 v23, 0x0

    #@18b
    array-length v0, v10

    #@18c
    move/from16 v24, v0

    #@18e
    :goto_4
    move/from16 v0, v23

    #@190
    move/from16 v1, v24

    #@192
    if-ge v0, v1, :cond_d

    #@194
    aget-object v17, v10, v23

    #@196
    .line 347
    .restart local v17    # "lib":Ljava/lang/String;
    move-object/from16 v0, v22

    #@198
    move-object/from16 v1, v17

    #@19a
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@19d
    move-result v25

    #@19e
    if-nez v25, :cond_c

    #@1a0
    .line 348
    const/16 v25, 0x0

    #@1a2
    move-object/from16 v0, v22

    #@1a4
    move/from16 v1, v25

    #@1a6
    move-object/from16 v2, v17

    #@1a8
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@1ab
    .line 346
    :cond_c
    add-int/lit8 v23, v23, 0x1

    #@1ad
    goto :goto_4

    #@1ae
    .line 353
    .end local v17    # "lib":Ljava/lang/String;
    :cond_d
    sget-object v23, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@1b0
    move-object/from16 v0, v23

    #@1b2
    move-object/from16 v1, v22

    #@1b4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@1b7
    move-result-object v21

    #@1b8
    .line 356
    .local v21, "zip":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1bc
    move-object/from16 v23, v0

    #@1be
    move-object/from16 v0, v23

    #@1c0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@1c2
    move-object/from16 v23, v0

    #@1c4
    if-eqz v23, :cond_e

    #@1c6
    .line 357
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c9
    move-result-object v5

    #@1ca
    .local v5, "apk$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1cd
    move-result v23

    #@1ce
    if-eqz v23, :cond_e

    #@1d0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d3
    move-result-object v4

    #@1d4
    check-cast v4, Ljava/lang/String;

    #@1d6
    .line 358
    .local v4, "apk":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    move-object/from16 v0, v23

    #@1dd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v23

    #@1e1
    const-string/jumbo v24, "!/lib/"

    #@1e4
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v23

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1ec
    move-object/from16 v24, v0

    #@1ee
    move-object/from16 v0, v24

    #@1f0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@1f2
    move-object/from16 v24, v0

    #@1f4
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v23

    #@1f8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v23

    #@1fc
    move-object/from16 v0, v18

    #@1fe
    move-object/from16 v1, v23

    #@200
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@203
    goto :goto_5

    #@204
    .line 259
    .end local v4    # "apk":Ljava/lang/String;
    .end local v5    # "apk$iterator":Ljava/util/Iterator;
    .end local v6    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "instrumentationAppDir":Ljava/lang/String;
    .end local v9    # "instrumentationLibDir":Ljava/lang/String;
    .end local v11    # "instrumentationPackageName":Ljava/lang/String;
    .end local v12    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .end local v13    # "instrumentedAppDir":Ljava/lang/String;
    .end local v14    # "instrumentedLibDir":Ljava/lang/String;
    .end local v15    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .end local v18    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "zip":Ljava/lang/String;
    .end local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v23

    #@205
    monitor-exit p0

    #@206
    throw v23

    #@207
    .line 362
    .restart local v6    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "instrumentationAppDir":Ljava/lang/String;
    .restart local v9    # "instrumentationLibDir":Ljava/lang/String;
    .restart local v11    # "instrumentationPackageName":Ljava/lang/String;
    .restart local v12    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .restart local v13    # "instrumentedAppDir":Ljava/lang/String;
    .restart local v14    # "instrumentedLibDir":Ljava/lang/String;
    .restart local v15    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .restart local v18    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "zip":Ljava/lang/String;
    .restart local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    :try_start_7
    sget-object v23, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@209
    move-object/from16 v0, v23

    #@20b
    move-object/from16 v1, v18

    #@20d
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@210
    move-result-object v17

    #@211
    .line 374
    .restart local v17    # "lib":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    #@214
    move-result-object v19

    #@215
    .line 376
    .local v19, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    #@218
    move-result-object v23

    #@219
    .line 377
    move-object/from16 v0, p0

    #@21b
    iget-object v0, v0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@21d
    move-object/from16 v24, v0

    #@21f
    .line 376
    move-object/from16 v0, v23

    #@221
    move-object/from16 v1, v21

    #@223
    move-object/from16 v2, v17

    #@225
    move-object/from16 v3, v24

    #@227
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@22a
    move-result-object v23

    #@22b
    move-object/from16 v0, v23

    #@22d
    move-object/from16 v1, p0

    #@22f
    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@231
    .line 379
    invoke-static/range {v19 .. v19}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@234
    goto/16 :goto_0

    #@236
    .line 384
    .end local v6    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "instrumentationAppDir":Ljava/lang/String;
    .end local v9    # "instrumentationLibDir":Ljava/lang/String;
    .end local v11    # "instrumentationPackageName":Ljava/lang/String;
    .end local v12    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .end local v13    # "instrumentedAppDir":Ljava/lang/String;
    .end local v14    # "instrumentedLibDir":Ljava/lang/String;
    .end local v15    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .end local v17    # "lib":Ljava/lang/String;
    .end local v18    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v21    # "zip":Ljava/lang/String;
    .end local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    #@23a
    move-object/from16 v23, v0

    #@23c
    move-object/from16 v0, v23

    #@23e
    move-object/from16 v1, p0

    #@240
    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@242
    goto/16 :goto_0

    #@244
    .line 284
    .restart local v6    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    #@245
    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@247
    .line 272
    .end local v6    # "apkPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v18    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "isa":Ljava/lang/String;
    :catch_1
    move-exception v20

    #@248
    .local v20, "re":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOverlayDirs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
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
    .line 709
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@2
    monitor-enter v10

    #@3
    .line 710
    const/4 v1, 0x0

    #@4
    .line 711
    .local v1, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v7, 0x0

    #@5
    .line 712
    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    #@7
    .line 713
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
    .line 714
    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v7, :cond_3

    #@13
    .line 715
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
    .line 718
    .end local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .local v9, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    #@1f
    .line 719
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
    .line 721
    .end local v9    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz p5, :cond_2

    #@2c
    .line 722
    if-nez v8, :cond_1

    #@2e
    .line 723
    :try_start_2
    new-instance v7, Landroid/util/ArrayMap;

    #@30
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@33
    .line 724
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@35
    invoke-virtual {v2, p2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 726
    :goto_1
    invoke-virtual {v7, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 731
    :goto_2
    const/4 v2, 0x0

    #@3c
    iput-boolean v2, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    #@3e
    .line 732
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
    .line 729
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
    .line 709
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
    .line 519
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "mainThread"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 547
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 548
    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    #@7
    iget-object v2, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@9
    iget-object v3, p0, Landroid/app/LoadedApk;->mOverlayDirs:[Ljava/lang/String;

    #@b
    .line 549
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@f
    const/4 v5, 0x0

    #@10
    move-object v0, p1

    #@11
    move-object v7, p0

    #@12
    .line 548
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@18
    .line 551
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1a
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
    .line 979
    iget-object v5, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 980
    const/4 v2, 0x0

    #@4
    .line 981
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
    .line 982
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    #@e
    .line 983
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
    .line 985
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    #@19
    .line 986
    :try_start_1
    new-instance v2, Landroid/app/LoadedApk$ServiceDispatcher;

    #@1b
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 987
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-nez v1, :cond_0

    #@20
    .line 988
    :try_start_2
    new-instance v1, Landroid/util/ArrayMap;

    #@22
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@25
    .line 989
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v4, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 991
    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 995
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
    .line 993
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
    .line 979
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
    .line 523
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSplitResDirs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 208
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
    .line 209
    :cond_0
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17
    .line 210
    iput-object p2, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    #@19
    .line 207
    return-void
.end method

.method public isSecurityViolation()Z
    .locals 1

    #@0
    .prologue
    .line 222
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
    .line 556
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@2
    if-eqz v9, :cond_0

    #@4
    .line 557
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@6
    return-object v9

    #@7
    .line 560
    :cond_0
    const/4 v1, 0x0

    #@8
    .line 562
    .local v1, "app":Landroid/app/Application;
    iget-object v9, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    #@c
    .line 563
    .local v2, "appClass":Ljava/lang/String;
    if-nez p1, :cond_1

    #@e
    if-nez v2, :cond_2

    #@10
    .line 564
    :cond_1
    const-string/jumbo v2, "android.app.Application"

    #@13
    .line 568
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v4

    #@17
    .line 569
    .local v4, "cl":Ljava/lang/ClassLoader;
    iget-object v9, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@19
    const-string/jumbo v10, "android"

    #@1c
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v9

    #@20
    if-nez v9, :cond_3

    #@22
    .line 570
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    #@25
    .line 572
    :cond_3
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@27
    invoke-static {v9, p0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@2a
    move-result-object v3

    #@2b
    .line 573
    .local v3, "appContext":Landroid/app/ContextImpl;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@2d
    iget-object v9, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2f
    invoke-virtual {v9, v4, v2, v3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    #@32
    move-result-object v1

    #@33
    .line 575
    .local v1, "app":Landroid/app/Application;
    invoke-virtual {v3, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 583
    .end local v1    # "app":Landroid/app/Application;
    .end local v3    # "appContext":Landroid/app/ContextImpl;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@38
    iget-object v9, v9, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 584
    iput-object v1, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    #@3f
    .line 586
    if-eqz p2, :cond_5

    #@41
    .line 588
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    .line 599
    :cond_5
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@46
    invoke-virtual {p0, v9}, Landroid/app/LoadedApk;->getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    #@4d
    move-result-object v8

    #@4e
    .line 601
    .local v8, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@51
    move-result v0

    #@52
    .line 602
    .local v0, "N":I
    const/4 v6, 0x0

    #@53
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_8

    #@55
    .line 603
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@58
    move-result v7

    #@59
    .line 604
    .local v7, "id":I
    const/4 v9, 0x1

    #@5a
    if-eq v7, v9, :cond_6

    #@5c
    const/16 v9, 0x7f

    #@5e
    if-ne v7, v9, :cond_7

    #@60
    .line 602
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@62
    goto :goto_0

    #@63
    .line 576
    .end local v0    # "N":I
    .end local v6    # "i":I
    .end local v7    # "id":I
    .end local v8    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    #@64
    .line 577
    .local v5, "e":Ljava/lang/Exception;
    iget-object v9, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    #@66
    iget-object v9, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@68
    invoke-virtual {v9, v1, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@6b
    move-result v9

    #@6c
    if-nez v9, :cond_4

    #@6e
    .line 578
    new-instance v9, Ljava/lang/RuntimeException;

    #@70
    .line 579
    new-instance v10, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v11, "Unable to instantiate application "

    #@78
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v10

    #@80
    .line 580
    const-string/jumbo v11, ": "

    #@83
    .line 579
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    .line 580
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@8a
    move-result-object v11

    #@8b
    .line 579
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v10

    #@8f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v10

    #@93
    .line 578
    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@96
    throw v9

    #@97
    .line 589
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    #@98
    .line 590
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {p2, v1, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@9b
    move-result v9

    #@9c
    if-nez v9, :cond_5

    #@9e
    .line 591
    new-instance v9, Ljava/lang/RuntimeException;

    #@a0
    .line 592
    new-instance v10, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v11, "Unable to create application "

    #@a8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v1}, Landroid/app/Application;->getClass()Ljava/lang/Class;

    #@af
    move-result-object v11

    #@b0
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b3
    move-result-object v11

    #@b4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v10

    #@b8
    .line 593
    const-string/jumbo v11, ": "

    #@bb
    .line 592
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v10

    #@bf
    .line 593
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@c2
    move-result-object v11

    #@c3
    .line 592
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v10

    #@c7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v10

    #@cb
    .line 591
    invoke-direct {v9, v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ce
    throw v9

    #@cf
    .line 608
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "N":I
    .restart local v6    # "i":I
    .restart local v7    # "id":I
    .restart local v8    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@d2
    move-result-object v10

    #@d3
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d6
    move-result-object v9

    #@d7
    check-cast v9, Ljava/lang/String;

    #@d9
    invoke-direct {p0, v10, v9, v7}, Landroid/app/LoadedApk;->rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    #@dc
    goto :goto_1

    #@dd
    .line 611
    .end local v7    # "id":I
    :cond_8
    return-object v1
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 649
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    #@3
    move-result v5

    #@4
    .line 650
    .local v5, "reportRegistrationLeaks":Z
    iget-object v10, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@6
    monitor-enter v10

    #@7
    .line 652
    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v6

    #@d
    check-cast v6, Landroid/util/ArrayMap;

    #@f
    .line 653
    .local v6, "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v6, :cond_1

    #@11
    .line 654
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
    .line 655
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    #@1e
    .line 656
    .local v4, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    #@20
    .line 657
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
    .line 658
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    #@3e
    move-result-object v11

    #@3f
    .line 657
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    .line 658
    const-string/jumbo v11, " that was "

    #@46
    .line 657
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v9

    #@4a
    .line 659
    const-string/jumbo v11, "originally registered here. Are you missing a "

    #@4d
    .line 657
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    .line 660
    const-string/jumbo v11, "call to unregisterReceiver()?"

    #@54
    .line 657
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    .line 656
    invoke-direct {v2, v9}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    #@5f
    .line 661
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
    .line 662
    const-string/jumbo v9, "ActivityThread"

    #@6d
    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    invoke-static {v9, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@74
    .line 663
    if-eqz v5, :cond_0

    #@76
    .line 664
    invoke-static {v2}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 667
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7c
    move-result-object v9

    #@7d
    .line 668
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    #@80
    move-result-object v11

    #@81
    .line 667
    invoke-interface {v9, v11}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@84
    .line 654
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@86
    goto :goto_0

    #@87
    .line 674
    .end local v1    # "i":I
    .end local v2    # "leak":Landroid/app/IntentReceiverLeaked;
    .end local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_1
    :try_start_2
    iget-object v9, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    #@89
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8c
    monitor-exit v10

    #@8d
    .line 677
    iget-object v10, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@8f
    monitor-enter v10

    #@90
    .line 680
    :try_start_3
    iget-object v9, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    #@92
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    move-result-object v8

    #@96
    check-cast v8, Landroid/util/ArrayMap;

    #@98
    .line 681
    .local v8, "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v8, :cond_3

    #@9a
    .line 682
    const/4 v1, 0x0

    #@9b
    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@9e
    move-result v9

    #@9f
    if-ge v1, v9, :cond_3

    #@a1
    .line 683
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a4
    move-result-object v7

    #@a5
    check-cast v7, Landroid/app/LoadedApk$ServiceDispatcher;

    #@a7
    .line 684
    .local v7, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v3, Landroid/app/ServiceConnectionLeaked;

    #@a9
    .line 685
    new-instance v9, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    const-string/jumbo v11, " "

    #@b5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    const-string/jumbo v11, " has leaked ServiceConnection "

    #@c0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    .line 686
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    #@c7
    move-result-object v11

    #@c8
    .line 685
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    .line 686
    const-string/jumbo v11, " that was originally bound here"

    #@cf
    .line 685
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v9

    #@d7
    .line 684
    invoke-direct {v3, v9}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    #@da
    .line 687
    .local v3, "leak":Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    #@dd
    move-result-object v9

    #@de
    invoke-virtual {v9}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@e1
    move-result-object v9

    #@e2
    invoke-virtual {v3, v9}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@e5
    .line 688
    const-string/jumbo v9, "ActivityThread"

    #@e8
    invoke-virtual {v3}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    #@eb
    move-result-object v11

    #@ec
    invoke-static {v9, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ef
    .line 689
    if-eqz v5, :cond_2

    #@f1
    .line 690
    invoke-static {v3}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@f4
    .line 693
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@f7
    move-result-object v9

    #@f8
    .line 694
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    #@fb
    move-result-object v11

    #@fc
    .line 693
    invoke-interface {v9, v11}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@ff
    .line 698
    :goto_3
    :try_start_5
    invoke-virtual {v7}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@102
    .line 682
    add-int/lit8 v1, v1, 0x1

    #@104
    goto :goto_2

    #@105
    .line 650
    .end local v1    # "i":I
    .end local v3    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v6    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v7    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_0
    move-exception v9

    #@106
    monitor-exit v10

    #@107
    throw v9

    #@108
    .line 701
    .restart local v6    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_3
    :try_start_6
    iget-object v9, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    #@10a
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@10d
    monitor-exit v10

    #@10e
    .line 648
    return-void

    #@10f
    .line 677
    .end local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_1
    move-exception v9

    #@110
    monitor-exit v10

    #@111
    throw v9

    #@112
    .line 695
    .restart local v1    # "i":I
    .restart local v3    # "leak":Landroid/app/ServiceConnectionLeaked;
    .restart local v7    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catch_0
    move-exception v0

    #@113
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    #@114
    .line 669
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v7    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v8    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2    # "leak":Landroid/app/IntentReceiverLeaked;
    .restart local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :catch_1
    move-exception v0

    #@115
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@5
    .line 229
    return-void
.end method
