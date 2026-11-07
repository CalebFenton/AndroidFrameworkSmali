.class public Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;,
        Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;,
        Landroid/app/ApplicationPackageManager$ResourceName;,
        Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;,
        Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;,
        Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;
    }
.end annotation


# static fields
.field public static final blacklist APP_PERMISSION_BUTTON_ALLOW_ALWAYS:Ljava/lang/String; = "app_permission_button_allow_always"

.field private static final blacklist CACHE_KEY_PACKAGES_FOR_UID_API:Ljava/lang/String; = "get_packages_for_uid"

.field private static final greylist-max-o DEBUG_ICONS:Z = false

.field private static final blacklist DEFAULT_CHECKSUMS:I = 0x7f

.field private static final greylist-max-o DEFAULT_EPHEMERAL_COOKIE_MAX_SIZE_BYTES:I = 0x4000

.field private static final blacklist HAS_SYSTEM_FEATURE_API:Ljava/lang/String; = "has_system_feature"

.field public static final blacklist PERMISSION_CONTROLLER_RESOURCE_PACKAGE:Ljava/lang/String; = "com.android.permissioncontroller"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static final blacklist mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sDefaultFlags:I = 0x400

.field public static final blacklist sGetPackagesForUidCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o sStringCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSync:Ljava/lang/Object;


# instance fields
.field private volatile greylist-max-o mArtManager:Landroid/content/pm/dex/ArtManager;

.field volatile greylist-max-o mCachedSafeMode:I

.field private final greylist-max-o mContext:Landroid/app/ContextImpl;

.field private final greylist-max-o mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private volatile greylist-max-o mInstaller:Landroid/content/pm/PackageInstaller;

.field private final greylist mPM:Landroid/content/pm/IPackageManager;

.field private final blacklist mPackageMonitorCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mPermissionManager:Landroid/permission/PermissionManager;

.field private volatile greylist-max-o mPermissionsControllerPackageName:Ljava/lang/String;

.field private final blacklist mUseSystemFeaturesCache:Z

.field private volatile greylist-max-o mUserManager:Landroid/os/UserManager;

