.class public final Landroid/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$SplitDependencyLoaderImpl;,
        Landroid/app/LoadedApk$WarningContextClassLoader;,
        Landroid/app/LoadedApk$ReceiverDispatcher;,
        Landroid/app/LoadedApk$ServiceDispatcher;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEBUG_STORE_ENABLED:Z

.field static final greylist-max-o TAG:Ljava/lang/String; = "LoadedApk"

.field private static final blacklist sApplications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist mActivityThread:Landroid/app/ActivityThread;

.field private greylist-max-o mAppComponentFactory:Landroid/app/AppComponentFactory;

.field private greylist mAppDir:Ljava/lang/String;

.field private greylist mApplication:Landroid/app/Application;

.field private greylist mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final greylist mBaseClassLoader:Ljava/lang/ClassLoader;

.field private greylist mClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mCredentialProtectedDataDirFile:Ljava/io/File;

.field private greylist mDataDir:Ljava/lang/String;

.field private greylist-max-p mDataDirFile:Ljava/io/File;

.field private blacklist mDefaultClassLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o mDeviceProtectedDataDirFile:Ljava/io/File;

.field private final greylist mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist-max-o mIncludeCode:Z

.field private blacklist mLegacyOverlayDirs:[Ljava/lang/String;

.field private greylist-max-r mLibDir:Ljava/lang/String;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOverlayPaths:[Ljava/lang/String;

.field final greylist mPackageName:Ljava/lang/String;

.field private final greylist mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRegisterPackage:Z

.field private greylist mResDir:Ljava/lang/String;

.field greylist mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mSecurityViolation:Z

.field private final greylist-max-p mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSplitAppDirs:[Ljava/lang/String;

.field private greylist-max-o mSplitClassLoaderNames:[Ljava/lang/String;

.field private greylist-max-o mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

.field private greylist-max-o mSplitNames:[Ljava/lang/String;

.field private greylist mSplitResDirs:[Ljava/lang/String;

.field private final greylist-max-o mUnboundServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnregisteredReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClassLoader(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;
    .registers 1

    iget-object p0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitAppDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitClassLoaderNames(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateOrUpdateClassLoaderLocked(Landroid/app/LoadedApk;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_STORE_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/app/LoadedApk;->DEBUG_STORE_ENABLED:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 107
    nop

    .line 112
    invoke-static {}, Lcom/android/internal/os/Flags;->debugStoreEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/app/LoadedApk;->DEBUG_STORE_ENABLED:Z

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/ActivityThread;)V
    .registers 6
    .param p1, "activityThread"    # Landroid/app/ActivityThread;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    .line 233
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 234
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 235
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 236
    iput-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    .line 240
    iput-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    .line 241
    iput-object v0, p0, Landroid/app/LoadedApk;->mSplitClassLoaderNames:[Ljava/lang/String;

    .line 242
    iput-object v0, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    .line 243
    iput-object v0, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    .line 244
    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 246
    iput-object v0, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    .line 247
    iput-object v0, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    .line 248
    iput-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 252
    iput-boolean v0, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    .line 253
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 254
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 255
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, v1}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 256
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v1, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 258
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V
    .registers 10
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p5, "securityViolation"    # Z
    .param p6, "includeCode"    # Z
    .param p7, "registerPackage"    # Z

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 164
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    .line 190
    iput-object p1, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 191
    invoke-direct {p0, p2}, Landroid/app/LoadedApk;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)Z

    .line 192
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 194
    iput-boolean p5, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    .line 195
    iput-boolean p6, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    .line 196
    iput-boolean p7, p0, Landroid/app/LoadedApk;->mRegisterPackage:Z

    .line 197
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 198
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, v1}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 199
    return-void
.end method

.method private static greylist-max-o adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 205
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 206
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "runtimeIsa":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "secondaryIsa":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ro.dalvik.vm.isa."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object v3, v1

    goto :goto_37

    :cond_36
    move-object v3, v2

    .line 217
    .end local v1    # "secondaryIsa":Ljava/lang/String;
    .local v3, "secondaryIsa":Ljava/lang/String;
    :goto_37
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 218
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 219
    .local v1, "modified":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 220
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 221
    return-object v1

    .line 225
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    .end local v1    # "modified":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_4b
    return-object p0
.end method

.method private blacklist allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 2

    .line 812
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_6

    .line 816
    const/4 v0, 0x0

    return-object v0

    .line 819
    :cond_6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method private blacklist allowVmViolations()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .line 829
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_6

    .line 833
    const/4 v0, 0x0

    return-object v0

    .line 836
    :cond_6
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 631
    .local p2, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_30

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 632
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_30

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_30
    return-void
.end method

.method private static blacklist appendSharedLibrariesLibPathsIfNeeded(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/Set;Ljava/util/List;)V
    .registers 9
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 460
    .local p0, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local p2, "outSeenPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_3

    .line 461
    return-void

    .line 463
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 464
    .local v1, "lib":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 468
    goto :goto_7

    .line 470
    :cond_1a
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    .line 471
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 472
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 473
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4, p1, p3}, Landroid/app/LoadedApk;->appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 474
    .end local v4    # "path":Ljava/lang/String;
    goto :goto_25

    .line 475
    :cond_35
    nop

    .line 476
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v3

    .line 475
    invoke-static {v3, p1, p2, p3}, Landroid/app/LoadedApk;->appendSharedLibrariesLibPathsIfNeeded(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/Set;Ljava/util/List;)V

    .line 477
    .end local v1    # "lib":Landroid/content/pm/SharedLibraryInfo;
    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_7

    .line 478
    :cond_3e
    return-void
.end method

.method private blacklist canAccessDataDir()Z
    .registers 5

    .line 1102
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1103
    return v1

    .line 1107
    :cond_6
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1108
    const/4 v0, 0x1

    return v0

    .line 1111
    :cond_14
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1112
    return v1

    .line 1117
    :cond_19
    invoke-direct {p0}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1122
    .local v0, "oldThreadPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-direct {p0}, Landroid/app/LoadedApk;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 1127
    .local v1, "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_21
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_33

    .line 1129
    invoke-direct {p0, v0}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1130
    invoke-direct {p0, v1}, Landroid/app/LoadedApk;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1127
    return v2

    .line 1129
    :catchall_33
    move-exception v2

    invoke-direct {p0, v0}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1130
    invoke-direct {p0, v1}, Landroid/app/LoadedApk;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1131
    throw v2
.end method

.method private static blacklist checkAndUpdateApkPaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Z)V
    .registers 6
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "expectedAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "cacheWithCode"    # Z

    .line 2313
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 2314
    .local v0, "expectedCodePath":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v1

    .line 2317
    .local v1, "loadedApk":Landroid/app/LoadedApk;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2318
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_2d

    .line 2322
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v2, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2326
    invoke-virtual {v1, p1, v2}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2327
    return-void

    .line 2319
    .end local v2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    :goto_2d
    return-void
.end method

.method public static blacklist checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p0, "expectedAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2302
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2303
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-nez v0, :cond_e

    .line 2304
    const-string v1, "LoadedApk"

    const-string v2, "Cannot find activity thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    return-void

    .line 2307
    :cond_e
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2308
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2309
    return-void
.end method

.method private greylist-max-o createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;
    .registers 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    .line 273
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_1f

    .line 275
    :try_start_a
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 276
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppComponentFactory;
    :try_end_16
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_17

    .line 275
    return-object v0

    .line 277
    :catch_17
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "LoadedApk"

    const-string v2, "Unable to instantiate appComponentFactory"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1f
    sget-object v0, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    return-object v0
.end method

.method private greylist-max-o createOrUpdateClassLoaderLocked(Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 847
    .local p1, "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 850
    iget-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_13

    .line 852
    return-void

    .line 855
    :cond_13
    iget-object v0, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1c

    .line 856
    iget-object v0, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    goto :goto_22

    .line 858
    :cond_1c
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 860
    :goto_22
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v0, v3}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 861
    iget-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v3, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 863
    return-void

    .line 870
    :cond_3e
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_63

    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 871
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-boolean v0, v1, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-eqz v0, :cond_63

    .line 874
    :try_start_52
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5c} :catch_5d

    .line 878
    goto :goto_63

    .line 876
    :catch_5d
    move-exception v0

    .line 877
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 881
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_63
    :goto_63
    iget-boolean v0, v1, Landroid/app/LoadedApk;->mRegisterPackage:Z

    if-eqz v0, :cond_77

    .line 883
    :try_start_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_70} :catch_71

    .line 886
    goto :goto_77

    .line 884
    :catch_71
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 895
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_77
    :goto_77
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 896
    .local v4, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 898
    .local v3, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_99

    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 899
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    if-nez v0, :cond_99

    move v0, v5

    goto :goto_9a

    :cond_99
    move v0, v6

    .line 908
    .local v0, "isBundledApp":Z
    :goto_9a
    const-string/jumbo v7, "java.library.path"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 909
    .local v7, "defaultSearchPaths":Ljava/lang/String;
    const-string v8, "/vendor/lib"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v5

    .line 910
    .local v8, "treatVendorApkAsUnbundled":Z
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_bb

    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 911
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v9

    if-eqz v9, :cond_bb

    if-eqz v8, :cond_bb

    .line 912
    const/4 v0, 0x0

    .line 918
    :cond_bb
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ce

    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 919
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 920
    const/4 v0, 0x0

    move v12, v0

    goto :goto_cf

    .line 923
    :cond_ce
    move v12, v0

    .end local v0    # "isBundledApp":Z
    .local v12, "isBundledApp":Z
    :goto_cf
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v12, v9, v4, v3}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 927
    invoke-direct {v1}, Landroid/app/LoadedApk;->canAccessDataDir()Z

    move-result v0

    const-string v9, ""

    if-eqz v0, :cond_e1

    iget-object v0, v1, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    goto :goto_e2

    :cond_e1
    move-object v0, v9

    .line 929
    .local v0, "libraryPermittedPath":Ljava/lang/String;
    :goto_e2
    if-eqz v12, :cond_126

    .line 936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 937
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v11

    new-array v13, v6, [Ljava/lang/String;

    invoke-static {v11, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v11}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {v11}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_127

    .line 929
    :cond_126
    move-object v10, v0

    .line 944
    .end local v0    # "libraryPermittedPath":Ljava/lang/String;
    .local v10, "libraryPermittedPath":Ljava/lang/String;
    :goto_127
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    .line 946
    .local v13, "librarySearchPath":Ljava/lang/String;
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_1ad

    .line 947
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    const-string/jumbo v11, "gpu_debug_app"

    invoke-virtual {v0, v11, v9}, Landroid/app/ActivityThread;->getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 949
    .local v9, "gpuDebugApp":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1aa

    iget-object v0, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 954
    :try_start_148
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 956
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_152} :catch_18c

    .line 955
    move-object/from16 v20, v7

    .end local v7    # "defaultSearchPaths":Ljava/lang/String;
    .local v20, "defaultSearchPaths":Ljava/lang/String;
    const-wide/16 v6, 0x80

    :try_start_156
    invoke-interface {v0, v11, v6, v7, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 957
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v6

    iget-object v7, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    .line 958
    invoke-virtual {v7}, Landroid/app/ActivityThread;->getCoreSettings()Landroid/os/Bundle;

    move-result-object v7

    .line 959
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    iget-object v14, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 958
    invoke-virtual {v6, v7, v11, v14, v0}, Landroid/os/GraphicsEnvironment;->getDebugLayerPathsFromSettings(Landroid/os/Bundle;Landroid/content/pm/IPackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    .line 960
    .local v6, "debugLayerPath":Ljava/lang/String;
    if-eqz v6, :cond_188

    .line 961
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_187} :catch_18a

    move-object v10, v7

    .line 968
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "debugLayerPath":Ljava/lang/String;
    :cond_188
    move-object v14, v10

    goto :goto_1b0

    .line 963
    :catch_18a
    move-exception v0

    goto :goto_18f

    .end local v20    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v7    # "defaultSearchPaths":Ljava/lang/String;
    :catch_18c
    move-exception v0

    move-object/from16 v20, v7

    .line 966
    .end local v7    # "defaultSearchPaths":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "defaultSearchPaths":Ljava/lang/String;
    :goto_18f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException when fetching debug layer paths for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityThread"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1af

    .line 949
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v20    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v7    # "defaultSearchPaths":Ljava/lang/String;
    :cond_1aa
    move-object/from16 v20, v7

    .end local v7    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v20    # "defaultSearchPaths":Ljava/lang/String;
    goto :goto_1af

    .line 946
    .end local v9    # "gpuDebugApp":Ljava/lang/String;
    .end local v20    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v7    # "defaultSearchPaths":Ljava/lang/String;
    :cond_1ad
    move-object/from16 v20, v7

    .line 977
    .end local v7    # "defaultSearchPaths":Ljava/lang/String;
    .restart local v20    # "defaultSearchPaths":Ljava/lang/String;
    :goto_1af
    move-object v14, v10

    .end local v10    # "libraryPermittedPath":Ljava/lang/String;
    .local v14, "libraryPermittedPath":Ljava/lang/String;
    :goto_1b0
    iget-boolean v0, v1, Landroid/app/LoadedApk;->mIncludeCode:Z

    if-nez v0, :cond_1ed

    .line 978
    iget-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1d7

    .line 979
    invoke-direct {v1}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 980
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    iget-object v5, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v15, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    const-string v10, ""

    invoke-virtual/range {v9 .. v16}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 984
    invoke-direct {v1, v0}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 985
    sget-object v5, Landroid/app/AppComponentFactory;->DEFAULT:Landroid/app/AppComponentFactory;

    iput-object v5, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 988
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_1d7
    iget-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1ec

    .line 989
    iget-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v6, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, v7}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 993
    :cond_1ec
    return-void

    .line 1002
    :cond_1ed
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_1fc

    const/4 v15, 0x0

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_203

    .line 1003
    :cond_1fc
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_203
    nop

    .line 1008
    .local v10, "zip":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1009
    .local v0, "registerAppInfoToArt":Z
    iget-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_28c

    .line 1021
    iget-object v5, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v5, :cond_21a

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v5

    if-nez v5, :cond_21a

    .line 1022
    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    .line 1027
    :cond_21a
    invoke-direct {v1}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 1029
    .local v5, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v6, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 1030
    invoke-direct {v1, v6, v12, v13, v14}, Landroid/app/LoadedApk;->createSharedLibrariesLoaders(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 1033
    .local v6, "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v18

    .line 1034
    .local v7, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    if-eqz v9, :cond_255

    .line 1035
    iget-object v9, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_23b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_255

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/SharedLibraryInfo;

    .line 1036
    .local v11, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v15

    if-eqz v15, :cond_254

    .line 1037
    invoke-virtual {v11}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v11    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_254
    goto :goto_23b

    .line 1042
    :cond_255
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v9

    iget-object v11, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v15, v1, Landroid/app/LoadedApk;->mBaseClassLoader:Ljava/lang/ClassLoader;

    move/from16 v21, v0

    .end local v0    # "registerAppInfoToArt":Z
    .local v21, "registerAppInfoToArt":Z
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    move-object/from16 v18, v7

    .end local v7    # "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v9 .. v19}, Landroid/app/ApplicationLoaders;->getClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 1047
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v0, v7}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 1049
    invoke-direct {v1, v5}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1051
    const/4 v0, 0x1

    move/from16 v21, v0

    .end local v21    # "registerAppInfoToArt":Z
    .restart local v0    # "registerAppInfoToArt":Z
    goto :goto_28e

    .line 1009
    .end local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    .end local v18    # "nativeSharedLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28c
    move/from16 v21, v0

    .line 1054
    .end local v0    # "registerAppInfoToArt":Z
    .restart local v21    # "registerAppInfoToArt":Z
    :goto_28e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 1056
    invoke-direct {v1}, Landroid/app/LoadedApk;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 1058
    .restart local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_298
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v0

    iget-object v6, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v6, v3}, Landroid/app/ApplicationLoaders;->addNative(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    :try_end_2a1
    .catchall {:try_start_298 .. :try_end_2a1} :catchall_2a5

    .line 1060
    invoke-direct {v1, v5}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1061
    goto :goto_2aa

    .line 1060
    :catchall_2a5
    move-exception v0

    invoke-direct {v1, v5}, Landroid/app/LoadedApk;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1061
    throw v0

    .line 1064
    .end local v5    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_2aa
    :goto_2aa
    if-eqz v2, :cond_2c3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c3

    .line 1065
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "add":Ljava/lang/String;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v5

    iget-object v6, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v0}, Landroid/app/ApplicationLoaders;->addPath(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1068
    const/16 v21, 0x1

    .line 1082
    .end local v0    # "add":Ljava/lang/String;
    :cond_2c3
    if-eqz v21, :cond_2d2

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_2d2

    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_2d2

    .line 1083
    invoke-direct {v1}, Landroid/app/LoadedApk;->registerAppInfoToArt()V

    .line 1090
    :cond_2d2
    iget-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2e7

    .line 1091
    iget-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v5, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v6, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, v7}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1094
    :cond_2e7
    return-void