.field private volatile blacklist mUserUnlocked:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$CasC9LCFgstyAe_VqZIFiys6OhY(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->lambda$getUserBadgedIcon$0(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$KGaiKaSTEFTT3lldSwyS0_yjsOc(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->lambda$getUserBadgeForDensity$1(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uLLyus_hKSvNbMZDIY5Cj5EP0sk(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->lambda$getUserBadgeForDensityNoBackground$2(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 811
    new-instance v0, Landroid/app/ApplicationPackageManager$1;

    new-instance v1, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v2, "system_server"

    invoke-direct {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v3, "has_system_feature"

    invoke-virtual {v1, v3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    sget v4, Landroid/app/ApplicationPackageManager;->SDK_FEATURE_COUNT:I

    invoke-virtual {v1, v4}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/PropertyInvalidatedCache$Args;->isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/app/ApplicationPackageManager$1;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    sput-object v0, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

    .line 1168
    new-instance v0, Landroid/app/ApplicationPackageManager$3;

    new-instance v1, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 1170
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    const-string/jumbo v2, "get_packages_for_uid"

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Landroid/app/ApplicationPackageManager$3;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sGetPackagesForUidCache:Landroid/app/PropertyInvalidatedCache;

    .line 3649
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 3650
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    .line 3652
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    return-void
.end method

.method protected constructor greylist <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .registers 4
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .line 2232
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPackageMonitorCallbacks:Landroid/util/ArraySet;

    .line 2194
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 3647
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ApplicationPackageManager;->mUserUnlocked:Z

    .line 2233
    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 2234
    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2235
    invoke-static {}, Landroid/app/ApplicationPackageManager;->isSystemFeaturesCacheEnabledAndAvailable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ApplicationPackageManager;->mUseSystemFeaturesCache:Z

    .line 2236
    return-void
.end method

.method static greylist configurationChanged()V
    .registers 2

    .line 2221
    sget-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2222
    :try_start_3
    sget-object v1, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2223
    sget-object v1, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2224
    monitor-exit v0

    .line 2225
    return-void

    .line 2224
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private static blacklist configurationChanged$ravenwood()V
    .registers 0

    .line 2229
    return-void
.end method

.method public static blacklist disableGetPackagesForUidCache()V
    .registers 1

    .line 1196
    sget-object v0, Landroid/app/ApplicationPackageManager;->sGetPackagesForUidCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 1197
    return-void
.end method

.method private static blacklist encodeCertificates(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1065
    .local p0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_4

    .line 1066
    const/4 v0, 0x0

    return-object v0

    .line 1068
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1069
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 1070
    .local v2, "cert":Ljava/security/cert/Certificate;
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_29

    .line 1073
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    goto :goto_11

    .line 1071
    .restart local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_29
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "Only X509 certificates supported."

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_31
    return-object v0
.end method

.method private static blacklist getAndroidManifestParser(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/XmlResourceParser;
    .registers 8
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4196
    const-string v0, "Failed to close apkAssets"

    const-string v1, "ApplicationPackageManager"

    const/4 v2, 0x0

    .line 4198
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    nop

    .line 4199
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4198
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v3

    move-object v2, v3

    .line 4200
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_26

    .line 4202
    if-eqz v2, :cond_25

    .line 4204
    :try_start_1d
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 4207
    goto :goto_25

    .line 4205
    :catchall_21
    move-exception v4

    .line 4206
    .local v4, "ignored":Ljava/lang/Throwable;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4200
    .end local v4    # "ignored":Ljava/lang/Throwable;
    :cond_25
    :goto_25
    return-object v3

    .line 4202
    :catchall_26
    move-exception v3

    if-eqz v2, :cond_31

    .line 4204
    :try_start_29
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    .line 4207
    goto :goto_31

    .line 4205
    :catchall_2d
    move-exception v4

    .line 4206
    .restart local v4    # "ignored":Ljava/lang/Throwable;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4209
    .end local v4    # "ignored":Ljava/lang/Throwable;
    :cond_31
    :goto_31
    throw v3
.end method

.method private static blacklist getAndroidManifestParser(Ljava/io/File;)Landroid/content/res/XmlResourceParser;
    .registers 6
    .param p0, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4165
    const-string v0, "Failed to close apkAssets"

    const-string v1, "ApplicationPackageManager"

    const/4 v2, 0x0

    .line 4167
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v3

    move-object v2, v3

    .line 4168
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1f

    .line 4170
    if-eqz v2, :cond_1e

    .line 4172
    :try_start_16
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 4175
    goto :goto_1e

    .line 4173
    :catchall_1a
    move-exception v4

    .line 4174
    .local v4, "ignored":Ljava/lang/Throwable;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4168
    .end local v4    # "ignored":Ljava/lang/Throwable;
    :cond_1e
    :goto_1e
    return-object v3

    .line 4170
    :catchall_1f
    move-exception v3

    if-eqz v2, :cond_2a

    .line 4172
    :try_start_22
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 4175
    goto :goto_2a

    .line 4173
    :catchall_26
    move-exception v4

    .line 4174
    .restart local v4    # "ignored":Ljava/lang/Throwable;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4177
    .end local v4    # "ignored":Ljava/lang/Throwable;
    :cond_2a
    :goto_2a
    throw v3
.end method

.method private blacklist getArchivedAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4137
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    new-instance v2, Landroid/os/UserHandle;

    .line 4138
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 4139
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4137
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4140
    .local v1, "archivedAppIcon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_19

    .line 4141
    return-object v0

    .line 4143
    :cond_19
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object v2

    .line 4144
    .end local v1    # "archivedAppIcon":Landroid/graphics/Bitmap;
    :catch_1f
    move-exception v1

    .line 4145
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve archived app icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationPackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    return-object v0
.end method

.method private greylist-max-o getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "tryBadgeInPlace"    # Z

    .line 3524
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 3525
    .local v0, "badgedWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 3526
    .local v1, "badgedHeight":I
    const/4 v2, 0x0

    if-eqz p4, :cond_1e

    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1e

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 3528
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 3531
    .local v3, "canBadgeInPlace":Z
    :goto_1f
    if-eqz v3, :cond_29

    .line 3532
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2f

    .line 3534
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_29
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3536
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2f
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3538
    .local v5, "canvas":Landroid/graphics/Canvas;
    if-nez v3, :cond_3c

    .line 3539
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3540
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3543
    :cond_3c
    if-eqz p3, :cond_98

    .line 3544
    iget v6, p3, Landroid/graphics/Rect;->left:I

    if-ltz v6, :cond_70

    iget v6, p3, Landroid/graphics/Rect;->top:I

    if-ltz v6, :cond_70

    .line 3545
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gt v6, v0, :cond_70

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gt v6, v1, :cond_70

    .line 3550
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p2, v2, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3552
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 3553
    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v6, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3554
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3555
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9e

    .line 3546
    :cond_70
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Badge location "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not in badged drawable bounds "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3557
    :cond_98
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3558
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3561
    :goto_9e
    if-nez v3, :cond_be

    .line 3562
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v6}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3564
    .local v2, "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_bd

    .line 3565
    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 3566
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 3569
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_bd
    return-object v2

    .line 3572
    .end local v2    # "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_be
    return-object p1
.end method

.method private greylist-max-o getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    .line 2326
    sget-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2327
    :try_start_3
    sget-object v1, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2330
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_20

    .line 2331
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2332
    .local v2, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v2, :cond_1b

    .line 2342
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2345
    :cond_1b
    sget-object v3, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v2    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_20
    monitor-exit v0

    .line 2348
    const/4 v0, 0x0

    return-object v0

    .line 2347
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private greylist-max-o getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    .line 2445
    sget-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2446
    :try_start_3
    sget-object v1, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2447
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1c

    .line 2448
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2449
    .local v2, "cs":Ljava/lang/CharSequence;
    if-eqz v2, :cond_17

    .line 2450
    monitor-exit v0

    return-object v2

    .line 2453
    :cond_17
    sget-object v3, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    .end local v2    # "cs":Ljava/lang/CharSequence;
    :cond_1c
    monitor-exit v0

    .line 2456
    const/4 v0, 0x0

    return-object v0

    .line 2455
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private blacklist getDefaultUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .line 2081
    nop

    .line 2082
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserBadgeResId(I)I

    move-result v0

    .line 2081
    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDefaultUserBadgeNoBackgroundForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .line 2107
    nop

    .line 2108
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserBadgeNoBackgroundResId(I)I

    move-result v0

    .line 2107
    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDefaultUserIconBadge(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2028
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserIconBadgeResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "drawableId"    # I
    .param p2, "density"    # I

    .line 2112
    if-gtz p2, :cond_e

    .line 2113
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2115
    :cond_e
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getLaunchIntentForPackageAndCategory(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "intentToResolve":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 358
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1b

    goto :goto_3d

    .line 361
    :cond_1b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 362
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 364
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 363
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    return-object v3

    .line 359
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getPermissionManager()Landroid/permission/PermissionManager;
    .registers 3

    .line 220
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionManager:Landroid/permission/PermissionManager;

    if-nez v0, :cond_10

    .line 221
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 223
    :cond_10
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionManager:Landroid/permission/PermissionManager;

    return-object v0
.end method

.method private blacklist getProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "drawableId"    # I
    .param p3, "density"    # I

    .line 2119
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->hasUserBadge(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2120
    invoke-direct {p0, p2, p3}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2122
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getUpdatableUserBadgeId(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2076
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2077
    const-string v0, "WORK_PROFILE_ICON"

    goto :goto_13

    :cond_11
    const-string v0, "UNDEFINED"

    .line 2076
    :goto_13
    return-object v0
.end method

.method private blacklist getUpdatableUserIconBadgeId(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2023
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2024
    const-string v0, "WORK_PROFILE_ICON_BADGE"

    goto :goto_13

    :cond_11
    const-string v0, "UNDEFINED"

    .line 2023
    :goto_13
    return-object v0
.end method

.method private blacklist getUserBadgeColor(Landroid/os/UserHandle;Z)I
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "checkTheme"    # Z

    .line 2048
    if-eqz p2, :cond_1f

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2049
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserBadgeDarkColor(I)I

    move-result v0

    return v0

    .line 2051
    :cond_1f
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserBadgeColor(I)I

    move-result v0

    return v0
.end method

.method static greylist-max-o handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .registers 13
    .param p0, "cmd"    # I
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "hasPkgInfo"    # Z

    .line 2359
    const/4 v0, 0x0

    .line 2360
    .local v0, "immediateGc":Z
    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    .line 2361
    const/4 v0, 0x1

    .line 2363
    :cond_5
    if-eqz p1, :cond_74

    array-length v2, p1

    if-lez v2, :cond_74

    .line 2364
    const/4 v2, 0x0

    .line 2365
    .local v2, "needCleanup":Z
    array-length v3, p1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_5f

    aget-object v5, p1, v4

    .line 2366
    .local v5, "ssp":Ljava/lang/String;
    sget-object v6, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v6

    .line 2367
    :try_start_14
    sget-object v7, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v1

    .local v7, "i":I
    :goto_1b
    if-ltz v7, :cond_36

    .line 2368
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 2369
    .local v8, "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v9, v8, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2371
    sget-object v9, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2372
    const/4 v2, 0x1

    .line 2367
    .end local v8    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_33
    add-int/lit8 v7, v7, -0x1

    goto :goto_1b

    .line 2375
    .end local v7    # "i":I
    :cond_36
    sget-object v7, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v1

    .restart local v7    # "i":I
    :goto_3d
    if-ltz v7, :cond_58

    .line 2376
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 2377
    .restart local v8    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v9, v8, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 2379
    sget-object v9, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2380
    const/4 v2, 0x1

    .line 2375
    .end local v8    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_55
    add-int/lit8 v7, v7, -0x1

    goto :goto_3d

    .line 2383
    .end local v7    # "i":I
    :cond_58
    monitor-exit v6

    .line 2365
    .end local v5    # "ssp":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2383
    .restart local v5    # "ssp":Ljava/lang/String;
    :catchall_5c
    move-exception v1

    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_14 .. :try_end_5e} :catchall_5c

    throw v1

    .line 2385
    .end local v5    # "ssp":Ljava/lang/String;
    :cond_5f
    if-nez v2, :cond_63

    if-eqz p2, :cond_74

    .line 2386
    :cond_63
    if-eqz v0, :cond_6d

    .line 2388
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    goto :goto_74

    .line 2390
    :cond_6d
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    .line 2394
    .end local v2    # "needCleanup":Z
    :cond_74
    :goto_74
    return-void
.end method

.method private blacklist hasUserBadge(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3576
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasBadge(I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o installExistingPackageAsUser(Ljava/lang/String;II)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installReason"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2550
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_32

    const/high16 v3, 0x400000

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p2

    move v2, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "installReason":I
    .end local p3    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v4, "installReason":I
    :try_start_8
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p1

    .line 2552
    .local p1, "res":I
    const/4 p2, -0x3

    if-eq p1, p2, :cond_10

    .line 2555
    return p1

    .line 2553
    :cond_10
    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " doesn\'t exist"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v4    # "installReason":I
    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    throw p2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2f} :catch_2f

    .line 2556
    .end local p1    # "res":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "userId":I
    .restart local v4    # "installReason":I
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    :catch_2f
    move-exception v0

    move-object p1, v0

    goto :goto_37

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v4    # "installReason":I
    .local p1, "packageName":Ljava/lang/String;
    .restart local p2    # "installReason":I
    .restart local p3    # "userId":I
    :catch_32
    move-exception v0

    move-object v1, p1

    move v4, p2

    move v2, p3

    move-object p1, v0

    .line 2557
    .end local p2    # "installReason":I
    .end local p3    # "userId":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "userId":I
    .restart local v4    # "installReason":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_37
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public static blacklist invalidateGetPackagesForUidCache()V
    .registers 1

    .line 1201
    sget-object v0, Landroid/app/ApplicationPackageManager;->sGetPackagesForUidCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 1202
    return-void
.end method

.method public static blacklist invalidateHasSystemFeatureCache()V
    .registers 1

    .line 851
    sget-object v0, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 852
    return-void
.end method

.method private greylist-max-o isPackageCandidateVolume(Landroid/app/ContextImpl;Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;Landroid/content/pm/IPackageManager;)Z
    .registers 10
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;

    .line 2815
    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->isForceAllowOnExternal(Landroid/content/Context;)Z

    move-result v0

    .line 2817
    .local v0, "forceAllowOnExternal":Z
    const-string/jumbo v1, "private"

    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 2818
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->isAllow3rdPartyOnInternal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :cond_21
    :goto_21
    return v2

    .line 2823
    :cond_22
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2824
    return v3

    .line 2826
    :cond_29
    if-nez v0, :cond_35

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v1, v2, :cond_34

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_35

    .line 2829
    :cond_34
    return v3

    .line 2833
    :cond_35
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 2834
    return v3

    .line 2838
    :cond_3c
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2839
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v1

    return v1

    .line 2844
    :cond_47
    :try_start_47
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p4, v1}, Landroid/content/pm/IPackageManager;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_5a

    if-eqz v1, :cond_50

    .line 2845
    return v3

    .line 2849
    :cond_50
    nop

    .line 2852
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_58

    goto :goto_59

    :cond_58
    move v2, v3

    :goto_59
    return v2

    .line 2847
    :catch_5a
    move-exception v1

    .line 2848
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static greylist-max-o isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z
    .registers 4
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2902
    const-string/jumbo v0, "private"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 2903
    return v1

    .line 2907
    :cond_f
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 2908
    return v2

    .line 2912
    :cond_17
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1
.end method

.method private static blacklist isSystemFeaturesCacheEnabledAndAvailable()Z
    .registers 2

    .line 2239
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->cacheSdkSystemFeatures()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2240
    return v1

    .line 2242
    :cond_8
    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2243
    return v1

    .line 2245
    :cond_f
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/content/pm/SystemFeaturesCache;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2251
    return v1

    .line 2253
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$getUserBadgeForDensity$1(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .line 2068
    invoke-direct {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->getDefaultUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getUserBadgeForDensityNoBackground$2(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .line 2098
    invoke-direct {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->getDefaultUserBadgeNoBackgroundForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getUserBadgedIcon$0(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2014
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getDefaultUserIconBadge(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 550
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 551
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "runtimeIsa":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
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

    .line 557
    .local v2, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object v3, v1

    goto :goto_37

    :cond_36
    move-object v3, v2

    .line 562
    .end local v1    # "secondaryIsa":Ljava/lang/String;
    .local v3, "secondaryIsa":Ljava/lang/String;
    :goto_37
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 563
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 564
    .local v1, "modified":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 565
    return-object v1

    .line 568
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    .end local v1    # "modified":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v3    # "secondaryIsa":Ljava/lang/String;
    :cond_47
    return-object p0
.end method

.method private blacklist onImplicitDirectBoot(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2304
    invoke-static {}, Landroid/os/StrictMode;->vmImplicitDirectBootEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_29

    .line 2309
    iget-boolean v0, p0, Landroid/app/ApplicationPackageManager;->mUserUnlocked:Z

    if-eqz v0, :cond_11

    .line 2310
    return-void

    .line 2311
    :cond_11
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2312
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2313
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ApplicationPackageManager;->mUserUnlocked:Z

    goto :goto_3c

    .line 2315
    :cond_25
    invoke-static {}, Landroid/os/StrictMode;->onImplicitDirectBoot()V

    goto :goto_3c

    .line 2317
    :cond_29
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2318
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2319
    invoke-static {}, Landroid/os/StrictMode;->onImplicitDirectBoot()V

    .line 2322
    :cond_3c
    :goto_3c
    return-void
.end method

.method private greylist-max-o putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 2352
    sget-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2353
    :try_start_3
    sget-object v1, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    monitor-exit v0

    .line 2356
    return-void

    .line 2355
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private greylist-max-o putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "cs"    # Ljava/lang/CharSequence;

    .line 2460
    sget-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2461
    :try_start_3
    sget-object v1, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    monitor-exit v0

    .line 2463
    return-void

    .line 2462
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist updateFlagsForApplication(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2276
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist updateFlagsForComponent(JILandroid/content/Intent;)J
    .registers 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .line 2284
    if-eqz p4, :cond_e

    .line 2285
    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_e

    .line 2286
    const-wide/32 v0, 0x10000000

    or-long/2addr p1, v0

    .line 2292
    :cond_e
    const-wide/32 v0, 0x100c0000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 2295
    invoke-direct {p0, p3}, Landroid/app/ApplicationPackageManager;->onImplicitDirectBoot(I)V

    .line 2297
    :cond_1b
    return-wide p1
.end method

.method private blacklist updateFlagsForPackage(JI)J
    .registers 8
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2260
    const-wide/16 v0, 0xf

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 2263
    const-wide/32 v0, 0x100c0000

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 2266
    invoke-direct {p0, p3}, Landroid/app/ApplicationPackageManager;->onImplicitDirectBoot(I)V

    .line 2269
    :cond_14
    return-wide p1
.end method


# virtual methods
.method public greylist-max-o addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    .registers 11
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    .line 3449
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "sourceUserId":I
    .end local p3    # "targetUserId":I
    .end local p4    # "flags":I
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v3, "sourceUserId":I
    .local v4, "targetUserId":I
    .local v5, "flags":I
    :try_start_c
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 3453
    nop

    .line 3454
    return-void

    .line 3451
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "sourceUserId":I
    .end local v4    # "targetUserId":I
    .end local v5    # "flags":I
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "sourceUserId":I
    .restart local p3    # "targetUserId":I
    .restart local p4    # "flags":I
    :catch_14
    move-exception v0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object p1, v0

    .line 3452
    .end local p2    # "sourceUserId":I
    .end local p3    # "targetUserId":I
    .end local p4    # "flags":I
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "sourceUserId":I
    .restart local v4    # "targetUserId":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 2210
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 2211
    return-void
.end method

.method public whitelist addPackageToPreferred(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3125
    const-string v0, "ApplicationPackageManager"

    const-string v1, "addPackageToPreferred() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    return-void
.end method

.method public whitelist addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .line 894
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .line 899
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .line 3143
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_13

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v2, "match":I
    .local v3, "set":[Landroid/content/ComponentName;
    .local v4, "activity":Landroid/content/ComponentName;
    :try_start_b
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 3146
    nop

    .line 3147
    return-void

    .line 3144
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "match":I
    .end local v3    # "set":[Landroid/content/ComponentName;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "match":I
    .restart local p3    # "set":[Landroid/content/ComponentName;
    .restart local p4    # "activity":Landroid/content/ComponentName;
    :catch_13
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p1, v0

    .line 3145
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "match":I
    .restart local v3    # "set":[Landroid/content/ComponentName;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 13
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .line 3153
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_10

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .end local p5    # "userId":I
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v2, "match":I
    .local v3, "set":[Landroid/content/ComponentName;
    .local v4, "activity":Landroid/content/ComponentName;
    .local v5, "userId":I
    :try_start_8
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    .line 3156
    nop

    .line 3157
    return-void

    .line 3154
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "match":I
    .end local v3    # "set":[Landroid/content/ComponentName;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "match":I
    .restart local p3    # "set":[Landroid/content/ComponentName;
    .restart local p4    # "activity":Landroid/content/ComponentName;
    .restart local p5    # "userId":I
    :catch_10
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object p1, v0

    .line 3155
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .end local p5    # "userId":I
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "match":I
    .restart local v3    # "set":[Landroid/content/ComponentName;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .line 3193
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_13

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v2, "match":I
    .local v3, "set":[Landroid/content/ComponentName;
    .local v4, "activity":Landroid/content/ComponentName;
    :try_start_b
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 3196
    nop

    .line 3197
    return-void

    .line 3194
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "match":I
    .end local v3    # "set":[Landroid/content/ComponentName;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "match":I
    .restart local p3    # "set":[Landroid/content/ComponentName;
    .restart local p4    # "activity":Landroid/content/ComponentName;
    :catch_13
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p1, v0

    .line 3195
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "match":I
    .restart local v3    # "set":[Landroid/content/ComponentName;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 945
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/permission/PermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist arePermissionsIndividuallyControlled()Z
    .registers 3

    .line 505
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 974
    invoke-super {p0, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 975
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v1

    const-string v2, "android.content.pm.extra.REQUEST_PERMISSIONS_DEVICE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 976
    return-object v0
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4035
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4037
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->canPackageQuery(Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public whitelist canPackageQuery(Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 5
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 4044
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4045
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    :try_start_6
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z

    move-result-object v0
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_6 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    .line 4051
    :catch_11
    move-exception v0

    .line 4052
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4048
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 4049
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 4050
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist canRequestPackageInstalls()Z
    .registers 4

    .line 3658
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 3659
    :catch_11
    move-exception v0

    .line 3660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canUserUninstall(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 4081
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 4082
    :catch_b
    move-exception v0

    .line 4083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "names"    # [Ljava/lang/String;

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 298
    :catch_7
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 856
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 857
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getDeviceId()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    .line 856
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public whitelist checkSignatures(II)I
    .registers 5
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1011
    :catch_7
    move-exception v0

    .line 1012
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .line 1001
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1002
    :catch_b
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 2936
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 2939
    nop

    .line 2940
    return-void

    .line 2937
    :catch_b
    move-exception v0

    .line 2938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o clearCrossProfileIntentFilters(I)V
    .registers 4
    .param p1, "sourceUserId"    # I

    .line 3476
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3479
    nop

    .line 3480
    return-void

    .line 3477
    :catch_d
    move-exception v0

    .line 3478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearInstantAppCookie()V
    .registers 2

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->updateInstantAppCookie([B)V

    .line 1467
    return-void
.end method

.method public whitelist clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3183
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3186
    nop

    .line 3187
    return-void

    .line 3184
    :catch_7
    move-exception v0

    .line 3185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "names"    # [Ljava/lang/String;

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 289
    :catch_7
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 2945
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2948
    nop

    .line 2949
    return-void

    .line 2946
    :catch_7
    move-exception v0

    .line 2947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 2955
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2958
    nop

    .line 2959
    return-void

    .line 2956
    :catch_7
    move-exception v0

    .line 2957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I

    .line 2918
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 2919
    return-void
.end method

.method public greylist-max-o deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 2925
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    const/4 v2, -0x1

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v4, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "observer":Landroid/content/pm/IPackageDeleteObserver;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v3, "observer":Landroid/content/pm/IPackageDeleteObserver;
    .local v4, "userId":I
    .local v5, "flags":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 2929
    nop

    .line 2930
    return-void

    .line 2927
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_15

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "observer":Landroid/content/pm/IPackageDeleteObserver;
    .end local v4    # "userId":I
    .end local v5    # "flags":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "observer":Landroid/content/pm/IPackageDeleteObserver;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    :catch_f
    move-exception v0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v4, p4

    move-object p1, v0

    .line 2928
    .end local p2    # "observer":Landroid/content/pm/IPackageDeleteObserver;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v3    # "observer":Landroid/content/pm/IPackageDeleteObserver;
    .restart local v4    # "userId":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist extendVerificationTimeout(IIJ)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J

    .line 2574
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2577
    nop

    .line 2578
    return-void

    .line 2575
    :catch_7
    move-exception v0

    .line 2576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist extractPackageItemInfoAttributes(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;[I)Landroid/content/res/TypedArray;
    .registers 11
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rootTag"    # Ljava/lang/String;
    .param p4, "attributes"    # [I

    .line 4215
    const-string v0, "ApplicationPackageManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_a9

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_b

    goto/16 :goto_a9

    .line 4219
    :cond_b
    :try_start_b
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_8f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_f} :catch_8f

    .line 4220
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_34

    .line 4221
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " metadata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_83

    .line 4222
    nop

    .line 4240
    if-eqz v2, :cond_33

    :try_start_30
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_33} :catch_8f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_33} :catch_8f

    .line 4222
    :cond_33
    return-object v1

    .line 4225
    :cond_34
    :try_start_34
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 4227
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_38
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 4228
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_44

    const/4 v5, 0x2

    if-ne v4, v5, :cond_43

    .line 4229
    goto :goto_44

    .line 4231
    .end local v4    # "type":I
    :cond_43
    goto :goto_38

    .line 4233
    :cond_44
    :goto_44
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 4234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metadata does not start with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_34 .. :try_end_6a} :catchall_83

    .line 4235
    nop

    .line 4240
    if-eqz v2, :cond_70

    :try_start_6d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_70} :catch_8f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_8f

    .line 4235
    :cond_70
    return-object v1

    .line 4238
    :cond_71
    :try_start_71
    invoke-virtual {p1}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 4239
    invoke-virtual {v4, v3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_83

    .line 4240
    if-eqz v2, :cond_82

    :try_start_7f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_82} :catch_8f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_82} :catch_8f

    .line 4238
    :cond_82
    return-object v4

    .line 4219
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    :catchall_83
    move-exception v3

    if-eqz v2, :cond_8e

    :try_start_86
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v4

    :try_start_8b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "info":Landroid/content/pm/PackageItemInfo;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "rootTag":Ljava/lang/String;
    .end local p4    # "attributes":[I
    :cond_8e
    :goto_8e
    throw v3
    :try_end_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8b .. :try_end_8f} :catch_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_8f

    .line 4240
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "info":Landroid/content/pm/PackageItemInfo;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "rootTag":Ljava/lang/String;
    .restart local p4    # "attributes":[I
    :catch_8f
    move-exception v2

    .line 4241
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4242
    return-object v1

    .line 4216
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a9
    :goto_a9
    return-object v1
.end method

.method public greylist-max-o flushPackageRestrictionsAsUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3297
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3300
    nop

    .line 3301
    return-void

    .line 3298
    :catch_7
    move-exception v0

    .line 3299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "pi"    # Landroid/content/IntentSender;

    .line 2974
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "freeStorageSize":J
    .end local p4    # "pi":Landroid/content/IntentSender;
    .local v1, "volumeUuid":Ljava/lang/String;
    .local v2, "freeStorageSize":J
    .local v5, "pi":Landroid/content/IntentSender;
    :try_start_6
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 2977
    nop

    .line 2978
    return-void

    .line 2975
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_13

    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "freeStorageSize":J
    .end local v5    # "pi":Landroid/content/IntentSender;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "freeStorageSize":J
    .restart local p4    # "pi":Landroid/content/IntentSender;
    :catch_e
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object p1, v0

    .line 2976
    .end local p2    # "freeStorageSize":J
    .end local p4    # "pi":Landroid/content/IntentSender;
    .restart local v1    # "volumeUuid":Ljava/lang/String;
    .restart local v2    # "freeStorageSize":J
    .restart local v5    # "pi":Landroid/content/IntentSender;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_13
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .registers 11
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "idealStorageSize"    # J
    .param p4, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 2965
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "idealStorageSize":J
    .end local p4    # "observer":Landroid/content/pm/IPackageDataObserver;
    .local v1, "volumeUuid":Ljava/lang/String;
    .local v2, "idealStorageSize":J
    .local v5, "observer":Landroid/content/pm/IPackageDataObserver;
    :try_start_6
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    .line 2968
    nop

    .line 2969
    return-void

    .line 2966
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_13

    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "idealStorageSize":J
    .end local v5    # "observer":Landroid/content/pm/IPackageDataObserver;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "idealStorageSize":J
    .restart local p4    # "observer":Landroid/content/pm/IPackageDataObserver;
    :catch_e
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object p1, v0

    .line 2967
    .end local p2    # "idealStorageSize":J
    .end local p4    # "observer":Landroid/content/pm/IPackageDataObserver;
    .restart local v1    # "volumeUuid":Ljava/lang/String;
    .restart local v2    # "idealStorageSize":J
    .restart local v5    # "observer":Landroid/content/pm/IPackageDataObserver;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_13
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1943
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1949
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1950
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1953
    :cond_f
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1955
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1e

    .line 1956
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1959
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1910
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1915
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1916
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1919
    :cond_f
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1920
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1e

    .line 1921
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1924
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 587
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 595
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 596
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v2

    .line 595
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_21

    .line 597
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_16

    .line 598
    return-object v1

    .line 602
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_16
    nop

    .line 604
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :catch_21
    move-exception v1

    .line 601
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1976
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1982
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1983
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1986
    :cond_f
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1987
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1e

    .line 1988
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1991
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 2626
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2627
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2628
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/IntentFilter;>;"
    if-nez v0, :cond_d

    .line 2629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2631
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 2632
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/IntentFilter;>;"
    :catch_12
    move-exception v0

    .line 2633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllPermissionGroups(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppMetadata(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1299
    const/4 v0, 0x0

    .line 1300
    .local v0, "appMetadata":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 1302
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/ParcelableException; {:try_start_2 .. :try_end_c} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_38

    .line 1308
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 1309
    if-eqz v2, :cond_2e

    .line 1310
    :try_start_f
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_27

    .line 1311
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_14
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1d

    move-object v0, v3

    .line 1312
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27

    .line 1314
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_2e

    .line 1310
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v4

    :try_start_23
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "appMetadata":Landroid/os/PersistableBundle;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :goto_26
    throw v3
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    .line 1312
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "appMetadata":Landroid/os/PersistableBundle;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_27
    move-exception v1

    .line 1313
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1317
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_32

    move-object v1, v0

    goto :goto_37

    :cond_32
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    :goto_37
    return-object v1

    .line 1306
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_38
    move-exception v2

    .line 1307
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1303
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_3e
    move-exception v2

    .line 1304
    .local v2, "e":Landroid/os/ParcelableException;
    const-class v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v2, v3}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1305
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whitelist getAppMetadataSource(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1323
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1324
    const/4 v0, 0x0

    .line 1326
    .local v0, "source":I
    :try_start_7
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getAppMetadataSource(Ljava/lang/String;I)I

    move-result v1
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_7 .. :try_end_11} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    .line 1332
    .end local v0    # "source":I
    .local v1, "source":I
    nop

    .line 1333
    return v1

    .line 1330
    .end local v1    # "source":I
    .restart local v0    # "source":I
    :catch_13
    move-exception v1

    .line 1331
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1327
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v1

    .line 1328
    .local v1, "e":Landroid/os/ParcelableException;
    const-class v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v1, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1329
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist getAppPredictionServicePackageName()Ljava/lang/String;
    .registers 3

    .line 3844
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3845
    :catch_7
    move-exception v0

    .line 3846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 1964
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1970
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3288
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3289
    :catch_b
    move-exception v0

    .line 3290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 3317
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3318
    :catch_b
    move-exception v0

    .line 3319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 1932
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1937
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 518
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 530
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 536
    nop

    .line 538
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->getValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Landroid/app/ApplicationPackageManager;->updateFlagsForApplication(JI)J

    move-result-wide v0

    .line 536
    invoke-static {p1, v0, v1, p3}, Landroid/app/ApplicationPackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 540
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_14

    .line 543
    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 541
    :cond_14
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 2526
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 1996
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2002
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getArchivedPackage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4068
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v0

    .line 4069
    .local v0, "parcel":Landroid/content/pm/ArchivedPackageParcel;
    if-nez v0, :cond_10

    .line 4070
    const/4 v1, 0x0

    return-object v1

    .line 4072
    :cond_10
    new-instance v1, Landroid/content/pm/ArchivedPackageInfo;

    invoke-direct {v1, v0}, Landroid/content/pm/ArchivedPackageInfo;-><init>(Landroid/content/pm/ArchivedPackageParcel;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 4073
    .end local v0    # "parcel":Landroid/content/pm/ArchivedPackageParcel;
    :catch_16
    move-exception v0

    .line 4074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getArtManager()Landroid/content/pm/dex/ArtManager;
    .registers 4

    .line 3786
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mArtManager:Landroid/content/pm/dex/ArtManager;

    if-nez v0, :cond_1a

    .line 3788
    :try_start_4
    new-instance v0, Landroid/content/pm/dex/ArtManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/dex/ArtManager;-><init>(Landroid/content/Context;Landroid/content/pm/dex/IArtManager;)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mArtManager:Landroid/content/pm/dex/ArtManager;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    .line 3791
    goto :goto_1a

    .line 3789
    :catch_14
    move-exception v0

    .line 3790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mArtManager:Landroid/content/pm/dex/ArtManager;

    return-object v0
.end method

.method public blacklist getAttentionServicePackageName()Ljava/lang/String;
    .registers 3

    .line 3817
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3818
    :catch_7
    move-exception v0

    .line 3819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBackgroundPermissionOptionLabel()Ljava/lang/CharSequence;
    .registers 7

    .line 983
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "permissionController":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 985
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ContextImpl;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 987
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "app_permission_button_allow_always"

    const-string/jumbo v4, "string"

    const-string v5, "com.android.permissioncontroller"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 989
    .local v2, "textId":I
    if-eqz v2, :cond_21

    .line 990
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_20} :catch_22

    return-object v3

    .line 994
    .end local v0    # "permissionController":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "textId":I
    :cond_21
    goto :goto_2a

    .line 992
    :catch_22
    move-exception v0

    .line 993
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ApplicationPackageManager"

    const-string v2, "Permission controller not found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2a
    const-string v0, ""

    return-object v0
.end method

.method public greylist-max-o getCarLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 348
    const-string v0, "android.intent.category.CAR_LAUNCHER"

    invoke-direct {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getLaunchIntentForPackageAndCategory(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .registers 4
    .param p1, "sequenceNumber"    # I

    .line 766
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 767
    :catch_b
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 3268
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3269
    :catch_b
    move-exception v0

    .line 3270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 725
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 734
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 735
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v1

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 734
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 736
    .local v0, "sharedLibraries":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v1

    .line 737
    .end local v0    # "sharedLibraries":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    :catch_1c
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1928
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 2639
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 2640
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->getBrowserRoleHolder(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDefaultTextClassifierPackageName()Ljava/lang/String;
    .registers 3

    .line 3799
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3800
    :catch_7
    move-exception v0

    .line 3801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .line 213
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_10

    .line 214
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 216
    :cond_10
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public whitelist getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1853
    const-string v0, "Failure retrieving resources for "

    const-string v1, "PackageManager"

    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1854
    .local v2, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1855
    .local v3, "cachedIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_10

    .line 1856
    return-object v3

    .line 1859
    :cond_10
    const/4 v4, 0x0

    if-nez p3, :cond_1d

    .line 1861
    const/16 v5, 0x400

    :try_start_15
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_1b

    move-object p3, v5

    .line 1864
    goto :goto_1d

    .line 1862
    :catch_1b
    move-exception v0

    .line 1863
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 1867
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1d
    :goto_1d
    if-eqz p2, :cond_91

    .line 1869
    :try_start_1f
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1870
    .local v5, "r":Landroid/content/res/Resources;
    invoke-virtual {v5, p2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1871
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2c

    .line 1872
    invoke-direct {p0, v2, v6}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2c} :catch_79
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_2c} :catch_53
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2d

    .line 1889
    :cond_2c
    return-object v6

    .line 1896
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_2d
    move-exception v0

    .line 1899
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure retrieving icon 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1900
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1899
    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_91

    .line 1893
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v5

    .line 1894
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1895
    invoke-virtual {v5}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1894
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_90

    .line 1890
    :catch_79
    move-exception v5

    .line 1891
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_90
    nop

    .line 1905
    :cond_91
    :goto_91
    return-object v4
.end method

.method public whitelist getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 499
    .local v0, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    invoke-virtual {v0, p1, p2, p3}, Landroid/permission/PermissionControllerManager;->getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 501
    return-void
.end method

.method public whitelist getHarmfulAppWarning(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3769
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 3770
    :catch_b
    move-exception v0

    .line 3771
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 3212
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3213
    :catch_7
    move-exception v0

    .line 3214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIncidentReportApproverPackageName()Ljava/lang/String;
    .registers 3

    .line 3871
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getIncidentReportApproverPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3872
    :catch_7
    move-exception v0

    .line 3873
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 3585
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getInstallReason(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3586
    :catch_b
    move-exception v0

    .line 3587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2682
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_14

    .line 2685
    .local v0, "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    nop

    .line 2686
    if-eqz v0, :cond_e

    .line 2689
    return-object v0

    .line 2687
    :cond_e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2683
    .end local v0    # "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    :catch_14
    move-exception v0

    .line 2684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstalledApplications(I)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1363
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1368
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInstalledApplicationsAsUser(II)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1375
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;
    .registers 6
    .param p1, "flags"    # Landroid/content/pm/PackageManager$ApplicationInfoFlags;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1384
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1386
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->getValue()J

    move-result-wide v1

    .line 1385
    invoke-direct {p0, v1, v2, p2}, Landroid/app/ApplicationPackageManager;->updateFlagsForApplication(JI)J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1387
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_15

    .line 1388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1390
    :cond_15
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v1

    .line 1391
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1a
    move-exception v0

    .line 1392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstalledModules(I)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    .line 1239
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1240
    :catch_7
    move-exception v0

    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstalledPackages(I)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1262
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledPackagesAsUser(II)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1275
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .registers 6
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1283
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1284
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1286
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_15

    .line 1287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1289
    :cond_15
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v1

    .line 1290
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_1a
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2671
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2672
    :catch_7
    move-exception v0

    .line 2673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 3685
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 3686
    :catch_b
    move-exception v0

    .line 3687
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstantAppCookie()[B
    .registers 4

    .line 1453
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1454
    .local v0, "cookie":[B
    if-eqz v0, :cond_13

    .line 1455
    return-object v0

    .line 1457
    :cond_13
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 1459
    .end local v0    # "cookie":[B
    :catch_16
    move-exception v0

    .line 1460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstantAppCookieMaxBytes()I
    .registers 4

    .line 1440
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ephemeral_cookie_max_size_bytes"

    const/16 v2, 0x4000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getInstantAppCookieMaxSize()I
    .registers 2

    .line 1447
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getInstantAppCookieMaxBytes()I

    move-result v0

    return v0
.end method

.method public whitelist getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1415
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1416
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1417
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v2

    .line 1419
    :cond_13
    return-object v1

    .line 1420
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_14
    move-exception v0

    .line 1421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 3

    .line 3676
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3677
    :catch_7
    move-exception v0

    .line 3678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .registers 3

    .line 3667
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3668
    :catch_7
    move-exception v0

    .line 3669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstantApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 1401
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1402
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/InstantAppInfo;>;"
    if-eqz v0, :cond_11

    .line 1403
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1405
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 1406
    .end local v0    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/InstantAppInfo;>;"
    :catch_16
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1821
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1822
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    .line 1821
    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_18

    .line 1823
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v0, :cond_d

    .line 1824
    return-object v0

    .line 1828
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_d
    nop

    .line 1830
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1826
    :catch_18
    move-exception v0

    .line 1827
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .line 2611
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2612
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2613
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    if-nez v0, :cond_d

    .line 2614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2616
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 2617
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :catch_12
    move-exception v0

    .line 2618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2592
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2593
    :catch_7
    move-exception v0

    .line 2594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 3350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    :try_start_6
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 3354
    :catch_d
    move-exception v0

    .line 3355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getLaunchIntentForPackage(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLaunchIntentForPackage(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeDirectBootUnaware"    # Z

    .line 313
    if-eqz p2, :cond_6

    const-wide/32 v0, 0xc0000

    goto :goto_8

    :cond_6
    const-wide/16 v0, 0x0

    .line 312
    :goto_8
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    .line 318
    .local v0, "queryFlags":Landroid/content/pm/PackageManager$ResolveInfoFlags;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v2, "android.intent.category.INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v1, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v3

    .line 324
    .local v3, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_27

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_36

    .line 326
    :cond_27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 327
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v3

    .line 331
    :cond_36
    if-eqz v3, :cond_62

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3f

    goto :goto_62

    .line 334
    :cond_3f
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 335
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 337
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 336
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    return-object v2

    .line 332
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_62
    :goto_62
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getLaunchIntentSenderForPackage(Ljava/lang/String;)Landroid/content/IntentSender;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 372
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v3

    .line 371
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 373
    :catch_17
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 343
    const-string v0, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-direct {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getLaunchIntentForPackageAndCategory(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeGroup(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3916
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3917
    .local v0, "mimeGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 3918
    .end local v0    # "mimeGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_12
    move-exception v0

    .line 3919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1248
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_23

    .line 1249
    .local v0, "mi":Landroid/content/pm/ModuleInfo;
    if-eqz v0, :cond_9

    .line 1250
    return-object v0

    .line 1254
    .end local v0    # "mi":Landroid/content/pm/ModuleInfo;
    :cond_9
    nop

    .line 1256
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No module info for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :catch_23
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getMoveStatus(I)I
    .registers 4
    .param p1, "moveId"    # I

    .line 2708
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2709
    :catch_7
    move-exception v0

    .line 2710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNameForUid(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 1207
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1208
    :catch_7
    move-exception v0

    .line 1209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getNamesForUids([I)[Ljava/lang/String;
    .registers 4
    .param p1, "uids"    # [I

    .line 1216
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1217
    :catch_7
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 2782
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2783
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ApplicationPackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;Landroid/content/pm/IPackageManager;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;Landroid/content/pm/IPackageManager;)Ljava/util/List;
    .registers 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p3, "pm"    # Landroid/content/pm/IPackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/os/storage/StorageManager;",
            "Landroid/content/pm/IPackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 2789
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2790
    .local v0, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 2791
    .local v1, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2792
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 2793
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 2794
    invoke-direct {p0, v5, p1, v4, p3}, Landroid/app/ApplicationPackageManager;->isPackageCandidateVolume(Landroid/app/ContextImpl;Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;Landroid/content/pm/IPackageManager;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2795
    :cond_2b
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2797
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2e
    goto :goto_11

    .line 2798
    :cond_2f
    return-object v2
.end method

.method public greylist-max-r getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 2766
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2767
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method protected greylist-max-o getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "storage"    # Landroid/os/storage/StorageManager;

    .line 2773
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2774
    const-string/jumbo v0, "private"

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 2776
    :cond_e
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageGids(Ljava/lang/String;)[I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageGids(Ljava/lang/String;I)[I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 386
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 394
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 395
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v2

    .line 394
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_1c

    .line 396
    .local v1, "gids":[I
    if-eqz v1, :cond_15

    .line 397
    return-object v1

    .line 401
    .end local v1    # "gids":[I
    :cond_15
    nop

    .line 403
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :catch_1c
    move-exception v1

    .line 400
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 246
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 254
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 255
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v2

    .line 254
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_20

    .line 256
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_15

    .line 257
    return-object v1

    .line 261
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_15
    nop

    .line 262
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :catch_20
    move-exception v1

    .line 260
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 234
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 268
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 274
    nop

    .line 277
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v0

    .line 275
    invoke-static {p1, v0, v1, p3}, Landroid/app/ApplicationPackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 279
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_10

    .line 282
    return-object v0

    .line 280
    :cond_10
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .registers 6

    .line 3422
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;

    if-nez v0, :cond_28

    .line 3424
    :try_start_4
    new-instance v0, Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 3425
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageInstaller;-><init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 3428
    goto :goto_28

    .line 3426
    :catch_22
    move-exception v0

    .line 3427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3430
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;

    return-object v0
.end method

.method public greylist getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .line 3110
    const-string v0, "Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!"

    .line 3112
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    const-string v3, "Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!"

    if-ge v1, v2, :cond_1f

    .line 3114
    if-eqz p3, :cond_1e

    .line 3115
    const-string v1, "ApplicationPackageManager"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_19
    invoke-interface {p3, v1, v2}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 3119
    goto :goto_1e

    .line 3118
    :catch_1d
    move-exception v1

    .line 3121
    :cond_1e
    :goto_1e
    return-void

    .line 3113
    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPackageUid(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 408
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v0

    return v0
.end method

.method public whitelist getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getPackageUidAsUser(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getPackageUidAsUser(Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 425
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0

    return v0
.end method

.method public whitelist getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 432
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 433
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p3}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v1

    .line 432
    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_18

    .line 434
    .local v0, "uid":I
    if-ltz v0, :cond_11

    .line 435
    return v0

    .line 439
    .end local v0    # "uid":I
    :cond_11
    nop

    .line 441
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :catch_18
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackagesForUid(I)[Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 1191
    sget-object v0, Landroid/app/ApplicationPackageManager;->sGetPackagesForUidCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    invoke-virtual {v0}, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->value()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1339
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 7
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1346
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 1348
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1350
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Landroid/app/ApplicationPackageManager;->updateFlagsForPackage(JI)J

    move-result-wide v2

    .line 1349
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1351
    .local v1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_19

    .line 1352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1354
    :cond_19
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    return-object v2

    .line 1355
    .end local v1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_1e
    move-exception v1

    .line 1356
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1057
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1058
    :catch_7
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermissionControllerPackageName()Ljava/lang/String;
    .registers 3

    .line 870
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 872
    :try_start_4
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 875
    goto :goto_13

    .line 873
    :catch_d
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 877
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 926
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public whitelist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    .line 454
    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 455
    .local v0, "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v0, :cond_b

    .line 458
    return-object v0

    .line 456
    :cond_b
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 464
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 466
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_b

    .line 469
    return-object v0

    .line 467
    :cond_b
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 488
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 490
    .local v0, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    invoke-virtual {v0, p1, p2, p3}, Landroid/permission/PermissionControllerManager;->getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 492
    return-void
.end method

.method public whitelist getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 6
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 3203
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3204
    :catch_7
    move-exception v0

    .line 3205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPreferredPackages(I)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 3135
    const-string v0, "ApplicationPackageManager"

    const-string v1, "getPreferredPackages() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 2882
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2883
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2884
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 2885
    .local v2, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2886
    .local v3, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    nop

    .line 2887
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v4

    .line 2886
    const-string/jumbo v5, "primary_physical"

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v1, :cond_2b

    .line 2889
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 2891
    :cond_2b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 2892
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-static {v5}, Landroid/app/ApplicationPackageManager;->isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 2893
    :cond_47
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2895
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4a
    goto :goto_2f

    .line 2897
    :cond_4b
    :goto_4b
    return-object v3
.end method

.method public greylist-max-o getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .registers 4

    .line 2875
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2876
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    .line 2877
    .local v1, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3934
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    nop

    .line 3937
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    .line 3936
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/ApplicationPackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3926
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3927
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3928
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/ApplicationPackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3943
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3946
    :try_start_6
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 3948
    .local v0, "property":Landroid/content/pm/PackageManager$Property;
    if-eqz v0, :cond_f

    .line 3951
    return-object v0

    .line 3949
    :cond_f
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "propertyName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "className":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_15

    .line 3952
    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "propertyName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "className":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catch_15
    move-exception v0

    .line 3953
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 656
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 664
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 665
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v2

    .line 664
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_21

    .line 666
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_16

    .line 667
    return-object v1

    .line 671
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_16
    nop

    .line 673
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :catch_21
    move-exception v1

    .line 670
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 610
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 618
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 619
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v2

    .line 618
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_21

    .line 620
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_16

    .line 621
    return-object v1

    .line 625
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_16
    nop

    .line 627
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :catch_21
    move-exception v1

    .line 624
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .registers 3
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2133
    nop

    .line 2134
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2133
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .registers 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 13
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2146
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2147
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 2148
    .local v0, "sysuiContext":Landroid/content/Context;
    if-eqz p2, :cond_19

    .line 2149
    invoke-virtual {v0, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 2151
    :cond_19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1

    .line 2153
    .end local v0    # "sysuiContext":Landroid/content/Context;
    :cond_1e
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 2154
    .local v0, "sameUid":Z
    :goto_29
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2155
    if-eqz v0, :cond_32

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_34

    :cond_32
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :goto_34
    move-object v3, v1

    .line 2156
    if-eqz v0, :cond_3a

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    :goto_3c
    move-object v4, v1

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v8, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2154
    move-object v9, p2

    .end local p2    # "configuration":Landroid/content/res/Configuration;
    .local v9, "configuration":Landroid/content/res/Configuration;
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object p2

    .line 2159
    .local p2, "r":Landroid/content/res/Resources;
    if-eqz p2, :cond_4f

    .line 2160
    return-object p2

    .line 2162
    :cond_4f
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2168
    nop

    .line 2169
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2168
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 6
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2176
    if-ltz p2, :cond_4d

    .line 2180
    const-string/jumbo v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2181
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 2184
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x400

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2185
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_27

    .line 2186
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_47

    return-object v1

    .line 2190
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_27
    nop

    .line 2191
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2188
    :catch_47
    move-exception v0

    .line 2189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRotationResolverPackageName()Ljava/lang/String;
    .registers 3

    .line 3826
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3827
    :catch_7
    move-exception v0

    .line 3828
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSdkSandboxPackageName()Ljava/lang/String;
    .registers 3

    .line 886
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 887
    :catch_7
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 633
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    .line 641
    .local v0, "userId":I
    :try_start_4
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 642
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v2

    .line 641
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_21

    .line 643
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_16

    .line 644
    return-object v1

    .line 648
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_16
    nop

    .line 650
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :catch_21
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 3

    .line 746
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 747
    :catch_7
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSetupWizardPackageName()Ljava/lang/String;
    .registers 3

    .line 3862
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3863
    :catch_7
    move-exception v0

    .line 3864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSharedLibraries(I)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 688
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 3
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSharedLibrariesAsUser(II)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 701
    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .registers 7
    .param p1, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 711
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v2

    .line 710
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 712
    .local v0, "sharedLibs":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v0, :cond_17

    .line 713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 715
    :cond_17
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v1

    .line 716
    .end local v0    # "sharedLibs":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/SharedLibraryInfo;>;"
    :catch_1c
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .registers 3

    .line 757
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 758
    :catch_7
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3362
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 3365
    :catch_a
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSuspendedPackageAppExtras()Landroid/os/Bundle;
    .registers 4

    .line 3034
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 3035
    :catch_11
    move-exception v0

    .line 3036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSuspendingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "suspendedPackage"    # Ljava/lang/String;

    .line 3043
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 3044
    :catch_b
    move-exception v0

    .line 3045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSyntheticAppDetailsActivityEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3235
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Landroid/app/ApplicationPackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_19

    .line 3238
    .local v1, "state":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    if-nez v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :cond_18
    :goto_18
    return v2

    .line 3240
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "state":I
    :catch_19
    move-exception v0

    .line 3241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .registers 6

    .line 776
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 777
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 778
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/FeatureInfo;>;"
    if-nez v0, :cond_c

    .line 779
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/FeatureInfo;

    return-object v1

    .line 781
    :cond_c
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 782
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/FeatureInfo;

    .line 783
    .local v2, "res":[Landroid/content/pm/FeatureInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_25

    .line 784
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    aput-object v4, v2, v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_26

    .line 783
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 786
    .end local v3    # "i":I
    :cond_25
    return-object v2

    .line 787
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/FeatureInfo;>;"
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    .end local v2    # "res":[Landroid/content/pm/FeatureInfo;
    :catch_26
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSystemCaptionsServicePackageName()Ljava/lang/String;
    .registers 3

    .line 3853
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3854
    :catch_7
    move-exception v0

    .line 3855
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 3

    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 680
    :catch_7
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getSystemTextClassifierPackageName()Ljava/lang/String;
    .registers 3

    .line 3808
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3809
    :catch_7
    move-exception v0

    .line 3810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTargetSdkVersion(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 574
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_11

    .line 575
    .local v0, "version":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 576
    return v0

    .line 580
    .end local v0    # "version":I
    :cond_a
    nop

    .line 581
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :catch_11
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2468
    const-string v0, "PackageManager"

    new-instance v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v1, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2469
    .local v1, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2470
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_e

    .line 2471
    return-object v2

    .line 2473
    :cond_e
    const/4 v3, 0x0

    if-nez p3, :cond_1b

    .line 2475
    const/16 v4, 0x400

    :try_start_13
    invoke-virtual {p0, p1, v4}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_19

    move-object p3, v4

    .line 2478
    goto :goto_1b

    .line 2476
    :catch_19
    move-exception v0

    .line 2477
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v3

    .line 2481
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 2482
    .local v4, "r":Landroid/content/res/Resources;
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v5

    .line 2483
    invoke-direct {p0, v1, v2}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_27} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_27} :catch_28

    .line 2484
    return-object v2

    .line 2488
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_28
    move-exception v4

    .line 2491
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure retrieving text 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2492
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2491
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 2485
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_4e
    move-exception v4

    .line 2486
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure retrieving resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 2495
    :goto_68
    return-object v3
.end method

.method public greylist-max-o getUidForSharedUser(Ljava/lang/String;)I
    .registers 5
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1226
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_24

    .line 1227
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 1228
    return v0

    .line 1232
    .end local v0    # "uid":I
    :cond_a
    nop

    .line 1233
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No shared userid for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :catch_24
    move-exception v0

    .line 1231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 3025
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 3026
    :catch_d
    move-exception v0

    .line 3027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .line 2057
    const v0, 0x1080406

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->getProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2059
    .local v0, "badgeColor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_b

    .line 2060
    const/4 v1, 0x0

    return-object v1

    .line 2063
    :cond_b
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    .line 2065
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUpdatableUserBadgeId(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)V

    .line 2064
    const-string v4, "SOLID_COLORED"

    invoke-virtual {v1, v2, v4, p2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2070
    .local v1, "badgeForeground":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/app/ApplicationPackageManager;->getUserBadgeColor(Landroid/os/UserHandle;Z)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2071
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2072
    .local v3, "badge":Landroid/graphics/drawable/Drawable;
    return-object v3
.end method

.method public greylist-max-o getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .line 2090
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->hasUserBadge(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2091
    const/4 v0, 0x0

    return-object v0

    .line 2094
    :cond_c
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    .line 2095
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUpdatableUserBadgeId(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;I)V

    .line 2094
    const-string v3, "SOLID_NOT_COLORED"

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2100
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2d

    .line 2101
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgeColor(Landroid/os/UserHandle;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2103
    :cond_2d
    return-object v0
.end method

.method public whitelist getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    .line 2034
    invoke-virtual {p0, p2, p4}, Landroid/app/ApplicationPackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2035
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_7

    .line 2036
    return-object p1

    .line 2038
    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2007
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->hasUserBadge(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2008
    return-object p1

    .line 2011
    :cond_b
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    .line 2012
    invoke-direct {p0, p2}, Landroid/app/ApplicationPackageManager;->getUpdatableUserIconBadgeId(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Landroid/app/ApplicationPackageManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/ApplicationPackageManager;Landroid/os/UserHandle;)V

    .line 2011
    const-string v3, "SOLID_COLORED"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2016
    .local v0, "badgeForeground":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/util/LauncherIcons;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-direct {v1, v2}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    .line 2018
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Landroid/app/ApplicationPackageManager;->getUserBadgeColor(Landroid/os/UserHandle;Z)I

    move-result v2

    .line 2016
    invoke-virtual {v1, v0, v2}, Landroid/util/LauncherIcons;->getBadgeDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2019
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public whitelist getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2127
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUserId()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    return v0
.end method

.method greylist-max-o getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 207
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    .line 209
    :cond_c
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public greylist-max-o getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 3

    .line 3400
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3401
    :catch_7
    move-exception v0

    .line 3402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWellbeingPackageName()Ljava/lang/String;
    .registers 3

    .line 3835
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3836
    :catch_7
    move-exception v0

    .line 3837
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWhitelistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 939
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->getAllowlistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2501
    const-string v0, "PackageManager"

    const/4 v1, 0x0

    if-nez p3, :cond_f

    .line 2503
    const/16 v2, 0x400

    :try_start_7
    invoke-virtual {p0, p1, v2}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_d

    move-object p3, v2

    .line 2506
    goto :goto_f

    .line 2504
    :catch_d
    move-exception v0

    .line 2505
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 2509
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 2510
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_17} :catch_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_17} :catch_18

    return-object v0

    .line 2517
    .end local v2    # "r":Landroid/content/res/Resources;
    :catch_18
    move-exception v2

    .line 2518
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure retrieving resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 2511
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_32
    move-exception v2

    .line 2514
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure retrieving xml 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2515
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2514
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2520
    .end local v2    # "e":Ljava/lang/RuntimeException;
    nop

    .line 2521
    :goto_58
    return-object v1
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 910
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 911
    return-void
.end method

.method public whitelist hasSigningCertificate(I[BI)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 1030
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->hasUidSigningCertificate(I[BI)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1031
    :catch_7
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 1020
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1021
    :catch_7
    move-exception v0

    .line 1022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasSystemFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 794
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSystemFeature(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 835
    invoke-static {p1, p2}, Lcom/android/internal/pm/RoSystemFeatures;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 836
    .local v0, "maybeHasSystemFeature":Ljava/lang/Boolean;
    if-eqz v0, :cond_b

    .line 837
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 839
    :cond_b
    iget-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mUseSystemFeaturesCache:Z

    if-eqz v1, :cond_1e

    .line 841
    invoke-static {}, Landroid/content/pm/SystemFeaturesCache;->getInstance()Landroid/content/pm/SystemFeaturesCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/SystemFeaturesCache;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_1e

    .line 843
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 846
    :cond_1e
    sget-object v1, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;-><init>(Ljava/lang/String;ILandroid/app/ApplicationPackageManager-IA;)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist installExistingPackage(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->installExistingPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist installExistingPackage(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2537
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->installExistingPackageAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o installExistingPackageAsUser(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2543
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->installExistingPackageAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o isAllow3rdPartyOnInternal(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2809
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isAppArchivable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2695
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 2700
    :catch_13
    move-exception v0

    .line 2701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2697
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 2698
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2699
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isAutoRevokeWhitelisted()Z
    .registers 3

    .line 3897
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isAutoRevokeWhitelisted(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3898
    :catch_d
    move-exception v0

    .line 3899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 956
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->isAutoRevokeExempted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceUpgrading()Z
    .registers 3

    .line 3414
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3415
    :catch_7
    move-exception v0

    .line 3416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o isForceAllowOnExternal(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2803
    nop

    .line 2804
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2803
    const-string v1, "force_allow_on_external"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public whitelist isInstantApp()Z
    .registers 2

    .line 1427
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInstantApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1433
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1434
    :catch_b
    move-exception v0

    .line 1435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isPackageAvailable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3436
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3437
    :catch_b
    move-exception v0

    .line 3438
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPackageQuarantined(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3076
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3079
    :catch_b
    move-exception v0

    .line 3080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3077
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 3078
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3880
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3881
    :catch_7
    move-exception v0

    .line 3882
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPackageStopped(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3087
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3090
    :catch_b
    move-exception v0

    .line 3091
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3088
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 3089
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isPackageSuspended()Z
    .registers 3

    .line 3070
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPackageSuspended(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3062
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3063
    :catch_9
    move-exception v0

    .line 3064
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3052
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3053
    :catch_7
    move-exception v0

    .line 3054
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPageSizeCompatEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1048
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1049
    :catch_7
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 862
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/permission/PermissionManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSafeMode()Z
    .registers 4

    .line 2199
    :try_start_0
    iget v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_13

    .line 2200
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 2202
    :cond_13
    iget v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_1a

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1

    .line 2203
    :catch_1a
    move-exception v0

    .line 2204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 3373
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    :try_start_6
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 3377
    :catch_d
    move-exception v0

    .line 3378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 3385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3386
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3388
    :try_start_6
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 3389
    :catch_d
    move-exception v0

    .line 3390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isUpgrade()Z
    .registers 2

    .line 3408
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->isDeviceUpgrading()Z

    move-result v0

    return v0
.end method

.method public blacklist isWirelessConsentModeEnabled()Z
    .registers 3

    .line 511
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11102b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3486
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3487
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_b

    .line 3488
    return-object v0

    .line 3490
    :cond_b
    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3498
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_14

    .line 3501
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 3502
    .local v0, "targetUserId":I
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 3503
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3502
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 3505
    .end local v0    # "targetUserId":I
    :cond_14
    const/4 v0, 0x0

    .line 3506
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 3507
    iget-boolean v1, p1, Landroid/content/pm/PackageItemInfo;->isArchived:Z

    if-eqz v1, :cond_24

    .line 3508
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getArchivedAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2c

    .line 3510
    :cond_24
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p0, v1, v2, p2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3513
    :cond_2c
    :goto_2c
    if-nez v0, :cond_36

    if-eq p1, p2, :cond_36

    if-eqz p2, :cond_36

    .line 3514
    invoke-virtual {p0, p2, p2}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3516
    :cond_36
    if-nez v0, :cond_3c

    .line 3517
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3519
    :cond_3c
    return-object v0
.end method

.method public blacklist makeUidVisible(II)V
    .registers 5
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I

    .line 4059
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->makeUidVisible(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4062
    nop

    .line 4063
    return-void

    .line 4060
    :catch_7
    move-exception v0

    .line 4061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2749
    :try_start_0
    const-string/jumbo v0, "private"

    iget-object v1, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2750
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .local v0, "volumeUuid":Ljava/lang/String;
    goto :goto_20

    .line 2751
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :cond_e
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2752
    const-string/jumbo v0, "primary_physical"

    .restart local v0    # "volumeUuid":Ljava/lang/String;
    goto :goto_20

    .line 2754
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :cond_18
    iget-object v0, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2757
    .restart local v0    # "volumeUuid":Ljava/lang/String;
    :goto_20
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    return v1

    .line 2758
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 2759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2859
    :try_start_0
    const-string/jumbo v0, "private"

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2860
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .local v0, "volumeUuid":Ljava/lang/String;
    goto :goto_20

    .line 2861
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :cond_e
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2862
    const-string/jumbo v0, "primary_physical"

    .restart local v0    # "volumeUuid":Ljava/lang/String;
    goto :goto_20

    .line 2864
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :cond_18
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2867
    .restart local v0    # "volumeUuid":Ljava/lang/String;
    :goto_20
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    return v1

    .line 2868
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 2869
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist parseAndroidManifest(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .param p1, "apkFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Function<",
            "Landroid/content/res/XmlResourceParser;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4184
    .local p2, "parserFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/XmlResourceParser;TT;>;"
    const-string v0, "apkFileDescriptor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4185
    const-string/jumbo v0, "parserFunction cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4186
    :try_start_b
    invoke-static {p1}, Landroid/app/ApplicationPackageManager;->getAndroidManifestParser(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_25

    .line 4187
    .local v0, "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :try_start_f
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_19

    .line 4188
    if-eqz v0, :cond_18

    :try_start_15
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_25

    .line 4187
    :cond_18
    return-object v1

    .line 4186
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "apkFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "parserFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/XmlResourceParser;TT;>;"
    :cond_24
    :goto_24
    throw v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25

    .line 4188
    .end local v0    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "apkFileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "parserFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/XmlResourceParser;TT;>;"
    :catch_25
    move-exception v0

    .line 4189
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ApplicationPackageManager"

    const-string v2, "Failed to get the android manifest parser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4190
    throw v0
.end method

.method public whitelist parseAndroidManifest(Ljava/io/File;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/util/function/Function<",
            "Landroid/content/res/XmlResourceParser;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4153
    .local p2, "parserFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/XmlResourceParser;TT;>;"
    const-string v0, "apkFile cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4154
    const-string/jumbo v0, "parserFunction cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4155
    :try_start_b
    invoke-static {p1}, Landroid/app/ApplicationPackageManager;->getAndroidManifestParser(Ljava/io/File;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_25

    .line 4156
    .local v0, "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    :try_start_f
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_19

    .line 4157
    if-eqz v0, :cond_18

    :try_start_15
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_25

    .line 4156
    :cond_18
    return-object v1

    .line 4155
    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    :try_start_1c
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "parserFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/XmlResourceParser;TT;>;"
    :cond_24
    :goto_24
    throw v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25

    .line 4157
    .end local v0    # "xmlResourceParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "parserFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/XmlResourceParser;TT;>;"
    :catch_25
    move-exception v0

    .line 4158
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ApplicationPackageManager"

    const-string v2, "Failed to get the android manifest parser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4159
    throw v0
.end method

.method public whitelist queryActivityProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3974
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3976
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3977
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3978
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v0, :cond_11

    .line 3979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3981
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v1

    .line 3982
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    :catch_16
    move-exception v0

    .line 3983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryApplicationProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3959
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3962
    const/4 v1, 0x5

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3963
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v0, :cond_11

    .line 3964
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3966
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v1

    .line 3967
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    :catch_16
    move-exception v0

    .line 3968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1638
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1643
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1611
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1622
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1624
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1625
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p3, p1}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_29

    .line 1622
    move-object v1, p1

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1627
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_21

    .line 1628
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    return-object p3

    .line 1630
    :cond_21
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_26

    return-object p3

    .line 1631
    .end local p1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .local p1, "intent":Landroid/content/Intent;
    .restart local p3    # "userId":I
    :catch_29
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1632
    .end local p3    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1787
    int-to-long v0, p3

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .param p4, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1799
    int-to-long v0, p3

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/app/ApplicationPackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1793
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .param p4, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1807
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1808
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_25

    .line 1807
    move-object v1, p1

    move v2, p2

    move-object v5, p4

    .end local p1    # "processName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p4    # "metaDataKey":Ljava/lang/String;
    .local v1, "processName":Ljava/lang/String;
    .local v2, "uid":I
    .local v5, "metaDataKey":Ljava/lang/String;
    :try_start_12
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1810
    .local p1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    goto :goto_21

    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_22

    :goto_21
    return-object p2

    .line 1811
    .end local p1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    :catch_22
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v5    # "metaDataKey":Ljava/lang/String;
    .local p1, "processName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p4    # "metaDataKey":Ljava/lang/String;
    :catch_25
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move-object p1, v0

    .line 1812
    .end local p2    # "uid":I
    .end local p4    # "metaDataKey":Ljava/lang/String;
    .restart local v1    # "processName":Ljava/lang/String;
    .restart local v2    # "uid":I
    .restart local v5    # "metaDataKey":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .line 1838
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1839
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1840
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/InstrumentationInfo;>;"
    if-nez v0, :cond_11

    .line 1841
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1843
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 1844
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/InstrumentationInfo;>;"
    :catch_16
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1522
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1527
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1533
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1542
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1544
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1545
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p3, p1}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_29

    .line 1542
    move-object v1, p1

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1547
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_21

    .line 1548
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    return-object p3

    .line 1550
    :cond_21
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_26

    return-object p3

    .line 1551
    .end local p1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .local p1, "intent":Landroid/content/Intent;
    .restart local p3    # "userId":I
    :catch_29
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1552
    .end local p3    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 15
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1568
    .local p2, "specifics":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v8

    .line 1569
    .local v8, "userId":I
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1571
    .local v9, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 1572
    .local v0, "specificTypes":[Ljava/lang/String;
    if-eqz p2, :cond_2d

    .line 1573
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1574
    .local v1, "numSpecifics":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_2b

    .line 1575
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1576
    .local v3, "sp":Landroid/content/Intent;
    if-eqz v3, :cond_28

    .line 1577
    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1578
    .local v4, "t":Ljava/lang/String;
    if-eqz v4, :cond_28

    .line 1579
    if-nez v0, :cond_26

    .line 1580
    new-array v0, v1, [Ljava/lang/String;

    .line 1582
    :cond_26
    aput-object v4, v0, v2

    .line 1574
    .end local v3    # "sp":Landroid/content/Intent;
    .end local v4    # "t":Ljava/lang/String;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2b
    move-object v3, v0

    goto :goto_2e

    .line 1572
    .end local v1    # "numSpecifics":I
    .end local v2    # "i":I
    :cond_2d
    move-object v3, v0

    .line 1589
    .end local v0    # "specificTypes":[Ljava/lang/String;
    .local v3, "specificTypes":[Ljava/lang/String;
    :goto_2e
    :try_start_2e
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1591
    if-nez p2, :cond_35

    const/4 v1, 0x0

    :goto_33
    move-object v2, v1

    goto :goto_3f

    :cond_35
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/Intent;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    goto :goto_33

    .line 1594
    :goto_3f
    invoke-virtual {p3, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 1595
    invoke-virtual {p4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v8, p3}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v6
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4b} :catch_60

    .line 1589
    move-object v1, p1

    move-object v4, p3

    .end local p1    # "caller":Landroid/content/ComponentName;
    .end local p3    # "intent":Landroid/content/Intent;
    .local v1, "caller":Landroid/content/ComponentName;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_4d
    invoke-interface/range {v0 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1597
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_58

    .line 1598
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    return-object p3

    .line 1600
    :cond_58
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5c} :catch_5d

    return-object p3

    .line 1601
    .end local p1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_5d
    move-exception v0

    move-object p1, v0

    goto :goto_64

    .end local v1    # "caller":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .local p1, "caller":Landroid/content/ComponentName;
    .restart local p3    # "intent":Landroid/content/Intent;
    :catch_60
    move-exception v0

    move-object v1, p1

    move-object v4, p3

    move-object p1, v0

    .line 1602
    .end local p3    # "intent":Landroid/content/Intent;
    .restart local v1    # "caller":Landroid/content/ComponentName;
    .restart local v4    # "intent":Landroid/content/Intent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_64
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1559
    nop

    .line 1560
    if-nez p2, :cond_5

    const/4 v0, 0x0

    goto :goto_e

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_e
    int-to-long v1, p4

    .line 1561
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 1559
    invoke-virtual {p0, p1, v0, p3, v1}, Landroid/app/ApplicationPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1736
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1741
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1712
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1720
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1722
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1723
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p3, p1}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_29

    .line 1720
    move-object v1, p1

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1725
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_21

    .line 1726
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    return-object p3

    .line 1728
    :cond_21
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_26

    return-object p3

    .line 1729
    .end local p1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .local p1, "intent":Landroid/content/Intent;
    .restart local p3    # "userId":I
    :catch_29
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1730
    .end local p3    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1701
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1706
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1677
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1685
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1687
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p3, p1}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_29

    .line 1685
    move-object v1, p1

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1690
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_21

    .line 1691
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    return-object p3

    .line 1693
    :cond_21
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_26

    return-object p3

    .line 1694
    .end local p1    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_26
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .local p1, "intent":Landroid/content/Intent;
    .restart local p3    # "userId":I
    :catch_29
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1695
    .end local p3    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 478
    .local v0, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v0, :cond_b

    .line 481
    return-object v0

    .line 479
    :cond_b
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist queryProviderProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3992
    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3993
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v0, :cond_11

    .line 3994
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 3996
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v1

    .line 3997
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    :catch_16
    move-exception v0

    .line 3998
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryReceiverProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 4004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4006
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 4007
    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4008
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v0, :cond_11

    .line 4009
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4011
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v1

    .line 4012
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    :catch_16
    move-exception v0

    .line 4013
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryServiceProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 4019
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4021
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 4022
    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4023
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v0, :cond_11

    .line 4024
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4026
    :cond_11
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    return-object v1

    .line 4027
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageManager$Property;>;"
    :catch_16
    move-exception v0

    .line 4028
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerDexModule(Ljava/lang/String;Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V
    .registers 8
    .param p1, "dexModule"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/PackageManager$DexModuleRegisterCallback;

    .line 3737
    const/4 v0, 0x0

    .line 3738
    .local v0, "callbackDelegate":Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;
    if-eqz p2, :cond_9

    .line 3739
    new-instance v1, Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;

    invoke-direct {v1, p2}, Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;-><init>(Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V

    move-object v0, v1

    .line 3743
    :cond_9
    const/4 v1, 0x0

    .line 3745
    .local v1, "isSharedModule":Z
    :try_start_a
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 3746
    .local v2, "stat":Landroid/system/StructStat;
    sget v3, Landroid/system/OsConstants;->S_IROTH:I

    iget v4, v2, Landroid/system/StructStat;->st_mode:I
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_12} :catch_2a

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    .line 3747
    const/4 v1, 0x1

    .line 3755
    .end local v2    # "stat":Landroid/system/StructStat;
    :cond_16
    nop

    .line 3759
    :try_start_17
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1, v0}, Landroid/content/pm/IPackageManager;->registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_24

    .line 3763
    nop

    .line 3764
    return-void

    .line 3761
    :catch_24
    move-exception v2

    .line 3762
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3749
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2a
    move-exception v2

    .line 3750
    .local v2, "e":Landroid/system/ErrnoException;
    if-eqz v0, :cond_48

    .line 3751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get stat the module file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3752
    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3751
    const/4 v4, 0x0

    invoke-virtual {p2, p1, v4, v3}, Landroid/content/pm/PackageManager$DexModuleRegisterCallback;->onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3754
    :cond_48
    return-void
.end method

.method public greylist-max-o registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2716
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2717
    :try_start_3
    new-instance v1, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    .line 2718
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;-><init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 2720
    .local v1, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    :try_start_c
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_1a
    .catchall {:try_start_c .. :try_end_11} :catchall_20

    .line 2723
    nop

    .line 2724
    :try_start_12
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2725
    nop

    .end local v1    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    monitor-exit v0

    .line 2726
    return-void

    .line 2721
    .restart local v1    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    :catch_1a
    move-exception v2

    .line 2722
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "callback":Landroid/content/pm/PackageManager$MoveCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v3

    .line 2725
    .end local v1    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "callback":Landroid/content/pm/PackageManager$MoveCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V
    .registers 7
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I

    .line 4105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4107
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    .line 4108
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPackageMonitorCallbacks:Landroid/util/ArraySet;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_38

    .line 4109
    :try_start_b
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPackageMonitorCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4114
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPackageMonitorCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4115
    monitor-exit v0

    .line 4118
    nop

    .line 4119
    return-void

    .line 4110
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPackageMonitorCallback: callback already registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "callback":Landroid/os/IRemoteCallback;
    .end local p2    # "userId":I
    throw v1

    .line 4115
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "callback":Landroid/os/IRemoteCallback;
    .restart local p2    # "userId":I
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "callback":Landroid/os/IRemoteCallback;
    .end local p2    # "userId":I
    :try_start_37
    throw v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_38} :catch_38

    .line 4116
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "callback":Landroid/os/IRemoteCallback;
    .restart local p2    # "userId":I
    :catch_38
    move-exception v0

    .line 4117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist relinquishUpdateOwnership(Ljava/lang/String;)V
    .registers 4
    .param p1, "targetPackage"    # Ljava/lang/String;

    .line 4095
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4097
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->relinquishUpdateOwnership(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 4100
    nop

    .line 4101
    return-void

    .line 4098
    :catch_a
    move-exception v0

    .line 4099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeCrossProfileIntentFilter(Landroid/content/IntentFilter;III)Z
    .registers 11
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    .line 3463
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "sourceUserId":I
    .end local p3    # "targetUserId":I
    .end local p4    # "flags":I
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v3, "sourceUserId":I
    .local v4, "targetUserId":I
    .local v5, "flags":I
    :try_start_c
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->removeCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return p1

    .line 3465
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "sourceUserId":I
    .end local v4    # "targetUserId":I
    .end local v5    # "flags":I
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "sourceUserId":I
    .restart local p3    # "targetUserId":I
    .restart local p4    # "flags":I
    :catch_14
    move-exception v0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object p1, v0

    .line 3466
    .end local p2    # "sourceUserId":I
    .end local p3    # "targetUserId":I
    .end local p4    # "flags":I
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "sourceUserId":I
    .restart local v4    # "targetUserId":I
    .restart local v5    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 2215
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 2216
    return-void
.end method

.method public whitelist removePackageFromPreferred(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3130
    const-string v0, "ApplicationPackageManager"

    const-string/jumbo v1, "removePackageFromPreferred() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    return-void
.end method

.method public whitelist removePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 904
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->removePermission(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public whitelist removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 962
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/permission/PermissionManager;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .line 3163
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_12

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v2, "match":I
    .local v3, "set":[Landroid/content/ComponentName;
    .local v4, "activity":Landroid/content/ComponentName;
    :try_start_a
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    .line 3166
    nop

    .line 3167
    return-void

    .line 3164
    :catch_f
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "match":I
    .end local v3    # "set":[Landroid/content/ComponentName;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "match":I
    .restart local p3    # "set":[Landroid/content/ComponentName;
    .restart local p4    # "activity":Landroid/content/ComponentName;
    :catch_12
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object p1, v0

    .line 3165
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "match":I
    .restart local v3    # "set":[Landroid/content/ComponentName;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .line 3174
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "filter":Landroid/content/IntentFilter;
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .end local p5    # "userId":I
    .local v1, "filter":Landroid/content/IntentFilter;
    .local v2, "match":I
    .local v3, "set":[Landroid/content/ComponentName;
    .local v4, "activity":Landroid/content/ComponentName;
    .local v5, "userId":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 3177
    nop

    .line 3178
    return-void

    .line 3175
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "match":I
    .end local v3    # "set":[Landroid/content/ComponentName;
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v5    # "userId":I
    .restart local p1    # "filter":Landroid/content/IntentFilter;
    .restart local p2    # "match":I
    .restart local p3    # "set":[Landroid/content/ComponentName;
    .restart local p4    # "activity":Landroid/content/ComponentName;
    .restart local p5    # "userId":I
    :catch_f
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object p1, v0

    .line 3176
    .end local p2    # "match":I
    .end local p3    # "set":[Landroid/content/ComponentName;
    .end local p4    # "activity":Landroid/content/ComponentName;
    .end local p5    # "userId":I
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "match":I
    .restart local v3    # "set":[Landroid/content/ComponentName;
    .restart local v4    # "activity":Landroid/content/ComponentName;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeSplits"    # Z
    .param p3, "required"    # I
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/PackageManager$OnChecksumsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1083
    .local p4, "trustedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Landroid/app/ApplicationPackageManager;->TRUST_ALL:Ljava/util/List;

    if-ne p4, v0, :cond_f

    .line 1087
    const/4 p4, 0x0

    goto :goto_1e

    .line 1088
    :cond_f
    sget-object v0, Landroid/app/ApplicationPackageManager;->TRUST_NONE:Ljava/util/List;

    if-ne p4, v0, :cond_18

    .line 1089
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    goto :goto_1e

    .line 1090
    :cond_18
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1096
    :goto_1e
    :try_start_1e
    new-instance v0, Landroid/app/ApplicationPackageManager$2;

    invoke-direct {v0, p0, p5}, Landroid/app/ApplicationPackageManager$2;-><init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    move-object v7, v0

    .line 1104
    .local v7, "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1105
    invoke-static {p4}, Landroid/app/ApplicationPackageManager;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1106
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v8
    :try_end_2e
    .catch Landroid/os/ParcelableException; {:try_start_1e .. :try_end_2e} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_3e

    .line 1104
    const/16 v4, 0x7f

    move-object v2, p1

    move v3, p2

    move v5, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "includeSplits":Z
    .end local p3    # "required":I
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "includeSplits":Z
    .local v5, "required":I
    :try_start_33
    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    :try_end_36
    .catch Landroid/os/ParcelableException; {:try_start_33 .. :try_end_36} :catch_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_38

    .line 1112
    .end local v7    # "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    nop

    .line 1113
    return-void

    .line 1110
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_43

    .line 1107
    :catch_3b
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .line 1110
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "includeSplits":Z
    .end local v5    # "required":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "includeSplits":Z
    .restart local p3    # "required":I
    :catch_3e
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object p1, v0

    .line 1111
    .end local p2    # "includeSplits":Z
    .end local p3    # "required":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "includeSplits":Z
    .restart local v5    # "required":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_43
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1107
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "includeSplits":Z
    .end local v5    # "required":I
    .local p1, "packageName":Ljava/lang/String;
    .restart local p2    # "includeSplits":Z
    .restart local p3    # "required":I
    :catch_48
    move-exception v0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object p1, v0

    .line 1108
    .end local p2    # "includeSplits":Z
    .end local p3    # "required":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "includeSplits":Z
    .restart local v5    # "required":I
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_4d
    const-class p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1109
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1091
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "includeSplits":Z
    .end local v5    # "required":I
    .local p1, "packageName":Ljava/lang/String;
    .restart local p2    # "includeSplits":Z
    .restart local p3    # "required":I
    :cond_58
    move-object v2, p1

    move v3, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "includeSplits":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "includeSplits":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "trustedInstallers has to be one of TRUST_ALL/TRUST_NONE or a non-empty list of certificates."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 1494
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 1499
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 1504
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I

    .line 1510
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1512
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p3, p1}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_1e

    .line 1510
    move-object v1, p1

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p1

    .line 1515
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p3    # "userId":I
    :catch_1e
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1516
    .end local p3    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1746
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 1751
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 1757
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .param p3, "userId"    # I

    .line 1765
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1766
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p3, v3}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v1

    .line 1765
    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 1767
    :catch_10
    move-exception v0

    .line 1768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resolveContentProviderForUid(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .registers 10
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .param p3, "callingUid"    # I

    .line 1777
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1778
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->getValue()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v4
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_1d

    .line 1777
    move-object v1, p1

    move v5, p3

    .end local p1    # "authority":Ljava/lang/String;
    .end local p3    # "callingUid":I
    .local v1, "authority":Ljava/lang/String;
    .local v5, "callingUid":I
    :try_start_15
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p1

    .line 1780
    :catch_1a
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .end local v1    # "authority":Ljava/lang/String;
    .end local v5    # "callingUid":I
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p3    # "callingUid":I
    :catch_1d
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1781
    .end local p3    # "callingUid":I
    .restart local v1    # "authority":Ljava/lang/String;
    .restart local v5    # "callingUid":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 1667
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 1672
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 1648
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/ApplicationPackageManager;->resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$ResolveInfoFlags;
    .param p3, "userId"    # I

    .line 1655
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1657
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1658
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p3, p1}, Landroid/app/ApplicationPackageManager;->updateFlagsForComponent(JILandroid/content/Intent;)J

    move-result-wide v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_1e

    .line 1655
    move-object v1, p1

    move v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    :try_start_16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p1

    .line 1660
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p3    # "userId":I
    :catch_1e
    move-exception v0

    move-object v1, p1

    move v5, p3

    move-object p1, v0

    .line 1661
    .end local p3    # "userId":I
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 915
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "reason"    # Ljava/lang/String;

    .line 921
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/permission/PermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public whitelist sendDeviceCustomizationReadyBroadcast()V
    .registers 3

    .line 3888
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->sendDeviceCustomizationReadyBroadcast()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3891
    nop

    .line 3892
    return-void

    .line 3889
    :catch_7
    move-exception v0

    .line 3890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setApplicationCategoryHint(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "categoryHint"    # I

    .line 3099
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 3100
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3099
    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 3103
    nop

    .line 3104
    return-void

    .line 3101
    :catch_d
    move-exception v0

    .line 3102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setApplicationEnabledSetting(Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .line 3278
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3279
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 3278
    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "newState":I
    .end local p3    # "flags":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "newState":I
    .local v3, "flags":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 3282
    nop

    .line 3283
    return-void

    .line 3280
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "newState":I
    .end local v3    # "flags":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "newState":I
    .restart local p3    # "flags":I
    :catch_17
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object p1, v0

    .line 3281
    .end local p2    # "newState":I
    .end local p3    # "flags":I
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "newState":I
    .restart local v3    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 3307
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 3308
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3307
    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 3309
    :catch_b
    move-exception v0

    .line 3310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAutoRevokeWhitelisted(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelisted"    # Z

    .line 951
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionManager;->setAutoRevokeExempted(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .line 3249
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 3250
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 3249
    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "componentName":Landroid/content/ComponentName;
    .end local p2    # "newState":I
    .end local p3    # "flags":I
    .local v1, "componentName":Landroid/content/ComponentName;
    .local v2, "newState":I
    .local v3, "flags":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 3253
    nop

    .line 3254
    return-void

    .line 3251
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "newState":I
    .end local v3    # "flags":I
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    .restart local p2    # "newState":I
    .restart local p3    # "flags":I
    :catch_17
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object p1, v0

    .line 3252
    .end local p2    # "newState":I
    .end local p3    # "flags":I
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "newState":I
    .restart local v3    # "flags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist setComponentEnabledSettings(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;)V"
        }
    .end annotation

    .line 3259
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 3262
    nop

    .line 3263
    return-void

    .line 3260
    :catch_11
    move-exception v0

    .line 3261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2645
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 2646
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->setBrowserRoleHolder(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public whitelist setDistractingPackageRestrictions([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "distractionFlags"    # I

    .line 2983
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 2984
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    .line 2983
    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 2985
    :catch_d
    move-exception v0

    .line 2986
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;

    .line 3778
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 3781
    nop

    .line 3782
    return-void

    .line 3779
    :catch_b
    move-exception v0

    .line 3780
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .line 2653
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2656
    nop

    .line 2657
    return-void

    .line 2654
    :catch_7
    move-exception v0

    .line 2655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setInstantAppCookie([B)Z
    .registers 5
    .param p1, "cookie"    # [B

    .line 1486
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IPackageManager;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 1487
    :catch_11
    move-exception v0

    .line 1488
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMimeGroup(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3906
    .local p2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IPackageManager;->setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 3909
    nop

    .line 3910
    return-void

    .line 3907
    :catch_12
    move-exception v0

    .line 3908
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;)[Ljava/lang/String;
    .registers 13
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;

    .line 3005
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "packageNames":[Ljava/lang/String;
    .end local p2    # "suspended":Z
    .end local p3    # "appExtras":Landroid/os/PersistableBundle;
    .end local p4    # "launcherExtras":Landroid/os/PersistableBundle;
    .end local p5    # "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v1, "packageNames":[Ljava/lang/String;
    .local v2, "suspended":Z
    .local v3, "appExtras":Landroid/os/PersistableBundle;
    .local v4, "launcherExtras":Landroid/os/PersistableBundle;
    .local v5, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-virtual/range {v0 .. v6}, Landroid/app/ApplicationPackageManager;->setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;I)[Ljava/lang/String;
    .registers 17
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p6, "flags"    # I

    .line 3014
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 3015
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3016
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v9

    .line 3014
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v9}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    .line 3017
    :catch_1c
    move-exception v0

    .line 3018
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "appExtras"    # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p5, "dialogMessage"    # Ljava/lang/String;

    .line 2994
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2995
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    invoke-virtual {v0, p5}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v0

    goto :goto_15

    .line 2996
    :cond_14
    const/4 v0, 0x0

    :goto_15
    move-object v6, v0

    .line 2997
    .local v6, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "packageNames":[Ljava/lang/String;
    .end local p2    # "suspended":Z
    .end local p3    # "appExtras":Landroid/os/PersistableBundle;
    .end local p4    # "launcherExtras":Landroid/os/PersistableBundle;
    .local v2, "packageNames":[Ljava/lang/String;
    .local v3, "suspended":Z
    .local v4, "appExtras":Landroid/os/PersistableBundle;
    .local v5, "launcherExtras":Landroid/os/PersistableBundle;
    invoke-virtual/range {v1 .. v7}, Landroid/app/ApplicationPackageManager;->setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1039
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1042
    nop

    .line 1043
    return-void

    .line 1040
    :catch_7
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSyntheticAppDetailsActivityEnabled(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 3221
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Landroid/app/ApplicationPackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 3223
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    if-eqz p2, :cond_f

    .line 3224
    const/4 v0, 0x0

    move v4, v0

    goto :goto_11

    .line 3225
    :cond_f
    const/4 v0, 0x2

    move v4, v0

    :goto_11
    nop

    .line 3226
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v6

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3223
    const/4 v5, 0x1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_22

    .line 3229
    .end local v3    # "componentName":Landroid/content/ComponentName;
    nop

    .line 3230
    return-void

    .line 3227
    :catch_22
    move-exception v0

    .line 3228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSystemAppState(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 3327
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_2e

    goto :goto_2c

    .line 3338
    :pswitch_6
    :try_start_6
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    .line 3339
    goto :goto_2c

    .line 3335
    :pswitch_10
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    .line 3336
    goto :goto_2c

    .line 3332
    :pswitch_1a
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/IPackageManager;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V

    .line 3333
    goto :goto_2c

    .line 3329
    :pswitch_20
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_25} :catch_26

    .line 3330
    goto :goto_2c

    .line 3342
    :catch_26
    move-exception v0

    .line 3343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3344
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    nop

    .line 3345
    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist setUpdateAvailable(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updateAvailable"    # Z

    .line 2662
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->setUpdateAvailable(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2665
    nop

    .line 2666
    return-void

    .line 2663
    :catch_7
    move-exception v0

    .line 2664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist shouldShowNewAppInstalledNotification()Z
    .registers 4

    .line 4089
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_new_app_installed_notification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method public greylist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 969
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/permission/PermissionManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;

    .line 2730
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2731
    :try_start_3
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2732
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    .line 2733
    .local v2, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    iget-object v3, v2, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 2735
    :try_start_19
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 2738
    nop

    .line 2739
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 2736
    :catch_23
    move-exception v3

    .line 2737
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "callback":Landroid/content/pm/PackageManager$MoveCallback;
    throw v4

    .line 2741
    .end local v2    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "callback":Landroid/content/pm/PackageManager$MoveCallback;
    :cond_29
    :goto_29
    goto :goto_9

    .line 2742
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :cond_2a
    monitor-exit v0

    .line 2743
    return-void

    .line 2742
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 4123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    :try_start_3
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 4126
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPackageMonitorCallbacks:Landroid/util/ArraySet;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_16

    .line 4127
    :try_start_b
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPackageMonitorCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4128
    monitor-exit v0

    .line 4131
    nop

    .line 4132
    return-void

    .line 4128
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    .end local p0    # "this":Landroid/app/ApplicationPackageManager;
    .end local p1    # "callback":Landroid/os/IRemoteCallback;
    :try_start_15
    throw v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_16} :catch_16

    .line 4129
    .restart local p0    # "this":Landroid/app/ApplicationPackageManager;
    .restart local p1    # "callback":Landroid/os/IRemoteCallback;
    :catch_16
    move-exception v0

    .line 4130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateInstantAppCookie([B)V
    .registers 5
    .param p1, "cookie"    # [B

    .line 1471
    if-eqz p1, :cond_28

    array-length v0, p1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getInstantAppCookieMaxBytes()I

    move-result v1

    if-gt v0, v1, :cond_a

    goto :goto_28

    .line 1472
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "instant cookie longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1473
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getInstantAppCookieMaxBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :cond_28
    :goto_28
    :try_start_28
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IPackageManager;->setInstantAppCookie(Ljava/lang/String;[BI)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_37} :catch_39

    .line 1479
    nop

    .line 1480
    return-void

    .line 1477
    :catch_39
    move-exception v0

    .line 1478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .line 2601
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2602
    :catch_7
    move-exception v0

    .line 2603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 12
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 932
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    move-object v2, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "permName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    .local v3, "flagMask":I
    .local v4, "flagValues":I
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v0 .. v5}, Landroid/permission/PermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 934
    return-void
.end method

.method public whitelist verifyIntentFilter(IILjava/util/List;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2583
    .local p3, "failedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->verifyIntentFilter(IILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2586
    nop

    .line 2587
    return-void

    .line 2584
    :catch_7
    move-exception v0

    .line 2585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist verifyPendingInstall(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "response"    # I

    .line 2564
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2567
    nop

    .line 2568
    return-void

    .line 2565
    :catch_7
    move-exception v0

    .line 2566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