.end method

.method private blacklist createSharedLibrariesLoaders(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 12
    .param p2, "isBundledApp"    # Z
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "libraryPermittedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;>;"
        }
    .end annotation

    .line 771
    .local p1, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p1, :cond_64

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_64

    .line 778
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 779
    .local v0, "libsToLoadAfter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 780
    .local v1, "systemR":Landroid/content/res/Resources;
    const v2, 0x10700cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 783
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v2, "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v3, "after":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 786
    .local v5, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 790
    goto :goto_2a

    .line 792
    :cond_3d
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 794
    goto :goto_2a

    .line 796
    :cond_44
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 801
    invoke-virtual {p0, v5, p2, p3, p4}, Landroid/app/LoadedApk;->createSharedLibraryLoader(Landroid/content/pm/SharedLibraryInfo;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 804
    :cond_56
    invoke-virtual {p0, v5, p2, p3, p4}, Landroid/app/LoadedApk;->createSharedLibraryLoader(Landroid/content/pm/SharedLibraryInfo;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    :goto_5d
    goto :goto_2a

    .line 808
    :cond_5e
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 772
    .end local v0    # "libsToLoadAfter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "systemR":Landroid/content/res/Resources;
    .end local v2    # "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    .end local v3    # "after":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    :cond_64
    :goto_64
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static greylist-max-o getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 327
    const-wide/16 v3, 0x400

    invoke-interface {v1, p0, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_17

    .line 331
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 333
    if-nez v1, :cond_14

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_14
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    return-object v0

    .line 329
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_17
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getServiceDispatcherCommon(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;
    .registers 16
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "flags"    # J

    .line 1956
    iget-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1957
    const/4 v0, 0x0

    .line 1958
    .local v0, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_4
    iget-object v2, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_68

    .line 1959
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v2, :cond_1d

    .line 1961
    :try_start_e
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_16

    move-object v0, v3

    goto :goto_1d

    .line 1979
    .end local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_16
    move-exception v0

    move-object v5, p2

    move-object v6, p4

    move-object p2, p1

    move-object p4, p3

    goto/16 :goto_6d

    .line 1963
    .restart local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_1d
    :goto_1d
    if-nez v0, :cond_5b

    .line 1964
    if-eqz p4, :cond_39

    .line 1965
    :try_start_21
    new-instance v3, Landroid/app/LoadedApk$ServiceDispatcher;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_33

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-wide v7, p5

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p2    # "context":Landroid/content/Context;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "flags":J
    .local v4, "c":Landroid/content/ServiceConnection;
    .local v5, "context":Landroid/content/Context;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    .local v7, "flags":J
    :try_start_27
    invoke-direct/range {v3 .. v8}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    move-object p2, v4

    .end local v4    # "c":Landroid/content/ServiceConnection;
    .end local v7    # "flags":J
    .local p2, "c":Landroid/content/ServiceConnection;
    .restart local p5    # "flags":J
    move-object p4, p3

    move-object v0, v3

    .end local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .local v3, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    goto :goto_44

    .line 1979
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v3    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    .end local p5    # "flags":J
    .restart local v4    # "c":Landroid/content/ServiceConnection;
    .restart local v7    # "flags":J
    :catchall_2e
    move-exception v0

    move-object p2, v4

    move-wide p5, v7

    move-object p4, p3

    .end local v4    # "c":Landroid/content/ServiceConnection;
    .end local v7    # "flags":J
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    .restart local p5    # "flags":J
    goto :goto_6d

    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "c":Landroid/content/ServiceConnection;
    .local p2, "context":Landroid/content/Context;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    :catchall_33
    move-exception v0

    move-object v5, p2

    move-object v6, p4

    move-object p2, p1

    move-object p4, p3

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .local p2, "c":Landroid/content/ServiceConnection;
    goto :goto_6d

    .line 1967
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local p1    # "c":Landroid/content/ServiceConnection;
    .local p2, "context":Landroid/content/Context;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    :cond_39
    move-object v5, p2

    move-object v6, p4

    move-object p2, p1

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .local p2, "c":Landroid/content/ServiceConnection;
    :try_start_3c
    new-instance p1, Landroid/app/LoadedApk$ServiceDispatcher;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_58

    move-object p4, p3

    move-object p3, v5

    .end local v5    # "context":Landroid/content/Context;
    .local p3, "context":Landroid/content/Context;
    .local p4, "handler":Landroid/os/Handler;
    :try_start_40
    invoke-direct/range {p1 .. p6}, Landroid/app/LoadedApk$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_55

    .end local p3    # "context":Landroid/content/Context;
    .restart local v5    # "context":Landroid/content/Context;
    move-object v0, p1

    .line 1970
    :goto_44
    if-nez v2, :cond_51

    .line 1971
    :try_start_46
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 1972
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    iget-object p3, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p3, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 1974
    .end local p1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :cond_51
    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 1979
    .end local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v5    # "context":Landroid/content/Context;
    .restart local p3    # "context":Landroid/content/Context;
    :catchall_55
    move-exception v0

    move-object v5, p3

    .end local p3    # "context":Landroid/content/Context;
    .restart local v5    # "context":Landroid/content/Context;
    goto :goto_6d

    .end local p4    # "handler":Landroid/os/Handler;
    .local p3, "handler":Landroid/os/Handler;
    :catchall_58
    move-exception v0

    move-object p4, p3

    .end local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "handler":Landroid/os/Handler;
    goto :goto_6d

    .line 1976
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .local p1, "c":Landroid/content/ServiceConnection;
    .local p2, "context":Landroid/content/Context;
    .restart local p3    # "handler":Landroid/os/Handler;
    .local p4, "executor":Ljava/util/concurrent/Executor;
    :cond_5b
    move-object v5, p2

    move-object v6, p4

    move-object p2, p1

    move-object p4, p3

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p3    # "handler":Landroid/os/Handler;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .local p2, "c":Landroid/content/ServiceConnection;
    .local p4, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v5, p4, v6}, Landroid/app/LoadedApk$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 1978
    :goto_62
    invoke-virtual {v0}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1979
    .end local v0    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "c":Landroid/content/ServiceConnection;
    .local p2, "context":Landroid/content/Context;
    .restart local p3    # "handler":Landroid/os/Handler;
    .local p4, "executor":Ljava/util/concurrent/Executor;
    :catchall_68
    move-exception v0

    move-object v5, p2

    move-object v6, p4

    move-object p2, p1

    move-object p4, p3

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p3    # "handler":Landroid/os/Handler;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "executor":Ljava/util/concurrent/Executor;
    .local p2, "c":Landroid/content/ServiceConnection;
    .local p4, "handler":Landroid/os/Handler;
    :goto_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_46 .. :try_end_6e} :catchall_6f

    throw v0

    :catchall_6f
    move-exception v0

    goto :goto_6d
.end method

.method private greylist-max-o initializeJavaContextClassLoader()V
    .registers 8

    .line 1219
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1220
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v1, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1224
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1221
    const-wide/32 v3, 0x10000000

    invoke-static {v1, v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1225
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_49

    .line 1241
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    move v2, v3

    goto :goto_1c

    :cond_1b
    move v2, v4

    .line 1242
    .local v2, "sharedUserIdSet":Z
    :goto_1c
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1244
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    move v5, v3

    goto :goto_2f

    :cond_2e
    move v5, v4

    .line 1245
    .local v5, "processNameNotDefault":Z
    :goto_2f
    if-nez v2, :cond_35

    if-eqz v5, :cond_34

    goto :goto_35

    :cond_34
    move v3, v4

    .line 1247
    .local v3, "sharable":Z
    :cond_35
    :goto_35
    if-eqz v3, :cond_3e

    .line 1248
    new-instance v4, Landroid/app/LoadedApk$WarningContextClassLoader;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>(Landroid/app/LoadedApk-IA;)V

    goto :goto_40

    .line 1249
    :cond_3e
    iget-object v4, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    :goto_40
    nop

    .line 1250
    .local v4, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1251
    return-void

    .line 1226
    .end local v2    # "sharedUserIdSet":Z
    .end local v3    # "sharable":Z
    .end local v4    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v5    # "processNameNotDefault":Z
    :cond_49
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; is package not installed?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist makeApplicationInner(ZLandroid/app/Instrumentation;Z)Landroid/app/Application;
    .registers 15
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;
    .param p3, "allowDuplicateInstances"    # Z

    .line 1417
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 1418
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0

    .line 1422
    :cond_7
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1423
    const-string/jumbo v2, "makeApplication"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1427
    :cond_15
    :try_start_15
    sget-object v2, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_161

    .line 1428
    :try_start_18
    sget-object v3, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    .line 1429
    .local v3, "cached":Landroid/app/Application;
    if-eqz v3, :cond_5b

    .line 1432
    const-string v4, "android"

    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1433
    const-string v4, "LoadedApk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App instance already created for package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_52
    if-nez p3, :cond_5b

    .line 1437
    iput-object v3, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 1438
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_15e

    .line 1511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1438
    return-object v3

    .line 1443
    .end local v3    # "cached":Landroid/app/Application;
    :cond_5b
    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_15e

    .line 1445
    const/4 v2, 0x0

    .line 1447
    .local v2, "app":Landroid/app/Application;
    :try_start_5d
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v3

    .line 1448
    .local v3, "myProcessName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->getCustomApplicationClassNameForProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1450
    .local v4, "appClass":Ljava/lang/String;
    if-nez p1, :cond_6b

    if-nez v4, :cond_6e

    .line 1451
    :cond_6b
    const-string v5, "android.app.Application"
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_161

    move-object v4, v5

    .line 1455
    :cond_6e
    :try_start_6e
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1456
    .local v5, "cl":Ljava/lang/ClassLoader;
    iget-object v6, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 1457
    const-string/jumbo v6, "initializeJavaContextClassLoader"

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1459
    invoke-direct {p0}, Landroid/app/LoadedApk;->initializeJavaContextClassLoader()V

    .line 1460
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1464
    :cond_88
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v6

    .line 1466
    .local v6, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    .local v8, "n":I
    :goto_96
    if-ge v7, v8, :cond_b0

    .line 1467
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1468
    .local v9, "id":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_ad

    const/16 v10, 0x7f

    if-ne v9, v10, :cond_a4

    .line 1469
    goto :goto_ad

    .line 1472
    :cond_a4
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v5, v10, v9}, Landroid/app/LoadedApk;->rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1466
    .end local v9    # "id":I
    :cond_ad
    :goto_ad
    add-int/lit8 v7, v7, 0x1

    goto :goto_96

    .line 1475
    .end local v7    # "i":I
    .end local v8    # "n":I
    :cond_b0
    iget-object v7, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {v7, p0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v7

    .line 1478
    .local v7, "appContext":Landroid/app/ContextImpl;
    invoke-static {v7}, Landroid/security/net/config/NetworkSecurityConfigProvider;->handleNewApplication(Landroid/content/Context;)V

    .line 1479
    iget-object v8, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v8, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v5, v4, v7}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v8

    move-object v2, v8

    .line 1481
    invoke-virtual {v7, v2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_c5} :catch_c6
    .catchall {:try_start_6e .. :try_end_c5} :catchall_161

    .line 1488
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .end local v6    # "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    goto :goto_d1

    .line 1482
    :catch_c6
    move-exception v5

    .line 1483
    .local v5, "e":Ljava/lang/Exception;
    :try_start_c7
    iget-object v6, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v2, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 1489
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_d1
    iget-object v5, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v5, v2}, Landroid/app/ActivityThread;->addApplication(Landroid/app/Application;)V

    .line 1490
    iput-object v2, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    .line 1491
    if-nez p3, :cond_e9

    .line 1492
    sget-object v5, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_dd
    .catchall {:try_start_c7 .. :try_end_dd} :catchall_161

    .line 1493
    :try_start_dd
    sget-object v6, Landroid/app/LoadedApk;->sApplications:Landroid/util/ArrayMap;

    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    monitor-exit v5

    goto :goto_e9

    :catchall_e6
    move-exception v6

    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_e6

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "forceDefaultAppClass":Z
    .end local p2    # "instrumentation":Landroid/app/Instrumentation;
    .end local p3    # "allowDuplicateInstances":Z
    :try_start_e8
    throw v6
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_161

    .line 1497
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "forceDefaultAppClass":Z
    .restart local p2    # "instrumentation":Landroid/app/Instrumentation;
    .restart local p3    # "allowDuplicateInstances":Z
    :cond_e9
    :goto_e9
    if-eqz p2, :cond_126

    .line 1499
    :try_start_eb
    invoke-virtual {p2, v2}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_ef
    .catchall {:try_start_eb .. :try_end_ee} :catchall_161

    .line 1506
    goto :goto_126

    .line 1500
    :catch_ef
    move-exception v5

    .line 1501
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_f0
    invoke-virtual {p2, v2, v5}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_f7

    goto :goto_126

    .line 1502
    :cond_f7
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create application "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1503
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1504
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "forceDefaultAppClass":Z
    .end local p2    # "instrumentation":Landroid/app/Instrumentation;
    .end local p3    # "allowDuplicateInstances":Z
    throw v6
    :try_end_126
    .catchall {:try_start_f0 .. :try_end_126} :catchall_161

    .line 1509
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "forceDefaultAppClass":Z
    .restart local p2    # "instrumentation":Landroid/app/Instrumentation;
    .restart local p3    # "allowDuplicateInstances":Z
    :cond_126
    :goto_126
    nop

    .line 1511
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1509
    return-object v2

    .line 1484
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_12b
    :try_start_12b
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate application "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1486
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "forceDefaultAppClass":Z
    .end local p2    # "instrumentation":Landroid/app/Instrumentation;
    .end local p3    # "allowDuplicateInstances":Z
    throw v6
    :try_end_15e
    .catchall {:try_start_12b .. :try_end_15e} :catchall_161

    .line 1443
    .end local v2    # "app":Landroid/app/Application;
    .end local v3    # "myProcessName":Ljava/lang/String;
    .end local v4    # "appClass":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "forceDefaultAppClass":Z
    .restart local p2    # "instrumentation":Landroid/app/Instrumentation;
    .restart local p3    # "allowDuplicateInstances":Z
    :catchall_15e
    move-exception v3

    :try_start_15f
    monitor-exit v2
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "forceDefaultAppClass":Z
    .end local p2    # "instrumentation":Landroid/app/Instrumentation;
    .end local p3    # "allowDuplicateInstances":Z
    :try_start_160
    throw v3
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_161

    .line 1511
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "forceDefaultAppClass":Z
    .restart local p2    # "instrumentation":Landroid/app/Instrumentation;
    .restart local p3    # "allowDuplicateInstances":Z
    :catchall_161
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    throw v2
.end method

.method public static greylist-max-o makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .registers 5
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 453
    .local p2, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 454
    return-void
.end method

.method public static greylist-max-o makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "isBundledApp"    # Z
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            "Z",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p3, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "outLibPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 486
    .local v0, "appDir":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 488
    .local v1, "libDir":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 489
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v2

    if-nez v2, :cond_19

    .line 493
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 496
    :cond_19
    if-eqz p4, :cond_1e

    .line 497
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 509
    :cond_1e
    const/4 v2, 0x0

    .line 512
    .local v2, "instrumentationLibs":[Ljava/lang/String;
    if-eqz p0, :cond_78

    .line 513
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 514
    .local v3, "instrumentationPackageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 515
    .local v4, "instrumentationAppDir":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 516
    .local v5, "instrumentationSplitAppDirs":[Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 518
    .local v6, "instrumentationLibDir":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 519
    .local v7, "instrumentedAppDir":Ljava/lang/String;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 520
    .local v8, "instrumentedSplitAppDirs":[Ljava/lang/String;
    iget-object v9, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 522
    .local v9, "instrumentedLibDir":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 523
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    .line 524
    :cond_3b
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 525
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4a

    .line 527
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_4a
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v10

    if-nez v10, :cond_60

    .line 532
    if-eqz v5, :cond_55

    .line 533
    invoke-static {p3, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 536
    :cond_55
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 537
    if-eqz v8, :cond_60

    .line 538
    invoke-static {p3, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 543
    :cond_60
    if-eqz p4, :cond_6e

    .line 544
    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6e

    .line 546
    invoke-interface {p4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_6e
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    .line 551
    invoke-static {v3}, Landroid/app/LoadedApk;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 556
    .end local v3    # "instrumentationPackageName":Ljava/lang/String;
    .end local v4    # "instrumentationAppDir":Ljava/lang/String;
    .end local v5    # "instrumentationSplitAppDirs":[Ljava/lang/String;
    .end local v6    # "instrumentationLibDir":Ljava/lang/String;
    .end local v7    # "instrumentedAppDir":Ljava/lang/String;
    .end local v8    # "instrumentedSplitAppDirs":[Ljava/lang/String;
    .end local v9    # "instrumentedLibDir":Ljava/lang/String;
    :cond_78
    if-eqz p4, :cond_e9

    .line 557
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 558
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_83
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_dd

    .line 565
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_b0

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/fake-libs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 567
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a3

    const-string v4, "64"

    goto :goto_a5

    :cond_a3
    const-string v4, ""

    :goto_a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_b0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 570
    .local v4, "apk":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!/lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v4    # "apk":Ljava/lang/String;
    goto :goto_b4

    .line 574
    :cond_dd
    if-eqz p1, :cond_e9

    .line 579
    const-string/jumbo v3, "java.library.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_e9
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 586
    .local v3, "outSeenPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    invoke-static {v4, p2, v3, p4}, Landroid/app/LoadedApk;->appendSharedLibrariesLibPathsIfNeeded(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/util/Set;Ljava/util/List;)V

    .line 592
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_121

    .line 593
    const/4 v4, 0x0

    .line 594
    .local v4, "index":I
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v7, v6

    move v8, v5

    :goto_fd
    if-ge v8, v7, :cond_121

    aget-object v9, v6, v8

    .line 596
    .local v9, "lib":Ljava/lang/String;
    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10a

    .line 597
    goto :goto_11e

    .line 599
    :cond_10a
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11e

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11e

    .line 600
    invoke-interface {p3, v4, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 601
    add-int/lit8 v4, v4, 0x1

    .line 602
    invoke-static {v9, p2, p4}, Landroid/app/LoadedApk;->appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 594
    .end local v9    # "lib":Ljava/lang/String;
    :cond_11e
    :goto_11e
    add-int/lit8 v8, v8, 0x1

    goto :goto_fd

    .line 607
    .end local v4    # "index":I
    :cond_121
    if-eqz v2, :cond_138

    .line 608
    array-length v4, v2

    move v6, v5

    :goto_125
    if-ge v6, v4, :cond_138

    aget-object v7, v2, v6

    .line 609
    .local v7, "lib":Ljava/lang/String;
    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_135

    .line 610
    invoke-interface {p3, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 611
    invoke-static {v7, p2, p4}, Landroid/app/LoadedApk;->appendApkLibPathIfNeeded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 608
    .end local v7    # "lib":Ljava/lang/String;
    :cond_135
    add-int/lit8 v6, v6, 0x1

    goto :goto_125

    .line 615
    :cond_138
    return-void
.end method

.method private blacklist registerAppInfoToArt()V
    .registers 10

    .line 1154
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 1155
    return-void

    .line 1158
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1f

    .line 1160
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    :cond_1f
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 1163
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1166
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1169
    return-void

    .line 1172
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_39
    if-ltz v1, :cond_81

    .line 1173
    if-nez v1, :cond_3f

    const/4 v3, 0x0

    goto :goto_47

    :cond_3f
    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    .line 1174
    .local v3, "splitName":Ljava/lang/String;
    :goto_47
    iget-object v4, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1174
    invoke-static {v4, v5, v3}, Landroid/content/pm/dex/ArtManager;->getCurrentProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1176
    .local v4, "curProfileFile":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 1176
    invoke-static {v5, v6, v3}, Landroid/content/pm/dex/ArtManager;->getReferenceProfilePath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1178
    .local v5, "refProfileFile":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1179
    move v6, v2

    goto :goto_6e

    .line 1180
    :cond_6d
    const/4 v6, 0x2

    :goto_6e
    nop

    .line 1181
    .local v6, "codePathType":I
    iget-object v7, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1185
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 1181
    invoke-static {v7, v4, v5, v8, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1172
    .end local v3    # "splitName":Ljava/lang/String;
    .end local v4    # "curProfileFile":Ljava/lang/String;
    .end local v5    # "refProfileFile":Ljava/lang/String;
    .end local v6    # "codePathType":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 1192
    .end local v1    # "i":I
    :cond_81
    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/DexLoadReporter;->registerAppDataDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    return-void
.end method

.method private greylist rewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .registers 10
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 1519
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_17} :catch_59

    .line 1525
    .local v0, "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1529
    :try_start_18
    const-string/jumbo v1, "onResourcesLoaded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_27} :catch_57

    .line 1533
    .local v1, "callback":Ljava/lang/reflect/Method;
    nop

    .line 1537
    :try_start_28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_34} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_34} :catch_35

    .line 1538
    return-void

    .line 1541
    :catch_35
    move-exception v2

    .line 1542
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .local v3, "cause":Ljava/lang/Throwable;
    goto :goto_3e

    .line 1539
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :catch_3b
    move-exception v2

    .line 1540
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v3, v2

    .line 1543
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    nop

    .line 1545
    :goto_3e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rewrite resource references for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1530
    .end local v1    # "callback":Ljava/lang/reflect/Method;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :catch_57
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return-void

    .line 1520
    .end local v0    # "rClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_59
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No resource references to update in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadedApk"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-void
.end method

.method private blacklist setApplicationInfo(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 397
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v2, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_44

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New application info for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is out of date with TS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < the current TS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadedApk"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_44
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 404
    .local v0, "myUid":I
    invoke-static {p1}, Landroid/app/LoadedApk;->adjustNativeLibraryPaths(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 405
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 406
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    .line 407
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_59

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :goto_5b
    iput-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    .line 408
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    .line 409
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    .line 410
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 411
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    .line 412
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 413
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    .line 414
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->newFileOrNull(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    .line 417
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitNames:[Ljava/lang/String;

    .line 418
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    .line 419
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_94

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_96

    :cond_94
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_96
    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    .line 420
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitClassLoaderNames:[Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Landroid/app/LoadedApk;->mSplitNames:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 423
    new-instance v1, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-direct {v1, p0, v2}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;-><init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V

    iput-object v1, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    .line 425
    :cond_b3
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 823
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 824
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 826
    :cond_9
    return-void
.end method

.method private blacklist setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/os/StrictMode$VmPolicy;

    .line 840
    iget-object v0, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 841
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 843
    :cond_9
    return-void
.end method


# virtual methods
.method blacklist createSharedLibraryLoader(Landroid/content/pm/SharedLibraryInfo;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 17
    .param p1, "sharedLibrary"    # Landroid/content/pm/SharedLibraryInfo;
    .param p2, "isBundledApp"    # Z
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "libraryPermittedPath"    # Ljava/lang/String;

    .line 748
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 749
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 750
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    .line 749
    move-object/from16 v7, p4

    invoke-direct {p0, v1, p2, p3, v7}, Landroid/app/LoadedApk;->createSharedLibrariesLoaders(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 752
    .local v1, "sharedLibraries":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/ClassLoader;>;Ljava/util/List<Ljava/lang/ClassLoader;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    goto :goto_26

    .line 753
    :cond_1f
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_26
    nop

    .line 757
    .local v3, "jars":Ljava/lang/String;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v2

    iget-object v4, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/util/List;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v5

    check-cast v11, Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v11}, Landroid/app/ApplicationLoaders;->getSharedLibraryClassLoaderWithSharedLibraries(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/ClassLoader;

    move-result-object v2

    return-object v2
.end method

.method blacklist findRegisteredReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;)Landroid/content/IIntentReceiver;
    .registers 7
    .param p1, "r"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;

    .line 1639
    iget-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1640
    :try_start_3
    iget-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 1641
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1642
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 1643
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1644
    .local v3, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-nez v3, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    :goto_1b
    monitor-exit v0

    return-object v2

    .line 1646
    .end local v3    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_1d
    monitor-exit v0

    return-object v2

    .line 1647
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public greylist-max-o forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/BroadcastReceiver;

    .line 1652
    iget-object v0, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1653
    :try_start_3
    iget-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1654
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    const/4 v2, 0x0

    .line 1655
    .local v2, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v1, :cond_56

    .line 1656
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, v3

    .line 1657
    if-eqz v2, :cond_56

    .line 1658
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_25

    .line 1660
    iget-object v3, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    :cond_25
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1663
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 1664
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1665
    .local v3, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-nez v3, :cond_40

    .line 1666
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 1667
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    :cond_40
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unregistered here:"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1671
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 1672
    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_4d
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 1675
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1678
    :cond_56
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    .line 1679
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1680
    .restart local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v3, :cond_8d

    .line 1681
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v2, v4

    .line 1682
    if-nez v2, :cond_6a

    goto :goto_8d

    .line 1683
    :cond_6a
    invoke-virtual {v2}, Landroid/app/LoadedApk$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v4

    .line 1684
    .restart local v4    # "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "r":Landroid/content/BroadcastReceiver;
    throw v5

    .line 1689
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "r":Landroid/content/BroadcastReceiver;
    :cond_8d
    :goto_8d
    if-nez p1, :cond_b2

    .line 1690
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unbinding Receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from Context that is no longer in use: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "r":Landroid/content/BroadcastReceiver;
    throw v4

    .line 1693
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "r":Landroid/content/BroadcastReceiver;
    :cond_b2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver not registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "r":Landroid/content/BroadcastReceiver;
    throw v4

    .line 1696
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v2    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "r":Landroid/content/BroadcastReceiver;
    :catchall_cb
    move-exception v1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_3 .. :try_end_cd} :catchall_cb

    throw v1
.end method

.method public final greylist-max-o forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/content/ServiceConnection;

    .line 1997
    iget-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1998
    :try_start_3
    iget-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 1999
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 2000
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    const/4 v2, 0x0

    .line 2001
    .local v2, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v1, :cond_5d

    .line 2002
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v3

    .line 2003
    if-eqz v2, :cond_5d

    .line 2005
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 2007
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_28

    .line 2008
    iget-object v3, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    :cond_28
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getFlags()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_57

    .line 2011
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 2012
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2013
    .local v3, "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-nez v3, :cond_4a

    .line 2014
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v4

    .line 2015
    iget-object v4, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    :cond_4a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unbound here:"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2, v4}, Landroid/app/LoadedApk$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 2020
    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_57
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2025
    :cond_5d
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    .line 2026
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2027
    .restart local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v3, :cond_94

    .line 2028
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v2, v4

    .line 2029
    if-nez v2, :cond_71

    goto :goto_94

    .line 2030
    :cond_71
    invoke-virtual {v2}, Landroid/app/LoadedApk$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v4

    .line 2031
    .restart local v4    # "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    throw v5

    .line 2036
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    :cond_94
    :goto_94
    if-nez p1, :cond_b9

    .line 2037
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unbinding Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from Context that is no longer in use: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    throw v4

    .line 2040
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    :cond_b9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service not registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "c":Landroid/content/ServiceConnection;
    throw v4

    .line 2042
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .end local v2    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v3    # "holder":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "c":Landroid/content/ServiceConnection;
    :catchall_d2
    move-exception v1

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_d2

    throw v1
.end method

.method public greylist getAppDir()Ljava/lang/String;
    .registers 2

    .line 1314
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getAppFactory()Landroid/app/AppComponentFactory;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    return-object v0
.end method

.method greylist-max-o getApplication()Landroid/app/Application;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public greylist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public greylist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 1369
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public greylist getClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 1136
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 1137
    .local v0, "ret":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_5

    .line 1138
    return-object v0

    .line 1140
    :cond_5
    iget-object v1, p0, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1141
    :try_start_8
    iget-object v2, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_10

    .line 1142
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    .line 1144
    :cond_10
    iget-object v2, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit v1

    return-object v2

    .line 1145
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public greylist getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCredentialProtectedDataDirFile()Ljava/io/File;
    .registers 2

    .line 1364
    iget-object v0, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-o getDataDir()Ljava/lang/String;
    .registers 2

    .line 1351
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getDataDirFile()Ljava/io/File;
    .registers 2

    .line 1356
    iget-object v0, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-o getDeviceProtectedDataDirFile()Ljava/io/File;
    .registers 2

    .line 1360
    iget-object v0, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-o getLibDir()Ljava/lang/String;
    .registers 2

    .line 1318
    iget-object v0, p0, Landroid/app/LoadedApk;->mLibDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOverlayDirs()[Ljava/lang/String;
    .registers 2

    .line 1340
    iget-object v0, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayPaths()[Ljava/lang/String;
    .registers 2

    .line 1347
    iget-object v0, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .registers 16
    .param p1, "r"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    .line 1611
    iget-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1612
    const/4 v0, 0x0

    .line 1613
    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    const/4 v2, 0x0

    .line 1614
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz p5, :cond_21

    .line 1615
    :try_start_7
    iget-object v3, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move-object v2, v3

    .line 1616
    if-eqz v2, :cond_21

    .line 1617
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ReceiverDispatcher;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    move-object v0, v3

    goto :goto_21

    .line 1635
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_1a
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    goto :goto_60

    .line 1620
    .restart local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_21
    :goto_21
    if-nez v0, :cond_4e

    .line 1621
    :try_start_23
    new-instance v3, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v4, p0, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_47

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    .end local p1    # "r":Landroid/content/BroadcastReceiver;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "instrumentation":Landroid/app/Instrumentation;
    .end local p5    # "registered":Z
    .local v5, "r":Landroid/content/BroadcastReceiver;
    .local v6, "context":Landroid/content/Context;
    .local v7, "handler":Landroid/os/Handler;
    .local v8, "instrumentation":Landroid/app/Instrumentation;
    .local v9, "registered":Z
    :try_start_30
    invoke-direct/range {v3 .. v9}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    move-object v0, v3

    .line 1623
    if-eqz v9, :cond_56

    .line 1624
    if-nez v2, :cond_43

    .line 1625
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 1626
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    iget-object p2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p2, v6, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 1628
    .end local p1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :cond_43
    invoke-virtual {v2, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 1635
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .end local v5    # "r":Landroid/content/BroadcastReceiver;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v8    # "instrumentation":Landroid/app/Instrumentation;
    .end local v9    # "registered":Z
    .local p1, "r":Landroid/content/BroadcastReceiver;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "instrumentation":Landroid/app/Instrumentation;
    .restart local p5    # "registered":Z
    :catchall_47
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    .end local p1    # "r":Landroid/content/BroadcastReceiver;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "instrumentation":Landroid/app/Instrumentation;
    .end local p5    # "registered":Z
    .restart local v5    # "r":Landroid/content/BroadcastReceiver;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "handler":Landroid/os/Handler;
    .restart local v8    # "instrumentation":Landroid/app/Instrumentation;
    .restart local v9    # "registered":Z
    goto :goto_60

    .line 1631
    .end local v5    # "r":Landroid/content/BroadcastReceiver;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v8    # "instrumentation":Landroid/app/Instrumentation;
    .end local v9    # "registered":Z
    .restart local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    .restart local p1    # "r":Landroid/content/BroadcastReceiver;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "instrumentation":Landroid/app/Instrumentation;
    .restart local p5    # "registered":Z
    :cond_4e
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    .end local p1    # "r":Landroid/content/BroadcastReceiver;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "instrumentation":Landroid/app/Instrumentation;
    .end local p5    # "registered":Z
    .restart local v5    # "r":Landroid/content/BroadcastReceiver;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "handler":Landroid/os/Handler;
    .restart local v8    # "instrumentation":Landroid/app/Instrumentation;
    .restart local v9    # "registered":Z
    invoke-virtual {v0, v6, v7}, Landroid/app/LoadedApk$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1633
    :cond_56
    :goto_56
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    .line 1634
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1635
    .end local v0    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    :catchall_5f
    move-exception v0

    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_30 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public greylist getResDir()Ljava/lang/String;
    .registers 2

    .line 1323
    iget-object v0, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getResources()Landroid/content/res/Resources;
    .registers 14

    .line 1374
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_49

    .line 1377
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_9} :catch_3f

    move-object v4, v0

    .line 1381
    .local v4, "splitPaths":[Ljava/lang/String;
    nop

    .line 1383
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_1e

    .line 1384
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/app/ResourcesManager;->initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1387
    :cond_1e
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iget-object v3, p0, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    iget-object v6, p0, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1389
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 1390
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 1387
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    goto :goto_49

    .line 1378
    .end local v4    # "splitPaths":[Ljava/lang/String;
    :catch_3f
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "null split not found"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1392
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_49
    :goto_49
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final greylist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 13
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "flags"    # J

    .line 1946
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "flags":J
    .local v1, "c":Landroid/content/ServiceConnection;
    .local v2, "context":Landroid/content/Context;
    .local v3, "handler":Landroid/os/Handler;
    .local v5, "flags":J
    invoke-direct/range {v0 .. v6}, Landroid/app/LoadedApk;->getServiceDispatcherCommon(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;
    .registers 13
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "flags"    # J

    .line 1951
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "c":Landroid/content/ServiceConnection;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "flags":J
    .local v1, "c":Landroid/content/ServiceConnection;
    .local v2, "context":Landroid/content/Context;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "flags":J
    invoke-direct/range {v0 .. v6}, Landroid/app/LoadedApk;->getServiceDispatcherCommon(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getSplitAppDirs()[Ljava/lang/String;
    .registers 2

    .line 1327
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitAppDirs:[Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    if-nez v0, :cond_7

    .line 727
    iget-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0

    .line 729
    :cond_7
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    invoke-virtual {v0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    if-nez v0, :cond_7

    .line 734
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object v0

    .line 736
    :cond_7
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitLoader:Landroid/app/LoadedApk$SplitDependencyLoaderImpl;

    invoke-virtual {v0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSplitResDirs()[Ljava/lang/String;
    .registers 2

    .line 1332
    iget-object v0, p0, Landroid/app/LoadedApk;->mSplitResDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTargetSdkVersion()I
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 264
    nop

    .line 265
    iput-object p1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 266
    iput-object p2, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    .line 267
    iget-object v0, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p1, v0}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 268
    iget-object v0, p0, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    iget-object v1, p0, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AppComponentFactory;->instantiateClassLoader(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoadedApk;->mClassLoader:Ljava/lang/ClassLoader;

    .line 270
    return-void
.end method

.method public greylist-max-o isSecurityViolation()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Landroid/app/LoadedApk;->mSecurityViolation:Z

    return v0
.end method

.method public greylist-max-r lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;
    .registers 7
    .param p1, "c"    # Landroid/content/ServiceConnection;
    .param p2, "context"    # Landroid/content/Context;

    .line 1985
    iget-object v0, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1986
    const/4 v1, 0x0

    .line 1987
    .local v1, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    :try_start_4
    iget-object v2, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1988
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v2, :cond_15

    .line 1989
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk$ServiceDispatcher;

    move-object v1, v3

    .line 1991
    :cond_15
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v3

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    monitor-exit v0

    return-object v3

    .line 1992
    .end local v1    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public greylist makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .registers 4
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .line 1402
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;Z)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .registers 4
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .line 1411
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;Z)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 1551
    invoke-static {}, Landroid/os/StrictMode;->vmRegistrationLeaksEnabled()Z

    move-result v0

    .line 1552
    .local v0, "reportRegistrationLeaks":Z
    iget-object v1, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1553
    :try_start_7
    iget-object v2, p0, Landroid/app/LoadedApk;->mReceivers:Landroid/util/ArrayMap;

    .line 1554
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1555
    .local v2, "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    if-eqz v2, :cond_7c

    .line 1556
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    .line 1557
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1558
    .local v4, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    new-instance v5, Landroid/app/IntentReceiverLeaked;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has leaked IntentReceiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1560
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was originally registered here. Are you missing a call to unregisterReceiver()?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v5, "leak":Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1564
    const-string v6, "ActivityThread"

    invoke-virtual {v5}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1565
    if-eqz v0, :cond_67

    .line 1566
    invoke-static {v5}, Landroid/os/StrictMode;->onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_109

    .line 1569
    :cond_67
    :try_start_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1570
    invoke-virtual {v4}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 1569
    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_72} :catch_76
    .catchall {:try_start_67 .. :try_end_72} :catchall_109

    .line 1573
    nop

    .line 1556
    .end local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v5    # "leak":Landroid/app/IntentReceiverLeaked;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1571
    .restart local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .restart local v5    # "leak":Landroid/app/IntentReceiverLeaked;
    :catch_76
    move-exception v6

    .line 1572
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_77
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "reportRegistrationLeaks":Z
    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "what":Ljava/lang/String;
    throw v7

    .line 1576
    .end local v3    # "i":I
    .end local v4    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    .end local v5    # "leak":Landroid/app/IntentReceiverLeaked;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v0    # "reportRegistrationLeaks":Z
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "what":Ljava/lang/String;
    :cond_7c
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnregisteredReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    nop

    .end local v2    # "rmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/BroadcastReceiver;Landroid/app/LoadedApk$ReceiverDispatcher;>;"
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_109

    .line 1579
    iget-object v2, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1581
    :try_start_86
    iget-object v1, p0, Landroid/app/LoadedApk;->mServices:Landroid/util/ArrayMap;

    .line 1582
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1583
    .local v1, "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    if-eqz v1, :cond_fe

    .line 1584
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_fe

    .line 1585
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 1586
    .local v4, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    new-instance v5, Landroid/app/ServiceConnectionLeaked;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has leaked ServiceConnection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1588
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was originally bound here"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v5, "leak":Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1590
    const-string v6, "ActivityThread"

    invoke-virtual {v5}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1591
    if-eqz v0, :cond_e6

    .line 1592
    invoke-static {v5}, Landroid/os/StrictMode;->onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    :try_end_e6
    .catchall {:try_start_86 .. :try_end_e6} :catchall_106

    .line 1595
    :cond_e6
    :try_start_e6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    .line 1596
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v7

    .line 1595
    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_f1} :catch_f8
    .catchall {:try_start_e6 .. :try_end_f1} :catchall_106

    .line 1599
    nop

    .line 1600
    :try_start_f2
    invoke-virtual {v4}, Landroid/app/LoadedApk$ServiceDispatcher;->doForget()V

    .line 1584
    .end local v4    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v5    # "leak":Landroid/app/ServiceConnectionLeaked;
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 1597
    .restart local v4    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .restart local v5    # "leak":Landroid/app/ServiceConnectionLeaked;
    :catch_f8
    move-exception v6

    .line 1598
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "reportRegistrationLeaks":Z
    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "who":Ljava/lang/String;
    .end local p3    # "what":Ljava/lang/String;
    throw v7

    .line 1603
    .end local v3    # "i":I
    .end local v4    # "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    .end local v5    # "leak":Landroid/app/ServiceConnectionLeaked;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v0    # "reportRegistrationLeaks":Z
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "who":Ljava/lang/String;
    .restart local p3    # "what":Ljava/lang/String;
    :cond_fe
    iget-object v3, p0, Landroid/app/LoadedApk;->mUnboundServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    nop

    .end local v1    # "smap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ServiceConnection;Landroid/app/LoadedApk$ServiceDispatcher;>;"
    monitor-exit v2

    .line 1606
    return-void

    .line 1605
    :catchall_106
    move-exception v1

    monitor-exit v2
    :try_end_108
    .catchall {:try_start_f2 .. :try_end_108} :catchall_106

    throw v1

    .line 1577
    :catchall_109
    move-exception v2

    :try_start_10a
    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v2
.end method

.method public greylist-max-o setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 3
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 312
    iget-object v0, p0, Landroid/app/LoadedApk;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p1}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 313
    return-void
.end method

.method blacklist setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p2, "sdkSandboxClientAppPackage"    # Ljava/lang/String;

    .line 430
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 431
    .local v0, "userId":I
    nop

    .line 432
    invoke-static {p1, v0, p2}, Landroid/os/Environment;->getDataMiscDeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    .line 435
    nop

    .line 436
    invoke-static {p1, v0, p2}, Landroid/os/Environment;->getDataMiscCeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    .line 440
    iget-object v1, p0, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_27

    .line 443
    iget-object v1, p0, Landroid/app/LoadedApk;->mDeviceProtectedDataDirFile:Ljava/io/File;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    goto :goto_2b

    .line 445
    :cond_27
    iget-object v1, p0, Landroid/app/LoadedApk;->mCredentialProtectedDataDirFile:Ljava/io/File;

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    .line 447
    :goto_2b
    iget-object v1, p0, Landroid/app/LoadedApk;->mDataDirFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LoadedApk;->mDataDir:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public greylist-max-o updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .registers 22
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 349
    .local p2, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Landroid/app/LoadedApk;->setApplicationInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 350
    return-void

    .line 353
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 354
    .local v3, "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Landroid/app/LoadedApk;->mActivityThread:Landroid/app/ActivityThread;

    invoke-static {v0, v2, v3}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 357
    .local v4, "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_67

    .line 358
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 359
    .local v5, "path":Ljava/lang/String;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "apkName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 361
    .local v7, "match":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_41
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_60

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 362
    .local v9, "oldPath":Ljava/lang/String;
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, "oldApkName":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 364
    const/4 v7, 0x1

    .line 365
    goto :goto_60

    .line 367
    .end local v9    # "oldPath":Ljava/lang/String;
    .end local v10    # "oldApkName":Ljava/lang/String;
    :cond_5f
    goto :goto_41

    .line 368
    :cond_60
    :goto_60
    if-nez v7, :cond_65

    .line 369
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "apkName":Ljava/lang/String;
    .end local v7    # "match":Z
    :cond_65
    goto :goto_26

    :cond_66
    goto :goto_6a

    .line 373
    :cond_67
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    :goto_6a
    iget-object v5, v1, Landroid/app/LoadedApk;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 376
    :try_start_6d
    invoke-direct {v1, v4}, Landroid/app/LoadedApk;->createOrUpdateClassLoaderLocked(Ljava/util/List;)V

    .line 377
    iget-object v0, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_c2

    if-eqz v0, :cond_b8

    .line 380
    const/4 v0, 0x0

    :try_start_75
    invoke-virtual {v1, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_75 .. :try_end_79} :catch_ae
    .catchall {:try_start_75 .. :try_end_79} :catchall_c2

    move-object v10, v6

    .line 384
    .local v10, "splitPaths":[Ljava/lang/String;
    nop

    .line 386
    :try_start_7b
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v7

    iget-object v9, v1, Landroid/app/LoadedApk;->mResDir:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/LoadedApk;->mLegacyOverlayDirs:[Ljava/lang/String;

    iget-object v12, v1, Landroid/app/LoadedApk;->mOverlayPaths:[Ljava/lang/String;

    iget-object v6, v1, Landroid/app/LoadedApk;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 388
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v16

    .line 389
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    iget-object v6, v1, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    if-nez v6, :cond_98

    move-object/from16 v18, v0

    goto :goto_a4

    .line 390
    :cond_98
    iget-object v0, v1, Landroid/app/LoadedApk;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    .line 386
    :goto_a4
    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v18}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    goto :goto_b8

    .line 381
    .end local v10    # "splitPaths":[Ljava/lang/String;
    :catch_ae
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "null split not found"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v3    # "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Landroid/app/LoadedApk;
    .end local p1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v6

    .line 392
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "newPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "addedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/app/LoadedApk;
    .restart local p1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b8
    :goto_b8
    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_7b .. :try_end_b9} :catchall_c2

    .line 393
    iget-object v0, v1, Landroid/app/LoadedApk;->mDefaultClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v2, v0}, Landroid/app/LoadedApk;->createAppFactory(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Landroid/app/AppComponentFactory;

    move-result-object v0

    iput-object v0, v1, Landroid/app/LoadedApk;->mAppComponentFactory:Landroid/app/AppComponentFactory;

    .line 394
    return-void

    .line 392
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v5
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v0
.end method
