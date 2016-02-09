.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$DatabaseVersion;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x4

    #@5
    const/4 v3, 0x2

    #@6
    .line 229
    sput v5, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@8
    .line 3237
    const/high16 v0, 0x8000000

    #@a
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    #@c
    .line 3238
    const/high16 v0, 0x10000000

    #@e
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    #@10
    .line 3239
    const/high16 v0, 0x20000000

    #@12
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    #@14
    .line 3240
    const/high16 v0, 0x40000000    # 2.0f

    #@16
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    #@18
    .line 3903
    const/16 v0, 0x1e

    #@1a
    new-array v0, v0, [Ljava/lang/Object;

    #@1c
    .line 3904
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    aput-object v1, v0, v5

    #@22
    const-string/jumbo v1, "SYSTEM"

    #@25
    aput-object v1, v0, v6

    #@27
    .line 3905
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v1

    #@2b
    aput-object v1, v0, v3

    #@2d
    const-string/jumbo v1, "DEBUGGABLE"

    #@30
    const/4 v2, 0x3

    #@31
    aput-object v1, v0, v2

    #@33
    .line 3906
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v1

    #@37
    aput-object v1, v0, v4

    #@39
    const-string/jumbo v1, "HAS_CODE"

    #@3c
    const/4 v2, 0x5

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 3907
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v1

    #@43
    const/4 v2, 0x6

    #@44
    aput-object v1, v0, v2

    #@46
    const-string/jumbo v1, "PERSISTENT"

    #@49
    const/4 v2, 0x7

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 3908
    const/16 v1, 0x10

    #@4e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v1

    #@52
    aput-object v1, v0, v7

    #@54
    const-string/jumbo v1, "FACTORY_TEST"

    #@57
    const/16 v2, 0x9

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 3909
    const/16 v1, 0x20

    #@5d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v1

    #@61
    const/16 v2, 0xa

    #@63
    aput-object v1, v0, v2

    #@65
    const-string/jumbo v1, "ALLOW_TASK_REPARENTING"

    #@68
    const/16 v2, 0xb

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 3910
    const/16 v1, 0x40

    #@6e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v1

    #@72
    const/16 v2, 0xc

    #@74
    aput-object v1, v0, v2

    #@76
    const-string/jumbo v1, "ALLOW_CLEAR_USER_DATA"

    #@79
    const/16 v2, 0xd

    #@7b
    aput-object v1, v0, v2

    #@7d
    .line 3911
    const/16 v1, 0x80

    #@7f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v1

    #@83
    const/16 v2, 0xe

    #@85
    aput-object v1, v0, v2

    #@87
    const-string/jumbo v1, "UPDATED_SYSTEM_APP"

    #@8a
    const/16 v2, 0xf

    #@8c
    aput-object v1, v0, v2

    #@8e
    .line 3912
    const/16 v1, 0x100

    #@90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v1

    #@94
    const/16 v2, 0x10

    #@96
    aput-object v1, v0, v2

    #@98
    const-string/jumbo v1, "TEST_ONLY"

    #@9b
    const/16 v2, 0x11

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 3913
    const/16 v1, 0x4000

    #@a1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4
    move-result-object v1

    #@a5
    const/16 v2, 0x12

    #@a7
    aput-object v1, v0, v2

    #@a9
    const-string/jumbo v1, "VM_SAFE_MODE"

    #@ac
    const/16 v2, 0x13

    #@ae
    aput-object v1, v0, v2

    #@b0
    .line 3914
    const v1, 0x8000

    #@b3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v1

    #@b7
    const/16 v2, 0x14

    #@b9
    aput-object v1, v0, v2

    #@bb
    const-string/jumbo v1, "ALLOW_BACKUP"

    #@be
    const/16 v2, 0x15

    #@c0
    aput-object v1, v0, v2

    #@c2
    .line 3915
    const/high16 v1, 0x10000

    #@c4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v1

    #@c8
    const/16 v2, 0x16

    #@ca
    aput-object v1, v0, v2

    #@cc
    const-string/jumbo v1, "KILL_AFTER_RESTORE"

    #@cf
    const/16 v2, 0x17

    #@d1
    aput-object v1, v0, v2

    #@d3
    .line 3916
    const/high16 v1, 0x20000

    #@d5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d8
    move-result-object v1

    #@d9
    const/16 v2, 0x18

    #@db
    aput-object v1, v0, v2

    #@dd
    const-string/jumbo v1, "RESTORE_ANY_VERSION"

    #@e0
    const/16 v2, 0x19

    #@e2
    aput-object v1, v0, v2

    #@e4
    .line 3917
    const/high16 v1, 0x40000

    #@e6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e9
    move-result-object v1

    #@ea
    const/16 v2, 0x1a

    #@ec
    aput-object v1, v0, v2

    #@ee
    const-string/jumbo v1, "EXTERNAL_STORAGE"

    #@f1
    const/16 v2, 0x1b

    #@f3
    aput-object v1, v0, v2

    #@f5
    .line 3918
    const/high16 v1, 0x100000

    #@f7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fa
    move-result-object v1

    #@fb
    const/16 v2, 0x1c

    #@fd
    aput-object v1, v0, v2

    #@ff
    const-string/jumbo v1, "LARGE_HEAP"

    #@102
    const/16 v2, 0x1d

    #@104
    aput-object v1, v0, v2

    #@106
    .line 3903
    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@108
    .line 3921
    const/4 v0, 0x6

    #@109
    new-array v0, v0, [Ljava/lang/Object;

    #@10b
    .line 3922
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10e
    move-result-object v1

    #@10f
    aput-object v1, v0, v5

    #@111
    const-string/jumbo v1, "PRIVILEGED"

    #@114
    aput-object v1, v0, v6

    #@116
    .line 3923
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@119
    move-result-object v1

    #@11a
    aput-object v1, v0, v3

    #@11c
    const-string/jumbo v1, "FORWARD_LOCK"

    #@11f
    const/4 v2, 0x3

    #@120
    aput-object v1, v0, v2

    #@122
    .line 3924
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@125
    move-result-object v1

    #@126
    aput-object v1, v0, v4

    #@128
    const-string/jumbo v1, "CANT_SAVE_STATE"

    #@12b
    const/4 v2, 0x5

    #@12c
    aput-object v1, v0, v2

    #@12e
    .line 3921
    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@130
    .line 119
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/Object;)V
    .locals 4
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 219
    new-instance v0, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@9
    .line 218
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@b
    .line 223
    new-instance v0, Landroid/util/ArrayMap;

    #@d
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@10
    .line 222
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@12
    .line 227
    new-instance v0, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@17
    .line 226
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@19
    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@20
    .line 277
    new-instance v0, Landroid/util/SparseArray;

    #@22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@25
    .line 276
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@27
    .line 282
    new-instance v0, Landroid/util/SparseArray;

    #@29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@2c
    .line 281
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@2e
    .line 286
    new-instance v0, Landroid/util/SparseArray;

    #@30
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@33
    .line 285
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@35
    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    #@37
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3a
    .line 288
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3c
    .line 290
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@43
    .line 292
    new-instance v0, Landroid/util/SparseArray;

    #@45
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@48
    .line 291
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@4a
    .line 296
    new-instance v0, Ljava/util/ArrayList;

    #@4c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4f
    .line 295
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@51
    .line 298
    new-instance v0, Landroid/util/ArrayMap;

    #@53
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@56
    .line 297
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@58
    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    #@5a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5d
    .line 301
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@5f
    .line 306
    new-instance v0, Landroid/util/ArrayMap;

    #@61
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@64
    .line 305
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@66
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    #@68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6b
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@6d
    .line 316
    new-instance v0, Landroid/util/ArrayMap;

    #@6f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@72
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@74
    .line 319
    new-instance v0, Landroid/util/SparseArray;

    #@76
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@79
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@7b
    .line 322
    new-instance v0, Landroid/util/SparseIntArray;

    #@7d
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@80
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@82
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@89
    .line 333
    new-instance v0, Ljava/util/ArrayList;

    #@8b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8e
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@90
    .line 337
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    #@92
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@94
    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    #@97
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    #@99
    .line 344
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    #@9b
    .line 346
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@9d
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    #@9f
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    #@a2
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@a4
    .line 348
    new-instance v0, Ljava/io/File;

    #@a6
    const-string/jumbo v1, "system"

    #@a9
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@ac
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@ae
    .line 349
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@b0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@b3
    .line 350
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@b5
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    .line 351
    const/16 v1, 0x1fd

    #@bb
    .line 350
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@be
    .line 354
    new-instance v0, Ljava/io/File;

    #@c0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@c2
    const-string/jumbo v2, "packages.xml"

    #@c5
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c8
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@ca
    .line 355
    new-instance v0, Ljava/io/File;

    #@cc
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@ce
    const-string/jumbo v2, "packages-backup.xml"

    #@d1
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d4
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@d6
    .line 356
    new-instance v0, Ljava/io/File;

    #@d8
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@da
    const-string/jumbo v2, "packages.list"

    #@dd
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e0
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@e2
    .line 357
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@e4
    const/16 v1, 0x1a0

    #@e6
    const/16 v2, 0x3e8

    #@e8
    const/16 v3, 0x408

    #@ea
    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    #@ed
    .line 360
    new-instance v0, Ljava/io/File;

    #@ef
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@f1
    const-string/jumbo v2, "packages-stopped.xml"

    #@f4
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f7
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@f9
    .line 361
    new-instance v0, Ljava/io/File;

    #@fb
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@fd
    const-string/jumbo v2, "packages-stopped-backup.xml"

    #@100
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@103
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@105
    .line 343
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 340
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Ljava/lang/Object;)V

    #@7
    .line 339
    return-void
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    .line 796
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 797
    if-eqz p3, :cond_1

    #@8
    .line 798
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@a
    if-eqz v2, :cond_4

    #@c
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@e
    if-eq v2, p3, :cond_4

    #@10
    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Package "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " was user "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 801
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@2b
    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 801
    const-string/jumbo v3, " but is now "

    #@32
    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 802
    const-string/jumbo v3, "; I am not changing its files so it will probably fail!"

    #@3d
    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 799
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@48
    .line 803
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@4a
    invoke-virtual {v2, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    #@4d
    .line 812
    :cond_0
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    #@50
    .line 813
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@52
    .line 814
    iget v2, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@54
    iput v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@56
    .line 819
    :cond_1
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@58
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    .line 820
    .local v1, "userIdPs":Ljava/lang/Object;
    if-nez p3, :cond_5

    #@5e
    .line 821
    if-eqz v1, :cond_2

    #@60
    if-eq v1, p1, :cond_2

    #@62
    .line 822
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@64
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    #@67
    .line 830
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@69
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@6f
    .line 831
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v0, :cond_3

    #@71
    .line 835
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@73
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 836
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@79
    .line 795
    :cond_3
    return-void

    #@7a
    .line 804
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "userIdPs":Ljava/lang/Object;
    :cond_4
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@7c
    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@7e
    if-eq v2, v3, :cond_0

    #@80
    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v3, "Package "

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    const-string/jumbo v3, " was user id "

    #@95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    .line 807
    const-string/jumbo v3, " but is now user "

    #@a2
    .line 806
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    .line 808
    const-string/jumbo v3, " with id "

    #@ad
    .line 806
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    .line 808
    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@b3
    .line 806
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v2

    #@b7
    .line 809
    const-string/jumbo v3, "; I am not changing its files so it will probably fail!"

    #@ba
    .line 806
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v2

    #@c2
    .line 805
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@c5
    goto :goto_0

    #@c6
    .line 825
    .restart local v1    # "userIdPs":Ljava/lang/Object;
    :cond_5
    if-eqz v1, :cond_2

    #@c8
    if-eq v1, p3, :cond_2

    #@ca
    .line 826
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@cc
    invoke-direct {p0, v2, p3}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    #@cf
    goto :goto_1
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 954
    const/16 v2, 0x4e1f

    #@5
    if-le p1, v2, :cond_0

    #@7
    .line 955
    return v4

    #@8
    .line 958
    :cond_0
    const/16 v2, 0x2710

    #@a
    if-lt p1, v2, :cond_3

    #@c
    .line 959
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    .line 960
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@14
    .line 961
    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    #@16
    .line 962
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 963
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 965
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Adding duplicate user id: "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 968
    const-string/jumbo v3, " name="

    #@39
    .line 967
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 966
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@48
    .line 969
    return v4

    #@49
    .line 971
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 981
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_1
    const/4 v2, 0x1

    #@4f
    return v2

    #@50
    .line 973
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@52
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    if-eqz v2, :cond_4

    #@58
    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "Adding duplicate shared id: "

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 976
    const-string/jumbo v3, " name="

    #@6b
    .line 975
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    .line 974
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@7a
    .line 977
    return v4

    #@7b
    .line 979
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@7d
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@80
    goto :goto_1
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 19
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    #@0
    .prologue
    .line 2949
    move-object/from16 v0, p1

    #@2
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@4
    .line 2950
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@7
    move-result-object v8

    #@8
    const/16 v18, 0x0

    #@a
    .line 2949
    move-object/from16 v0, p2

    #@c
    move/from16 v1, p3

    #@e
    move/from16 v2, v18

    #@10
    invoke-virtual {v7, v0, v8, v1, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@13
    move-result-object v16

    #@14
    .line 2953
    .local v16, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    #@15
    .line 2955
    .local v5, "systemMatch":I
    if-eqz v16, :cond_10

    #@17
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@1a
    move-result v7

    #@1b
    const/4 v8, 0x1

    #@1c
    if-le v7, v8, :cond_10

    #@1e
    .line 2956
    const/4 v13, 0x0

    #@1f
    .line 2957
    .local v13, "haveAct":Z
    const/4 v14, 0x0

    #@20
    .line 2958
    .local v14, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@23
    move-result v7

    #@24
    new-array v6, v7, [Landroid/content/ComponentName;

    #@26
    .line 2959
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v15, 0x0

    #@27
    .local v15, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@2a
    move-result v7

    #@2b
    if-ge v15, v7, :cond_0

    #@2d
    .line 2960
    move-object/from16 v0, v16

    #@2f
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@35
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@37
    .line 2961
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    #@39
    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3b
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3d
    move-object/from16 v18, v0

    #@3f
    move-object/from16 v0, v18

    #@41
    invoke-direct {v7, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    aput-object v7, v6, v15

    #@46
    .line 2962
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@48
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4a
    and-int/lit8 v7, v7, 0x1

    #@4c
    if-nez v7, :cond_3

    #@4e
    .line 2963
    move-object/from16 v0, v16

    #@50
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@56
    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    #@58
    if-ltz v7, :cond_4

    #@5a
    .line 2969
    aget-object v14, v6, v15

    #@5c
    .line 2983
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v14    # "haveNonSys":Landroid/content/ComponentName;
    :cond_0
    if-eqz v14, :cond_1

    #@5e
    if-lez v5, :cond_1

    #@60
    .line 2988
    const/4 v14, 0x0

    #@61
    .line 2990
    :cond_1
    if-eqz v13, :cond_c

    #@63
    if-nez v14, :cond_c

    #@65
    .line 2991
    new-instance v4, Landroid/content/IntentFilter;

    #@67
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@6a
    .line 2992
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    if-eqz v7, :cond_2

    #@70
    .line 2993
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@77
    .line 2995
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@7a
    move-result-object v7

    #@7b
    if-eqz v7, :cond_5

    #@7d
    .line 2996
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@80
    move-result-object v7

    #@81
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v11

    #@85
    .local v11, "cat$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_5

    #@8b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v10

    #@8f
    check-cast v10, Ljava/lang/String;

    #@91
    .line 2997
    .local v10, "cat":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@94
    goto :goto_1

    #@95
    .line 2972
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "cat":Ljava/lang/String;
    .end local v11    # "cat$iterator":Ljava/util/Iterator;
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "haveNonSys":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@9b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v7

    #@9f
    if-eqz v7, :cond_4

    #@a1
    .line 2973
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@a4
    move-result-object v7

    #@a5
    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v7

    #@ab
    .line 2972
    if-eqz v7, :cond_4

    #@ad
    .line 2976
    const/4 v13, 0x1

    #@ae
    .line 2977
    move-object/from16 v0, v16

    #@b0
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v7

    #@b4
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@b6
    iget v5, v7, Landroid/content/pm/ResolveInfo;->match:I

    #@b8
    .line 2959
    :cond_4
    add-int/lit8 v15, v15, 0x1

    #@ba
    goto/16 :goto_0

    #@bc
    .line 3000
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v14    # "haveNonSys":Landroid/content/ComponentName;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :cond_5
    const/high16 v7, 0x10000

    #@be
    and-int v7, v7, p3

    #@c0
    if-eqz v7, :cond_6

    #@c2
    .line 3001
    const-string/jumbo v7, "android.intent.category.DEFAULT"

    #@c5
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@c8
    .line 3003
    :cond_6
    if-eqz p5, :cond_7

    #@ca
    .line 3004
    move-object/from16 v0, p5

    #@cc
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@cf
    .line 3006
    :cond_7
    if-eqz p6, :cond_8

    #@d1
    .line 3007
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@d4
    move-result-object v7

    #@d5
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    #@d8
    move-result v8

    #@d9
    invoke-virtual {v4, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@dc
    .line 3009
    :cond_8
    if-eqz p7, :cond_9

    #@de
    .line 3010
    move-object/from16 v0, p7

    #@e0
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    #@e3
    .line 3012
    :cond_9
    if-eqz p8, :cond_a

    #@e5
    .line 3013
    move-object/from16 v0, p8

    #@e7
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    #@ea
    .line 3015
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@ed
    move-result-object v7

    #@ee
    if-eqz v7, :cond_b

    #@f0
    .line 3017
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@f3
    move-result-object v7

    #@f4
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f7
    .line 3022
    :cond_b
    :goto_2
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    #@f9
    const/4 v8, 0x1

    #@fa
    move-object/from16 v7, p4

    #@fc
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    #@ff
    .line 3023
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    #@101
    move/from16 v1, p9

    #@103
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    #@106
    move-result-object v7

    #@107
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@10a
    .line 2948
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v13    # "haveAct":Z
    .end local v15    # "i":I
    :goto_3
    return-void

    #@10b
    .line 3018
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v13    # "haveAct":Z
    .restart local v15    # "i":I
    :catch_0
    move-exception v12

    #@10c
    .line 3019
    .local v12, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v7, "PackageSettings"

    #@10f
    new-instance v8, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v18, "Malformed mimetype "

    #@117
    move-object/from16 v0, v18

    #@119
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v8

    #@11d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@120
    move-result-object v18

    #@121
    move-object/from16 v0, v18

    #@123
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v8

    #@127
    const-string/jumbo v18, " for "

    #@12a
    move-object/from16 v0, v18

    #@12c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v8

    #@130
    move-object/from16 v0, p4

    #@132
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v8

    #@136
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v8

    #@13a
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13d
    goto :goto_2

    #@13e
    .line 3024
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_c
    if-nez v14, :cond_f

    #@140
    .line 3025
    new-instance v17, Ljava/lang/StringBuilder;

    #@142
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    .line 3026
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "No component "

    #@148
    move-object/from16 v0, v17

    #@14a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    .line 3027
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@150
    move-result-object v7

    #@151
    move-object/from16 v0, v17

    #@153
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    .line 3028
    const-string/jumbo v7, " found setting preferred "

    #@159
    move-object/from16 v0, v17

    #@15b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    .line 3029
    move-object/from16 v0, v17

    #@160
    move-object/from16 v1, p2

    #@162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@165
    .line 3030
    const-string/jumbo v7, "; possible matches are "

    #@168
    move-object/from16 v0, v17

    #@16a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 3031
    const/4 v15, 0x0

    #@16e
    :goto_4
    array-length v7, v6

    #@16f
    if-ge v15, v7, :cond_e

    #@171
    .line 3032
    if-lez v15, :cond_d

    #@173
    const-string/jumbo v7, ", "

    #@176
    move-object/from16 v0, v17

    #@178
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    .line 3033
    :cond_d
    aget-object v7, v6, v15

    #@17d
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@180
    move-result-object v7

    #@181
    move-object/from16 v0, v17

    #@183
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    .line 3031
    add-int/lit8 v15, v15, 0x1

    #@188
    goto :goto_4

    #@189
    .line 3035
    :cond_e
    const-string/jumbo v7, "PackageSettings"

    #@18c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v8

    #@190
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@193
    goto/16 :goto_3

    #@195
    .line 3037
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    const-string/jumbo v7, "PackageSettings"

    #@198
    new-instance v8, Ljava/lang/StringBuilder;

    #@19a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19d
    const-string/jumbo v18, "Not setting preferred "

    #@1a0
    move-object/from16 v0, v18

    #@1a2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v8

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v8

    #@1ac
    const-string/jumbo v18, "; found third party match "

    #@1af
    move-object/from16 v0, v18

    #@1b1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v8

    #@1b5
    .line 3038
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1b8
    move-result-object v18

    #@1b9
    .line 3037
    move-object/from16 v0, v18

    #@1bb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v8

    #@1bf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v8

    #@1c3
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c6
    goto/16 :goto_3

    #@1c8
    .line 3041
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v13    # "haveAct":Z
    .end local v15    # "i":I
    :cond_10
    const-string/jumbo v7, "PackageSettings"

    #@1cb
    new-instance v8, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v18, "No potential matches found for "

    #@1d3
    move-object/from16 v0, v18

    #@1d5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v8

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v8

    #@1df
    const-string/jumbo v18, " while setting preferred "

    #@1e2
    move-object/from16 v0, v18

    #@1e4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v8

    #@1e8
    .line 3042
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1eb
    move-result-object v18

    #@1ec
    .line 3041
    move-object/from16 v0, v18

    #@1ee
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v8

    #@1f2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v8

    #@1f6
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f9
    goto/16 :goto_3
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 42
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 2844
    new-instance v37, Landroid/content/Intent;

    #@2
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    #@5
    .line 2845
    .local v37, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    #@6
    .line 2846
    .local v5, "flags":I
    const/4 v2, 0x0

    #@7
    move-object/from16 v0, p2

    #@9
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    move-object/from16 v0, v37

    #@f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 2847
    const/16 v34, 0x0

    #@14
    .local v34, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    #@17
    move-result v2

    #@18
    move/from16 v0, v34

    #@1a
    if-ge v0, v2, :cond_1

    #@1c
    .line 2848
    move-object/from16 v0, p2

    #@1e
    move/from16 v1, v34

    #@20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    #@23
    move-result-object v29

    #@24
    .line 2849
    .local v29, "cat":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    #@27
    move-object/from16 v0, v29

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 2850
    const/high16 v2, 0x10000

    #@31
    or-int/2addr v5, v2

    #@32
    .line 2847
    :goto_1
    add-int/lit8 v34, v34, 0x1

    #@34
    goto :goto_0

    #@35
    .line 2852
    :cond_0
    move-object/from16 v0, v37

    #@37
    move-object/from16 v1, v29

    #@39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    goto :goto_1

    #@3d
    .line 2856
    .end local v29    # "cat":Ljava/lang/String;
    :cond_1
    const/16 v31, 0x1

    #@3f
    .line 2857
    .local v31, "doNonData":Z
    const/16 v33, 0x0

    #@41
    .line 2859
    .local v33, "hasSchemes":Z
    const/16 v39, 0x0

    #@43
    .local v39, "ischeme":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@46
    move-result v2

    #@47
    move/from16 v0, v39

    #@49
    if-ge v0, v2, :cond_b

    #@4b
    .line 2860
    const/16 v32, 0x1

    #@4d
    .line 2861
    .local v32, "doScheme":Z
    move-object/from16 v0, p2

    #@4f
    move/from16 v1, v39

    #@51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    .line 2862
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@57
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_3

    #@5d
    .line 2865
    :cond_2
    :goto_3
    const/16 v40, 0x0

    #@5f
    .local v40, "issp":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    #@62
    move-result v2

    #@63
    move/from16 v0, v40

    #@65
    if-ge v0, v2, :cond_4

    #@67
    .line 2866
    new-instance v28, Landroid/net/Uri$Builder;

    #@69
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@6c
    .line 2867
    .local v28, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@6e
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@71
    .line 2868
    move-object/from16 v0, p2

    #@73
    move/from16 v1, v40

    #@75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    #@78
    move-result-object v8

    #@79
    .line 2869
    .local v8, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v8}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    move-object/from16 v0, v28

    #@7f
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@82
    .line 2870
    new-instance v4, Landroid/content/Intent;

    #@84
    move-object/from16 v0, v37

    #@86
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@89
    .line 2871
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@90
    .line 2873
    const/4 v9, 0x0

    #@91
    const/4 v10, 0x0

    #@92
    move-object/from16 v2, p0

    #@94
    move-object/from16 v3, p1

    #@96
    move-object/from16 v6, p3

    #@98
    move/from16 v11, p4

    #@9a
    .line 2872
    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@9d
    .line 2874
    const/16 v32, 0x0

    #@9f
    .line 2865
    add-int/lit8 v40, v40, 0x1

    #@a1
    goto :goto_4

    #@a2
    .line 2863
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v8    # "ssp":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    .end local v40    # "issp":I
    :cond_3
    const/16 v33, 0x1

    #@a4
    goto :goto_3

    #@a5
    .line 2876
    .restart local v40    # "issp":I
    :cond_4
    const/16 v35, 0x0

    #@a7
    .local v35, "iauth":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@aa
    move-result v2

    #@ab
    move/from16 v0, v35

    #@ad
    if-ge v0, v2, :cond_9

    #@af
    .line 2877
    const/16 v30, 0x1

    #@b1
    .line 2878
    .local v30, "doAuth":Z
    move-object/from16 v0, p2

    #@b3
    move/from16 v1, v35

    #@b5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    #@b8
    move-result-object v16

    #@b9
    .line 2879
    .local v16, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    const/16 v38, 0x0

    #@bb
    .local v38, "ipath":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    #@be
    move-result v2

    #@bf
    move/from16 v0, v38

    #@c1
    if-ge v0, v2, :cond_6

    #@c3
    .line 2880
    new-instance v28, Landroid/net/Uri$Builder;

    #@c5
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@c8
    .line 2881
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@ca
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@cd
    .line 2882
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@d0
    move-result-object v2

    #@d1
    if-eqz v2, :cond_5

    #@d3
    .line 2883
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@d6
    move-result-object v2

    #@d7
    move-object/from16 v0, v28

    #@d9
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@dc
    .line 2885
    :cond_5
    move-object/from16 v0, p2

    #@de
    move/from16 v1, v38

    #@e0
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    #@e3
    move-result-object v17

    #@e4
    .line 2886
    .local v17, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    move-object/from16 v0, v28

    #@ea
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@ed
    .line 2887
    new-instance v4, Landroid/content/Intent;

    #@ef
    move-object/from16 v0, v37

    #@f1
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f4
    .line 2888
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@f7
    move-result-object v2

    #@f8
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@fb
    .line 2890
    const/4 v15, 0x0

    #@fc
    move-object/from16 v9, p0

    #@fe
    move-object/from16 v10, p1

    #@100
    move-object v11, v4

    #@101
    move v12, v5

    #@102
    move-object/from16 v13, p3

    #@104
    move-object v14, v7

    #@105
    move/from16 v18, p4

    #@107
    .line 2889
    invoke-direct/range {v9 .. v18}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@10a
    .line 2891
    const/16 v32, 0x0

    #@10c
    const/16 v30, 0x0

    #@10e
    .line 2879
    add-int/lit8 v38, v38, 0x1

    #@110
    goto :goto_6

    #@111
    .line 2893
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "path":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_6
    if-eqz v30, :cond_8

    #@113
    .line 2894
    new-instance v28, Landroid/net/Uri$Builder;

    #@115
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@118
    .line 2895
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@11a
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@11d
    .line 2896
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@120
    move-result-object v2

    #@121
    if-eqz v2, :cond_7

    #@123
    .line 2897
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@126
    move-result-object v2

    #@127
    move-object/from16 v0, v28

    #@129
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12c
    .line 2899
    :cond_7
    new-instance v4, Landroid/content/Intent;

    #@12e
    move-object/from16 v0, v37

    #@130
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@133
    .line 2900
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@136
    move-result-object v2

    #@137
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@13a
    .line 2902
    const/16 v24, 0x0

    #@13c
    const/16 v26, 0x0

    #@13e
    move-object/from16 v18, p0

    #@140
    move-object/from16 v19, p1

    #@142
    move-object/from16 v20, v4

    #@144
    move/from16 v21, v5

    #@146
    move-object/from16 v22, p3

    #@148
    move-object/from16 v23, v7

    #@14a
    move-object/from16 v25, v16

    #@14c
    move/from16 v27, p4

    #@14e
    .line 2901
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@151
    .line 2903
    const/16 v32, 0x0

    #@153
    .line 2876
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    add-int/lit8 v35, v35, 0x1

    #@155
    goto/16 :goto_5

    #@157
    .line 2906
    .end local v16    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v30    # "doAuth":Z
    .end local v38    # "ipath":I
    :cond_9
    if-eqz v32, :cond_a

    #@159
    .line 2907
    new-instance v28, Landroid/net/Uri$Builder;

    #@15b
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@15e
    .line 2908
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@160
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@163
    .line 2909
    new-instance v4, Landroid/content/Intent;

    #@165
    move-object/from16 v0, v37

    #@167
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@16a
    .line 2910
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@16d
    move-result-object v2

    #@16e
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@171
    .line 2912
    const/16 v24, 0x0

    #@173
    const/16 v25, 0x0

    #@175
    const/16 v26, 0x0

    #@177
    move-object/from16 v18, p0

    #@179
    move-object/from16 v19, p1

    #@17b
    move-object/from16 v20, v4

    #@17d
    move/from16 v21, v5

    #@17f
    move-object/from16 v22, p3

    #@181
    move-object/from16 v23, v7

    #@183
    move/from16 v27, p4

    #@185
    .line 2911
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@188
    .line 2914
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_a
    const/16 v31, 0x0

    #@18a
    .line 2859
    add-int/lit8 v39, v39, 0x1

    #@18c
    goto/16 :goto_2

    #@18e
    .line 2917
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v32    # "doScheme":Z
    .end local v35    # "iauth":I
    .end local v40    # "issp":I
    :cond_b
    const/16 v36, 0x0

    #@190
    .local v36, "idata":I
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    #@193
    move-result v2

    #@194
    move/from16 v0, v36

    #@196
    if-ge v0, v2, :cond_10

    #@198
    .line 2918
    move-object/from16 v0, p2

    #@19a
    move/from16 v1, v36

    #@19c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    #@19f
    move-result-object v41

    #@1a0
    .line 2919
    .local v41, "mimeType":Ljava/lang/String;
    if-eqz v33, :cond_e

    #@1a2
    .line 2920
    new-instance v28, Landroid/net/Uri$Builder;

    #@1a4
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@1a7
    .line 2921
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    const/16 v39, 0x0

    #@1a9
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@1ac
    move-result v2

    #@1ad
    move/from16 v0, v39

    #@1af
    if-ge v0, v2, :cond_f

    #@1b1
    .line 2922
    move-object/from16 v0, p2

    #@1b3
    move/from16 v1, v39

    #@1b5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    #@1b8
    move-result-object v7

    #@1b9
    .line 2923
    .restart local v7    # "scheme":Ljava/lang/String;
    if-eqz v7, :cond_c

    #@1bb
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@1be
    move-result v2

    #@1bf
    if-eqz v2, :cond_d

    #@1c1
    .line 2921
    :cond_c
    :goto_9
    add-int/lit8 v39, v39, 0x1

    #@1c3
    goto :goto_8

    #@1c4
    .line 2924
    :cond_d
    new-instance v4, Landroid/content/Intent;

    #@1c6
    move-object/from16 v0, v37

    #@1c8
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1cb
    .line 2925
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v28

    #@1cd
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1d0
    .line 2926
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1d3
    move-result-object v2

    #@1d4
    move-object/from16 v0, v41

    #@1d6
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@1d9
    .line 2928
    const/16 v24, 0x0

    #@1db
    const/16 v25, 0x0

    #@1dd
    const/16 v26, 0x0

    #@1df
    move-object/from16 v18, p0

    #@1e1
    move-object/from16 v19, p1

    #@1e3
    move-object/from16 v20, v4

    #@1e5
    move/from16 v21, v5

    #@1e7
    move-object/from16 v22, p3

    #@1e9
    move-object/from16 v23, v7

    #@1eb
    move/from16 v27, p4

    #@1ed
    .line 2927
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@1f0
    goto :goto_9

    #@1f1
    .line 2932
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_e
    new-instance v4, Landroid/content/Intent;

    #@1f3
    move-object/from16 v0, v37

    #@1f5
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1f8
    .line 2933
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v41

    #@1fa
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@1fd
    .line 2935
    const/16 v23, 0x0

    #@1ff
    const/16 v24, 0x0

    #@201
    const/16 v25, 0x0

    #@203
    const/16 v26, 0x0

    #@205
    move-object/from16 v18, p0

    #@207
    move-object/from16 v19, p1

    #@209
    move-object/from16 v20, v4

    #@20b
    move/from16 v21, v5

    #@20d
    move-object/from16 v22, p3

    #@20f
    move/from16 v27, p4

    #@211
    .line 2934
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@214
    .line 2937
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_f
    const/16 v31, 0x0

    #@216
    .line 2917
    add-int/lit8 v36, v36, 0x1

    #@218
    goto/16 :goto_7

    #@21a
    .line 2940
    .end local v41    # "mimeType":Ljava/lang/String;
    :cond_10
    if-eqz v31, :cond_11

    #@21c
    .line 2942
    const/16 v23, 0x0

    #@21e
    const/16 v24, 0x0

    #@220
    const/16 v25, 0x0

    #@222
    const/16 v26, 0x0

    #@224
    move-object/from16 v18, p0

    #@226
    move-object/from16 v19, p1

    #@228
    move-object/from16 v20, v37

    #@22a
    move/from16 v21, v5

    #@22c
    move-object/from16 v22, p3

    #@22e
    move/from16 v27, p4

    #@230
    .line 2941
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@233
    .line 2835
    :cond_11
    return-void
.end method

.method private compToString(Landroid/util/ArraySet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 3757
    .local p1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, "[]"

    #@e
    goto :goto_0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 4379
    if-nez p1, :cond_0

    #@2
    .line 4380
    const-string/jumbo v1, "unknown"

    #@5
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 4378
    :goto_0
    return-void

    #@9
    .line 4383
    :cond_0
    const-string/jumbo v1, "["

    #@c
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 4384
    const-string/jumbo v1, "base"

    #@12
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 4385
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 4386
    const-string/jumbo v1, ":"

    #@1c
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@21
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@24
    .line 4388
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 4389
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@2b
    array-length v1, v1

    #@2c
    if-ge v0, v1, :cond_3

    #@2e
    .line 4390
    const-string/jumbo v1, ", "

    #@31
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 4391
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@36
    aget-object v1, v1, v0

    #@38
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 4392
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@3d
    aget v1, v1, v0

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 4393
    const-string/jumbo v1, ":"

    #@44
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@49
    aget v1, v1, v0

    #@4b
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@4e
    .line 4389
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 4397
    .end local v0    # "i":I
    :cond_3
    const-string/jumbo v1, "]"

    #@54
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    goto :goto_0
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;
    .locals 25
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p10, "vc"    # I
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "installUser"    # Landroid/os/UserHandle;
    .param p14, "add"    # Z
    .param p15, "allowInstall"    # Z

    #@0
    .prologue
    .line 556
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 557
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@f
    move-result-object v23

    #@10
    .line 558
    .local v23, "userManager":Lcom/android/server/pm/UserManagerService;
    if-eqz v4, :cond_1

    #@12
    .line 559
    move-object/from16 v0, p8

    #@14
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@16
    .line 560
    move-object/from16 v0, p9

    #@18
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@1a
    .line 562
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@1c
    move-object/from16 v0, p5

    #@1e
    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 564
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@26
    and-int/lit8 v5, v5, 0x1

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 568
    const-string/jumbo v5, "PackageManager"

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v8, "Trying to update system app code path from "

    #@35
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    .line 569
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@3b
    .line 568
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    .line 569
    const-string/jumbo v8, " to "

    #@42
    .line 568
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    .line 569
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    .line 568
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 584
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@57
    move-object/from16 v0, p4

    #@59
    if-eq v5, v0, :cond_5

    #@5b
    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v6, "Package "

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    const-string/jumbo v6, " shared user changed from "

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    .line 587
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@76
    if-eqz v5, :cond_3

    #@78
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@7a
    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@7c
    .line 586
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 588
    const-string/jumbo v6, " to "

    #@83
    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    .line 589
    if-eqz p4, :cond_4

    #@89
    move-object/from16 v0, p4

    #@8b
    iget-object v5, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@8d
    .line 586
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    .line 590
    const-string/jumbo v6, "; replacing with new"

    #@94
    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    .line 585
    const/4 v6, 0x5

    #@9d
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@a0
    .line 591
    const/4 v4, 0x0

    #@a1
    .line 600
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_1
    :goto_3
    if-nez v4, :cond_12

    #@a3
    .line 601
    if-eqz p2, :cond_6

    #@a5
    .line 603
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    #@a7
    move-object/from16 v0, p2

    #@a9
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@ab
    .line 605
    const/4 v12, 0x0

    #@ac
    move-object/from16 v6, p1

    #@ae
    move-object/from16 v7, p5

    #@b0
    move-object/from16 v8, p6

    #@b2
    move-object/from16 v9, p7

    #@b4
    move-object/from16 v10, p8

    #@b6
    move-object/from16 v11, p9

    #@b8
    move/from16 v13, p10

    #@ba
    move/from16 v14, p11

    #@bc
    move/from16 v15, p12

    #@be
    .line 603
    invoke-direct/range {v4 .. v15}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@c1
    .line 610
    .restart local v4    # "p":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@c3
    move-object/from16 v19, v0

    #@c5
    .line 611
    .local v19, "s":Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    #@c7
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    #@ca
    .line 612
    move-object/from16 v0, v19

    #@cc
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@ce
    .line 613
    move-object/from16 v0, p2

    #@d0
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@d2
    iput-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@d4
    .line 614
    move-object/from16 v0, p2

    #@d6
    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@d8
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@da
    .line 615
    move-object/from16 v0, p2

    #@dc
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    #@de
    .line 616
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@e1
    move-result-object v5

    #@e2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@e5
    move-result-object v6

    #@e6
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@e9
    .line 617
    move-object/from16 v0, p0

    #@eb
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@ed
    move-object/from16 v0, p2

    #@ef
    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@f1
    move-object/from16 v0, p1

    #@f3
    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    .line 618
    move-object/from16 v0, p2

    #@f8
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@fa
    move-object/from16 p1, v0

    #@fc
    .line 620
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    #@ff
    move-result-wide v8

    #@100
    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    #@103
    .line 695
    .end local v19    # "s":Lcom/android/server/pm/PackageSignatures;
    :goto_4
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@105
    if-gez v5, :cond_10

    #@107
    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    #@109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v6, "Package "

    #@10f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v5

    #@113
    move-object/from16 v0, p1

    #@115
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    const-string/jumbo v6, " could not be assigned a valid uid"

    #@11c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v5

    #@120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v5

    #@124
    .line 696
    const/4 v6, 0x5

    #@125
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@128
    .line 698
    const/4 v5, 0x0

    #@129
    return-object v5

    #@12a
    .line 573
    :cond_2
    const-string/jumbo v5, "PackageManager"

    #@12d
    new-instance v6, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v8, "Package "

    #@135
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v6

    #@139
    move-object/from16 v0, p1

    #@13b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v6

    #@13f
    const-string/jumbo v8, " codePath changed from "

    #@142
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v6

    #@146
    .line 574
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@148
    .line 573
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v6

    #@14c
    .line 574
    const-string/jumbo v8, " to "

    #@14f
    .line 573
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v6

    #@153
    move-object/from16 v0, p5

    #@155
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v6

    #@159
    .line 574
    const-string/jumbo v8, "; Retaining data and using new"

    #@15c
    .line 573
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v6

    #@160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v6

    #@164
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@167
    .line 581
    move-object/from16 v0, p7

    #@169
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@16b
    goto/16 :goto_0

    #@16d
    .line 587
    :cond_3
    const-string/jumbo v5, "<nothing>"

    #@170
    goto/16 :goto_1

    #@172
    .line 589
    :cond_4
    const-string/jumbo v5, "<nothing>"

    #@175
    goto/16 :goto_2

    #@177
    .line 596
    :cond_5
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@179
    and-int/lit8 v6, p11, 0x1

    #@17b
    or-int/2addr v5, v6

    #@17c
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@17e
    .line 597
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@180
    and-int/lit8 v6, p12, 0x8

    #@182
    or-int/2addr v5, v6

    #@183
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@185
    goto/16 :goto_3

    #@187
    .line 622
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_6
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    #@189
    .line 624
    const/4 v12, 0x0

    #@18a
    move-object/from16 v5, p1

    #@18c
    move-object/from16 v6, p3

    #@18e
    move-object/from16 v7, p5

    #@190
    move-object/from16 v8, p6

    #@192
    move-object/from16 v9, p7

    #@194
    move-object/from16 v10, p8

    #@196
    move-object/from16 v11, p9

    #@198
    move/from16 v13, p10

    #@19a
    move/from16 v14, p11

    #@19c
    move/from16 v15, p12

    #@19e
    .line 622
    invoke-direct/range {v4 .. v15}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@1a1
    .line 625
    .restart local v4    # "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    #@1a4
    move-result-wide v8

    #@1a5
    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    #@1a8
    .line 626
    move-object/from16 v0, p4

    #@1aa
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@1ac
    .line 628
    and-int/lit8 v5, p11, 0x1

    #@1ae
    if-nez v5, :cond_b

    #@1b0
    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@1b3
    move-result-object v24

    #@1b4
    .line 635
    .local v24, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p13, :cond_8

    #@1b6
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    #@1b9
    move-result v18

    #@1ba
    .line 636
    .local v18, "installUserId":I
    :goto_5
    if-eqz v24, :cond_b

    #@1bc
    if-eqz p15, :cond_b

    #@1be
    .line 637
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c1
    move-result-object v21

    #@1c2
    .local v21, "user$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@1c5
    move-result v5

    #@1c6
    if-eqz v5, :cond_b

    #@1c8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cb
    move-result-object v20

    #@1cc
    check-cast v20, Landroid/content/pm/UserInfo;

    #@1ce
    .line 644
    .local v20, "user":Landroid/content/pm/UserInfo;
    if-eqz p13, :cond_9

    #@1d0
    .line 645
    const/4 v5, -0x1

    #@1d1
    move/from16 v0, v18

    #@1d3
    if-ne v0, v5, :cond_7

    #@1d5
    .line 646
    move-object/from16 v0, v20

    #@1d7
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@1d9
    move-object/from16 v0, p0

    #@1db
    move-object/from16 v1, v23

    #@1dd
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    #@1e0
    move-result v5

    #@1e1
    if-eqz v5, :cond_9

    #@1e3
    .line 647
    :cond_7
    move-object/from16 v0, v20

    #@1e5
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@1e7
    move/from16 v0, v18

    #@1e9
    if-ne v0, v5, :cond_a

    #@1eb
    const/4 v7, 0x1

    #@1ec
    .line 648
    .local v7, "installed":Z
    :goto_7
    move-object/from16 v0, v20

    #@1ee
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@1f0
    const/4 v6, 0x0

    #@1f1
    .line 650
    const/4 v8, 0x1

    #@1f2
    .line 651
    const/4 v9, 0x1

    #@1f3
    .line 652
    const/4 v10, 0x0

    #@1f4
    .line 653
    const/4 v11, 0x0

    #@1f5
    const/4 v12, 0x0

    #@1f6
    const/4 v13, 0x0

    #@1f7
    .line 654
    const/4 v14, 0x0

    #@1f8
    .line 655
    const/4 v15, 0x0

    #@1f9
    const/16 v16, 0x0

    #@1fb
    .line 648
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V

    #@1fe
    .line 656
    move-object/from16 v0, v20

    #@200
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@202
    move-object/from16 v0, p0

    #@204
    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@207
    goto :goto_6

    #@208
    .line 635
    .end local v7    # "installed":Z
    .end local v18    # "installUserId":I
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_8
    const/16 v18, 0x0

    #@20a
    .restart local v18    # "installUserId":I
    goto :goto_5

    #@20b
    .line 644
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_9
    const/4 v7, 0x1

    #@20c
    .restart local v7    # "installed":Z
    goto :goto_7

    #@20d
    .line 647
    .end local v7    # "installed":Z
    :cond_a
    const/4 v7, 0x0

    #@20e
    .restart local v7    # "installed":Z
    goto :goto_7

    #@20f
    .line 660
    .end local v7    # "installed":Z
    .end local v18    # "installUserId":I
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    if-eqz p4, :cond_c

    #@211
    .line 661
    move-object/from16 v0, p4

    #@213
    iget v5, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@215
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@217
    goto/16 :goto_4

    #@219
    .line 664
    :cond_c
    move-object/from16 v0, p0

    #@21b
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@21d
    move-object/from16 v0, p1

    #@21f
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@222
    move-result-object v17

    #@223
    check-cast v17, Lcom/android/server/pm/PackageSetting;

    #@225
    .line 665
    .local v17, "dis":Lcom/android/server/pm/PackageSetting;
    if-eqz v17, :cond_f

    #@227
    .line 670
    move-object/from16 v0, v17

    #@229
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@22b
    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@22d
    if-eqz v5, :cond_d

    #@22f
    .line 671
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@231
    move-object/from16 v0, v17

    #@233
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@235
    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@237
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@23a
    move-result-object v5

    #@23b
    check-cast v5, [Landroid/content/pm/Signature;

    #@23d
    iput-object v5, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@23f
    .line 673
    :cond_d
    move-object/from16 v0, v17

    #@241
    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@243
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@245
    .line 675
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@248
    move-result-object v5

    #@249
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@24c
    move-result-object v6

    #@24d
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@250
    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@253
    move-result-object v24

    #@254
    .line 678
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v24, :cond_e

    #@256
    .line 679
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@259
    move-result-object v21

    #@25a
    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@25d
    move-result v5

    #@25e
    if-eqz v5, :cond_e

    #@260
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@263
    move-result-object v20

    #@264
    check-cast v20, Landroid/content/pm/UserInfo;

    #@266
    .line 680
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v20

    #@268
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@26a
    move/from16 v22, v0

    #@26c
    .line 682
    .local v22, "userId":I
    move-object/from16 v0, v17

    #@26e
    move/from16 v1, v22

    #@270
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    #@273
    move-result-object v5

    #@274
    .line 681
    move/from16 v0, v22

    #@276
    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    #@279
    .line 684
    move-object/from16 v0, v17

    #@27b
    move/from16 v1, v22

    #@27d
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    #@280
    move-result-object v5

    #@281
    .line 683
    move/from16 v0, v22

    #@283
    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    #@286
    goto :goto_8

    #@287
    .line 688
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "userId":I
    :cond_e
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@289
    move-object/from16 v0, p0

    #@28b
    move-object/from16 v1, p1

    #@28d
    invoke-direct {v0, v5, v4, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@290
    goto/16 :goto_4

    #@292
    .line 691
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f
    move-object/from16 v0, p0

    #@294
    invoke-direct {v0, v4}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    #@297
    move-result v5

    #@298
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@29a
    goto/16 :goto_4

    #@29c
    .line 700
    .end local v17    # "dis":Lcom/android/server/pm/PackageSetting;
    :cond_10
    if-eqz p14, :cond_11

    #@29e
    .line 703
    move-object/from16 v0, p0

    #@2a0
    move-object/from16 v1, p1

    #@2a2
    move-object/from16 v2, p4

    #@2a4
    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    #@2a7
    .line 726
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_11
    return-object v4

    #@2a8
    .line 706
    :cond_12
    if-eqz p13, :cond_11

    #@2aa
    if-eqz p15, :cond_11

    #@2ac
    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@2af
    move-result-object v24

    #@2b0
    .line 711
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v24, :cond_11

    #@2b2
    .line 712
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b5
    move-result-object v21

    #@2b6
    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@2b9
    move-result v5

    #@2ba
    if-eqz v5, :cond_11

    #@2bc
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2bf
    move-result-object v20

    #@2c0
    check-cast v20, Landroid/content/pm/UserInfo;

    #@2c2
    .line 713
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    #@2c5
    move-result v5

    #@2c6
    const/4 v6, -0x1

    #@2c7
    if-ne v5, v6, :cond_14

    #@2c9
    .line 714
    move-object/from16 v0, v20

    #@2cb
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    move-object/from16 v1, v23

    #@2d1
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    #@2d4
    move-result v5

    #@2d5
    if-eqz v5, :cond_15

    #@2d7
    .line 715
    :cond_14
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    #@2da
    move-result v5

    #@2db
    move-object/from16 v0, v20

    #@2dd
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@2df
    if-ne v5, v6, :cond_13

    #@2e1
    .line 716
    :cond_15
    move-object/from16 v0, v20

    #@2e3
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@2e5
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    #@2e8
    move-result v7

    #@2e9
    .line 717
    .local v7, "installed":Z
    if-nez v7, :cond_13

    #@2eb
    .line 718
    move-object/from16 v0, v20

    #@2ed
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@2ef
    const/4 v6, 0x1

    #@2f0
    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    #@2f3
    .line 719
    move-object/from16 v0, v20

    #@2f5
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@2f7
    move-object/from16 v0, p0

    #@2f9
    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@2fc
    goto :goto_9
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1189
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 1190
    const-string/jumbo v2, "package-restrictions-backup.xml"

    #@9
    .line 1189
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1177
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@6
    const-string/jumbo v3, "users"

    #@9
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    .line 1178
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@15
    const-string/jumbo v2, "package-restrictions.xml"

    #@18
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1184
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@6
    const-string/jumbo v3, "users"

    #@9
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    .line 1185
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@15
    const-string/jumbo v2, "runtime-permissions.xml"

    #@18
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    return-object v1
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3724
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 3725
    .local v0, "N":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 3726
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 3727
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 3728
    add-int/lit16 v2, v1, 0x2710

    #@19
    return v2

    #@1a
    .line 3725
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 3733
    :cond_1
    const/16 v2, 0x270f

    #@1f
    if-le v0, v2, :cond_2

    #@21
    .line 3734
    const/4 v2, -0x1

    #@22
    return v2

    #@23
    .line 3737
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 3738
    add-int/lit16 v2, v0, 0x2710

    #@2a
    return v2
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 4427
    const/4 v1, 0x0

    #@1
    .line 4428
    :goto_0
    if-eqz p1, :cond_1

    #@3
    .line 4429
    if-nez v1, :cond_0

    #@5
    .line 4430
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 4431
    .local v1, "flagsString":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 4432
    const-string/jumbo v2, "[ "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 4434
    .end local v1    # "flagsString":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x1

    #@18
    shl-int v0, v3, v2

    #@1a
    .line 4435
    .local v0, "flag":I
    not-int v2, v0

    #@1b
    and-int/2addr p1, v2

    #@1c
    .line 4436
    invoke-static {v0}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 4437
    const/16 v2, 0x20

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    goto :goto_0

    #@29
    .line 4439
    .end local v0    # "flag":I
    :cond_1
    if-eqz v1, :cond_2

    #@2b
    .line 4440
    const/16 v2, 0x5d

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 4441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    return-object v2

    #@35
    .line 4443
    :cond_2
    const-string/jumbo v2, ""

    #@38
    return-object v2
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 3892
    const-string/jumbo v2, "[ "

    #@3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 3893
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 3894
    aget-object v2, p2, v0

    #@c
    check-cast v2, Ljava/lang/Integer;

    #@e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v1

    #@12
    .line 3895
    .local v1, "mask":I
    and-int v2, p1, v1

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 3896
    add-int/lit8 v2, v0, 0x1

    #@18
    aget-object v2, p2, v2

    #@1a
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1d
    .line 3897
    const-string/jumbo v2, " "

    #@20
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 3893
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@25
    goto :goto_0

    #@26
    .line 3900
    .end local v1    # "mask":I
    :cond_1
    const-string/jumbo v2, "]"

    #@29
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 3891
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 1558
    const/4 v1, 0x0

    #@3
    .line 1560
    .local v1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v2

    #@7
    .line 1562
    .end local v1    # "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v4

    #@b
    .local v4, "type":I
    const/4 v5, 0x1

    #@c
    if-eq v4, v5, :cond_3

    #@e
    .line 1563
    if-ne v4, v7, :cond_1

    #@10
    .line 1564
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v5

    #@14
    if-le v5, v2, :cond_3

    #@16
    .line 1565
    :cond_1
    if-eq v4, v7, :cond_0

    #@18
    .line 1566
    const/4 v5, 0x4

    #@19
    if-eq v4, v5, :cond_0

    #@1b
    .line 1569
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1570
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 1571
    const-string/jumbo v5, "name"

    #@2b
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1572
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@31
    .line 1573
    if-nez v1, :cond_2

    #@33
    .line 1574
    new-instance v1, Landroid/util/ArraySet;

    #@35
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@38
    .line 1576
    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 1580
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 1299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v2

    #@5
    .line 1301
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v4

    #@9
    .local v4, "type":I
    const/4 v5, 0x1

    #@a
    if-eq v4, v5, :cond_3

    #@c
    .line 1302
    if-ne v4, v7, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v5

    #@12
    if-le v5, v2, :cond_3

    #@14
    .line 1303
    :cond_1
    if-eq v4, v7, :cond_0

    #@16
    const/4 v5, 0x4

    #@17
    if-eq v4, v5, :cond_0

    #@19
    .line 1306
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 1307
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 1308
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    #@28
    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 1309
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@32
    goto :goto_0

    #@33
    .line 1311
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Unknown element under crossProfile-intent-filters: "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 1313
    .local v1, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    #@48
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@4b
    .line 1314
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4e
    goto :goto_0

    #@4f
    .line 1298
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x3

    #@2
    .line 3049
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 3051
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v3

    #@a
    .local v3, "type":I
    const/4 v4, 0x1

    #@b
    if-eq v3, v4, :cond_4

    #@d
    .line 3052
    if-ne v3, v6, :cond_1

    #@f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v4

    #@13
    if-le v4, v0, :cond_4

    #@15
    .line 3053
    :cond_1
    if-eq v3, v6, :cond_0

    #@17
    const/4 v4, 0x4

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 3057
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 3058
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 3059
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    #@29
    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    .line 3060
    .local v2, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@2e
    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    if-nez v4, :cond_2

    #@34
    .line 3061
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@36
    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    #@38
    invoke-direct {p0, p1, v2, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    #@3b
    goto :goto_0

    #@3c
    .line 3065
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Error in package manager settings: <preferred-activity> "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 3066
    iget-object v5, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@4a
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 3065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 3066
    const-string/jumbo v5, " at "

    #@55
    .line 3065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 3067
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 3065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 3064
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 3071
    .end local v2    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v5, "Unknown element under <preferred-activities>: "

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    .line 3070
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@84
    .line 3072
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@87
    goto/16 :goto_0

    #@89
    .line 3048
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x5

    #@2
    const/4 v6, 0x3

    #@3
    .line 3537
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v1

    #@7
    .line 3539
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v3

    #@b
    .local v3, "type":I
    const/4 v4, 0x1

    #@c
    if-eq v3, v4, :cond_4

    #@e
    .line 3540
    if-ne v3, v6, :cond_1

    #@10
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    if-le v4, v1, :cond_4

    #@16
    .line 3541
    :cond_1
    if-eq v3, v6, :cond_0

    #@18
    const/4 v4, 0x4

    #@19
    if-eq v3, v4, :cond_0

    #@1b
    .line 3545
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 3546
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 3547
    const-string/jumbo v4, "name"

    #@2b
    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 3548
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@31
    .line 3549
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    #@38
    .line 3559
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3552
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Error in package manager settings: <disabled-components> has no name at "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 3553
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 3552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 3551
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 3557
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v5, "Unknown element under <disabled-components>: "

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    .line 3556
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@73
    goto :goto_1

    #@74
    .line 3536
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 28
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3141
    const-string/jumbo v6, "name"

    #@3
    const/16 v26, 0x0

    #@5
    move-object/from16 v0, p1

    #@7
    move-object/from16 v1, v26

    #@9
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 3142
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "realName"

    #@10
    const/16 v26, 0x0

    #@12
    move-object/from16 v0, p1

    #@14
    move-object/from16 v1, v26

    #@16
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 3143
    .local v4, "realName":Ljava/lang/String;
    const-string/jumbo v6, "codePath"

    #@1d
    const/16 v26, 0x0

    #@1f
    move-object/from16 v0, p1

    #@21
    move-object/from16 v1, v26

    #@23
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v14

    #@27
    .line 3144
    .local v14, "codePathStr":Ljava/lang/String;
    const-string/jumbo v6, "resourcePath"

    #@2a
    const/16 v26, 0x0

    #@2c
    move-object/from16 v0, p1

    #@2e
    move-object/from16 v1, v26

    #@30
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v19

    #@34
    .line 3146
    .local v19, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v6, "requiredCpuAbi"

    #@37
    const/16 v26, 0x0

    #@39
    move-object/from16 v0, p1

    #@3b
    move-object/from16 v1, v26

    #@3d
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v17

    #@41
    .line 3147
    .local v17, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "nativeLibraryPath"

    #@44
    const/16 v26, 0x0

    #@46
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, v26

    #@4a
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 3149
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v6, "primaryCpuAbi"

    #@51
    const/16 v26, 0x0

    #@53
    move-object/from16 v0, p1

    #@55
    move-object/from16 v1, v26

    #@57
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    .line 3150
    .local v8, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "secondaryCpuAbi"

    #@5e
    const/16 v26, 0x0

    #@60
    move-object/from16 v0, p1

    #@62
    move-object/from16 v1, v26

    #@64
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    .line 3151
    .local v9, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "cpuAbiOverride"

    #@6b
    const/16 v26, 0x0

    #@6d
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v26

    #@71
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@74
    move-result-object v10

    #@75
    .line 3153
    .local v10, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v8, :cond_0

    #@77
    if-eqz v17, :cond_0

    #@79
    .line 3154
    move-object/from16 v8, v17

    #@7b
    .line 3157
    :cond_0
    if-nez v19, :cond_1

    #@7d
    .line 3158
    move-object/from16 v19, v14

    #@7f
    .line 3160
    :cond_1
    const-string/jumbo v6, "version"

    #@82
    const/16 v26, 0x0

    #@84
    move-object/from16 v0, p1

    #@86
    move-object/from16 v1, v26

    #@88
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8b
    move-result-object v25

    #@8c
    .line 3161
    .local v25, "version":Ljava/lang/String;
    const/4 v11, 0x0

    #@8d
    .line 3162
    .local v11, "versionCode":I
    if-eqz v25, :cond_2

    #@8f
    .line 3164
    :try_start_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@92
    move-result v11

    #@93
    .line 3170
    :cond_2
    :goto_0
    const/4 v13, 0x0

    #@94
    .line 3171
    .local v13, "pkgPrivateFlags":I
    const/4 v12, 0x1

    #@95
    .line 3172
    .local v12, "pkgFlags":I
    new-instance v5, Ljava/io/File;

    #@97
    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9a
    .line 3173
    .local v5, "codePathFile":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/io/File;)Z

    #@9d
    move-result v6

    #@9e
    if-eqz v6, :cond_3

    #@a0
    .line 3174
    const/16 v13, 0x8

    #@a2
    .line 3176
    :cond_3
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    #@a4
    .line 3177
    new-instance v6, Ljava/io/File;

    #@a6
    move-object/from16 v0, v19

    #@a8
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ab
    .line 3176
    invoke-direct/range {v2 .. v13}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@ae
    .line 3179
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v6, "ft"

    #@b1
    const/16 v26, 0x0

    #@b3
    move-object/from16 v0, p1

    #@b5
    move-object/from16 v1, v26

    #@b7
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v21

    #@bb
    .line 3180
    .local v21, "timeStampStr":Ljava/lang/String;
    if-eqz v21, :cond_a

    #@bd
    .line 3182
    const/16 v6, 0x10

    #@bf
    :try_start_1
    move-object/from16 v0, v21

    #@c1
    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@c4
    move-result-wide v22

    #@c5
    .line 3183
    .local v22, "timeStamp":J
    move-wide/from16 v0, v22

    #@c7
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    #@ca
    .line 3196
    .end local v22    # "timeStamp":J
    :cond_4
    :goto_1
    const-string/jumbo v6, "it"

    #@cd
    const/16 v26, 0x0

    #@cf
    move-object/from16 v0, p1

    #@d1
    move-object/from16 v1, v26

    #@d3
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d6
    move-result-object v21

    #@d7
    .line 3197
    if-eqz v21, :cond_5

    #@d9
    .line 3199
    const/16 v6, 0x10

    #@db
    :try_start_2
    move-object/from16 v0, v21

    #@dd
    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@e0
    move-result-wide v26

    #@e1
    move-wide/from16 v0, v26

    #@e3
    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    #@e5
    .line 3203
    :cond_5
    :goto_2
    const-string/jumbo v6, "ut"

    #@e8
    const/16 v26, 0x0

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v26

    #@ee
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f1
    move-result-object v21

    #@f2
    .line 3204
    if-eqz v21, :cond_6

    #@f4
    .line 3206
    const/16 v6, 0x10

    #@f6
    :try_start_3
    move-object/from16 v0, v21

    #@f8
    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@fb
    move-result-wide v26

    #@fc
    move-wide/from16 v0, v26

    #@fe
    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    #@100
    .line 3210
    :cond_6
    :goto_3
    const-string/jumbo v6, "userId"

    #@103
    const/16 v26, 0x0

    #@105
    move-object/from16 v0, p1

    #@107
    move-object/from16 v1, v26

    #@109
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10c
    move-result-object v16

    #@10d
    .line 3211
    .local v16, "idStr":Ljava/lang/String;
    if-eqz v16, :cond_b

    #@10f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@112
    move-result v6

    #@113
    :goto_4
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@115
    .line 3212
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@117
    if-gtz v6, :cond_7

    #@119
    .line 3213
    const-string/jumbo v6, "sharedUserId"

    #@11c
    const/16 v26, 0x0

    #@11e
    move-object/from16 v0, p1

    #@120
    move-object/from16 v1, v26

    #@122
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@125
    move-result-object v20

    #@126
    .line 3214
    .local v20, "sharedIdStr":Ljava/lang/String;
    if-eqz v20, :cond_c

    #@128
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12b
    move-result v6

    #@12c
    :goto_5
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@12e
    .line 3217
    .end local v20    # "sharedIdStr":Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@131
    move-result v18

    #@132
    .line 3219
    .local v18, "outerDepth":I
    :cond_8
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@135
    move-result v24

    #@136
    .local v24, "type":I
    const/4 v6, 0x1

    #@137
    move/from16 v0, v24

    #@139
    if-eq v0, v6, :cond_e

    #@13b
    .line 3220
    const/4 v6, 0x3

    #@13c
    move/from16 v0, v24

    #@13e
    if-ne v0, v6, :cond_9

    #@140
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@143
    move-result v6

    #@144
    move/from16 v0, v18

    #@146
    if-le v6, v0, :cond_e

    #@148
    .line 3221
    :cond_9
    const/4 v6, 0x3

    #@149
    move/from16 v0, v24

    #@14b
    if-eq v0, v6, :cond_8

    #@14d
    const/4 v6, 0x4

    #@14e
    move/from16 v0, v24

    #@150
    if-eq v0, v6, :cond_8

    #@152
    .line 3225
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@155
    move-result-object v6

    #@156
    const-string/jumbo v26, "perms"

    #@159
    move-object/from16 v0, v26

    #@15b
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15e
    move-result v6

    #@15f
    if-eqz v6, :cond_d

    #@161
    .line 3226
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@164
    move-result-object v6

    #@165
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, p1

    #@169
    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    #@16c
    goto :goto_6

    #@16d
    .line 3165
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "codePathFile":Ljava/io/File;
    .end local v12    # "pkgFlags":I
    .end local v13    # "pkgPrivateFlags":I
    .end local v16    # "idStr":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v21    # "timeStampStr":Ljava/lang/String;
    .end local v24    # "type":I
    :catch_0
    move-exception v15

    #@16e
    .local v15, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    #@170
    .line 3187
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "codePathFile":Ljava/io/File;
    .restart local v12    # "pkgFlags":I
    .restart local v13    # "pkgPrivateFlags":I
    .restart local v21    # "timeStampStr":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "ts"

    #@173
    const/16 v26, 0x0

    #@175
    move-object/from16 v0, p1

    #@177
    move-object/from16 v1, v26

    #@179
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17c
    move-result-object v21

    #@17d
    .line 3188
    if-eqz v21, :cond_4

    #@17f
    .line 3190
    :try_start_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@182
    move-result-wide v22

    #@183
    .line 3191
    .restart local v22    # "timeStamp":J
    move-wide/from16 v0, v22

    #@185
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    #@188
    goto/16 :goto_1

    #@18a
    .line 3192
    .end local v22    # "timeStamp":J
    :catch_1
    move-exception v15

    #@18b
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    #@18d
    .line 3211
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "idStr":Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    #@18e
    goto :goto_4

    #@18f
    .line 3214
    .restart local v20    # "sharedIdStr":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    #@190
    goto :goto_5

    #@191
    .line 3229
    .end local v20    # "sharedIdStr":Ljava/lang/String;
    .restart local v18    # "outerDepth":I
    .restart local v24    # "type":I
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    #@193
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v26, "Unknown element under <updated-package>: "

    #@199
    move-object/from16 v0, v26

    #@19b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v6

    #@19f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a2
    move-result-object v26

    #@1a3
    move-object/from16 v0, v26

    #@1a5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v6

    #@1a9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v6

    #@1ad
    .line 3228
    const/16 v26, 0x5

    #@1af
    move/from16 v0, v26

    #@1b1
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1b4
    .line 3230
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1b7
    goto/16 :goto_6

    #@1b9
    .line 3234
    :cond_e
    move-object/from16 v0, p0

    #@1bb
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@1bd
    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c0
    .line 3140
    return-void

    #@1c1
    .line 3207
    .end local v16    # "idStr":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v24    # "type":I
    :catch_2
    move-exception v15

    #@1c2
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    #@1c4
    .line 3200
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v15

    #@1c5
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@1c7
    .line 3184
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v15

    #@1c8
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1321
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5
    .line 1322
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@8
    .line 1323
    const-string/jumbo v1, "PackageSettings"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Read domain verification for package:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1320
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x5

    #@2
    const/4 v6, 0x3

    #@3
    .line 3565
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v1

    #@7
    .line 3567
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v3

    #@b
    .local v3, "type":I
    const/4 v4, 0x1

    #@c
    if-eq v3, v4, :cond_4

    #@e
    .line 3568
    if-ne v3, v6, :cond_1

    #@10
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    if-le v4, v1, :cond_4

    #@16
    .line 3569
    :cond_1
    if-eq v3, v6, :cond_0

    #@18
    const/4 v4, 0x4

    #@19
    if-eq v3, v4, :cond_0

    #@1b
    .line 3573
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 3574
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 3575
    const-string/jumbo v4, "name"

    #@2b
    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 3576
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@31
    .line 3577
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    #@38
    .line 3587
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3580
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Error in package manager settings: <enabled-components> has no name at "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 3581
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 3580
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 3579
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 3585
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v5, "Unknown element under <enabled-components>: "

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    .line 3584
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@73
    goto :goto_1

    #@74
    .line 3564
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ns"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defValue"    # I

    #@0
    .prologue
    .line 3078
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 3080
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 3081
    return p4

    #@7
    .line 3083
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 3084
    :catch_0
    move-exception v0

    #@d
    .line 3086
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Error in package manager settings: attribute "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 3087
    const-string/jumbo v3, " has bad integer value "

    #@20
    .line 3086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 3087
    const-string/jumbo v3, " at "

    #@2b
    .line 3086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 3088
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 3086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 3085
    const/4 v3, 0x5

    #@3c
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@3f
    .line 3090
    return p4
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 44
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3243
    const/16 v29, 0x0

    #@2
    .line 3244
    .local v29, "name":Ljava/lang/String;
    const/4 v4, 0x0

    #@3
    .line 3245
    .local v4, "realName":Ljava/lang/String;
    const/16 v19, 0x0

    #@5
    .line 3246
    .local v19, "idStr":Ljava/lang/String;
    const/16 v34, 0x0

    #@7
    .line 3247
    .local v34, "sharedIdStr":Ljava/lang/String;
    const/16 v16, 0x0

    #@9
    .line 3248
    .local v16, "codePathStr":Ljava/lang/String;
    const/16 v33, 0x0

    #@b
    .line 3249
    .local v33, "resourcePathStr":Ljava/lang/String;
    const/16 v28, 0x0

    #@d
    .line 3250
    .local v28, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v7, 0x0

    #@e
    .line 3251
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v8, 0x0

    #@f
    .line 3252
    .local v8, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v9, 0x0

    #@10
    .line 3253
    .local v9, "secondaryCpuAbiString":Ljava/lang/String;
    const/4 v10, 0x0

    #@11
    .line 3254
    .local v10, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v35, 0x0

    #@13
    .line 3255
    .local v35, "systemStr":Ljava/lang/String;
    const/16 v25, 0x0

    #@15
    .line 3256
    .local v25, "installerPackageName":Ljava/lang/String;
    const/16 v43, 0x0

    #@17
    .line 3257
    .local v43, "volumeUuid":Ljava/lang/String;
    const/16 v41, 0x0

    #@19
    .line 3258
    .local v41, "uidError":Ljava/lang/String;
    const/4 v13, 0x0

    #@1a
    .line 3259
    .local v13, "pkgFlags":I
    const/4 v14, 0x0

    #@1b
    .line 3260
    .local v14, "pkgPrivateFlags":I
    const-wide/16 v38, 0x0

    #@1d
    .line 3261
    .local v38, "timeStamp":J
    const-wide/16 v20, 0x0

    #@1f
    .line 3262
    .local v20, "firstInstallTime":J
    const-wide/16 v26, 0x0

    #@21
    .line 3263
    .local v26, "lastUpdateTime":J
    const/16 v31, 0x0

    #@23
    .line 3264
    .local v31, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    const/16 v42, 0x0

    #@25
    .line 3265
    .local v42, "version":Ljava/lang/String;
    const/4 v12, 0x0

    #@26
    .line 3267
    .local v12, "versionCode":I
    :try_start_0
    const-string/jumbo v3, "name"

    #@29
    const/4 v5, 0x0

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v29

    #@30
    .line 3268
    .local v29, "name":Ljava/lang/String;
    const-string/jumbo v3, "realName"

    #@33
    const/4 v5, 0x0

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 3269
    .local v4, "realName":Ljava/lang/String;
    const-string/jumbo v3, "userId"

    #@3d
    const/4 v5, 0x0

    #@3e
    move-object/from16 v0, p1

    #@40
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v19

    #@44
    .line 3270
    .local v19, "idStr":Ljava/lang/String;
    const-string/jumbo v3, "uidError"

    #@47
    const/4 v5, 0x0

    #@48
    move-object/from16 v0, p1

    #@4a
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v41

    #@4e
    .line 3271
    .local v41, "uidError":Ljava/lang/String;
    const-string/jumbo v3, "sharedUserId"

    #@51
    const/4 v5, 0x0

    #@52
    move-object/from16 v0, p1

    #@54
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v34

    #@58
    .line 3272
    .local v34, "sharedIdStr":Ljava/lang/String;
    const-string/jumbo v3, "codePath"

    #@5b
    const/4 v5, 0x0

    #@5c
    move-object/from16 v0, p1

    #@5e
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v16

    #@62
    .line 3273
    .local v16, "codePathStr":Ljava/lang/String;
    const-string/jumbo v3, "resourcePath"

    #@65
    const/4 v5, 0x0

    #@66
    move-object/from16 v0, p1

    #@68
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v33

    #@6c
    .line 3275
    .local v33, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v3, "requiredCpuAbi"

    #@6f
    const/4 v5, 0x0

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v28

    #@76
    .line 3277
    .local v28, "legacyCpuAbiString":Ljava/lang/String;
    const-string/jumbo v3, "nativeLibraryPath"

    #@79
    const/4 v5, 0x0

    #@7a
    move-object/from16 v0, p1

    #@7c
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    .line 3278
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v3, "primaryCpuAbi"

    #@83
    const/4 v5, 0x0

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@89
    move-result-object v8

    #@8a
    .line 3279
    .local v8, "primaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v3, "secondaryCpuAbi"

    #@8d
    const/4 v5, 0x0

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    .line 3280
    .local v9, "secondaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v3, "cpuAbiOverride"

    #@97
    const/4 v5, 0x0

    #@98
    move-object/from16 v0, p1

    #@9a
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v10

    #@9e
    .line 3282
    .local v10, "cpuAbiOverrideString":Ljava/lang/String;
    if-nez v8, :cond_0

    #@a0
    if-eqz v28, :cond_0

    #@a2
    .line 3283
    move-object/from16 v8, v28

    #@a4
    .line 3286
    :cond_0
    const-string/jumbo v3, "version"

    #@a7
    const/4 v5, 0x0

    #@a8
    move-object/from16 v0, p1

    #@aa
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    #@ad
    move-result-object v42

    #@ae
    .line 3287
    .local v42, "version":Ljava/lang/String;
    if-eqz v42, :cond_1

    #@b0
    .line 3289
    :try_start_1
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@b3
    move-result v12

    #@b4
    .line 3293
    :cond_1
    :goto_0
    :try_start_2
    const-string/jumbo v3, "installer"

    #@b7
    const/4 v5, 0x0

    #@b8
    move-object/from16 v0, p1

    #@ba
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@bd
    move-result-object v25

    #@be
    .line 3294
    .local v25, "installerPackageName":Ljava/lang/String;
    const-string/jumbo v3, "volumeUuid"

    #@c1
    const/4 v5, 0x0

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c7
    move-result-object v43

    #@c8
    .line 3296
    .local v43, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v3, "publicFlags"

    #@cb
    const/4 v5, 0x0

    #@cc
    move-object/from16 v0, p1

    #@ce
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_a

    #@d1
    move-result-object v35

    #@d2
    .line 3297
    .local v35, "systemStr":Ljava/lang/String;
    if-eqz v35, :cond_b

    #@d4
    .line 3299
    :try_start_3
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    #@d7
    move-result v13

    #@d8
    .line 3302
    :goto_1
    :try_start_4
    const-string/jumbo v3, "privateFlags"

    #@db
    const/4 v5, 0x0

    #@dc
    move-object/from16 v0, p1

    #@de
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_a

    #@e1
    move-result-object v35

    #@e2
    .line 3303
    if-eqz v35, :cond_2

    #@e4
    .line 3305
    :try_start_5
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    #@e7
    move-result v14

    #@e8
    .line 3346
    :cond_2
    :goto_2
    :try_start_6
    const-string/jumbo v3, "ft"

    #@eb
    const/4 v5, 0x0

    #@ec
    move-object/from16 v0, p1

    #@ee
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_a

    #@f1
    move-result-object v37

    #@f2
    .line 3347
    .local v37, "timeStampStr":Ljava/lang/String;
    if-eqz v37, :cond_13

    #@f4
    .line 3349
    const/16 v3, 0x10

    #@f6
    :try_start_7
    move-object/from16 v0, v37

    #@f8
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    #@fb
    move-result-wide v38

    #@fc
    .line 3361
    :cond_3
    :goto_3
    :try_start_8
    const-string/jumbo v3, "it"

    #@ff
    const/4 v5, 0x0

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_a

    #@105
    move-result-object v37

    #@106
    .line 3362
    if-eqz v37, :cond_4

    #@108
    .line 3364
    const/16 v3, 0x10

    #@10a
    :try_start_9
    move-object/from16 v0, v37

    #@10c
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6

    #@10f
    move-result-wide v20

    #@110
    .line 3368
    :cond_4
    :goto_4
    :try_start_a
    const-string/jumbo v3, "ut"

    #@113
    const/4 v5, 0x0

    #@114
    move-object/from16 v0, p1

    #@116
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    #@119
    move-result-object v37

    #@11a
    .line 3369
    if-eqz v37, :cond_5

    #@11c
    .line 3371
    const/16 v3, 0x10

    #@11e
    :try_start_b
    move-object/from16 v0, v37

    #@120
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    #@123
    move-result-wide v26

    #@124
    .line 3378
    :cond_5
    :goto_5
    if-eqz v19, :cond_14

    #@126
    :try_start_c
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@129
    move-result v11

    #@12a
    .line 3379
    .local v11, "userId":I
    :goto_6
    if-nez v33, :cond_6

    #@12c
    .line 3380
    move-object/from16 v33, v16

    #@12e
    .line 3382
    :cond_6
    if-eqz v4, :cond_7

    #@130
    .line 3383
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@133
    move-result-object v4

    #@134
    .line 3385
    :cond_7
    if-nez v29, :cond_15

    #@136
    .line 3387
    new-instance v3, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v5, "Error in package manager settings: <package> has no name at "

    #@13e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v3

    #@142
    .line 3388
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@145
    move-result-object v5

    #@146
    .line 3387
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v3

    #@14a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v3

    #@14e
    .line 3386
    const/4 v5, 0x5

    #@14f
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_a

    #@152
    move-object/from16 v2, v31

    #@154
    .line 3440
    .end local v4    # "realName":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v10    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v11    # "userId":I
    .end local v16    # "codePathStr":Ljava/lang/String;
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v25    # "installerPackageName":Ljava/lang/String;
    .end local v28    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v29    # "name":Ljava/lang/String;
    .end local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v33    # "resourcePathStr":Ljava/lang/String;
    .end local v34    # "sharedIdStr":Ljava/lang/String;
    .end local v35    # "systemStr":Ljava/lang/String;
    .end local v37    # "timeStampStr":Ljava/lang/String;
    .end local v41    # "uidError":Ljava/lang/String;
    .end local v42    # "version":Ljava/lang/String;
    .end local v43    # "volumeUuid":Ljava/lang/String;
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :goto_7
    if-eqz v2, :cond_2b

    #@156
    .line 3441
    const-string/jumbo v3, "true"

    #@159
    move-object/from16 v0, v41

    #@15b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15e
    move-result v3

    #@15f
    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    #@161
    .line 3442
    move-object/from16 v0, v25

    #@163
    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@165
    .line 3443
    move-object/from16 v0, v43

    #@167
    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@169
    .line 3444
    iput-object v7, v2, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@16b
    .line 3445
    iput-object v8, v2, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@16d
    .line 3446
    iput-object v9, v2, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@16f
    .line 3448
    const-string/jumbo v3, "enabled"

    #@172
    const/4 v5, 0x0

    #@173
    move-object/from16 v0, p1

    #@175
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@178
    move-result-object v18

    #@179
    .line 3449
    .local v18, "enabledStr":Ljava/lang/String;
    if-eqz v18, :cond_1f

    #@17b
    .line 3451
    :try_start_d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17e
    move-result v3

    #@17f
    const/4 v5, 0x0

    #@180
    const/4 v6, 0x0

    #@181
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_9

    #@184
    .line 3470
    :goto_8
    const-string/jumbo v3, "installStatus"

    #@187
    const/4 v5, 0x0

    #@188
    move-object/from16 v0, p1

    #@18a
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18d
    move-result-object v24

    #@18e
    .line 3471
    .local v24, "installStatusStr":Ljava/lang/String;
    if-eqz v24, :cond_8

    #@190
    .line 3472
    const-string/jumbo v3, "false"

    #@193
    move-object/from16 v0, v24

    #@195
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@198
    move-result v3

    #@199
    if-eqz v3, :cond_20

    #@19b
    .line 3473
    const/4 v3, 0x0

    #@19c
    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@19e
    .line 3478
    :cond_8
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1a1
    move-result v30

    #@1a2
    .line 3480
    .local v30, "outerDepth":I
    :cond_9
    :goto_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1a5
    move-result v40

    #@1a6
    .local v40, "type":I
    const/4 v3, 0x1

    #@1a7
    move/from16 v0, v40

    #@1a9
    if-eq v0, v3, :cond_2c

    #@1ab
    .line 3481
    const/4 v3, 0x3

    #@1ac
    move/from16 v0, v40

    #@1ae
    if-ne v0, v3, :cond_a

    #@1b0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1b3
    move-result v3

    #@1b4
    move/from16 v0, v30

    #@1b6
    if-le v3, v0, :cond_2c

    #@1b8
    .line 3482
    :cond_a
    const/4 v3, 0x3

    #@1b9
    move/from16 v0, v40

    #@1bb
    if-eq v0, v3, :cond_9

    #@1bd
    const/4 v3, 0x4

    #@1be
    move/from16 v0, v40

    #@1c0
    if-eq v0, v3, :cond_9

    #@1c2
    .line 3486
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c5
    move-result-object v36

    #@1c6
    .line 3488
    .local v36, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "disabled-components"

    #@1c9
    move-object/from16 v0, v36

    #@1cb
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ce
    move-result v3

    #@1cf
    if-eqz v3, :cond_21

    #@1d1
    .line 3489
    const/4 v3, 0x0

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    move-object/from16 v1, p1

    #@1d6
    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    #@1d9
    goto :goto_a

    #@1da
    .line 3290
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v18    # "enabledStr":Ljava/lang/String;
    .end local v24    # "installStatusStr":Ljava/lang/String;
    .end local v30    # "outerDepth":I
    .end local v36    # "tagName":Ljava/lang/String;
    .end local v40    # "type":I
    .restart local v4    # "realName":Ljava/lang/String;
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v10    # "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v16    # "codePathStr":Ljava/lang/String;
    .restart local v19    # "idStr":Ljava/lang/String;
    .local v25, "installerPackageName":Ljava/lang/String;
    .restart local v28    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v33    # "resourcePathStr":Ljava/lang/String;
    .restart local v34    # "sharedIdStr":Ljava/lang/String;
    .local v35, "systemStr":Ljava/lang/String;
    .restart local v41    # "uidError":Ljava/lang/String;
    .restart local v42    # "version":Ljava/lang/String;
    .local v43, "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v17

    #@1db
    .local v17, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    #@1dd
    .line 3300
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .local v25, "installerPackageName":Ljava/lang/String;
    .local v35, "systemStr":Ljava/lang/String;
    .local v43, "volumeUuid":Ljava/lang/String;
    :catch_1
    move-exception v17

    #@1de
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    #@1e0
    .line 3306
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v17

    #@1e1
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@1e3
    .line 3311
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    :try_start_e
    const-string/jumbo v3, "flags"

    #@1e6
    const/4 v5, 0x0

    #@1e7
    move-object/from16 v0, p1

    #@1e9
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_a

    #@1ec
    move-result-object v35

    #@1ed
    .line 3312
    if-eqz v35, :cond_10

    #@1ef
    .line 3314
    :try_start_f
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_3

    #@1f2
    move-result v13

    #@1f3
    .line 3317
    :goto_b
    :try_start_10
    sget v3, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    #@1f5
    and-int/2addr v3, v13

    #@1f6
    if-eqz v3, :cond_c

    #@1f8
    .line 3318
    const/4 v14, 0x1

    #@1f9
    .line 3320
    :cond_c
    sget v3, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    #@1fb
    and-int/2addr v3, v13

    #@1fc
    if-eqz v3, :cond_d

    #@1fe
    .line 3321
    or-int/lit8 v14, v14, 0x2

    #@200
    .line 3323
    :cond_d
    sget v3, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    #@202
    and-int/2addr v3, v13

    #@203
    if-eqz v3, :cond_e

    #@205
    .line 3324
    or-int/lit8 v14, v14, 0x4

    #@207
    .line 3326
    :cond_e
    sget v3, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    #@209
    and-int/2addr v3, v13

    #@20a
    if-eqz v3, :cond_f

    #@20c
    .line 3327
    or-int/lit8 v14, v14, 0x8

    #@20e
    .line 3329
    :cond_f
    sget v3, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    #@210
    .line 3330
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    #@212
    .line 3329
    or-int/2addr v3, v5

    #@213
    .line 3331
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    #@215
    .line 3329
    or-int/2addr v3, v5

    #@216
    .line 3332
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    #@218
    .line 3329
    or-int/2addr v3, v5

    #@219
    not-int v3, v3

    #@21a
    and-int/2addr v13, v3

    #@21b
    goto/16 :goto_2

    #@21d
    .line 3315
    :catch_3
    move-exception v17

    #@21e
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto :goto_b

    #@21f
    .line 3335
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    const-string/jumbo v3, "system"

    #@222
    const/4 v5, 0x0

    #@223
    move-object/from16 v0, p1

    #@225
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@228
    move-result-object v35

    #@229
    .line 3336
    if-eqz v35, :cond_12

    #@22b
    .line 3337
    const-string/jumbo v3, "true"

    #@22e
    move-object/from16 v0, v35

    #@230
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@233
    move-result v3

    #@234
    if-eqz v3, :cond_11

    #@236
    const/4 v3, 0x1

    #@237
    :goto_c
    or-int/lit8 v13, v3, 0x0

    #@239
    goto/16 :goto_2

    #@23b
    .line 3338
    :cond_11
    const/4 v3, 0x0

    #@23c
    goto :goto_c

    #@23d
    .line 3342
    :cond_12
    const/4 v13, 0x1

    #@23e
    goto/16 :goto_2

    #@240
    .line 3350
    .restart local v37    # "timeStampStr":Ljava/lang/String;
    :catch_4
    move-exception v17

    #@241
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    #@243
    .line 3353
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string/jumbo v3, "ts"

    #@246
    const/4 v5, 0x0

    #@247
    move-object/from16 v0, p1

    #@249
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a

    #@24c
    move-result-object v37

    #@24d
    .line 3354
    if-eqz v37, :cond_3

    #@24f
    .line 3356
    :try_start_11
    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5

    #@252
    move-result-wide v38

    #@253
    goto/16 :goto_3

    #@255
    .line 3357
    :catch_5
    move-exception v17

    #@256
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    #@258
    .line 3365
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v17

    #@259
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    #@25b
    .line 3372
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v17

    #@25c
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_5

    #@25e
    .line 3378
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    const/4 v11, 0x0

    #@25f
    .restart local v11    # "userId":I
    goto/16 :goto_6

    #@261
    .line 3389
    :cond_15
    if-nez v16, :cond_16

    #@263
    .line 3391
    :try_start_12
    new-instance v3, Ljava/lang/StringBuilder;

    #@265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@268
    const-string/jumbo v5, "Error in package manager settings: <package> has no codePath at "

    #@26b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v3

    #@26f
    .line 3392
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@272
    move-result-object v5

    #@273
    .line 3391
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v3

    #@277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27a
    move-result-object v3

    #@27b
    .line 3390
    const/4 v5, 0x5

    #@27c
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@27f
    move-object/from16 v2, v31

    #@281
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    #@283
    .line 3393
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_16
    if-lez v11, :cond_18

    #@285
    .line 3394
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@288
    move-result-object v3

    #@289
    new-instance v5, Ljava/io/File;

    #@28b
    move-object/from16 v0, v16

    #@28d
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@290
    .line 3395
    new-instance v6, Ljava/io/File;

    #@292
    move-object/from16 v0, v33

    #@294
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@297
    move-object/from16 v2, p0

    #@299
    .line 3394
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/pm/PackageSetting;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_a

    #@29c
    move-result-object v2

    #@29d
    .line 3401
    .end local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    if-nez v2, :cond_17

    #@29f
    .line 3402
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a4
    const-string/jumbo v5, "Failure adding uid "

    #@2a7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v3

    #@2ab
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v3

    #@2af
    .line 3403
    const-string/jumbo v5, " while parsing settings at "

    #@2b2
    .line 3402
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v3

    #@2b6
    .line 3404
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2b9
    move-result-object v5

    #@2ba
    .line 3402
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v3

    #@2be
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c1
    move-result-object v3

    #@2c2
    const/4 v5, 0x6

    #@2c3
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_8

    #@2c6
    goto/16 :goto_7

    #@2c8
    .line 3435
    :catch_8
    move-exception v17

    #@2c9
    .line 3437
    .end local v4    # "realName":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v10    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v11    # "userId":I
    .end local v16    # "codePathStr":Ljava/lang/String;
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v25    # "installerPackageName":Ljava/lang/String;
    .end local v28    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v29    # "name":Ljava/lang/String;
    .end local v33    # "resourcePathStr":Ljava/lang/String;
    .end local v34    # "sharedIdStr":Ljava/lang/String;
    .end local v35    # "systemStr":Ljava/lang/String;
    .end local v37    # "timeStampStr":Ljava/lang/String;
    .end local v41    # "uidError":Ljava/lang/String;
    .end local v42    # "version":Ljava/lang/String;
    .end local v43    # "volumeUuid":Ljava/lang/String;
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2cb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ce
    const-string/jumbo v5, "Error in package manager settings: package "

    #@2d1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d4
    move-result-object v3

    #@2d5
    move-object/from16 v0, v29

    #@2d7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v3

    #@2db
    const-string/jumbo v5, " has bad userId "

    #@2de
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v3

    #@2e2
    move-object/from16 v0, v19

    #@2e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v3

    #@2e8
    .line 3438
    const-string/jumbo v5, " at "

    #@2eb
    .line 3437
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v3

    #@2ef
    .line 3438
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2f2
    move-result-object v5

    #@2f3
    .line 3437
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v3

    #@2f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fa
    move-result-object v3

    #@2fb
    .line 3436
    const/4 v5, 0x5

    #@2fc
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2ff
    goto/16 :goto_7

    #@301
    .line 3406
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "realName":Ljava/lang/String;
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v10    # "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v11    # "userId":I
    .restart local v16    # "codePathStr":Ljava/lang/String;
    .restart local v19    # "idStr":Ljava/lang/String;
    .restart local v25    # "installerPackageName":Ljava/lang/String;
    .restart local v28    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v33    # "resourcePathStr":Ljava/lang/String;
    .restart local v34    # "sharedIdStr":Ljava/lang/String;
    .restart local v35    # "systemStr":Ljava/lang/String;
    .restart local v37    # "timeStampStr":Ljava/lang/String;
    .restart local v41    # "uidError":Ljava/lang/String;
    .restart local v42    # "version":Ljava/lang/String;
    .restart local v43    # "volumeUuid":Ljava/lang/String;
    :cond_17
    :try_start_14
    move-wide/from16 v0, v38

    #@303
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    #@306
    .line 3407
    move-wide/from16 v0, v20

    #@308
    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@30a
    .line 3408
    move-wide/from16 v0, v26

    #@30c
    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_8

    #@30e
    goto/16 :goto_7

    #@310
    .line 3410
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_18
    if-eqz v34, :cond_1b

    #@312
    .line 3411
    if-eqz v34, :cond_19

    #@314
    :try_start_15
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@317
    move-result v11

    #@318
    .line 3412
    :goto_e
    if-lez v11, :cond_1a

    #@31a
    .line 3413
    new-instance v2, Lcom/android/server/pm/PendingPackage;

    #@31c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@31f
    move-result-object v3

    #@320
    new-instance v5, Ljava/io/File;

    #@322
    move-object/from16 v0, v16

    #@324
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@327
    .line 3414
    new-instance v6, Ljava/io/File;

    #@329
    move-object/from16 v0, v33

    #@32b
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@32e
    .line 3413
    invoke-direct/range {v2 .. v14}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_a

    #@331
    .line 3417
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :try_start_16
    move-wide/from16 v0, v38

    #@333
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    #@336
    .line 3418
    .end local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    move-wide/from16 v0, v20

    #@338
    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@33a
    .line 3419
    move-wide/from16 v0, v26

    #@33c
    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@33e
    .line 3420
    move-object/from16 v0, p0

    #@340
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@342
    move-object v0, v2

    #@343
    check-cast v0, Lcom/android/server/pm/PendingPackage;

    #@345
    move-object v3, v0

    #@346
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_8

    #@349
    goto/16 :goto_7

    #@34b
    .line 3411
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_19
    const/4 v11, 0x0

    #@34c
    goto :goto_e

    #@34d
    .line 3426
    :cond_1a
    :try_start_17
    new-instance v3, Ljava/lang/StringBuilder;

    #@34f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@352
    const-string/jumbo v5, "Error in package manager settings: package "

    #@355
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@358
    move-result-object v3

    #@359
    move-object/from16 v0, v29

    #@35b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v3

    #@35f
    .line 3427
    const-string/jumbo v5, " has bad sharedId "

    #@362
    .line 3426
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v3

    #@366
    move-object/from16 v0, v34

    #@368
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v3

    #@36c
    .line 3427
    const-string/jumbo v5, " at "

    #@36f
    .line 3426
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@372
    move-result-object v3

    #@373
    .line 3428
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@376
    move-result-object v5

    #@377
    .line 3426
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v3

    #@37b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37e
    move-result-object v3

    #@37f
    .line 3425
    const/4 v5, 0x5

    #@380
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@383
    move-object/from16 v2, v31

    #@385
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    #@387
    .line 3432
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@389
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38c
    const-string/jumbo v5, "Error in package manager settings: package "

    #@38f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@392
    move-result-object v3

    #@393
    move-object/from16 v0, v29

    #@395
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v3

    #@399
    const-string/jumbo v5, " has bad userId "

    #@39c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39f
    move-result-object v3

    #@3a0
    move-object/from16 v0, v19

    #@3a2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a5
    move-result-object v3

    #@3a6
    .line 3433
    const-string/jumbo v5, " at "

    #@3a9
    .line 3432
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v3

    #@3ad
    .line 3433
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3b0
    move-result-object v5

    #@3b1
    .line 3432
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b4
    move-result-object v3

    #@3b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b8
    move-result-object v3

    #@3b9
    .line 3431
    const/4 v5, 0x5

    #@3ba
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_a

    #@3bd
    move-object/from16 v2, v31

    #@3bf
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    #@3c1
    .line 3452
    .end local v4    # "realName":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v9    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v10    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v11    # "userId":I
    .end local v16    # "codePathStr":Ljava/lang/String;
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v25    # "installerPackageName":Ljava/lang/String;
    .end local v28    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v29    # "name":Ljava/lang/String;
    .end local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v33    # "resourcePathStr":Ljava/lang/String;
    .end local v34    # "sharedIdStr":Ljava/lang/String;
    .end local v35    # "systemStr":Ljava/lang/String;
    .end local v37    # "timeStampStr":Ljava/lang/String;
    .end local v41    # "uidError":Ljava/lang/String;
    .end local v42    # "version":Ljava/lang/String;
    .end local v43    # "volumeUuid":Ljava/lang/String;
    .restart local v18    # "enabledStr":Ljava/lang/String;
    :catch_9
    move-exception v17

    #@3c2
    .line 3453
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    #@3c5
    move-object/from16 v0, v18

    #@3c7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3ca
    move-result v3

    #@3cb
    if-eqz v3, :cond_1c

    #@3cd
    .line 3454
    const/4 v3, 0x1

    #@3ce
    const/4 v5, 0x0

    #@3cf
    const/4 v6, 0x0

    #@3d0
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@3d3
    goto/16 :goto_8

    #@3d5
    .line 3455
    :cond_1c
    const-string/jumbo v3, "false"

    #@3d8
    move-object/from16 v0, v18

    #@3da
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3dd
    move-result v3

    #@3de
    if-eqz v3, :cond_1d

    #@3e0
    .line 3456
    const/4 v3, 0x2

    #@3e1
    const/4 v5, 0x0

    #@3e2
    const/4 v6, 0x0

    #@3e3
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@3e6
    goto/16 :goto_8

    #@3e8
    .line 3457
    :cond_1d
    const-string/jumbo v3, "default"

    #@3eb
    move-object/from16 v0, v18

    #@3ed
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f0
    move-result v3

    #@3f1
    if-eqz v3, :cond_1e

    #@3f3
    .line 3458
    const/4 v3, 0x0

    #@3f4
    const/4 v5, 0x0

    #@3f5
    const/4 v6, 0x0

    #@3f6
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@3f9
    goto/16 :goto_8

    #@3fb
    .line 3461
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@3fd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@400
    const-string/jumbo v5, "Error in package manager settings: package "

    #@403
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@406
    move-result-object v3

    #@407
    move-object/from16 v0, v29

    #@409
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40c
    move-result-object v3

    #@40d
    .line 3462
    const-string/jumbo v5, " has bad enabled value: "

    #@410
    .line 3461
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@413
    move-result-object v3

    #@414
    move-object/from16 v0, v19

    #@416
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@419
    move-result-object v3

    #@41a
    .line 3462
    const-string/jumbo v5, " at "

    #@41d
    .line 3461
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v3

    #@421
    .line 3463
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@424
    move-result-object v5

    #@425
    .line 3461
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@428
    move-result-object v3

    #@429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42c
    move-result-object v3

    #@42d
    .line 3460
    const/4 v5, 0x5

    #@42e
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@431
    goto/16 :goto_8

    #@433
    .line 3467
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_1f
    const/4 v3, 0x0

    #@434
    const/4 v5, 0x0

    #@435
    const/4 v6, 0x0

    #@436
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@439
    goto/16 :goto_8

    #@43b
    .line 3475
    .restart local v24    # "installStatusStr":Ljava/lang/String;
    :cond_20
    const/4 v3, 0x1

    #@43c
    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@43e
    goto/16 :goto_9

    #@440
    .line 3490
    .restart local v30    # "outerDepth":I
    .restart local v36    # "tagName":Ljava/lang/String;
    .restart local v40    # "type":I
    :cond_21
    const-string/jumbo v3, "enabled-components"

    #@443
    move-object/from16 v0, v36

    #@445
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@448
    move-result v3

    #@449
    if-eqz v3, :cond_22

    #@44b
    .line 3491
    const/4 v3, 0x0

    #@44c
    move-object/from16 v0, p0

    #@44e
    move-object/from16 v1, p1

    #@450
    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    #@453
    goto/16 :goto_a

    #@455
    .line 3492
    :cond_22
    const-string/jumbo v3, "sigs"

    #@458
    move-object/from16 v0, v36

    #@45a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45d
    move-result v3

    #@45e
    if-eqz v3, :cond_23

    #@460
    .line 3493
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@462
    move-object/from16 v0, p0

    #@464
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@466
    move-object/from16 v0, p1

    #@468
    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    #@46b
    goto/16 :goto_a

    #@46d
    .line 3494
    :cond_23
    const-string/jumbo v3, "perms"

    #@470
    move-object/from16 v0, v36

    #@472
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@475
    move-result v3

    #@476
    if-eqz v3, :cond_24

    #@478
    .line 3496
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@47b
    move-result-object v3

    #@47c
    .line 3495
    move-object/from16 v0, p0

    #@47e
    move-object/from16 v1, p1

    #@480
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    #@483
    .line 3497
    const/4 v3, 0x1

    #@484
    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@486
    goto/16 :goto_a

    #@488
    .line 3498
    :cond_24
    const-string/jumbo v3, "proper-signing-keyset"

    #@48b
    move-object/from16 v0, v36

    #@48d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@490
    move-result v3

    #@491
    if-eqz v3, :cond_26

    #@493
    .line 3499
    const-string/jumbo v3, "identifier"

    #@496
    const/4 v5, 0x0

    #@497
    move-object/from16 v0, p1

    #@499
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@49c
    move-result-object v3

    #@49d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4a0
    move-result-wide v22

    #@4a1
    .line 3500
    .local v22, "id":J
    move-object/from16 v0, p0

    #@4a3
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@4a5
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4a8
    move-result-object v5

    #@4a9
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4ac
    move-result-object v32

    #@4ad
    check-cast v32, Ljava/lang/Integer;

    #@4af
    .line 3501
    .local v32, "refCt":Ljava/lang/Integer;
    if-eqz v32, :cond_25

    #@4b1
    .line 3502
    move-object/from16 v0, p0

    #@4b3
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@4b5
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4b8
    move-result-object v5

    #@4b9
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@4bc
    move-result v6

    #@4bd
    add-int/lit8 v6, v6, 0x1

    #@4bf
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c2
    move-result-object v6

    #@4c3
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c6
    .line 3506
    :goto_f
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@4c8
    move-wide/from16 v0, v22

    #@4ca
    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    #@4cd
    goto/16 :goto_a

    #@4cf
    .line 3504
    :cond_25
    move-object/from16 v0, p0

    #@4d1
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@4d3
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d6
    move-result-object v5

    #@4d7
    const/4 v6, 0x1

    #@4d8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4db
    move-result-object v6

    #@4dc
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4df
    goto :goto_f

    #@4e0
    .line 3507
    .end local v22    # "id":J
    .end local v32    # "refCt":Ljava/lang/Integer;
    :cond_26
    const-string/jumbo v3, "signing-keyset"

    #@4e3
    move-object/from16 v0, v36

    #@4e5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e8
    move-result v3

    #@4e9
    if-nez v3, :cond_9

    #@4eb
    .line 3509
    const-string/jumbo v3, "upgrade-keyset"

    #@4ee
    move-object/from16 v0, v36

    #@4f0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f3
    move-result v3

    #@4f4
    if-eqz v3, :cond_27

    #@4f6
    .line 3510
    const-string/jumbo v3, "identifier"

    #@4f9
    const/4 v5, 0x0

    #@4fa
    move-object/from16 v0, p1

    #@4fc
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4ff
    move-result-object v3

    #@500
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@503
    move-result-wide v22

    #@504
    .line 3511
    .restart local v22    # "id":J
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@506
    move-wide/from16 v0, v22

    #@508
    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    #@50b
    goto/16 :goto_a

    #@50d
    .line 3512
    .end local v22    # "id":J
    :cond_27
    const-string/jumbo v3, "defined-keyset"

    #@510
    move-object/from16 v0, v36

    #@512
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@515
    move-result v3

    #@516
    if-eqz v3, :cond_29

    #@518
    .line 3513
    const-string/jumbo v3, "identifier"

    #@51b
    const/4 v5, 0x0

    #@51c
    move-object/from16 v0, p1

    #@51e
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@521
    move-result-object v3

    #@522
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@525
    move-result-wide v22

    #@526
    .line 3514
    .restart local v22    # "id":J
    const-string/jumbo v3, "alias"

    #@529
    const/4 v5, 0x0

    #@52a
    move-object/from16 v0, p1

    #@52c
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52f
    move-result-object v15

    #@530
    .line 3515
    .local v15, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@532
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@534
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@537
    move-result-object v5

    #@538
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@53b
    move-result-object v32

    #@53c
    check-cast v32, Ljava/lang/Integer;

    #@53e
    .line 3516
    .restart local v32    # "refCt":Ljava/lang/Integer;
    if-eqz v32, :cond_28

    #@540
    .line 3517
    move-object/from16 v0, p0

    #@542
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@544
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@547
    move-result-object v5

    #@548
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    #@54b
    move-result v6

    #@54c
    add-int/lit8 v6, v6, 0x1

    #@54e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@551
    move-result-object v6

    #@552
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@555
    .line 3521
    :goto_10
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@557
    move-wide/from16 v0, v22

    #@559
    invoke-virtual {v3, v0, v1, v15}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    #@55c
    goto/16 :goto_a

    #@55e
    .line 3519
    :cond_28
    move-object/from16 v0, p0

    #@560
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@562
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@565
    move-result-object v5

    #@566
    const/4 v6, 0x1

    #@567
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56a
    move-result-object v6

    #@56b
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56e
    goto :goto_10

    #@56f
    .line 3522
    .end local v15    # "alias":Ljava/lang/String;
    .end local v22    # "id":J
    .end local v32    # "refCt":Ljava/lang/Integer;
    :cond_29
    const-string/jumbo v3, "domain-verification"

    #@572
    move-object/from16 v0, v36

    #@574
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@577
    move-result v3

    #@578
    if-eqz v3, :cond_2a

    #@57a
    .line 3523
    move-object/from16 v0, p0

    #@57c
    move-object/from16 v1, p1

    #@57e
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    #@581
    goto/16 :goto_a

    #@583
    .line 3526
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@585
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@588
    const-string/jumbo v5, "Unknown element under <package>: "

    #@58b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58e
    move-result-object v3

    #@58f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@592
    move-result-object v5

    #@593
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@596
    move-result-object v3

    #@597
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59a
    move-result-object v3

    #@59b
    .line 3525
    const/4 v5, 0x5

    #@59c
    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@59f
    .line 3527
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5a2
    goto/16 :goto_a

    #@5a4
    .line 3531
    .end local v18    # "enabledStr":Ljava/lang/String;
    .end local v24    # "installStatusStr":Ljava/lang/String;
    .end local v30    # "outerDepth":I
    .end local v36    # "tagName":Ljava/lang/String;
    .end local v40    # "type":I
    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5a7
    .line 3242
    :cond_2c
    return-void

    #@5a8
    .line 3435
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v31    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_a
    move-exception v17

    #@5a9
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v2, v31

    #@5ab
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_d
.end method

.method private readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 3095
    .local p1, "out":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v3

    #@4
    .line 3097
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v8

    #@8
    .local v8, "type":I
    const/4 v9, 0x1

    #@9
    if-eq v8, v9, :cond_6

    #@b
    .line 3098
    const/4 v9, 0x3

    #@c
    if-ne v8, v9, :cond_1

    #@e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v9

    #@12
    if-le v9, v3, :cond_6

    #@14
    .line 3099
    :cond_1
    const/4 v9, 0x3

    #@15
    if-eq v8, v9, :cond_0

    #@17
    const/4 v9, 0x4

    #@18
    if-eq v8, v9, :cond_0

    #@1a
    .line 3103
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 3104
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    #@21
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_5

    #@27
    .line 3105
    const-string/jumbo v9, "name"

    #@2a
    const/4 v10, 0x0

    #@2b
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 3106
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v9, "package"

    #@32
    const/4 v10, 0x0

    #@33
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 3107
    .local v6, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v9, "type"

    #@3a
    const/4 v10, 0x0

    #@3b
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 3108
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@41
    if-eqz v6, :cond_4

    #@43
    .line 3109
    const-string/jumbo v9, "dynamic"

    #@46
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    .line 3110
    .local v1, "dynamic":Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    #@4c
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    .line 3111
    if-eqz v1, :cond_3

    #@52
    const/4 v9, 0x2

    #@53
    .line 3110
    :goto_1
    invoke-direct {v0, v10, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@56
    .line 3112
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    const-string/jumbo v9, "protection"

    #@59
    const/4 v10, 0x0

    #@5a
    .line 3113
    const/4 v11, 0x0

    #@5b
    .line 3112
    invoke-direct {p0, p2, v10, v9, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    #@5e
    move-result v9

    #@5f
    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@61
    .line 3114
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@63
    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    #@66
    move-result v9

    #@67
    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@69
    .line 3115
    if-eqz v1, :cond_2

    #@6b
    .line 3116
    new-instance v4, Landroid/content/pm/PermissionInfo;

    #@6d
    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    #@70
    .line 3117
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@76
    .line 3118
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@7c
    .line 3119
    const-string/jumbo v9, "icon"

    #@7f
    const/4 v10, 0x0

    #@80
    const/4 v11, 0x0

    #@81
    invoke-direct {p0, p2, v10, v9, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    #@84
    move-result v9

    #@85
    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    #@87
    .line 3120
    const-string/jumbo v9, "label"

    #@8a
    const/4 v10, 0x0

    #@8b
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v9

    #@8f
    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@91
    .line 3121
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@93
    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@95
    .line 3122
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@97
    .line 3124
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@99
    invoke-virtual {p1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    .line 3135
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "dynamic":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 3111
    .restart local v1    # "dynamic":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ptype":Ljava/lang/String;
    .restart local v6    # "sourcePackage":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    #@a2
    goto :goto_1

    #@a3
    .line 3127
    .end local v1    # "dynamic":Z
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v10, "Error in package manager settings: permissions has no name at "

    #@ab
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    .line 3128
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@b2
    move-result-object v10

    #@b3
    .line 3127
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v9

    #@b7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v9

    #@bb
    .line 3126
    const/4 v10, 0x5

    #@bc
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@bf
    goto :goto_2

    #@c0
    .line 3132
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v10, "Unknown element reading permissions: "

    #@c8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v9

    #@d4
    const-string/jumbo v10, " at "

    #@d7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v9

    #@db
    .line 3133
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@de
    move-result-object v10

    #@df
    .line 3132
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v9

    #@e3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v9

    #@e7
    .line 3131
    const/4 v10, 0x5

    #@e8
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@eb
    goto :goto_2

    #@ec
    .line 3094
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    .line 1277
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1279
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v3

    #@9
    .local v3, "type":I
    const/4 v4, 0x1

    #@a
    if-eq v3, v4, :cond_3

    #@c
    .line 1280
    if-ne v3, v6, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v4

    #@12
    if-le v4, v0, :cond_3

    #@14
    .line 1281
    :cond_1
    if-eq v3, v6, :cond_0

    #@16
    const/4 v4, 0x4

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 1284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1285
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 1286
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    #@28
    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 1287
    .local v1, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@32
    goto :goto_0

    #@33
    .line 1290
    .end local v1    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Unknown element under <persistent-preferred-activities>: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 1291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 1290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 1289
    const/4 v5, 0x5

    #@4c
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@4f
    .line 1292
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@52
    goto :goto_0

    #@53
    .line 1276
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 1328
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 1330
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v3

    #@9
    .local v3, "type":I
    const/4 v4, 0x1

    #@a
    if-eq v3, v4, :cond_3

    #@c
    .line 1331
    if-ne v3, v7, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v4

    #@12
    if-le v4, v1, :cond_3

    #@14
    .line 1332
    :cond_1
    if-eq v3, v7, :cond_0

    #@16
    const/4 v4, 0x4

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 1335
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1336
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "domain-verification"

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 1337
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@28
    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 1342
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    goto :goto_0

    #@35
    .line 1344
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_2
    const-string/jumbo v4, "PackageSettings"

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "Unknown element: "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 1345
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@52
    goto :goto_0

    #@53
    .line 1327
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3592
    const/4 v2, 0x0

    #@1
    .line 3593
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 3594
    .local v1, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    #@3
    .line 3595
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    #@4
    .line 3596
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    #@5
    .line 3598
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    :try_start_0
    const-string/jumbo v10, "name"

    #@8
    const/4 v11, 0x0

    #@9
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 3599
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v10, "userId"

    #@10
    const/4 v11, 0x0

    #@11
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 3600
    .local v1, "idStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v9

    #@1b
    .line 3601
    .local v9, "userId":I
    :goto_0
    const-string/jumbo v10, "true"

    #@1e
    const-string/jumbo v11, "system"

    #@21
    const/4 v12, 0x0

    #@22
    invoke-interface {p1, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v11

    #@26
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_0

    #@2c
    .line 3602
    const/4 v4, 0x1

    #@2d
    .line 3604
    :cond_0
    if-nez v2, :cond_5

    #@2f
    .line 3606
    new-instance v10, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v11, "Error in package manager settings: <shared-user> has no name at "

    #@37
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v10

    #@3b
    .line 3607
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3e
    move-result-object v11

    #@3f
    .line 3606
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    .line 3605
    const/4 v11, 0x5

    #@48
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 3627
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    :cond_1
    :goto_1
    if-eqz v6, :cond_9

    #@4d
    .line 3628
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@50
    move-result v3

    #@51
    .line 3630
    .local v3, "outerDepth":I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@54
    move-result v8

    #@55
    .local v8, "type":I
    const/4 v10, 0x1

    #@56
    if-eq v8, v10, :cond_a

    #@58
    .line 3631
    const/4 v10, 0x3

    #@59
    if-ne v8, v10, :cond_3

    #@5b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5e
    move-result v10

    #@5f
    if-le v10, v3, :cond_a

    #@61
    .line 3632
    :cond_3
    const/4 v10, 0x3

    #@62
    if-eq v8, v10, :cond_2

    #@64
    const/4 v10, 0x4

    #@65
    if-eq v8, v10, :cond_2

    #@67
    .line 3636
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    .line 3637
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "sigs"

    #@6e
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v10

    #@72
    if-eqz v10, :cond_7

    #@74
    .line 3638
    iget-object v10, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@76
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v10, p1, v11}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    #@7b
    goto :goto_2

    #@7c
    .line 3600
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v1    # "idStr":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    const/4 v9, 0x0

    #@7d
    .restart local v9    # "userId":I
    goto :goto_0

    #@7e
    .line 3608
    :cond_5
    if-nez v9, :cond_6

    #@80
    .line 3610
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v11, "Error in package manager settings: shared-user "

    #@88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    .line 3611
    const-string/jumbo v11, " has bad userId "

    #@93
    .line 3610
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v10

    #@97
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    .line 3611
    const-string/jumbo v11, " at "

    #@9e
    .line 3610
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v10

    #@a2
    .line 3612
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    .line 3610
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v10

    #@aa
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v10

    #@ae
    .line 3609
    const/4 v11, 0x5

    #@af
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@b2
    goto :goto_1

    #@b3
    .line 3621
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    :catch_0
    move-exception v0

    #@b4
    .line 3623
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v11, "Error in package manager settings: package "

    #@bc
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v10

    #@c0
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v10

    #@c4
    const-string/jumbo v11, " has bad userId "

    #@c7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v10

    #@cb
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v10

    #@cf
    .line 3624
    const-string/jumbo v11, " at "

    #@d2
    .line 3623
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v10

    #@d6
    .line 3624
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@d9
    move-result-object v11

    #@da
    .line 3623
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v10

    #@de
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v10

    #@e2
    .line 3622
    const/4 v11, 0x5

    #@e3
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@e6
    goto/16 :goto_1

    #@e8
    .line 3614
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "idStr":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .restart local v9    # "userId":I
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    invoke-virtual {p0, v10, v9, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    #@ef
    move-result-object v6

    #@f0
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    if-nez v6, :cond_1

    #@f2
    .line 3617
    new-instance v10, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v11, "Occurred while parsing settings at "

    #@fa
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v10

    #@fe
    .line 3618
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@101
    move-result-object v11

    #@102
    .line 3617
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v10

    #@106
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v10

    #@10a
    const/4 v11, 0x6

    #@10b
    .line 3616
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@10e
    goto/16 :goto_1

    #@110
    .line 3639
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_7
    const-string/jumbo v10, "perms"

    #@113
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@116
    move-result v10

    #@117
    if-eqz v10, :cond_8

    #@119
    .line 3640
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@11c
    move-result-object v10

    #@11d
    invoke-virtual {p0, p1, v10}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    #@120
    goto/16 :goto_2

    #@122
    .line 3643
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v11, "Unknown element under <shared-user>: "

    #@12a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v10

    #@12e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@131
    move-result-object v11

    #@132
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v10

    #@136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v10

    #@13a
    .line 3642
    const/4 v11, 0x5

    #@13b
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@13e
    .line 3644
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@141
    goto/16 :goto_2

    #@143
    .line 3648
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@146
    .line 3591
    :cond_a
    return-void
.end method

.method private removeUserIdLPw(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 995
    const/16 v2, 0x2710

    #@2
    if-lt p1, v2, :cond_1

    #@4
    .line 996
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 997
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@c
    .line 998
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 1002
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    :goto_0
    add-int/lit8 v2, p1, 0x1

    #@16
    invoke-direct {p0, v2}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    #@19
    .line 994
    return-void

    #@1a
    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    #@1f
    goto :goto_0
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newp"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 942
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@a
    .line 943
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 944
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    #@13
    .line 945
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@15
    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    #@18
    .line 950
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 940
    return-void

    #@1e
    .line 947
    :cond_1
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@20
    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    #@23
    goto :goto_0
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1006
    const/16 v2, 0x2710

    #@2
    if-lt p1, v2, :cond_1

    #@4
    .line 1007
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 1008
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@c
    .line 1009
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 1005
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1011
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@19
    goto :goto_0
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3716
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 3717
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@6
    .line 3715
    :cond_0
    return-void
.end method


# virtual methods
.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/pm/PackageSetting;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "vc"    # I
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I

    #@0
    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 475
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    #@a
    .line 476
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@c
    move/from16 v0, p9

    #@e
    if-ne v2, v0, :cond_0

    #@10
    .line 477
    return-object v1

    #@11
    .line 480
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Adding duplicate package, keeping first: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 479
    const/4 v3, 0x6

    #@26
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@29
    .line 481
    const/4 v2, 0x0

    #@2a
    return-object v2

    #@2b
    .line 483
    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    #@2d
    .end local v1    # "p":Lcom/android/server/pm/PackageSetting;
    move-object v2, p1

    #@2e
    move-object v3, p2

    #@2f
    move-object/from16 v4, p3

    #@31
    move-object/from16 v5, p4

    #@33
    move-object/from16 v6, p5

    #@35
    move-object/from16 v7, p6

    #@37
    move-object/from16 v8, p7

    #@39
    move-object/from16 v9, p8

    #@3b
    move/from16 v10, p10

    #@3d
    move/from16 v11, p11

    #@3f
    move/from16 v12, p12

    #@41
    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@44
    .line 486
    .restart local v1    # "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p9

    #@46
    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@48
    .line 487
    move/from16 v0, p9

    #@4a
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_2

    #@50
    .line 488
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 489
    return-object v1

    #@56
    .line 491
    :cond_2
    const/4 v2, 0x0

    #@57
    return-object v2
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    #@0
    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2482
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 2480
    :cond_0
    return-void
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 495
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    #@9
    .line 496
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_1

    #@b
    .line 497
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@d
    if-ne v1, p2, :cond_0

    #@f
    .line 498
    return-object v0

    #@10
    .line 501
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Adding duplicate shared user, keeping first: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 500
    const/4 v2, 0x6

    #@25
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@28
    .line 502
    return-object v3

    #@29
    .line 504
    :cond_1
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    #@2b
    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    #@2e
    .line 505
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@30
    .line 506
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 507
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 508
    return-object v0

    #@3c
    .line 510
    :cond_2
    return-object v3
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 23
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2762
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v17

    #@a
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v13

    #@e
    .local v13, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v17

    #@12
    if-eqz v17, :cond_1

    #@14
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v12

    #@18
    check-cast v12, Lcom/android/server/pm/PackageSetting;

    #@1a
    .line 2763
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    iget v0, v12, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@1c
    move/from16 v17, v0

    #@1e
    and-int/lit8 v17, v17, 0x1

    #@20
    if-eqz v17, :cond_0

    #@22
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@24
    move-object/from16 v17, v0

    #@26
    if-eqz v17, :cond_0

    #@28
    .line 2764
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2a
    move-object/from16 v17, v0

    #@2c
    move-object/from16 v0, v17

    #@2e
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@30
    move-object/from16 v17, v0

    #@32
    if-eqz v17, :cond_0

    #@34
    .line 2766
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@36
    move-object/from16 v17, v0

    #@38
    .line 2765
    move-object/from16 v0, v17

    #@3a
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@3c
    .line 2767
    .local v9, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    #@3d
    .local v8, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v17

    #@41
    move/from16 v0, v17

    #@43
    if-ge v8, v0, :cond_0

    #@45
    .line 2768
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@4b
    .line 2769
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v17, Landroid/content/ComponentName;

    #@4d
    .line 2770
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@4f
    move-object/from16 v18, v0

    #@51
    iget-object v0, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@53
    move-object/from16 v19, v0

    #@55
    move-object/from16 v0, v19

    #@57
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@59
    move-object/from16 v19, v0

    #@5b
    .line 2769
    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    move-object/from16 v0, p0

    #@60
    move-object/from16 v1, p1

    #@62
    move-object/from16 v2, v17

    #@64
    move/from16 v3, p2

    #@66
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    #@69
    .line 2767
    add-int/lit8 v8, v8, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 2776
    .end local v4    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v8    # "i":I
    .end local v9    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    new-instance v11, Ljava/io/File;

    #@6e
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@71
    move-result-object v17

    #@72
    const-string/jumbo v18, "etc/preferred-apps"

    #@75
    move-object/from16 v0, v17

    #@77
    move-object/from16 v1, v18

    #@79
    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7c
    .line 2777
    .local v11, "preferredDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@7f
    move-result v17

    #@80
    if-eqz v17, :cond_2

    #@82
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    #@85
    move-result v17

    #@86
    if-eqz v17, :cond_2

    #@88
    .line 2780
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    #@8b
    move-result v17

    #@8c
    if-nez v17, :cond_3

    #@8e
    .line 2781
    const-string/jumbo v17, "PackageSettings"

    #@91
    new-instance v18, Ljava/lang/StringBuilder;

    #@93
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v19, "Directory "

    #@99
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v18

    #@9d
    move-object/from16 v0, v18

    #@9f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v18

    #@a3
    const-string/jumbo v19, " cannot be read"

    #@a6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v18

    #@aa
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v18

    #@ae
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 2782
    return-void

    #@b2
    .line 2778
    :cond_2
    return-void

    #@b3
    .line 2786
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@b6
    move-result-object v18

    #@b7
    const/16 v17, 0x0

    #@b9
    move-object/from16 v0, v18

    #@bb
    array-length v0, v0

    #@bc
    move/from16 v19, v0

    #@be
    :goto_1
    move/from16 v0, v17

    #@c0
    move/from16 v1, v19

    #@c2
    if-ge v0, v1, :cond_c

    #@c4
    aget-object v7, v18, v17

    #@c6
    .line 2787
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@c9
    move-result-object v20

    #@ca
    const-string/jumbo v21, ".xml"

    #@cd
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@d0
    move-result v20

    #@d1
    if-nez v20, :cond_5

    #@d3
    .line 2788
    const-string/jumbo v20, "PackageSettings"

    #@d6
    new-instance v21, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v22, "Non-xml file "

    #@de
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v21

    #@e2
    move-object/from16 v0, v21

    #@e4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v21

    #@e8
    const-string/jumbo v22, " in "

    #@eb
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v21

    #@ef
    move-object/from16 v0, v21

    #@f1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v21

    #@f5
    const-string/jumbo v22, " directory, ignoring"

    #@f8
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v21

    #@fc
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v21

    #@100
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@103
    .line 2786
    :cond_4
    :goto_2
    add-int/lit8 v17, v17, 0x1

    #@105
    goto :goto_1

    #@106
    .line 2791
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    #@109
    move-result v20

    #@10a
    if-nez v20, :cond_6

    #@10c
    .line 2792
    const-string/jumbo v20, "PackageSettings"

    #@10f
    new-instance v21, Ljava/lang/StringBuilder;

    #@111
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v22, "Preferred apps file "

    #@117
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v21

    #@11b
    move-object/from16 v0, v21

    #@11d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v21

    #@121
    const-string/jumbo v22, " cannot be read"

    #@124
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v21

    #@128
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v21

    #@12c
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    goto :goto_2

    #@130
    .line 2797
    :cond_6
    const/4 v14, 0x0

    #@131
    .line 2799
    .local v14, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    #@133
    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@136
    .line 2800
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v15, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@139
    move-result-object v10

    #@13a
    .line 2801
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    #@13c
    move-object/from16 v0, v20

    #@13e
    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@141
    .line 2804
    :cond_7
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@144
    move-result v16

    #@145
    .local v16, "type":I
    const/16 v20, 0x2

    #@147
    move/from16 v0, v16

    #@149
    move/from16 v1, v20

    #@14b
    if-eq v0, v1, :cond_8

    #@14d
    .line 2805
    const/16 v20, 0x1

    #@14f
    move/from16 v0, v16

    #@151
    move/from16 v1, v20

    #@153
    if-ne v0, v1, :cond_7

    #@155
    .line 2809
    :cond_8
    const/16 v20, 0x2

    #@157
    move/from16 v0, v16

    #@159
    move/from16 v1, v20

    #@15b
    if-eq v0, v1, :cond_9

    #@15d
    .line 2810
    const-string/jumbo v20, "PackageSettings"

    #@160
    new-instance v21, Ljava/lang/StringBuilder;

    #@162
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v22, "Preferred apps file "

    #@168
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v21

    #@16c
    move-object/from16 v0, v21

    #@16e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v21

    #@172
    const-string/jumbo v22, " does not have start tag"

    #@175
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v21

    #@179
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v21

    #@17d
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@180
    .line 2824
    if-eqz v15, :cond_4

    #@182
    .line 2826
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@185
    goto/16 :goto_2

    #@187
    .line 2827
    :catch_0
    move-exception v5

    #@188
    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@18a
    .line 2813
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_3
    const-string/jumbo v20, "preferred-activities"

    #@18d
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@190
    move-result-object v21

    #@191
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@194
    move-result v20

    #@195
    if-nez v20, :cond_a

    #@197
    .line 2814
    const-string/jumbo v20, "PackageSettings"

    #@19a
    new-instance v21, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v22, "Preferred apps file "

    #@1a2
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v21

    #@1a6
    move-object/from16 v0, v21

    #@1a8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v21

    #@1ac
    .line 2815
    const-string/jumbo v22, " does not start with \'preferred-activities\'"

    #@1af
    .line 2814
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v21

    #@1b3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v21

    #@1b7
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1ba
    .line 2824
    if-eqz v15, :cond_4

    #@1bc
    .line 2826
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@1bf
    goto/16 :goto_2

    #@1c1
    .line 2827
    :catch_1
    move-exception v5

    #@1c2
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@1c4
    .line 2818
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    #@1c6
    move-object/from16 v1, p1

    #@1c8
    move/from16 v2, p2

    #@1ca
    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1cd
    .line 2824
    if-eqz v15, :cond_4

    #@1cf
    .line 2826
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@1d2
    goto/16 :goto_2

    #@1d4
    .line 2827
    :catch_2
    move-exception v5

    #@1d5
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@1d7
    .line 2821
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "str":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    #@1d8
    .line 2822
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string/jumbo v20, "PackageSettings"

    #@1db
    new-instance v21, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v22, "Error reading apps file "

    #@1e3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v21

    #@1e7
    move-object/from16 v0, v21

    #@1e9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v21

    #@1ed
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v21

    #@1f1
    move-object/from16 v0, v20

    #@1f3
    move-object/from16 v1, v21

    #@1f5
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1f8
    .line 2824
    if-eqz v14, :cond_4

    #@1fa
    .line 2826
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@1fd
    goto/16 :goto_2

    #@1ff
    .line 2827
    :catch_4
    move-exception v5

    #@200
    goto/16 :goto_2

    #@202
    .line 2819
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    #@203
    .line 2820
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_9
    const-string/jumbo v20, "PackageSettings"

    #@206
    new-instance v21, Ljava/lang/StringBuilder;

    #@208
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@20b
    const-string/jumbo v22, "Error reading apps file "

    #@20e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v21

    #@212
    move-object/from16 v0, v21

    #@214
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v21

    #@218
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21b
    move-result-object v21

    #@21c
    move-object/from16 v0, v20

    #@21e
    move-object/from16 v1, v21

    #@220
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@223
    .line 2824
    if-eqz v14, :cond_4

    #@225
    .line 2826
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@228
    goto/16 :goto_2

    #@22a
    .line 2827
    :catch_6
    move-exception v5

    #@22b
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@22d
    .line 2823
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    #@22e
    .line 2824
    :goto_5
    if-eqz v14, :cond_b

    #@230
    .line 2826
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    #@233
    .line 2823
    :cond_b
    :goto_6
    throw v17

    #@234
    .line 2827
    :catch_7
    move-exception v5

    #@235
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    #@236
    .line 2760
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    :cond_c
    return-void

    #@237
    .line 2823
    .restart local v7    # "f":Ljava/io/File;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    #@238
    move-object v14, v15

    #@239
    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v14, "str":Ljava/io/FileInputStream;
    goto :goto_5

    #@23a
    .line 2819
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    #@23b
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v14, v15

    #@23c
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    goto :goto_4

    #@23d
    .line 2821
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    #@23e
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v14, v15

    #@23f
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 1062
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 1063
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    #@b
    .line 1067
    return-object v3

    #@c
    .line 1069
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@f
    move-result-object v0

    #@10
    .line 1070
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v0, :cond_1

    #@12
    .line 1071
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@14
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-direct {v0, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@17
    .line 1072
    .restart local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@1a
    .line 1085
    :goto_0
    return-object v0

    #@1b
    .line 1078
    :cond_1
    invoke-virtual {v0, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Ljava/util/ArrayList;)V

    #@1e
    goto :goto_0
.end method

.method createNewUserLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3653
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v7

    #@b
    .local v7, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@17
    .line 3654
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@19
    if-eqz v0, :cond_0

    #@1b
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@1d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 3658
    iget v0, v6, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@23
    and-int/lit8 v0, v0, 0x1

    #@25
    if-eqz v0, :cond_1

    #@27
    const/4 v0, 0x1

    #@28
    :goto_1
    invoke-virtual {v6, v0, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    #@2b
    .line 3660
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@2d
    iget-object v2, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@2f
    .line 3661
    iget v0, v6, Lcom/android/server/pm/PackageSetting;->appId:I

    #@31
    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@34
    move-result v3

    #@35
    .line 3662
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@37
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@39
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@3b
    move-object v0, p2

    #@3c
    move v4, p3

    #@3d
    .line 3660
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    #@40
    goto :goto_0

    #@41
    :cond_1
    move v0, v8

    #@42
    .line 3658
    goto :goto_1

    #@43
    .line 3664
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    #@46
    .line 3665
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@49
    .line 3666
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    #@4c
    .line 3652
    return-void
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 421
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 422
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@b
    .line 423
    const-string/jumbo v3, "PackageManager"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Package:"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " is not an installed package"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 424
    return v6

    #@2d
    .line 426
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@35
    .line 428
    .local v0, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    #@37
    .line 429
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@39
    if-eqz v3, :cond_1

    #@3b
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3d
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3f
    if-eqz v3, :cond_1

    #@41
    .line 430
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@43
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@45
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@47
    or-int/lit16 v4, v4, 0x80

    #@49
    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4b
    .line 432
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@4d
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 438
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    #@52
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    #@55
    .line 439
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    #@58
    .line 440
    const/4 v3, 0x1

    #@59
    return v3

    #@5a
    .line 442
    .end local v1    # "newp":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v6
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    #@0
    .prologue
    .line 4402
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 4403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 4404
    const-string/jumbo v0, "gids="

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 4405
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 4404
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 4401
    :cond_0
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PermissionsState;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 4449
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 4450
    .local v2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_2

    #@a
    .line 4451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    const-string/jumbo v3, "install permissions:"

    #@10
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 4452
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@23
    .line 4453
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    #@25
    .line 4454
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 4457
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    const-string/jumbo v3, "  "

    #@35
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 4458
    const-string/jumbo v3, ": granted="

    #@42
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    #@48
    move-result v3

    #@49
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@4c
    .line 4459
    const-string/jumbo v3, ", flags="

    #@4f
    .line 4460
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@52
    move-result v4

    #@53
    .line 4459
    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_0

    #@5b
    .line 4448
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v1    # "permissionState$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3953
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p3, :cond_9

    #@2
    .line 3954
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 3955
    const-string/jumbo v15, ","

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 3956
    move-object/from16 v0, p5

    #@13
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@15
    if-eqz v15, :cond_0

    #@17
    move-object/from16 v0, p5

    #@19
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@1b
    :goto_0
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 3957
    const-string/jumbo v15, ","

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 3958
    move-object/from16 v0, p5

    #@2a
    iget v15, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@31
    .line 3959
    const-string/jumbo v15, ","

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 3960
    move-object/from16 v0, p5

    #@3b
    iget v15, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@3d
    move-object/from16 v0, p1

    #@3f
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@42
    .line 3961
    const-string/jumbo v15, ","

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 3962
    move-object/from16 v0, p5

    #@4c
    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    #@4e
    move-wide/from16 v16, v0

    #@50
    move-object/from16 v0, p1

    #@52
    move-wide/from16 v1, v16

    #@54
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@57
    .line 3963
    const-string/jumbo v15, ","

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    .line 3964
    move-object/from16 v0, p5

    #@61
    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    #@63
    move-wide/from16 v16, v0

    #@65
    move-object/from16 v0, p1

    #@67
    move-wide/from16 v1, v16

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@6c
    .line 3965
    const-string/jumbo v15, ","

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    .line 3966
    move-object/from16 v0, p5

    #@76
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@78
    if-eqz v15, :cond_1

    #@7a
    move-object/from16 v0, p5

    #@7c
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@7e
    :goto_1
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    .line 3967
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@86
    .line 3968
    move-object/from16 v0, p5

    #@88
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@8a
    if-eqz v15, :cond_2

    #@8c
    .line 3969
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, p3

    #@90
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    const-string/jumbo v15, "-"

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    const-string/jumbo v15, "splt,"

    #@9e
    move-object/from16 v0, p1

    #@a0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    .line 3970
    const-string/jumbo v15, "base,"

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 3971
    move-object/from16 v0, p5

    #@ad
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@af
    iget v15, v15, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@b1
    move-object/from16 v0, p1

    #@b3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    #@b6
    .line 3972
    move-object/from16 v0, p5

    #@b8
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@ba
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@bc
    if-eqz v15, :cond_2

    #@be
    .line 3973
    const/4 v6, 0x0

    #@bf
    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p5

    #@c1
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@c3
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@c5
    array-length v15, v15

    #@c6
    if-ge v6, v15, :cond_2

    #@c8
    .line 3974
    move-object/from16 v0, p1

    #@ca
    move-object/from16 v1, p3

    #@cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cf
    const-string/jumbo v15, "-"

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    const-string/jumbo v15, "splt,"

    #@da
    move-object/from16 v0, p1

    #@dc
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    .line 3975
    move-object/from16 v0, p5

    #@e1
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@e3
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@e5
    aget-object v15, v15, v6

    #@e7
    move-object/from16 v0, p1

    #@e9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ec
    const-string/jumbo v15, ","

    #@ef
    move-object/from16 v0, p1

    #@f1
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 3976
    move-object/from16 v0, p5

    #@f6
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@f8
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@fa
    aget v15, v15, v6

    #@fc
    move-object/from16 v0, p1

    #@fe
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    #@101
    .line 3973
    add-int/lit8 v6, v6, 0x1

    #@103
    goto :goto_2

    #@104
    .line 3956
    .end local v6    # "i":I
    :cond_0
    move-object/from16 v0, p5

    #@106
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@108
    goto/16 :goto_0

    #@10a
    .line 3966
    :cond_1
    const-string/jumbo v15, "?"

    #@10d
    goto/16 :goto_1

    #@10f
    .line 3980
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@112
    move-result-object v14

    #@113
    .local v14, "user$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@116
    move-result v15

    #@117
    if-eqz v15, :cond_8

    #@119
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11c
    move-result-object v13

    #@11d
    check-cast v13, Landroid/content/pm/UserInfo;

    #@11f
    .line 3981
    .local v13, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p1

    #@121
    move-object/from16 v1, p3

    #@123
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    .line 3982
    const-string/jumbo v15, "-"

    #@129
    move-object/from16 v0, p1

    #@12b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12e
    .line 3983
    const-string/jumbo v15, "usr"

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    .line 3984
    const-string/jumbo v15, ","

    #@139
    move-object/from16 v0, p1

    #@13b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    .line 3985
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@140
    move-object/from16 v0, p1

    #@142
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@145
    .line 3986
    const-string/jumbo v15, ","

    #@148
    move-object/from16 v0, p1

    #@14a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14d
    .line 3987
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@14f
    move-object/from16 v0, p5

    #@151
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    #@154
    move-result v15

    #@155
    if-eqz v15, :cond_3

    #@157
    const-string/jumbo v15, "I"

    #@15a
    :goto_4
    move-object/from16 v0, p1

    #@15c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    .line 3988
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@161
    move-object/from16 v0, p5

    #@163
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    #@166
    move-result v15

    #@167
    if-eqz v15, :cond_4

    #@169
    const-string/jumbo v15, "B"

    #@16c
    :goto_5
    move-object/from16 v0, p1

    #@16e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@171
    .line 3989
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@173
    move-object/from16 v0, p5

    #@175
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@178
    move-result v15

    #@179
    if-eqz v15, :cond_5

    #@17b
    const-string/jumbo v15, "S"

    #@17e
    :goto_6
    move-object/from16 v0, p1

    #@180
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@183
    .line 3990
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@185
    move-object/from16 v0, p5

    #@187
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    #@18a
    move-result v15

    #@18b
    if-eqz v15, :cond_6

    #@18d
    const-string/jumbo v15, "l"

    #@190
    :goto_7
    move-object/from16 v0, p1

    #@192
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@195
    .line 3991
    const-string/jumbo v15, ","

    #@198
    move-object/from16 v0, p1

    #@19a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19d
    .line 3992
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@19f
    move-object/from16 v0, p5

    #@1a1
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    #@1a4
    move-result v15

    #@1a5
    move-object/from16 v0, p1

    #@1a7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@1aa
    .line 3993
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@1ac
    move-object/from16 v0, p5

    #@1ae
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    #@1b1
    move-result-object v7

    #@1b2
    .line 3994
    .local v7, "lastDisabledAppCaller":Ljava/lang/String;
    const-string/jumbo v15, ","

    #@1b5
    move-object/from16 v0, p1

    #@1b7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ba
    .line 3995
    if-eqz v7, :cond_7

    #@1bc
    .end local v7    # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p1

    #@1be
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c1
    .line 3996
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1c4
    goto/16 :goto_3

    #@1c6
    .line 3987
    :cond_3
    const-string/jumbo v15, "i"

    #@1c9
    goto :goto_4

    #@1ca
    .line 3988
    :cond_4
    const-string/jumbo v15, "b"

    #@1cd
    goto :goto_5

    #@1ce
    .line 3989
    :cond_5
    const-string/jumbo v15, "s"

    #@1d1
    goto :goto_6

    #@1d2
    .line 3990
    :cond_6
    const-string/jumbo v15, "L"

    #@1d5
    goto :goto_7

    #@1d6
    .line 3995
    .restart local v7    # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "?"

    #@1d9
    goto :goto_8

    #@1da
    .line 3998
    .end local v7    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    return-void

    #@1db
    .line 4001
    .end local v14    # "user$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1de
    const-string/jumbo v15, "Package ["

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e6
    .line 4002
    move-object/from16 v0, p5

    #@1e8
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@1ea
    if-eqz v15, :cond_1c

    #@1ec
    move-object/from16 v0, p5

    #@1ee
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@1f0
    :goto_9
    move-object/from16 v0, p1

    #@1f2
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f5
    .line 4003
    const-string/jumbo v15, "] ("

    #@1f8
    move-object/from16 v0, p1

    #@1fa
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd
    .line 4004
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@200
    move-result v15

    #@201
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@204
    move-result-object v15

    #@205
    move-object/from16 v0, p1

    #@207
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20a
    .line 4005
    const-string/jumbo v15, "):"

    #@20d
    move-object/from16 v0, p1

    #@20f
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@212
    .line 4007
    move-object/from16 v0, p5

    #@214
    iget-boolean v15, v0, Lcom/android/server/pm/PackageSetting;->frozen:Z

    #@216
    if-eqz v15, :cond_a

    #@218
    .line 4008
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21b
    const-string/jumbo v15, "  FROZEN!"

    #@21e
    move-object/from16 v0, p1

    #@220
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@223
    .line 4011
    :cond_a
    move-object/from16 v0, p5

    #@225
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@227
    if-eqz v15, :cond_b

    #@229
    .line 4012
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22c
    const-string/jumbo v15, "  compat name="

    #@22f
    move-object/from16 v0, p1

    #@231
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@234
    .line 4013
    move-object/from16 v0, p5

    #@236
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@238
    move-object/from16 v0, p1

    #@23a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23d
    .line 4016
    :cond_b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    const-string/jumbo v15, "  userId="

    #@243
    move-object/from16 v0, p1

    #@245
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@248
    move-object/from16 v0, p5

    #@24a
    iget v15, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@24c
    move-object/from16 v0, p1

    #@24e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    #@251
    .line 4018
    move-object/from16 v0, p5

    #@253
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@255
    if-eqz v15, :cond_c

    #@257
    .line 4019
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25a
    const-string/jumbo v15, "  sharedUser="

    #@25d
    move-object/from16 v0, p1

    #@25f
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@262
    move-object/from16 v0, p5

    #@264
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@266
    move-object/from16 v0, p1

    #@268
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@26b
    .line 4021
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26e
    const-string/jumbo v15, "  pkg="

    #@271
    move-object/from16 v0, p1

    #@273
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@276
    move-object/from16 v0, p5

    #@278
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@27a
    move-object/from16 v0, p1

    #@27c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@27f
    .line 4022
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@282
    const-string/jumbo v15, "  codePath="

    #@285
    move-object/from16 v0, p1

    #@287
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28a
    move-object/from16 v0, p5

    #@28c
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@28e
    move-object/from16 v0, p1

    #@290
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@293
    .line 4023
    if-nez p4, :cond_d

    #@295
    .line 4024
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@298
    const-string/jumbo v15, "  resourcePath="

    #@29b
    move-object/from16 v0, p1

    #@29d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a0
    move-object/from16 v0, p5

    #@2a2
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@2a4
    move-object/from16 v0, p1

    #@2a6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a9
    .line 4025
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ac
    const-string/jumbo v15, "  legacyNativeLibraryDir="

    #@2af
    move-object/from16 v0, p1

    #@2b1
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b4
    .line 4026
    move-object/from16 v0, p5

    #@2b6
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@2b8
    move-object/from16 v0, p1

    #@2ba
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2bd
    .line 4027
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c0
    const-string/jumbo v15, "  primaryCpuAbi="

    #@2c3
    move-object/from16 v0, p1

    #@2c5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c8
    move-object/from16 v0, p5

    #@2ca
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@2cc
    move-object/from16 v0, p1

    #@2ce
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d1
    .line 4028
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d4
    const-string/jumbo v15, "  secondaryCpuAbi="

    #@2d7
    move-object/from16 v0, p1

    #@2d9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2dc
    move-object/from16 v0, p5

    #@2de
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@2e0
    move-object/from16 v0, p1

    #@2e2
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e5
    .line 4030
    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e8
    const-string/jumbo v15, "  versionCode="

    #@2eb
    move-object/from16 v0, p1

    #@2ed
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f0
    move-object/from16 v0, p5

    #@2f2
    iget v15, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@2f4
    move-object/from16 v0, p1

    #@2f6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@2f9
    .line 4031
    move-object/from16 v0, p5

    #@2fb
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2fd
    if-eqz v15, :cond_e

    #@2ff
    .line 4032
    const-string/jumbo v15, " targetSdk="

    #@302
    move-object/from16 v0, p1

    #@304
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@307
    move-object/from16 v0, p5

    #@309
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@30b
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@30d
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@30f
    move-object/from16 v0, p1

    #@311
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@314
    .line 4034
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@317
    .line 4035
    move-object/from16 v0, p5

    #@319
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@31b
    if-eqz v15, :cond_20

    #@31d
    .line 4036
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@320
    const-string/jumbo v15, "  versionName="

    #@323
    move-object/from16 v0, p1

    #@325
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@328
    move-object/from16 v0, p5

    #@32a
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@32c
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@32e
    move-object/from16 v0, p1

    #@330
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@333
    .line 4037
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@336
    const-string/jumbo v15, "  splits="

    #@339
    move-object/from16 v0, p1

    #@33b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33e
    move-object/from16 v0, p5

    #@340
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@342
    move-object/from16 v0, p1

    #@344
    invoke-static {v0, v15}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    #@347
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@34a
    .line 4038
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34d
    const-string/jumbo v15, "  applicationInfo="

    #@350
    move-object/from16 v0, p1

    #@352
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@355
    .line 4039
    move-object/from16 v0, p5

    #@357
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@359
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35b
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    #@35e
    move-result-object v15

    #@35f
    move-object/from16 v0, p1

    #@361
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@364
    .line 4040
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@367
    const-string/jumbo v15, "  flags="

    #@36a
    move-object/from16 v0, p1

    #@36c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36f
    move-object/from16 v0, p5

    #@371
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@373
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@375
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@377
    .line 4041
    sget-object v16, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@379
    .line 4040
    move-object/from16 v0, p1

    #@37b
    move-object/from16 v1, v16

    #@37d
    invoke-static {v0, v15, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    #@380
    .line 4041
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@383
    .line 4042
    move-object/from16 v0, p5

    #@385
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@387
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@389
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@38b
    if-eqz v15, :cond_f

    #@38d
    .line 4043
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@390
    const-string/jumbo v15, "  privateFlags="

    #@393
    move-object/from16 v0, p1

    #@395
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@398
    .line 4044
    move-object/from16 v0, p5

    #@39a
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@39c
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@39e
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@3a0
    sget-object v16, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@3a2
    .line 4043
    move-object/from16 v0, p1

    #@3a4
    move-object/from16 v1, v16

    #@3a6
    invoke-static {v0, v15, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    #@3a9
    .line 4044
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3ac
    .line 4046
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3af
    const-string/jumbo v15, "  dataDir="

    #@3b2
    move-object/from16 v0, p1

    #@3b4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b7
    move-object/from16 v0, p5

    #@3b9
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3bb
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3bd
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@3bf
    move-object/from16 v0, p1

    #@3c1
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c4
    .line 4047
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c7
    const-string/jumbo v15, "  supportsScreens=["

    #@3ca
    move-object/from16 v0, p1

    #@3cc
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3cf
    .line 4048
    const/4 v5, 0x1

    #@3d0
    .line 4049
    .local v5, "first":Z
    move-object/from16 v0, p5

    #@3d2
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3d4
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3d6
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3d8
    and-int/lit16 v15, v15, 0x200

    #@3da
    if-eqz v15, :cond_11

    #@3dc
    .line 4050
    if-nez v5, :cond_10

    #@3de
    .line 4051
    const-string/jumbo v15, ", "

    #@3e1
    move-object/from16 v0, p1

    #@3e3
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e6
    .line 4052
    :cond_10
    const/4 v5, 0x0

    #@3e7
    .line 4053
    const-string/jumbo v15, "small"

    #@3ea
    move-object/from16 v0, p1

    #@3ec
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ef
    .line 4055
    :cond_11
    move-object/from16 v0, p5

    #@3f1
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3f3
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3f5
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@3f7
    and-int/lit16 v15, v15, 0x400

    #@3f9
    if-eqz v15, :cond_13

    #@3fb
    .line 4056
    if-nez v5, :cond_12

    #@3fd
    .line 4057
    const-string/jumbo v15, ", "

    #@400
    move-object/from16 v0, p1

    #@402
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@405
    .line 4058
    :cond_12
    const/4 v5, 0x0

    #@406
    .line 4059
    const-string/jumbo v15, "medium"

    #@409
    move-object/from16 v0, p1

    #@40b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40e
    .line 4061
    :cond_13
    move-object/from16 v0, p5

    #@410
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@412
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@414
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@416
    and-int/lit16 v15, v15, 0x800

    #@418
    if-eqz v15, :cond_15

    #@41a
    .line 4062
    if-nez v5, :cond_14

    #@41c
    .line 4063
    const-string/jumbo v15, ", "

    #@41f
    move-object/from16 v0, p1

    #@421
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@424
    .line 4064
    :cond_14
    const/4 v5, 0x0

    #@425
    .line 4065
    const-string/jumbo v15, "large"

    #@428
    move-object/from16 v0, p1

    #@42a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42d
    .line 4067
    :cond_15
    move-object/from16 v0, p5

    #@42f
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@431
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@433
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@435
    const/high16 v16, 0x80000

    #@437
    and-int v15, v15, v16

    #@439
    if-eqz v15, :cond_17

    #@43b
    .line 4068
    if-nez v5, :cond_16

    #@43d
    .line 4069
    const-string/jumbo v15, ", "

    #@440
    move-object/from16 v0, p1

    #@442
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@445
    .line 4070
    :cond_16
    const/4 v5, 0x0

    #@446
    .line 4071
    const-string/jumbo v15, "xlarge"

    #@449
    move-object/from16 v0, p1

    #@44b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44e
    .line 4073
    :cond_17
    move-object/from16 v0, p5

    #@450
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@452
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@454
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@456
    and-int/lit16 v15, v15, 0x1000

    #@458
    if-eqz v15, :cond_19

    #@45a
    .line 4074
    if-nez v5, :cond_18

    #@45c
    .line 4075
    const-string/jumbo v15, ", "

    #@45f
    move-object/from16 v0, p1

    #@461
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@464
    .line 4076
    :cond_18
    const/4 v5, 0x0

    #@465
    .line 4077
    const-string/jumbo v15, "resizeable"

    #@468
    move-object/from16 v0, p1

    #@46a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46d
    .line 4079
    :cond_19
    move-object/from16 v0, p5

    #@46f
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@471
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@473
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    #@475
    and-int/lit16 v15, v15, 0x2000

    #@477
    if-eqz v15, :cond_1b

    #@479
    .line 4080
    if-nez v5, :cond_1a

    #@47b
    .line 4081
    const-string/jumbo v15, ", "

    #@47e
    move-object/from16 v0, p1

    #@480
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@483
    .line 4082
    :cond_1a
    const/4 v5, 0x0

    #@484
    .line 4083
    const-string/jumbo v15, "anyDensity"

    #@487
    move-object/from16 v0, p1

    #@489
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48c
    .line 4085
    :cond_1b
    const-string/jumbo v15, "]"

    #@48f
    move-object/from16 v0, p1

    #@491
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@494
    .line 4086
    move-object/from16 v0, p5

    #@496
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@498
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@49a
    if-eqz v15, :cond_1d

    #@49c
    move-object/from16 v0, p5

    #@49e
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4a0
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@4a2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@4a5
    move-result v15

    #@4a6
    if-lez v15, :cond_1d

    #@4a8
    .line 4087
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ab
    const-string/jumbo v15, "  libraries:"

    #@4ae
    move-object/from16 v0, p1

    #@4b0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b3
    .line 4088
    const/4 v6, 0x0

    #@4b4
    .restart local v6    # "i":I
    :goto_a
    move-object/from16 v0, p5

    #@4b6
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4b8
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@4ba
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@4bd
    move-result v15

    #@4be
    if-ge v6, v15, :cond_1d

    #@4c0
    .line 4089
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c3
    const-string/jumbo v15, "    "

    #@4c6
    move-object/from16 v0, p1

    #@4c8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cb
    move-object/from16 v0, p5

    #@4cd
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4cf
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@4d1
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d4
    move-result-object v15

    #@4d5
    check-cast v15, Ljava/lang/String;

    #@4d7
    move-object/from16 v0, p1

    #@4d9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4dc
    .line 4088
    add-int/lit8 v6, v6, 0x1

    #@4de
    goto :goto_a

    #@4df
    .line 4002
    .end local v5    # "first":Z
    .end local v6    # "i":I
    :cond_1c
    move-object/from16 v0, p5

    #@4e1
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@4e3
    goto/16 :goto_9

    #@4e5
    .line 4092
    .restart local v5    # "first":Z
    :cond_1d
    move-object/from16 v0, p5

    #@4e7
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4e9
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@4eb
    if-eqz v15, :cond_1e

    #@4ed
    move-object/from16 v0, p5

    #@4ef
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4f1
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@4f3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@4f6
    move-result v15

    #@4f7
    if-lez v15, :cond_1e

    #@4f9
    .line 4093
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fc
    const-string/jumbo v15, "  usesLibraries:"

    #@4ff
    move-object/from16 v0, p1

    #@501
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@504
    .line 4094
    const/4 v6, 0x0

    #@505
    .restart local v6    # "i":I
    :goto_b
    move-object/from16 v0, p5

    #@507
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@509
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@50b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@50e
    move-result v15

    #@50f
    if-ge v6, v15, :cond_1e

    #@511
    .line 4095
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@514
    const-string/jumbo v15, "    "

    #@517
    move-object/from16 v0, p1

    #@519
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51c
    move-object/from16 v0, p5

    #@51e
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@520
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@522
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@525
    move-result-object v15

    #@526
    check-cast v15, Ljava/lang/String;

    #@528
    move-object/from16 v0, p1

    #@52a
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52d
    .line 4094
    add-int/lit8 v6, v6, 0x1

    #@52f
    goto :goto_b

    #@530
    .line 4098
    .end local v6    # "i":I
    :cond_1e
    move-object/from16 v0, p5

    #@532
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@534
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@536
    if-eqz v15, :cond_1f

    #@538
    .line 4099
    move-object/from16 v0, p5

    #@53a
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@53c
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@53e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@541
    move-result v15

    #@542
    if-lez v15, :cond_1f

    #@544
    .line 4100
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@547
    const-string/jumbo v15, "  usesOptionalLibraries:"

    #@54a
    move-object/from16 v0, p1

    #@54c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54f
    .line 4101
    const/4 v6, 0x0

    #@550
    .restart local v6    # "i":I
    :goto_c
    move-object/from16 v0, p5

    #@552
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@554
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@556
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@559
    move-result v15

    #@55a
    if-ge v6, v15, :cond_1f

    #@55c
    .line 4102
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55f
    const-string/jumbo v15, "    "

    #@562
    move-object/from16 v0, p1

    #@564
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@567
    .line 4103
    move-object/from16 v0, p5

    #@569
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@56b
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@56d
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@570
    move-result-object v15

    #@571
    check-cast v15, Ljava/lang/String;

    #@573
    move-object/from16 v0, p1

    #@575
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@578
    .line 4101
    add-int/lit8 v6, v6, 0x1

    #@57a
    goto :goto_c

    #@57b
    .line 4106
    .end local v6    # "i":I
    :cond_1f
    move-object/from16 v0, p5

    #@57d
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@57f
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@581
    if-eqz v15, :cond_20

    #@583
    .line 4107
    move-object/from16 v0, p5

    #@585
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@587
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@589
    array-length v15, v15

    #@58a
    if-lez v15, :cond_20

    #@58c
    .line 4108
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58f
    const-string/jumbo v15, "  usesLibraryFiles:"

    #@592
    move-object/from16 v0, p1

    #@594
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@597
    .line 4109
    const/4 v6, 0x0

    #@598
    .restart local v6    # "i":I
    :goto_d
    move-object/from16 v0, p5

    #@59a
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@59c
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@59e
    array-length v15, v15

    #@59f
    if-ge v6, v15, :cond_20

    #@5a1
    .line 4110
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a4
    const-string/jumbo v15, "    "

    #@5a7
    move-object/from16 v0, p1

    #@5a9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ac
    move-object/from16 v0, p5

    #@5ae
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@5b0
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@5b2
    aget-object v15, v15, v6

    #@5b4
    move-object/from16 v0, p1

    #@5b6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b9
    .line 4109
    add-int/lit8 v6, v6, 0x1

    #@5bb
    goto :goto_d

    #@5bc
    .line 4114
    .end local v5    # "first":Z
    .end local v6    # "i":I
    :cond_20
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5bf
    const-string/jumbo v15, "  timeStamp="

    #@5c2
    move-object/from16 v0, p1

    #@5c4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c7
    .line 4115
    move-object/from16 v0, p5

    #@5c9
    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    #@5cb
    move-wide/from16 v16, v0

    #@5cd
    move-object/from16 v0, p7

    #@5cf
    move-wide/from16 v1, v16

    #@5d1
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    #@5d4
    .line 4116
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@5d7
    move-result-object v15

    #@5d8
    move-object/from16 v0, p1

    #@5da
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5dd
    .line 4117
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e0
    const-string/jumbo v15, "  firstInstallTime="

    #@5e3
    move-object/from16 v0, p1

    #@5e5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e8
    .line 4118
    move-object/from16 v0, p5

    #@5ea
    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    #@5ec
    move-wide/from16 v16, v0

    #@5ee
    move-object/from16 v0, p7

    #@5f0
    move-wide/from16 v1, v16

    #@5f2
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    #@5f5
    .line 4119
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@5f8
    move-result-object v15

    #@5f9
    move-object/from16 v0, p1

    #@5fb
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5fe
    .line 4120
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@601
    const-string/jumbo v15, "  lastUpdateTime="

    #@604
    move-object/from16 v0, p1

    #@606
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@609
    .line 4121
    move-object/from16 v0, p5

    #@60b
    iget-wide v0, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    #@60d
    move-wide/from16 v16, v0

    #@60f
    move-object/from16 v0, p7

    #@611
    move-wide/from16 v1, v16

    #@613
    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    #@616
    .line 4122
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@619
    move-result-object v15

    #@61a
    move-object/from16 v0, p1

    #@61c
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61f
    .line 4123
    move-object/from16 v0, p5

    #@621
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@623
    if-eqz v15, :cond_21

    #@625
    .line 4124
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@628
    const-string/jumbo v15, "  installerPackageName="

    #@62b
    move-object/from16 v0, p1

    #@62d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@630
    .line 4125
    move-object/from16 v0, p5

    #@632
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@634
    move-object/from16 v0, p1

    #@636
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@639
    .line 4127
    :cond_21
    move-object/from16 v0, p5

    #@63b
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@63d
    if-eqz v15, :cond_22

    #@63f
    .line 4128
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@642
    const-string/jumbo v15, "  volumeUuid="

    #@645
    move-object/from16 v0, p1

    #@647
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64a
    .line 4129
    move-object/from16 v0, p5

    #@64c
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@64e
    move-object/from16 v0, p1

    #@650
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@653
    .line 4131
    :cond_22
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@656
    const-string/jumbo v15, "  signatures="

    #@659
    move-object/from16 v0, p1

    #@65b
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65e
    move-object/from16 v0, p5

    #@660
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@662
    move-object/from16 v0, p1

    #@664
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@667
    .line 4132
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66a
    const-string/jumbo v15, "  installPermissionsFixed="

    #@66d
    move-object/from16 v0, p1

    #@66f
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@672
    .line 4133
    move-object/from16 v0, p5

    #@674
    iget-boolean v15, v0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    #@676
    move-object/from16 v0, p1

    #@678
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Z)V

    #@67b
    .line 4134
    const-string/jumbo v15, " installStatus="

    #@67e
    move-object/from16 v0, p1

    #@680
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@683
    move-object/from16 v0, p5

    #@685
    iget v15, v0, Lcom/android/server/pm/PackageSetting;->installStatus:I

    #@687
    move-object/from16 v0, p1

    #@689
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    #@68c
    .line 4135
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68f
    const-string/jumbo v15, "  pkgFlags="

    #@692
    move-object/from16 v0, p1

    #@694
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@697
    move-object/from16 v0, p5

    #@699
    iget v15, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@69b
    sget-object v16, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@69d
    move-object/from16 v0, p1

    #@69f
    move-object/from16 v1, v16

    #@6a1
    invoke-static {v0, v15, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    #@6a4
    .line 4136
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@6a7
    .line 4138
    move-object/from16 v0, p5

    #@6a9
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6ab
    if-eqz v15, :cond_28

    #@6ad
    move-object/from16 v0, p5

    #@6af
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6b1
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@6b3
    if-eqz v15, :cond_28

    #@6b5
    move-object/from16 v0, p5

    #@6b7
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6b9
    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@6bb
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@6be
    move-result v15

    #@6bf
    if-lez v15, :cond_28

    #@6c1
    .line 4139
    move-object/from16 v0, p5

    #@6c3
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6c5
    iget-object v10, v15, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@6c7
    .line 4140
    .local v10, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6ca
    const-string/jumbo v15, "  declared permissions:"

    #@6cd
    move-object/from16 v0, p1

    #@6cf
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d2
    .line 4141
    const/4 v6, 0x0

    #@6d3
    .restart local v6    # "i":I
    :goto_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@6d6
    move-result v15

    #@6d7
    if-ge v6, v15, :cond_28

    #@6d9
    .line 4142
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6dc
    move-result-object v8

    #@6dd
    check-cast v8, Landroid/content/pm/PackageParser$Permission;

    #@6df
    .line 4143
    .local v8, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz p4, :cond_23

    #@6e1
    .line 4144
    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@6e3
    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@6e5
    move-object/from16 v0, p4

    #@6e7
    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@6ea
    move-result v15

    #@6eb
    if-eqz v15, :cond_27

    #@6ed
    .line 4147
    :cond_23
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f0
    const-string/jumbo v15, "    "

    #@6f3
    move-object/from16 v0, p1

    #@6f5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f8
    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@6fa
    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@6fc
    move-object/from16 v0, p1

    #@6fe
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@701
    .line 4148
    const-string/jumbo v15, ": prot="

    #@704
    move-object/from16 v0, p1

    #@706
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@709
    .line 4149
    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@70b
    iget v15, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@70d
    invoke-static {v15}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    #@710
    move-result-object v15

    #@711
    move-object/from16 v0, p1

    #@713
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@716
    .line 4150
    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@718
    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    #@71a
    and-int/lit8 v15, v15, 0x1

    #@71c
    if-eqz v15, :cond_24

    #@71e
    .line 4151
    const-string/jumbo v15, ", COSTS_MONEY"

    #@721
    move-object/from16 v0, p1

    #@723
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@726
    .line 4153
    :cond_24
    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@728
    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    #@72a
    and-int/lit8 v15, v15, 0x2

    #@72c
    if-eqz v15, :cond_25

    #@72e
    .line 4154
    const-string/jumbo v15, ", COSTS_HIDDEN"

    #@731
    move-object/from16 v0, p1

    #@733
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@736
    .line 4156
    :cond_25
    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@738
    iget v15, v15, Landroid/content/pm/PermissionInfo;->flags:I

    #@73a
    const/high16 v16, 0x40000000    # 2.0f

    #@73c
    and-int v15, v15, v16

    #@73e
    if-eqz v15, :cond_26

    #@740
    .line 4157
    const-string/jumbo v15, ", INSTALLED"

    #@743
    move-object/from16 v0, p1

    #@745
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@748
    .line 4159
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@74b
    .line 4141
    :cond_27
    add-int/lit8 v6, v6, 0x1

    #@74d
    goto :goto_e

    #@74e
    .line 4163
    .end local v6    # "i":I
    .end local v8    # "perm":Landroid/content/pm/PackageParser$Permission;
    .end local v10    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    :cond_28
    move-object/from16 v0, p5

    #@750
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@752
    if-eqz v15, :cond_29

    #@754
    if-eqz p4, :cond_2a

    #@756
    .line 4164
    :cond_29
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@759
    move-result-object v9

    #@75a
    .line 4165
    .local v9, "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v15, Ljava/lang/StringBuilder;

    #@75c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@75f
    move-object/from16 v0, p2

    #@761
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@764
    move-result-object v15

    #@765
    const-string/jumbo v16, "  "

    #@768
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76b
    move-result-object v15

    #@76c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76f
    move-result-object v15

    #@770
    move-object/from16 v0, p0

    #@772
    move-object/from16 v1, p1

    #@774
    move-object/from16 v2, p4

    #@776
    invoke-virtual {v0, v1, v15, v2, v9}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    #@779
    .line 4168
    .end local v9    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_2a
    invoke-interface/range {p8 .. p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@77c
    move-result-object v14

    #@77d
    .restart local v14    # "user$iterator":Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@780
    move-result v15

    #@781
    if-eqz v15, :cond_2f

    #@783
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@786
    move-result-object v13

    #@787
    check-cast v13, Landroid/content/pm/UserInfo;

    #@789
    .line 4169
    .restart local v13    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78c
    const-string/jumbo v15, "  User "

    #@78f
    move-object/from16 v0, p1

    #@791
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@794
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@796
    move-object/from16 v0, p1

    #@798
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@79b
    const-string/jumbo v15, ": "

    #@79e
    move-object/from16 v0, p1

    #@7a0
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a3
    .line 4170
    const-string/jumbo v15, " installed="

    #@7a6
    move-object/from16 v0, p1

    #@7a8
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7ab
    .line 4171
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@7ad
    move-object/from16 v0, p5

    #@7af
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    #@7b2
    move-result v15

    #@7b3
    move-object/from16 v0, p1

    #@7b5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Z)V

    #@7b8
    .line 4172
    const-string/jumbo v15, " hidden="

    #@7bb
    move-object/from16 v0, p1

    #@7bd
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c0
    .line 4173
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@7c2
    move-object/from16 v0, p5

    #@7c4
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    #@7c7
    move-result v15

    #@7c8
    move-object/from16 v0, p1

    #@7ca
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Z)V

    #@7cd
    .line 4174
    const-string/jumbo v15, " stopped="

    #@7d0
    move-object/from16 v0, p1

    #@7d2
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d5
    .line 4175
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@7d7
    move-object/from16 v0, p5

    #@7d9
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@7dc
    move-result v15

    #@7dd
    move-object/from16 v0, p1

    #@7df
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Z)V

    #@7e2
    .line 4176
    const-string/jumbo v15, " notLaunched="

    #@7e5
    move-object/from16 v0, p1

    #@7e7
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7ea
    .line 4177
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@7ec
    move-object/from16 v0, p5

    #@7ee
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    #@7f1
    move-result v15

    #@7f2
    move-object/from16 v0, p1

    #@7f4
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Z)V

    #@7f7
    .line 4178
    const-string/jumbo v15, " enabled="

    #@7fa
    move-object/from16 v0, p1

    #@7fc
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7ff
    .line 4179
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@801
    move-object/from16 v0, p5

    #@803
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    #@806
    move-result v15

    #@807
    move-object/from16 v0, p1

    #@809
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(I)V

    #@80c
    .line 4180
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@80e
    move-object/from16 v0, p5

    #@810
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    #@813
    move-result-object v7

    #@814
    .line 4181
    .restart local v7    # "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v7, :cond_2c

    #@816
    .line 4182
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@819
    const-string/jumbo v15, "    lastDisabledCaller: "

    #@81c
    move-object/from16 v0, p1

    #@81e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@821
    .line 4183
    move-object/from16 v0, p1

    #@823
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@826
    .line 4186
    :cond_2c
    move-object/from16 v0, p5

    #@828
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@82a
    if-nez v15, :cond_2d

    #@82c
    .line 4187
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@82f
    move-result-object v9

    #@830
    .line 4188
    .restart local v9    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v15, Ljava/lang/StringBuilder;

    #@832
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@835
    move-object/from16 v0, p2

    #@837
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83a
    move-result-object v15

    #@83b
    const-string/jumbo v16, "    "

    #@83e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@841
    move-result-object v15

    #@842
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@845
    move-result-object v15

    #@846
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    #@848
    move/from16 v16, v0

    #@84a
    move/from16 v0, v16

    #@84c
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@84f
    move-result-object v16

    #@850
    move-object/from16 v0, p0

    #@852
    move-object/from16 v1, p1

    #@854
    move-object/from16 v2, v16

    #@856
    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    #@859
    .line 4189
    new-instance v15, Ljava/lang/StringBuilder;

    #@85b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@85e
    move-object/from16 v0, p2

    #@860
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@863
    move-result-object v15

    #@864
    const-string/jumbo v16, "    "

    #@867
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86a
    move-result-object v15

    #@86b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86e
    move-result-object v15

    #@86f
    .line 4190
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    #@871
    move/from16 v16, v0

    #@873
    .line 4189
    move/from16 v0, v16

    #@875
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@878
    move-result-object v16

    #@879
    move-object/from16 v0, p0

    #@87b
    move-object/from16 v1, p1

    #@87d
    move-object/from16 v2, p4

    #@87f
    move-object/from16 v3, v16

    #@881
    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;)V

    #@884
    .line 4193
    .end local v9    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_2d
    if-nez p4, :cond_2b

    #@886
    .line 4194
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@888
    move-object/from16 v0, p5

    #@88a
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    #@88d
    move-result-object v4

    #@88e
    .line 4195
    .local v4, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2e

    #@890
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@893
    move-result v15

    #@894
    if-lez v15, :cond_2e

    #@896
    .line 4196
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@899
    const-string/jumbo v15, "    disabledComponents:"

    #@89c
    move-object/from16 v0, p1

    #@89e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a1
    .line 4197
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a4
    move-result-object v12

    #@8a5
    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@8a8
    move-result v15

    #@8a9
    if-eqz v15, :cond_2e

    #@8ab
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8ae
    move-result-object v11

    #@8af
    check-cast v11, Ljava/lang/String;

    #@8b1
    .line 4198
    .local v11, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b4
    const-string/jumbo v15, "      "

    #@8b7
    move-object/from16 v0, p1

    #@8b9
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8bc
    move-object/from16 v0, p1

    #@8be
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c1
    goto :goto_f

    #@8c2
    .line 4201
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    :cond_2e
    iget v15, v13, Landroid/content/pm/UserInfo;->id:I

    #@8c4
    move-object/from16 v0, p5

    #@8c6
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    #@8c9
    move-result-object v4

    #@8ca
    .line 4202
    if-eqz v4, :cond_2b

    #@8cc
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@8cf
    move-result v15

    #@8d0
    if-lez v15, :cond_2b

    #@8d2
    .line 4203
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d5
    const-string/jumbo v15, "    enabledComponents:"

    #@8d8
    move-object/from16 v0, p1

    #@8da
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8dd
    .line 4204
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8e0
    move-result-object v12

    #@8e1
    .restart local v12    # "s$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@8e4
    move-result v15

    #@8e5
    if-eqz v15, :cond_2b

    #@8e7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8ea
    move-result-object v11

    #@8eb
    check-cast v11, Ljava/lang/String;

    #@8ed
    .line 4205
    .restart local v11    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f0
    const-string/jumbo v15, "      "

    #@8f3
    move-object/from16 v0, p1

    #@8f5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f8
    move-object/from16 v0, p1

    #@8fa
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8fd
    goto :goto_10

    #@8fe
    .line 3952
    .end local v4    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    :cond_2f
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4214
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    #@5
    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    .line 4215
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    #@a
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    #@d
    .line 4216
    .local v8, "date":Ljava/util/Date;
    const/4 v12, 0x0

    #@e
    .line 4217
    .local v12, "printedSomething":Z
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@11
    move-result-object v9

    #@12
    .line 4218
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v13

    #@1c
    .local v13, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_9

    #@22
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@28
    .line 4219
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    #@2a
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@2c
    move-object/from16 v0, p2

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_5

    #@34
    .line 4223
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    #@36
    .line 4224
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@39
    move-result-object v1

    #@3a
    move-object/from16 v0, p3

    #@3c
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_0

    #@42
    .line 4228
    :cond_2
    if-nez p5, :cond_3

    #@44
    if-eqz p2, :cond_3

    #@46
    .line 4229
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@48
    move-object/from16 v0, p4

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    #@4d
    .line 4232
    :cond_3
    if-nez p5, :cond_4

    #@4f
    if-eqz v12, :cond_6

    #@51
    .line 4238
    :cond_4
    :goto_2
    const-string/jumbo v3, "  "

    #@54
    if-eqz p5, :cond_8

    #@56
    const-string/jumbo v4, "pkg"

    #@59
    :goto_3
    move-object v1, p0

    #@5a
    move-object v2, p1

    #@5b
    move-object/from16 v5, p3

    #@5d
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    #@60
    goto :goto_0

    #@61
    .line 4220
    :cond_5
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@63
    move-object/from16 v0, p2

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_0

    #@6b
    goto :goto_1

    #@6c
    .line 4233
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_7

    #@72
    .line 4234
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@75
    .line 4235
    :cond_7
    const-string/jumbo v1, "Packages:"

    #@78
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 4236
    const/4 v12, 0x1

    #@7c
    goto :goto_2

    #@7d
    .line 4238
    :cond_8
    const/4 v4, 0x0

    #@7e
    goto :goto_3

    #@7f
    .line 4241
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_9
    const/4 v12, 0x0

    #@80
    .line 4242
    if-nez p5, :cond_11

    #@82
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@84
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@87
    move-result v1

    #@88
    if-lez v1, :cond_11

    #@8a
    if-nez p3, :cond_11

    #@8c
    .line 4243
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@8e
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@91
    move-result-object v1

    #@92
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v11

    #@96
    .local v11, "e$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_11

    #@9c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v10

    #@a0
    check-cast v10, Ljava/util/Map$Entry;

    #@a2
    .line 4244
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_b

    #@a4
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a7
    move-result-object v1

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v1

    #@ae
    if-eqz v1, :cond_e

    #@b0
    .line 4248
    :cond_b
    :goto_5
    if-nez p5, :cond_f

    #@b2
    .line 4249
    if-nez v12, :cond_d

    #@b4
    .line 4250
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@b7
    move-result v1

    #@b8
    if-eqz v1, :cond_c

    #@ba
    .line 4251
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@bd
    .line 4252
    :cond_c
    const-string/jumbo v1, "Renamed packages:"

    #@c0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c3
    .line 4253
    const/4 v12, 0x1

    #@c4
    .line 4255
    :cond_d
    const-string/jumbo v1, "  "

    #@c7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    .line 4259
    :goto_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@cd
    move-result-object v1

    #@ce
    check-cast v1, Ljava/lang/String;

    #@d0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 4260
    if-eqz p5, :cond_10

    #@d5
    const-string/jumbo v1, " -> "

    #@d8
    :goto_7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@db
    .line 4261
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@de
    move-result-object v1

    #@df
    check-cast v1, Ljava/lang/String;

    #@e1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e4
    goto :goto_4

    #@e5
    .line 4245
    :cond_e
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@e8
    move-result-object v1

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result v1

    #@ef
    if-eqz v1, :cond_a

    #@f1
    goto :goto_5

    #@f2
    .line 4257
    :cond_f
    const-string/jumbo v1, "ren,"

    #@f5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f8
    goto :goto_6

    #@f9
    .line 4260
    :cond_10
    const-string/jumbo v1, ","

    #@fc
    goto :goto_7

    #@fd
    .line 4265
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "e$iterator":Ljava/util/Iterator;
    :cond_11
    const/4 v12, 0x0

    #@fe
    .line 4266
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@100
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@103
    move-result v1

    #@104
    if-lez v1, :cond_19

    #@106
    if-nez p3, :cond_19

    #@108
    .line 4267
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@10a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@10d
    move-result-object v1

    #@10e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@111
    move-result-object v13

    #@112
    :cond_12
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@115
    move-result v1

    #@116
    if-eqz v1, :cond_19

    #@118
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11b
    move-result-object v6

    #@11c
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@11e
    .line 4268
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_13

    #@120
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@127
    move-result v1

    #@128
    if-eqz v1, :cond_15

    #@12a
    .line 4272
    :cond_13
    :goto_9
    if-nez p5, :cond_14

    #@12c
    if-eqz v12, :cond_16

    #@12e
    .line 4278
    :cond_14
    :goto_a
    const-string/jumbo v3, "  "

    #@131
    if-eqz p5, :cond_18

    #@133
    const-string/jumbo v4, "dis"

    #@136
    :goto_b
    move-object v1, p0

    #@137
    move-object v2, p1

    #@138
    move-object/from16 v5, p3

    #@13a
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    #@13d
    goto :goto_8

    #@13e
    .line 4269
    :cond_15
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@140
    move-object/from16 v0, p2

    #@142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@145
    move-result v1

    #@146
    if-eqz v1, :cond_12

    #@148
    goto :goto_9

    #@149
    .line 4273
    :cond_16
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@14c
    move-result v1

    #@14d
    if-eqz v1, :cond_17

    #@14f
    .line 4274
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@152
    .line 4275
    :cond_17
    const-string/jumbo v1, "Hidden system packages:"

    #@155
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 4276
    const/4 v12, 0x1

    #@159
    goto :goto_a

    #@15a
    .line 4278
    :cond_18
    const/4 v4, 0x0

    #@15b
    goto :goto_b

    #@15c
    .line 4213
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_19
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 4286
    const/4 v2, 0x0

    #@2
    .line 4287
    .local v2, "printedSomething":Z
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_8

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@18
    .line 4288
    .local v0, "p":Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_1

    #@1a
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@1c
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 4291
    :cond_1
    if-eqz p3, :cond_2

    #@24
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@26
    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 4294
    :cond_2
    if-nez v2, :cond_4

    #@2e
    .line 4295
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_3

    #@34
    .line 4296
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@37
    .line 4297
    :cond_3
    const-string/jumbo v3, "Permissions:"

    #@3a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 4298
    const/4 v2, 0x1

    #@3e
    .line 4300
    :cond_4
    const-string/jumbo v3, "  Permission ["

    #@41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@46
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    const-string/jumbo v3, "] ("

    #@4c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 4301
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@52
    move-result v3

    #@53
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    .line 4302
    const-string/jumbo v3, "):"

    #@5d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 4303
    const-string/jumbo v3, "    sourcePackage="

    #@63
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@68
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 4304
    const-string/jumbo v3, "    uid="

    #@6e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget v3, v0, Lcom/android/server/pm/BasePermission;->uid:I

    #@73
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@76
    .line 4305
    const-string/jumbo v3, " gids="

    #@79
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 4306
    invoke-virtual {v0, v5}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@7f
    move-result-object v3

    #@80
    .line 4305
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    .line 4307
    const-string/jumbo v3, " type="

    #@8a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    iget v3, v0, Lcom/android/server/pm/BasePermission;->type:I

    #@8f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@92
    .line 4308
    const-string/jumbo v3, " prot="

    #@95
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 4309
    iget v3, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@9a
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 4310
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@a3
    if-eqz v3, :cond_6

    #@a5
    .line 4311
    const-string/jumbo v3, "    perm="

    #@a8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@ad
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@b0
    .line 4312
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@b2
    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@b4
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    #@b6
    const/high16 v4, 0x40000000    # 2.0f

    #@b8
    and-int/2addr v3, v4

    #@b9
    if-eqz v3, :cond_5

    #@bb
    .line 4313
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@bd
    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@bf
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    #@c1
    and-int/lit8 v3, v3, 0x2

    #@c3
    if-eqz v3, :cond_6

    #@c5
    .line 4314
    :cond_5
    const-string/jumbo v3, "    flags=0x"

    #@c8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@cd
    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@cf
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    #@d1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d8
    .line 4317
    :cond_6
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    #@da
    if-eqz v3, :cond_7

    #@dc
    .line 4318
    const-string/jumbo v3, "    packageSetting="

    #@df
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    #@e4
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e7
    .line 4320
    :cond_7
    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    #@ea
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@ec
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_0

    #@f2
    .line 4321
    const-string/jumbo v3, "    enforced="

    #@f5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f8
    .line 4322
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@fa
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 4285
    .end local v0    # "p":Lcom/android/server/pm/BasePermission;
    :cond_8
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    #@0
    .prologue
    .line 4374
    const-string/jumbo v0, "Settings parse messages:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 4375
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 4373
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4411
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_2

    #@6
    .line 4412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    const-string/jumbo v2, "runtime permissions:"

    #@c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 4413
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@1f
    .line 4414
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    #@21
    .line 4415
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 4418
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    const-string/jumbo v2, "  "

    #@31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 4419
    const-string/jumbo v2, ": granted="

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    #@44
    move-result v2

    #@45
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@48
    .line 4420
    const-string/jumbo v2, ", flags="

    #@4b
    .line 4421
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@4e
    move-result v3

    #@4f
    .line 4420
    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    .line 4410
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v1    # "permissionState$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4329
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 4330
    .local v5, "printedSomething":Z
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v9

    #@7
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v7

    #@b
    .local v7, "su$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v9

    #@f
    if-eqz v9, :cond_7

    #@11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    #@17
    .line 4331
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1

    #@19
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    #@1c
    move-result-object v9

    #@1d
    if-ne v6, v9, :cond_0

    #@1f
    .line 4334
    :cond_1
    if-eqz p3, :cond_2

    #@21
    .line 4335
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@24
    move-result-object v9

    #@25
    move-object/from16 v0, p3

    #@27
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_0

    #@2d
    .line 4338
    :cond_2
    if-nez p5, :cond_6

    #@2f
    .line 4339
    if-nez v5, :cond_4

    #@31
    .line 4340
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_3

    #@37
    .line 4341
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a
    .line 4342
    :cond_3
    const-string/jumbo v9, "Shared users:"

    #@3d
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 4343
    const/4 v5, 0x1

    #@41
    .line 4345
    :cond_4
    const-string/jumbo v9, "  SharedUser ["

    #@44
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    .line 4346
    iget-object v9, v6, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@49
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 4347
    const-string/jumbo v9, "] ("

    #@4f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    .line 4348
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@55
    move-result v9

    #@56
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    .line 4349
    const-string/jumbo v9, "):"

    #@60
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 4351
    const-string/jumbo v4, "    "

    #@66
    .line 4352
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    const-string/jumbo v9, "userId="

    #@6c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    iget v9, v6, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@71
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@74
    .line 4354
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@77
    move-result-object v3

    #@78
    .line 4355
    .local v3, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {p0, p1, v4, v0, v3}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    #@7d
    .line 4357
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@84
    move-result-object v10

    #@85
    const/4 v9, 0x0

    #@86
    array-length v11, v10

    #@87
    :goto_1
    if-ge v9, v11, :cond_0

    #@89
    aget v8, v10, v9

    #@8b
    .line 4358
    .local v8, "userId":I
    invoke-virtual {v3, v8}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@8e
    move-result-object v1

    #@8f
    .line 4359
    .local v1, "gids":[I
    invoke-virtual {v3, v8}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@92
    move-result-object v2

    #@93
    .line 4361
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@96
    move-result v12

    #@97
    if-eqz v12, :cond_5

    #@99
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@9c
    move-result v12

    #@9d
    if-eqz v12, :cond_5

    #@9f
    .line 4357
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@a1
    goto :goto_1

    #@a2
    .line 4362
    :cond_5
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a5
    const-string/jumbo v12, "User "

    #@a8
    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@ae
    const-string/jumbo v12, ": "

    #@b1
    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 4363
    new-instance v12, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v12

    #@bd
    const-string/jumbo v13, "  "

    #@c0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v12

    #@c4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v12

    #@c8
    invoke-virtual {p0, p1, v12, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    #@cb
    .line 4364
    new-instance v12, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v12

    #@d4
    const-string/jumbo v13, "  "

    #@d7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v12

    #@db
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v12

    #@df
    move-object/from16 v0, p3

    #@e1
    invoke-virtual {p0, p1, v12, v0, v2}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;)V

    #@e4
    goto :goto_2

    #@e5
    .line 4368
    .end local v1    # "gids":[I
    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v3    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v8    # "userId":I
    :cond_6
    const-string/jumbo v9, "suid,"

    #@e8
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    iget v9, v6, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@ed
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    #@f0
    const-string/jumbo v9, ","

    #@f3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    iget-object v9, v6, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@f8
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fb
    goto/16 :goto_0

    #@fd
    .line 4328
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_7
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 3928
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3
    .line 3929
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v3

    #@a
    if-ge v0, v3, :cond_2

    #@c
    .line 3930
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/String;

    #@14
    .line 3931
    .local v2, "volumeUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/pm/Settings$VersionInfo;

    #@1c
    .line 3932
    .local v1, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@1e
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 3933
    const-string/jumbo v3, "Internal:"

    #@27
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 3939
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2d
    .line 3940
    const-string/jumbo v3, "sdkVersion"

    #@30
    iget v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@39
    .line 3941
    const-string/jumbo v3, "databaseVersion"

    #@3c
    iget v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@3e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@45
    .line 3942
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@48
    .line 3943
    const-string/jumbo v3, "fingerprint"

    #@4b
    iget-object v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@50
    .line 3944
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@53
    .line 3945
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@56
    .line 3929
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_0

    #@59
    .line 3934
    :cond_0
    const-string/jumbo v3, "primary_physical"

    #@5c
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_1

    #@62
    .line 3935
    const-string/jumbo v3, "External:"

    #@65
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@68
    goto :goto_1

    #@69
    .line 3937
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "UUID "

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    const-string/jumbo v4, ":"

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@87
    goto :goto_1

    #@88
    .line 3947
    .end local v1    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@8b
    .line 3927
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@8
    .line 1035
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    #@a
    .line 1036
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@c
    .end local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    #@f
    .line 1037
    .restart local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1039
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1025
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@8
    .line 1026
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    #@a
    .line 1027
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@c
    .end local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    #@f
    .line 1028
    .restart local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1030
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    #@8
    .line 1017
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    #@a
    .line 1018
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    #@c
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    #@f
    .line 1019
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1021
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 446
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v14

    #@a
    check-cast v14, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 447
    .local v14, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_0

    #@e
    .line 448
    const-string/jumbo v1, "PackageManager"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Package:"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, " is not disabled"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 449
    const/4 v1, 0x0

    #@32
    return-object v1

    #@33
    .line 452
    :cond_0
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@35
    if-eqz v1, :cond_1

    #@37
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@39
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 453
    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3f
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@41
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@43
    and-int/lit16 v2, v2, -0x81

    #@45
    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@47
    .line 455
    :cond_1
    iget-object v3, v14, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@49
    iget-object v4, v14, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@4b
    iget-object v5, v14, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    #@4d
    .line 456
    iget-object v6, v14, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@4f
    iget-object v7, v14, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@51
    .line 457
    iget-object v8, v14, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@53
    iget-object v9, v14, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@55
    .line 458
    iget v10, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    #@57
    iget v11, v14, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@59
    iget v12, v14, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@5b
    iget v13, v14, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@5d
    move-object/from16 v1, p0

    #@5f
    move-object/from16 v2, p1

    #@61
    .line 455
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/pm/PackageSetting;

    #@64
    move-result-object v15

    #@65
    .line 459
    .local v15, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    #@67
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 460
    return-object v15
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1219
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    #@8
    .line 1220
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    #@a
    .line 1221
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    #@c
    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    #@f
    .line 1222
    .restart local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    #@12
    .line 1223
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1225
    :cond_0
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getAllUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3864
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3866
    .local v0, "id":J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@7
    move-result-object v3

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v3

    #@d
    .line 3870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 3866
    return-object v3

    #@11
    .line 3867
    :catch_0
    move-exception v2

    #@12
    .line 3870
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 3872
    const/4 v3, 0x0

    #@16
    return-object v3

    #@17
    .line 3869
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    #@18
    .line 3870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 3869
    throw v3
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3810
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 3811
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 3812
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown package: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 3814
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    #@27
    move-result v1

    #@28
    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3818
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 3819
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 3820
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@e
    .line 3821
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "Unknown component: "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 3823
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 3824
    .local v0, "classNameStr":Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    #@2f
    move-result v3

    #@30
    return v3
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1171
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    const/4 v0, 0x0

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    goto :goto_0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3752
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 3753
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    #@0
    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@2
    const-string/jumbo v1, "primary_physical"

    #@5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    #@b
    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3802
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 3803
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 3804
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown package: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 3806
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@26
    return-object v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1049
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 1050
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@b
    .line 1054
    return-object v2

    #@c
    .line 1056
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1090
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 1094
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1096
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    #@f
    move-result-wide v2

    #@10
    const/16 v1, 0x20

    #@12
    shr-long/2addr v2, v1

    #@13
    long-to-int v1, v2

    #@14
    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1126
    if-nez p1, :cond_0

    #@2
    .line 1127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    return-object v4

    #@7
    .line 1129
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 1130
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "ps$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@22
    .line 1131
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@25
    move-result-object v0

    #@26
    .line 1132
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v0, :cond_1

    #@28
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v4

    #@30
    if-nez v4, :cond_1

    #@32
    .line 1133
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_1

    #@3c
    .line 1136
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 1138
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return-object v3
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    #@0
    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@2
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    #@a
    return-object v0
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2467
    new-instance v1, Landroid/util/ArraySet;

    #@2
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@7
    move-result-object v5

    #@8
    invoke-direct {v1, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@b
    .line 2468
    .local v1, "kList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 2469
    .local v0, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 2470
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 2471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 2472
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@28
    .line 2473
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 2474
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 2477
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .locals 18
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "pkgFlags"    # I
    .param p11, "pkgPrivateFlags"    # I
    .param p12, "user"    # Landroid/os/UserHandle;
    .param p13, "add"    # Z

    #@0
    .prologue
    .line 368
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@4
    .line 371
    .local v2, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    #@6
    iget v11, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@8
    const/16 v16, 0x1

    #@a
    move-object/from16 v1, p0

    #@c
    move-object/from16 v3, p2

    #@e
    move-object/from16 v4, p3

    #@10
    move-object/from16 v5, p4

    #@12
    move-object/from16 v6, p5

    #@14
    move-object/from16 v7, p6

    #@16
    move-object/from16 v8, p7

    #@18
    move-object/from16 v9, p8

    #@1a
    move-object/from16 v10, p9

    #@1c
    move/from16 v12, p10

    #@1e
    move/from16 v13, p11

    #@20
    move-object/from16 v14, p12

    #@22
    move/from16 v15, p13

    #@24
    .line 369
    invoke-direct/range {v1 .. v16}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    #@27
    move-result-object v17

    #@28
    .line 372
    .local v17, "p":Lcom/android/server/pm/PackageSetting;
    return-object v17
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 397
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    #@9
    .line 398
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    #@b
    .line 399
    if-nez p4, :cond_0

    #@d
    .line 400
    return-object v2

    #@e
    .line 402
    :cond_0
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    #@10
    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    #@13
    .line 403
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@19
    .line 404
    const-string/jumbo v1, "PackageManager"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "New shared user "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, ": id="

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 407
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@42
    if-ltz v1, :cond_1

    #@44
    .line 408
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@46
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 412
    :cond_1
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 985
    const/16 v2, 0x2710

    #@2
    if-lt p1, v2, :cond_1

    #@4
    .line 986
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 987
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@c
    .line 988
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    :goto_0
    return-object v2

    #@15
    :cond_0
    const/4 v2, 0x0

    #@16
    goto :goto_0

    #@17
    .line 990
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    #@0
    .prologue
    .line 3742
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3743
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@a
    .line 3745
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    #@d
    .line 3748
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@f
    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3880
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 3881
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 3882
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_1

    #@11
    .line 3883
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@19
    .line 3884
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@1b
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 3885
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 3882
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 3888
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 735
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2
    .line 738
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@6
    .line 739
    .local v3, "volumeUuid":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 740
    .local v0, "codePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getResourcePath()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 741
    .local v2, "resourcePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@16
    .line 743
    .local v1, "legacyNativeLibraryPath":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@18
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 744
    const-string/jumbo v4, "PackageManager"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Volume for "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2f
    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 745
    const-string/jumbo v6, " changing from "

    #@38
    .line 744
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 745
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@3e
    .line 744
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 745
    const-string/jumbo v6, " to "

    #@45
    .line 744
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 746
    iput-object v3, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@56
    .line 749
    :cond_0
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@58
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_1

    #@5e
    .line 750
    const-string/jumbo v4, "PackageManager"

    #@61
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v6, "Code path for "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6f
    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 751
    const-string/jumbo v6, " changing from "

    #@78
    .line 750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 751
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@7e
    .line 750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    .line 751
    const-string/jumbo v6, " to "

    #@85
    .line 750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 752
    new-instance v4, Ljava/io/File;

    #@96
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@99
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@9b
    .line 753
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@9d
    .line 756
    :cond_1
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@9f
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_2

    #@a5
    .line 757
    const-string/jumbo v4, "PackageManager"

    #@a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v6, "Resource path for "

    #@b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@b6
    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    .line 758
    const-string/jumbo v6, " changing from "

    #@bf
    .line 757
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    .line 758
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@c5
    .line 757
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    .line 758
    const-string/jumbo v6, " to "

    #@cc
    .line 757
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    .line 759
    new-instance v4, Ljava/io/File;

    #@dd
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e0
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    #@e2
    .line 760
    iput-object v2, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@e4
    .line 763
    :cond_2
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@e6
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e9
    move-result v4

    #@ea
    if-nez v4, :cond_3

    #@ec
    .line 764
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@ee
    .line 768
    :cond_3
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f0
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@f2
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@f4
    .line 769
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f6
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@f8
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@fa
    .line 770
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    #@fc
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@fe
    .line 772
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@100
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@102
    if-eq v4, v5, :cond_4

    #@104
    .line 773
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@106
    iput v4, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@108
    .line 776
    :cond_4
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@10a
    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@10c
    if-nez v4, :cond_5

    #@10e
    .line 777
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@110
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@112
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    #@115
    .line 780
    :cond_5
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@117
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@119
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@11b
    if-eq v4, v5, :cond_6

    #@11d
    .line 781
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@121
    iput v4, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@123
    .line 785
    :cond_6
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@125
    if-eqz v4, :cond_7

    #@127
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@129
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@12b
    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@12d
    if-nez v4, :cond_7

    #@12f
    .line 786
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@131
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@133
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@135
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    #@138
    .line 788
    :cond_7
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@13a
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@13c
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    #@13f
    .line 734
    return-void
.end method

.method isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 730
    const-string/jumbo v0, "no_debugging_features"

    #@3
    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 8
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 3761
    and-int/lit16 v3, p2, 0x200

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 3762
    return v6

    #@8
    .line 3764
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@a
    .line 3765
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@12
    .line 3774
    .local v0, "packageSettings":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    #@14
    .line 3775
    return v5

    #@15
    .line 3777
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@18
    move-result-object v2

    #@19
    .line 3778
    .local v2, "ustate":Landroid/content/pm/PackageUserState;
    const v3, 0x8000

    #@1c
    and-int/2addr v3, p2

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 3779
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    #@21
    if-ne v3, v7, :cond_2

    #@23
    .line 3780
    return v6

    #@24
    .line 3783
    :cond_2
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    #@26
    const/4 v4, 0x2

    #@27
    if-eq v3, v4, :cond_3

    #@29
    .line 3784
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    #@2b
    const/4 v4, 0x3

    #@2c
    if-ne v3, v4, :cond_4

    #@2e
    .line 3788
    :cond_3
    :goto_0
    return v5

    #@2f
    .line 3785
    :cond_4
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    #@31
    if-eq v3, v7, :cond_3

    #@33
    .line 3786
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@35
    if-eqz v3, :cond_5

    #@37
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@39
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@3d
    if-eqz v3, :cond_6

    #@3f
    .line 3790
    :cond_5
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@41
    if-eqz v3, :cond_7

    #@43
    .line 3791
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@45
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@47
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    .line 3790
    if-eqz v3, :cond_7

    #@4d
    .line 3792
    return v6

    #@4e
    .line 3787
    :cond_6
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    #@50
    if-nez v3, :cond_5

    #@52
    goto :goto_0

    #@53
    .line 3794
    :cond_7
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@55
    if-eqz v3, :cond_8

    #@57
    .line 3795
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@59
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    #@5b
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5e
    move-result v3

    #@5f
    .line 3794
    if-eqz v3, :cond_8

    #@61
    .line 3796
    return v5

    #@62
    .line 3798
    :cond_8
    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    #@64
    return v3
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    #@5
    .line 1213
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1236
    return-void
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    return-object v0
.end method

.method pruneSharedUsersLPw()V
    .locals 7

    #@0
    .prologue
    .line 514
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 515
    .local v3, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v5

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 516
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    #@21
    .line 517
    .local v4, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v4, :cond_1

    #@23
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@25
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_0

    #@2b
    .line 518
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Ljava/lang/String;

    #@31
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_0

    #@35
    .line 521
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v4    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_2
    const/4 v2, 0x0

    #@36
    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v5

    #@3a
    if-ge v2, v5, :cond_3

    #@3c
    .line 522
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 521
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_1

    #@48
    .line 513
    :cond_3
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 1662
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 1664
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v1

    #@a
    .line 1666
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v5

    #@e
    .local v5, "type":I
    const/4 v6, 0x1

    #@f
    if-eq v5, v6, :cond_4

    #@11
    .line 1667
    if-ne v5, v8, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v6

    #@17
    if-le v6, v1, :cond_4

    #@19
    .line 1668
    :cond_1
    if-eq v5, v8, :cond_0

    #@1b
    const/4 v6, 0x4

    #@1c
    if-eq v5, v6, :cond_0

    #@1e
    .line 1672
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 1673
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "domain-verification"

    #@25
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_3

    #@2b
    .line 1674
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@2d
    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@30
    .line 1675
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 1676
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@3c
    .line 1677
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    #@3e
    .line 1679
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@41
    goto :goto_0

    #@42
    .line 1685
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v6, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    goto :goto_0

    #@48
    .line 1693
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v7, "Unknown element under <all-intent-filter-verification>: "

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 1694
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    .line 1693
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .line 1692
    const/4 v7, 0x5

    #@61
    invoke-static {v7, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@64
    .line 1695
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@67
    goto :goto_0

    #@68
    .line 1661
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 1352
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 1354
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v4

    #@9
    .local v4, "type":I
    const/4 v5, 0x1

    #@a
    if-eq v4, v5, :cond_3

    #@c
    .line 1355
    if-ne v4, v7, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v5

    #@12
    if-le v5, v1, :cond_3

    #@14
    .line 1356
    :cond_1
    if-eq v4, v7, :cond_0

    #@16
    const/4 v5, 0x4

    #@17
    if-eq v4, v5, :cond_0

    #@19
    .line 1359
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 1360
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "default-browser"

    #@20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 1361
    const-string/jumbo v5, "packageName"

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 1362
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@33
    goto :goto_0

    #@34
    .line 1364
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v6, "Unknown element under default-apps: "

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    .line 1365
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 1364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 1366
    .local v0, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    #@4d
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@50
    .line 1367
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@53
    goto :goto_0

    #@54
    .line 1351
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1863
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v6

    #@4
    .line 1865
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v8

    #@8
    .local v8, "type":I
    const/4 v9, 0x1

    #@9
    if-eq v8, v9, :cond_9

    #@b
    .line 1866
    const/4 v9, 0x3

    #@c
    if-ne v8, v9, :cond_1

    #@e
    .line 1867
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v9

    #@12
    if-le v9, v6, :cond_9

    #@14
    .line 1868
    :cond_1
    const/4 v9, 0x3

    #@15
    if-eq v8, v9, :cond_0

    #@17
    .line 1869
    const/4 v9, 0x4

    #@18
    if-eq v8, v9, :cond_0

    #@1a
    .line 1872
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 1873
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    #@21
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_8

    #@27
    .line 1874
    const-string/jumbo v9, "name"

    #@2a
    const/4 v10, 0x0

    #@2b
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 1876
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@37
    .line 1877
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    #@39
    .line 1878
    const-string/jumbo v9, "PackageManager"

    #@3c
    new-instance v10, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v11, "Unknown permission: "

    #@44
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v10

    #@48
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v10

    #@4c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1879
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@56
    goto :goto_0

    #@57
    .line 1883
    :cond_2
    const-string/jumbo v9, "granted"

    #@5a
    const/4 v10, 0x0

    #@5b
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    .line 1884
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@61
    .line 1885
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@64
    move-result v3

    #@65
    .line 1887
    :goto_1
    const-string/jumbo v9, "flags"

    #@68
    const/4 v10, 0x0

    #@69
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    .line 1888
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@6f
    .line 1889
    const/16 v9, 0x10

    #@71
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@74
    move-result v1

    #@75
    .line 1891
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_6

    #@77
    .line 1892
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I

    #@7a
    move-result v9

    #@7b
    .line 1893
    const/4 v10, -0x1

    #@7c
    .line 1892
    if-ne v9, v10, :cond_5

    #@7e
    .line 1894
    const-string/jumbo v9, "PackageManager"

    #@81
    new-instance v10, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v11, "Permission already added: "

    #@89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v10

    #@91
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v10

    #@95
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 1895
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 1884
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    #@9e
    .local v3, "granted":Z
    goto :goto_1

    #@9f
    .line 1889
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@a0
    .restart local v1    # "flags":I
    goto :goto_2

    #@a1
    .line 1897
    :cond_5
    const/4 v9, -0x1

    #@a2
    .line 1898
    const/16 v10, 0xff

    #@a4
    .line 1897
    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@a7
    goto/16 :goto_0

    #@a9
    .line 1901
    :cond_6
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    #@ac
    move-result v9

    #@ad
    .line 1902
    const/4 v10, -0x1

    #@ae
    .line 1901
    if-ne v9, v10, :cond_7

    #@b0
    .line 1903
    const-string/jumbo v9, "PackageManager"

    #@b3
    new-instance v10, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v11, "Permission already added: "

    #@bb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v10

    #@bf
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v10

    #@c3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v10

    #@c7
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 1904
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 1906
    :cond_7
    const/4 v9, -0x1

    #@d0
    .line 1907
    const/16 v10, 0xff

    #@d2
    .line 1906
    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@d5
    goto/16 :goto_0

    #@d7
    .line 1911
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "PackageManager"

    #@da
    new-instance v10, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v11, "Unknown element under <permissions>: "

    #@e2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v10

    #@e6
    .line 1912
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e9
    move-result-object v11

    #@ea
    .line 1911
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v10

    #@ee
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v10

    #@f2
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    .line 1913
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 1862
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method readLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;IZ)Z
    .locals 53
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "sdkVersion"    # I
    .param p4, "onlyCore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;IZ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2488
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v43, 0x0

    #@2
    .line 2489
    .local v43, "str":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 2491
    :try_start_0
    new-instance v44, Ljava/io/FileInputStream;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@12
    move-object/from16 v0, v44

    #@14
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    .line 2492
    .end local v43    # "str":Ljava/io/FileInputStream;
    .local v44, "str":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@1b
    const-string/jumbo v4, "Reading from backup settings file\n"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 2494
    const-string/jumbo v3, "Need to read from backup settings file"

    #@24
    .line 2493
    const/4 v4, 0x4

    #@25
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@28
    .line 2495
    move-object/from16 v0, p0

    #@2a
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@2c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_0

    #@32
    .line 2499
    const-string/jumbo v3, "PackageManager"

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Cleaning up settings file "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    .line 2500
    move-object/from16 v0, p0

    #@43
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@45
    .line 2499
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 2501
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@54
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@57
    :cond_0
    move-object/from16 v43, v44

    #@59
    .line 2508
    .end local v44    # "str":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@60
    .line 2509
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@67
    .line 2510
    move-object/from16 v0, p0

    #@69
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@6b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@6e
    .line 2513
    if-nez v43, :cond_3

    #@70
    .line 2514
    :try_start_2
    move-object/from16 v0, p0

    #@72
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@74
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@77
    move-result v3

    #@78
    if-nez v3, :cond_2

    #@7a
    .line 2515
    move-object/from16 v0, p0

    #@7c
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@7e
    const-string/jumbo v4, "No settings file found\n"

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 2517
    const-string/jumbo v3, "No settings file; creating initial state"

    #@87
    .line 2516
    const/4 v4, 0x4

    #@88
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@8b
    .line 2520
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@8d
    move-object/from16 v0, p0

    #@8f
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@92
    .line 2521
    const-string/jumbo v3, "primary_physical"

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@9a
    .line 2522
    const/4 v3, 0x0

    #@9b
    return v3

    #@9c
    .line 2524
    :cond_2
    new-instance v44, Ljava/io/FileInputStream;

    #@9e
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@a2
    move-object/from16 v0, v44

    #@a4
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@a7
    .restart local v44    # "str":Ljava/io/FileInputStream;
    move-object/from16 v43, v44

    #@a9
    .line 2526
    .end local v44    # "str":Ljava/io/FileInputStream;
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@ac
    move-result-object v41

    #@ad
    .line 2527
    .local v41, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@af
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    move-object/from16 v0, v41

    #@b5
    move-object/from16 v1, v43

    #@b7
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@ba
    .line 2530
    :cond_4
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@bd
    move-result v46

    #@be
    .local v46, "type":I
    const/4 v3, 0x2

    #@bf
    move/from16 v0, v46

    #@c1
    if-eq v0, v3, :cond_5

    #@c3
    .line 2531
    const/4 v3, 0x1

    #@c4
    move/from16 v0, v46

    #@c6
    if-ne v0, v3, :cond_4

    #@c8
    .line 2535
    :cond_5
    const/4 v3, 0x2

    #@c9
    move/from16 v0, v46

    #@cb
    if-eq v0, v3, :cond_6

    #@cd
    .line 2536
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@d1
    const-string/jumbo v4, "No start tag found in settings file\n"

    #@d4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    .line 2538
    const-string/jumbo v3, "No start tag found in package manager settings"

    #@da
    .line 2537
    const/4 v4, 0x5

    #@db
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@de
    .line 2539
    const-string/jumbo v3, "PackageManager"

    #@e1
    .line 2540
    const-string/jumbo v4, "No start tag found in package manager settings"

    #@e4
    .line 2539
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 2541
    const/4 v3, 0x0

    #@e8
    return v3

    #@e9
    .line 2544
    :cond_6
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@ec
    move-result v39

    #@ed
    .line 2545
    .local v39, "outerDepth":I
    :cond_7
    :goto_1
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f0
    move-result v46

    #@f1
    const/4 v3, 0x1

    #@f2
    move/from16 v0, v46

    #@f4
    if-eq v0, v3, :cond_1d

    #@f6
    .line 2546
    const/4 v3, 0x3

    #@f7
    move/from16 v0, v46

    #@f9
    if-ne v0, v3, :cond_8

    #@fb
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@fe
    move-result v3

    #@ff
    move/from16 v0, v39

    #@101
    if-le v3, v0, :cond_1d

    #@103
    .line 2547
    :cond_8
    const/4 v3, 0x3

    #@104
    move/from16 v0, v46

    #@106
    if-eq v0, v3, :cond_7

    #@108
    const/4 v3, 0x4

    #@109
    move/from16 v0, v46

    #@10b
    if-eq v0, v3, :cond_7

    #@10d
    .line 2551
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@110
    move-result-object v45

    #@111
    .line 2552
    .local v45, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "package"

    #@114
    move-object/from16 v0, v45

    #@116
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v3

    #@11a
    if-eqz v3, :cond_9

    #@11c
    .line 2553
    move-object/from16 v0, p0

    #@11e
    move-object/from16 v1, v41

    #@120
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@123
    goto :goto_1

    #@124
    .line 2656
    .end local v39    # "outerDepth":I
    .end local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v46    # "type":I
    :catch_0
    move-exception v28

    #@125
    .line 2657
    .local v28, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    #@127
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@129
    const-string/jumbo v4, "Error reading: "

    #@12c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v3

    #@130
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    #@133
    move-result-object v4

    #@134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    .line 2658
    new-instance v3, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    const-string/jumbo v4, "Error reading settings: "

    #@13f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v3

    #@143
    move-object/from16 v0, v28

    #@145
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v3

    #@149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v3

    #@14d
    const/4 v4, 0x6

    #@14e
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@151
    .line 2659
    const-string/jumbo v3, "PackageManager"

    #@154
    const-string/jumbo v4, "Error reading package manager settings"

    #@157
    move-object/from16 v0, v28

    #@159
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15c
    .line 2684
    .end local v28    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    move-object/from16 v0, p0

    #@15e
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@160
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@163
    move-result v19

    #@164
    .line 2686
    .local v19, "N":I
    const/16 v31, 0x0

    #@166
    .local v31, "i":I
    :goto_3
    move/from16 v0, v31

    #@168
    move/from16 v1, v19

    #@16a
    if-ge v0, v1, :cond_21

    #@16c
    .line 2687
    move-object/from16 v0, p0

    #@16e
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@170
    move/from16 v0, v31

    #@172
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@175
    move-result-object v42

    #@176
    check-cast v42, Lcom/android/server/pm/PendingPackage;

    #@178
    .line 2688
    .local v42, "pp":Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v42

    #@17a
    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@17c
    move-object/from16 v0, p0

    #@17e
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    #@181
    move-result-object v33

    #@182
    .line 2689
    .local v33, "idObj":Ljava/lang/Object;
    if-eqz v33, :cond_1f

    #@184
    move-object/from16 v0, v33

    #@186
    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    #@188
    if-eqz v3, :cond_1f

    #@18a
    .line 2690
    move-object/from16 v0, v42

    #@18c
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@18e
    move-object/from16 v0, v42

    #@190
    iget-object v6, v0, Lcom/android/server/pm/PendingPackage;->realName:Ljava/lang/String;

    #@192
    move-object/from16 v7, v33

    #@194
    .line 2691
    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    #@196
    move-object/from16 v0, v42

    #@198
    iget-object v8, v0, Lcom/android/server/pm/PendingPackage;->codePath:Ljava/io/File;

    #@19a
    move-object/from16 v0, v42

    #@19c
    iget-object v9, v0, Lcom/android/server/pm/PendingPackage;->resourcePath:Ljava/io/File;

    #@19e
    .line 2692
    move-object/from16 v0, v42

    #@1a0
    iget-object v10, v0, Lcom/android/server/pm/PendingPackage;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@1a2
    move-object/from16 v0, v42

    #@1a4
    iget-object v11, v0, Lcom/android/server/pm/PendingPackage;->primaryCpuAbiString:Ljava/lang/String;

    #@1a6
    .line 2693
    move-object/from16 v0, v42

    #@1a8
    iget-object v12, v0, Lcom/android/server/pm/PendingPackage;->secondaryCpuAbiString:Ljava/lang/String;

    #@1aa
    move-object/from16 v0, v42

    #@1ac
    iget v13, v0, Lcom/android/server/pm/PendingPackage;->versionCode:I

    #@1ae
    move-object/from16 v0, v42

    #@1b0
    iget v14, v0, Lcom/android/server/pm/PendingPackage;->pkgFlags:I

    #@1b2
    move-object/from16 v0, v42

    #@1b4
    iget v15, v0, Lcom/android/server/pm/PendingPackage;->pkgPrivateFlags:I

    #@1b6
    .line 2690
    const/4 v5, 0x0

    #@1b7
    .line 2694
    const/16 v16, 0x0

    #@1b9
    const/16 v17, 0x1

    #@1bb
    const/16 v18, 0x0

    #@1bd
    move-object/from16 v3, p0

    #@1bf
    .line 2690
    invoke-direct/range {v3 .. v18}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    #@1c2
    move-result-object v40

    #@1c3
    .line 2695
    .local v40, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v40, :cond_1e

    #@1c5
    .line 2697
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v4, "Unable to create application package for "

    #@1cd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v3

    #@1d1
    move-object/from16 v0, v42

    #@1d3
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@1d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v3

    #@1d9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v3

    #@1dd
    .line 2696
    const/4 v4, 0x5

    #@1de
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1e1
    .line 2686
    .end local v40    # "p":Lcom/android/server/pm/PackageSetting;
    :goto_4
    add-int/lit8 v31, v31, 0x1

    #@1e3
    goto :goto_3

    #@1e4
    .line 2554
    .end local v19    # "N":I
    .end local v31    # "i":I
    .end local v33    # "idObj":Ljava/lang/Object;
    .end local v42    # "pp":Lcom/android/server/pm/PendingPackage;
    .restart local v39    # "outerDepth":I
    .restart local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v46    # "type":I
    :cond_9
    :try_start_3
    const-string/jumbo v3, "permissions"

    #@1e7
    move-object/from16 v0, v45

    #@1e9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ec
    move-result v3

    #@1ed
    if-eqz v3, :cond_a

    #@1ef
    .line 2555
    move-object/from16 v0, p0

    #@1f1
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, v41

    #@1f7
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@1fa
    goto/16 :goto_1

    #@1fc
    .line 2661
    .end local v39    # "outerDepth":I
    .end local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v45    # "tagName":Ljava/lang/String;
    .end local v46    # "type":I
    :catch_1
    move-exception v25

    #@1fd
    .line 2662
    .local v25, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@1ff
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@201
    const-string/jumbo v4, "Error reading: "

    #@204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v3

    #@208
    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@20b
    move-result-object v4

    #@20c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    .line 2663
    new-instance v3, Ljava/lang/StringBuilder;

    #@211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@214
    const-string/jumbo v4, "Error reading settings: "

    #@217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v3

    #@21b
    move-object/from16 v0, v25

    #@21d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v3

    #@221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@224
    move-result-object v3

    #@225
    const/4 v4, 0x6

    #@226
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@229
    .line 2664
    const-string/jumbo v3, "PackageManager"

    #@22c
    const-string/jumbo v4, "Error reading package manager settings"

    #@22f
    move-object/from16 v0, v25

    #@231
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@234
    goto/16 :goto_2

    #@236
    .line 2556
    .end local v25    # "e":Ljava/io/IOException;
    .restart local v39    # "outerDepth":I
    .restart local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v45    # "tagName":Ljava/lang/String;
    .restart local v46    # "type":I
    :cond_a
    :try_start_4
    const-string/jumbo v3, "permission-trees"

    #@239
    move-object/from16 v0, v45

    #@23b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23e
    move-result v3

    #@23f
    if-eqz v3, :cond_b

    #@241
    .line 2557
    move-object/from16 v0, p0

    #@243
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@245
    move-object/from16 v0, p0

    #@247
    move-object/from16 v1, v41

    #@249
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    #@24c
    goto/16 :goto_1

    #@24e
    .line 2558
    :cond_b
    const-string/jumbo v3, "shared-user"

    #@251
    move-object/from16 v0, v45

    #@253
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@256
    move-result v3

    #@257
    if-eqz v3, :cond_c

    #@259
    .line 2559
    move-object/from16 v0, p0

    #@25b
    move-object/from16 v1, v41

    #@25d
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@260
    goto/16 :goto_1

    #@262
    .line 2560
    :cond_c
    const-string/jumbo v3, "preferred-packages"

    #@265
    move-object/from16 v0, v45

    #@267
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26a
    move-result v3

    #@26b
    if-nez v3, :cond_7

    #@26d
    .line 2562
    const-string/jumbo v3, "preferred-activities"

    #@270
    move-object/from16 v0, v45

    #@272
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@275
    move-result v3

    #@276
    if-eqz v3, :cond_d

    #@278
    .line 2565
    const/4 v3, 0x0

    #@279
    move-object/from16 v0, p0

    #@27b
    move-object/from16 v1, v41

    #@27d
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@280
    goto/16 :goto_1

    #@282
    .line 2566
    :cond_d
    const-string/jumbo v3, "persistent-preferred-activities"

    #@285
    move-object/from16 v0, v45

    #@287
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28a
    move-result v3

    #@28b
    if-eqz v3, :cond_e

    #@28d
    .line 2569
    const/4 v3, 0x0

    #@28e
    move-object/from16 v0, p0

    #@290
    move-object/from16 v1, v41

    #@292
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@295
    goto/16 :goto_1

    #@297
    .line 2570
    :cond_e
    const-string/jumbo v3, "crossProfile-intent-filters"

    #@29a
    move-object/from16 v0, v45

    #@29c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29f
    move-result v3

    #@2a0
    if-eqz v3, :cond_f

    #@2a2
    .line 2573
    const/4 v3, 0x0

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    move-object/from16 v1, v41

    #@2a7
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2aa
    goto/16 :goto_1

    #@2ac
    .line 2574
    :cond_f
    const-string/jumbo v3, "default-browser"

    #@2af
    move-object/from16 v0, v45

    #@2b1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b4
    move-result v3

    #@2b5
    if-eqz v3, :cond_10

    #@2b7
    .line 2575
    const/4 v3, 0x0

    #@2b8
    move-object/from16 v0, p0

    #@2ba
    move-object/from16 v1, v41

    #@2bc
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2bf
    goto/16 :goto_1

    #@2c1
    .line 2576
    :cond_10
    const-string/jumbo v3, "updated-package"

    #@2c4
    move-object/from16 v0, v45

    #@2c6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c9
    move-result v3

    #@2ca
    if-eqz v3, :cond_11

    #@2cc
    .line 2577
    move-object/from16 v0, p0

    #@2ce
    move-object/from16 v1, v41

    #@2d0
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2d3
    goto/16 :goto_1

    #@2d5
    .line 2578
    :cond_11
    const-string/jumbo v3, "cleaning-package"

    #@2d8
    move-object/from16 v0, v45

    #@2da
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2dd
    move-result v3

    #@2de
    if-eqz v3, :cond_14

    #@2e0
    .line 2579
    const-string/jumbo v3, "name"

    #@2e3
    const/4 v4, 0x0

    #@2e4
    move-object/from16 v0, v41

    #@2e6
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e9
    move-result-object v36

    #@2ea
    .line 2580
    .local v36, "name":Ljava/lang/String;
    const-string/jumbo v3, "user"

    #@2ed
    const/4 v4, 0x0

    #@2ee
    move-object/from16 v0, v41

    #@2f0
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f3
    move-result-object v50

    #@2f4
    .line 2581
    .local v50, "userStr":Ljava/lang/String;
    const-string/jumbo v3, "code"

    #@2f7
    const/4 v4, 0x0

    #@2f8
    move-object/from16 v0, v41

    #@2fa
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@2fd
    move-result-object v21

    #@2fe
    .line 2582
    .local v21, "codeStr":Ljava/lang/String;
    if-eqz v36, :cond_7

    #@300
    .line 2583
    const/16 v49, 0x0

    #@302
    .line 2584
    .local v49, "userId":I
    const/16 v20, 0x1

    #@304
    .line 2586
    .local v20, "andCode":Z
    if-eqz v50, :cond_12

    #@306
    .line 2587
    :try_start_5
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@309
    move-result v49

    #@30a
    .line 2591
    :cond_12
    :goto_5
    if-eqz v21, :cond_13

    #@30c
    .line 2592
    :try_start_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@30f
    move-result v20

    #@310
    .line 2594
    .end local v20    # "andCode":Z
    :cond_13
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    #@312
    move/from16 v0, v49

    #@314
    move-object/from16 v1, v36

    #@316
    move/from16 v2, v20

    #@318
    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    #@31b
    move-object/from16 v0, p0

    #@31d
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    #@320
    goto/16 :goto_1

    #@322
    .line 2589
    .restart local v20    # "andCode":Z
    :catch_2
    move-exception v27

    #@323
    .local v27, "e":Ljava/lang/NumberFormatException;
    goto :goto_5

    #@324
    .line 2596
    .end local v20    # "andCode":Z
    .end local v21    # "codeStr":Ljava/lang/String;
    .end local v27    # "e":Ljava/lang/NumberFormatException;
    .end local v36    # "name":Ljava/lang/String;
    .end local v49    # "userId":I
    .end local v50    # "userStr":Ljava/lang/String;
    :cond_14
    const-string/jumbo v3, "renamed-package"

    #@327
    move-object/from16 v0, v45

    #@329
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32c
    move-result v3

    #@32d
    if-eqz v3, :cond_15

    #@32f
    .line 2597
    const-string/jumbo v3, "new"

    #@332
    const/4 v4, 0x0

    #@333
    move-object/from16 v0, v41

    #@335
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@338
    move-result-object v37

    #@339
    .line 2598
    .local v37, "nname":Ljava/lang/String;
    const-string/jumbo v3, "old"

    #@33c
    const/4 v4, 0x0

    #@33d
    move-object/from16 v0, v41

    #@33f
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@342
    move-result-object v38

    #@343
    .line 2599
    .local v38, "oname":Ljava/lang/String;
    if-eqz v37, :cond_7

    #@345
    if-eqz v38, :cond_7

    #@347
    .line 2600
    move-object/from16 v0, p0

    #@349
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@34b
    move-object/from16 v0, v37

    #@34d
    move-object/from16 v1, v38

    #@34f
    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@352
    goto/16 :goto_1

    #@354
    .line 2602
    .end local v37    # "nname":Ljava/lang/String;
    .end local v38    # "oname":Ljava/lang/String;
    :cond_15
    const-string/jumbo v3, "restored-ivi"

    #@357
    move-object/from16 v0, v45

    #@359
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35c
    move-result v3

    #@35d
    if-eqz v3, :cond_16

    #@35f
    .line 2603
    move-object/from16 v0, p0

    #@361
    move-object/from16 v1, v41

    #@363
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    #@366
    goto/16 :goto_1

    #@368
    .line 2604
    :cond_16
    const-string/jumbo v3, "last-platform-version"

    #@36b
    move-object/from16 v0, v45

    #@36d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@370
    move-result v3

    #@371
    if-eqz v3, :cond_17

    #@373
    .line 2607
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@375
    .line 2606
    move-object/from16 v0, p0

    #@377
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@37a
    move-result-object v34

    #@37b
    .line 2609
    .local v34, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    #@37e
    .line 2608
    move-object/from16 v0, p0

    #@380
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@383
    move-result-object v30

    #@384
    .line 2611
    .local v30, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    #@387
    const/4 v4, 0x0

    #@388
    move-object/from16 v0, v41

    #@38a
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@38d
    move-result v3

    #@38e
    move-object/from16 v0, v34

    #@390
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@392
    .line 2612
    const-string/jumbo v3, "external"

    #@395
    const/4 v4, 0x0

    #@396
    move-object/from16 v0, v41

    #@398
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@39b
    move-result v3

    #@39c
    move-object/from16 v0, v30

    #@39e
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@3a0
    .line 2614
    const-string/jumbo v3, "fingerprint"

    #@3a3
    move-object/from16 v0, v41

    #@3a5
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3a8
    move-result-object v3

    #@3a9
    .line 2613
    move-object/from16 v0, v30

    #@3ab
    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@3ad
    move-object/from16 v0, v34

    #@3af
    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@3b1
    goto/16 :goto_1

    #@3b3
    .line 2616
    .end local v30    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v34    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_17
    const-string/jumbo v3, "database-version"

    #@3b6
    move-object/from16 v0, v45

    #@3b8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3bb
    move-result v3

    #@3bc
    if-eqz v3, :cond_18

    #@3be
    .line 2619
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@3c0
    .line 2618
    move-object/from16 v0, p0

    #@3c2
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@3c5
    move-result-object v34

    #@3c6
    .line 2621
    .restart local v34    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    #@3c9
    .line 2620
    move-object/from16 v0, p0

    #@3cb
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@3ce
    move-result-object v30

    #@3cf
    .line 2623
    .restart local v30    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    #@3d2
    const/4 v4, 0x0

    #@3d3
    move-object/from16 v0, v41

    #@3d5
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3d8
    move-result v3

    #@3d9
    move-object/from16 v0, v34

    #@3db
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@3dd
    .line 2624
    const-string/jumbo v3, "external"

    #@3e0
    const/4 v4, 0x0

    #@3e1
    move-object/from16 v0, v41

    #@3e3
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3e6
    move-result v3

    #@3e7
    move-object/from16 v0, v30

    #@3e9
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@3eb
    goto/16 :goto_1

    #@3ed
    .line 2626
    .end local v30    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v34    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_18
    const-string/jumbo v3, "verifier"

    #@3f0
    move-object/from16 v0, v45

    #@3f2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f5
    move-result v3

    #@3f6
    if-eqz v3, :cond_19

    #@3f8
    .line 2627
    const-string/jumbo v3, "device"

    #@3fb
    const/4 v4, 0x0

    #@3fc
    move-object/from16 v0, v41

    #@3fe
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@401
    move-result-object v22

    #@402
    .line 2629
    .local v22, "deviceIdentity":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v22 .. v22}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    #@405
    move-result-object v3

    #@406
    move-object/from16 v0, p0

    #@408
    iput-object v3, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@40a
    goto/16 :goto_1

    #@40c
    .line 2630
    :catch_3
    move-exception v26

    #@40d
    .line 2631
    .local v26, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string/jumbo v3, "PackageManager"

    #@410
    new-instance v4, Ljava/lang/StringBuilder;

    #@412
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@415
    const-string/jumbo v5, "Discard invalid verifier device id: "

    #@418
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v4

    #@41c
    .line 2632
    invoke-virtual/range {v26 .. v26}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@41f
    move-result-object v5

    #@420
    .line 2631
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@423
    move-result-object v4

    #@424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@427
    move-result-object v4

    #@428
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42b
    goto/16 :goto_1

    #@42d
    .line 2634
    .end local v22    # "deviceIdentity":Ljava/lang/String;
    .end local v26    # "e":Ljava/lang/IllegalArgumentException;
    :cond_19
    const-string/jumbo v3, "read-external-storage"

    #@430
    move-object/from16 v0, v45

    #@432
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@435
    move-result v3

    #@436
    if-eqz v3, :cond_1a

    #@438
    .line 2635
    const-string/jumbo v3, "enforcement"

    #@43b
    const/4 v4, 0x0

    #@43c
    move-object/from16 v0, v41

    #@43e
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@441
    move-result-object v29

    #@442
    .line 2636
    .local v29, "enforcement":Ljava/lang/String;
    const-string/jumbo v3, "1"

    #@445
    move-object/from16 v0, v29

    #@447
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44a
    move-result v3

    #@44b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@44e
    move-result-object v3

    #@44f
    move-object/from16 v0, p0

    #@451
    iput-object v3, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@453
    goto/16 :goto_1

    #@455
    .line 2637
    .end local v29    # "enforcement":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v3, "keyset-settings"

    #@458
    move-object/from16 v0, v45

    #@45a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45d
    move-result v3

    #@45e
    if-eqz v3, :cond_1b

    #@460
    .line 2638
    move-object/from16 v0, p0

    #@462
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    #@464
    move-object/from16 v0, p0

    #@466
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@468
    move-object/from16 v0, v41

    #@46a
    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    #@46d
    goto/16 :goto_1

    #@46f
    .line 2639
    :cond_1b
    const-string/jumbo v3, "version"

    #@472
    move-object/from16 v0, v45

    #@474
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@477
    move-result v3

    #@478
    if-eqz v3, :cond_1c

    #@47a
    .line 2641
    const-string/jumbo v3, "volumeUuid"

    #@47d
    .line 2640
    move-object/from16 v0, v41

    #@47f
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@482
    move-result-object v52

    #@483
    .line 2642
    .local v52, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@485
    move-object/from16 v1, v52

    #@487
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@48a
    move-result-object v51

    #@48b
    .line 2643
    .local v51, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "sdkVersion"

    #@48e
    move-object/from16 v0, v41

    #@490
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@493
    move-result v3

    #@494
    move-object/from16 v0, v51

    #@496
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@498
    .line 2644
    const-string/jumbo v3, "sdkVersion"

    #@49b
    move-object/from16 v0, v41

    #@49d
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@4a0
    move-result v3

    #@4a1
    move-object/from16 v0, v51

    #@4a3
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@4a5
    .line 2645
    const-string/jumbo v3, "fingerprint"

    #@4a8
    move-object/from16 v0, v41

    #@4aa
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@4ad
    move-result-object v3

    #@4ae
    move-object/from16 v0, v51

    #@4b0
    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@4b2
    goto/16 :goto_1

    #@4b4
    .line 2648
    .end local v51    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v52    # "volumeUuid":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v3, "PackageManager"

    #@4b7
    new-instance v4, Ljava/lang/StringBuilder;

    #@4b9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4bc
    const-string/jumbo v5, "Unknown element under <packages>: "

    #@4bf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v4

    #@4c3
    .line 2649
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4c6
    move-result-object v5

    #@4c7
    .line 2648
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v4

    #@4cb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ce
    move-result-object v4

    #@4cf
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d2
    .line 2650
    invoke-static/range {v41 .. v41}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4d5
    goto/16 :goto_1

    #@4d7
    .line 2654
    .end local v45    # "tagName":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {v43 .. v43}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    #@4da
    goto/16 :goto_2

    #@4dc
    .line 2700
    .end local v39    # "outerDepth":I
    .end local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "type":I
    .restart local v19    # "N":I
    .restart local v31    # "i":I
    .restart local v33    # "idObj":Ljava/lang/Object;
    .restart local v40    # "p":Lcom/android/server/pm/PackageSetting;
    .restart local v42    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_1e
    move-object/from16 v0, v40

    #@4de
    move-object/from16 v1, v42

    #@4e0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    #@4e3
    goto/16 :goto_4

    #@4e5
    .line 2701
    .end local v40    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_1f
    if-eqz v33, :cond_20

    #@4e7
    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4ec
    const-string/jumbo v4, "Bad package setting: package "

    #@4ef
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v3

    #@4f3
    move-object/from16 v0, v42

    #@4f5
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@4f7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fa
    move-result-object v3

    #@4fb
    const-string/jumbo v4, " has shared uid "

    #@4fe
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@501
    move-result-object v3

    #@502
    .line 2703
    move-object/from16 v0, v42

    #@504
    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@506
    .line 2702
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@509
    move-result-object v3

    #@50a
    .line 2703
    const-string/jumbo v4, " that is not a shared uid\n"

    #@50d
    .line 2702
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@510
    move-result-object v3

    #@511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@514
    move-result-object v35

    #@515
    .line 2704
    .local v35, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@517
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@519
    move-object/from16 v0, v35

    #@51b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51e
    .line 2705
    const/4 v3, 0x6

    #@51f
    move-object/from16 v0, v35

    #@521
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@524
    goto/16 :goto_4

    #@526
    .line 2707
    .end local v35    # "msg":Ljava/lang/String;
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    #@528
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52b
    const-string/jumbo v4, "Bad package setting: package "

    #@52e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@531
    move-result-object v3

    #@532
    move-object/from16 v0, v42

    #@534
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@539
    move-result-object v3

    #@53a
    const-string/jumbo v4, " has shared uid "

    #@53d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@540
    move-result-object v3

    #@541
    .line 2708
    move-object/from16 v0, v42

    #@543
    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@545
    .line 2707
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@548
    move-result-object v3

    #@549
    .line 2708
    const-string/jumbo v4, " that is not defined\n"

    #@54c
    .line 2707
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54f
    move-result-object v3

    #@550
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@553
    move-result-object v35

    #@554
    .line 2709
    .restart local v35    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@556
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@558
    move-object/from16 v0, v35

    #@55a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55d
    .line 2710
    const/4 v3, 0x6

    #@55e
    move-object/from16 v0, v35

    #@560
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@563
    goto/16 :goto_4

    #@565
    .line 2713
    .end local v33    # "idObj":Ljava/lang/Object;
    .end local v35    # "msg":Ljava/lang/String;
    .end local v42    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_21
    move-object/from16 v0, p0

    #@567
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@569
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@56c
    .line 2715
    move-object/from16 v0, p0

    #@56e
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@570
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@573
    move-result v3

    #@574
    if-nez v3, :cond_22

    #@576
    .line 2716
    move-object/from16 v0, p0

    #@578
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@57a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@57d
    move-result v3

    #@57e
    .line 2715
    if-eqz v3, :cond_26

    #@580
    .line 2718
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    #@583
    .line 2719
    move-object/from16 v0, p0

    #@585
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@587
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@58a
    .line 2720
    move-object/from16 v0, p0

    #@58c
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@58e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@591
    .line 2722
    const/4 v3, 0x0

    #@592
    move-object/from16 v0, p0

    #@594
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@597
    .line 2733
    :cond_23
    :goto_6
    if-nez p2, :cond_28

    #@599
    .line 2734
    move-object/from16 v0, p0

    #@59b
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@59d
    const/4 v4, 0x0

    #@59e
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    #@5a1
    .line 2745
    :cond_24
    move-object/from16 v0, p0

    #@5a3
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@5a5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@5a8
    move-result-object v3

    #@5a9
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5ac
    move-result-object v23

    #@5ad
    .line 2746
    .local v23, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_25
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@5b0
    move-result v3

    #@5b1
    if-eqz v3, :cond_29

    #@5b3
    .line 2747
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b6
    move-result-object v24

    #@5b7
    check-cast v24, Lcom/android/server/pm/PackageSetting;

    #@5b9
    .line 2748
    .local v24, "disabledPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v24

    #@5bb
    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@5bd
    move-object/from16 v0, p0

    #@5bf
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    #@5c2
    move-result-object v32

    #@5c3
    .line 2749
    .local v32, "id":Ljava/lang/Object;
    if-eqz v32, :cond_25

    #@5c5
    move-object/from16 v0, v32

    #@5c7
    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    #@5c9
    if-eqz v3, :cond_25

    #@5cb
    .line 2750
    check-cast v32, Lcom/android/server/pm/SharedUserSetting;

    #@5cd
    .end local v32    # "id":Ljava/lang/Object;
    move-object/from16 v0, v32

    #@5cf
    move-object/from16 v1, v24

    #@5d1
    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@5d3
    goto :goto_7

    #@5d4
    .line 2724
    .end local v23    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v24    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_26
    if-nez p2, :cond_27

    #@5d6
    .line 2725
    const/4 v3, 0x0

    #@5d7
    move-object/from16 v0, p0

    #@5d9
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    #@5dc
    goto :goto_6

    #@5dd
    .line 2727
    :cond_27
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e0
    move-result-object v48

    #@5e1
    .local v48, "user$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    #@5e4
    move-result v3

    #@5e5
    if-eqz v3, :cond_23

    #@5e7
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5ea
    move-result-object v47

    #@5eb
    check-cast v47, Landroid/content/pm/UserInfo;

    #@5ed
    .line 2728
    .local v47, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v47

    #@5ef
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@5f1
    move-object/from16 v0, p0

    #@5f3
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    #@5f6
    goto :goto_8

    #@5f7
    .line 2736
    .end local v47    # "user":Landroid/content/pm/UserInfo;
    .end local v48    # "user$iterator":Ljava/util/Iterator;
    :cond_28
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5fa
    move-result-object v48

    #@5fb
    .restart local v48    # "user$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    #@5fe
    move-result v3

    #@5ff
    if-eqz v3, :cond_24

    #@601
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@604
    move-result-object v47

    #@605
    check-cast v47, Landroid/content/pm/UserInfo;

    #@607
    .line 2737
    .restart local v47    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@609
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@60b
    move-object/from16 v0, v47

    #@60d
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@60f
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    #@612
    goto :goto_9

    #@613
    .line 2754
    .end local v47    # "user":Landroid/content/pm/UserInfo;
    .end local v48    # "user$iterator":Ljava/util/Iterator;
    .restart local v23    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_29
    move-object/from16 v0, p0

    #@615
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@617
    const-string/jumbo v4, "Read completed successfully: "

    #@61a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61d
    move-result-object v3

    #@61e
    move-object/from16 v0, p0

    #@620
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@622
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@625
    move-result v4

    #@626
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@629
    move-result-object v3

    #@62a
    const-string/jumbo v4, " packages, "

    #@62d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@630
    move-result-object v3

    #@631
    .line 2755
    move-object/from16 v0, p0

    #@633
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@635
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@638
    move-result v4

    #@639
    .line 2754
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63c
    move-result-object v3

    #@63d
    .line 2755
    const-string/jumbo v4, " shared uids\n"

    #@640
    .line 2754
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@643
    .line 2757
    const/4 v3, 0x1

    #@644
    return v3

    #@645
    .line 2503
    .end local v19    # "N":I
    .end local v23    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v31    # "i":I
    .restart local v43    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v25

    #@646
    .restart local v25    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@648
    .end local v25    # "e":Ljava/io/IOException;
    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v44    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v25

    #@649
    .restart local v25    # "e":Ljava/io/IOException;
    move-object/from16 v43, v44

    #@64b
    .end local v44    # "str":Ljava/io/FileInputStream;
    .local v43, "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 42
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1376
    const/16 v34, 0x0

    #@2
    .line 1377
    .local v34, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    #@5
    move-result-object v38

    #@6
    .line 1378
    .local v38, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    #@9
    move-result-object v17

    #@a
    .line 1379
    .local v17, "backupFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1e

    #@10
    .line 1381
    :try_start_0
    new-instance v35, Ljava/io/FileInputStream;

    #@12
    move-object/from16 v0, v35

    #@14
    move-object/from16 v1, v17

    #@16
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@19
    .line 1382
    .end local v34    # "str":Ljava/io/FileInputStream;
    .local v35, "str":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@1d
    const-string/jumbo v40, "Reading from backup stopped packages file\n"

    #@20
    move-object/from16 v0, v40

    #@22
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 1384
    const-string/jumbo v5, "Need to read from backup stopped packages file"

    #@28
    .line 1383
    const/16 v40, 0x4

    #@2a
    move/from16 v0, v40

    #@2c
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2f
    .line 1385
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 1389
    const-string/jumbo v5, "PackageManager"

    #@38
    new-instance v40, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v41, "Cleaning up stopped packages file "

    #@40
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v40

    #@44
    move-object/from16 v0, v40

    #@46
    move-object/from16 v1, v38

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v40

    #@4c
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v40

    #@50
    move-object/from16 v0, v40

    #@52
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1391
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@58
    .line 1399
    :cond_0
    :goto_0
    if-nez v35, :cond_1d

    #@5a
    .line 1400
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    #@5d
    move-result v5

    #@5e
    if-nez v5, :cond_2

    #@60
    .line 1401
    move-object/from16 v0, p0

    #@62
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@64
    const-string/jumbo v40, "No stopped packages file found\n"

    #@67
    move-object/from16 v0, v40

    #@69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 1403
    const-string/jumbo v5, "No stopped packages file; assuming all started"

    #@6f
    .line 1402
    const/16 v40, 0x4

    #@71
    move/from16 v0, v40

    #@73
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@76
    .line 1409
    move-object/from16 v0, p0

    #@78
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@7a
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@7d
    move-result-object v5

    #@7e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v32

    #@82
    .local v32, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_1

    #@88
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v3

    #@8c
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@8e
    .line 1410
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    #@8f
    .line 1411
    const/4 v6, 0x1

    #@90
    .line 1412
    const/4 v7, 0x0

    #@91
    .line 1413
    const/4 v8, 0x0

    #@92
    .line 1414
    const/4 v9, 0x0

    #@93
    .line 1415
    const/4 v10, 0x0

    #@94
    const/4 v11, 0x0

    #@95
    const/4 v12, 0x0

    #@96
    .line 1416
    const/4 v13, 0x0

    #@97
    .line 1417
    const/4 v14, 0x0

    #@98
    const/4 v15, 0x0

    #@99
    move/from16 v4, p1

    #@9b
    .line 1410
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    #@9e
    goto :goto_1

    #@9f
    .line 1541
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v21

    #@a0
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v34, v35

    #@a2
    .line 1542
    .end local v35    # "str":Ljava/io/FileInputStream;
    .local v34, "str":Ljava/io/FileInputStream;
    :goto_2
    move-object/from16 v0, p0

    #@a4
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@a6
    const-string/jumbo v40, "Error reading: "

    #@a9
    move-object/from16 v0, v40

    #@ab
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    #@b2
    move-result-object v40

    #@b3
    move-object/from16 v0, v40

    #@b5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 1544
    new-instance v5, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v40, "Error reading stopped packages: "

    #@c0
    move-object/from16 v0, v40

    #@c2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    move-object/from16 v0, v21

    #@c8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    .line 1543
    const/16 v40, 0x6

    #@d2
    move/from16 v0, v40

    #@d4
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@d7
    .line 1545
    const-string/jumbo v5, "PackageManager"

    #@da
    const-string/jumbo v40, "Error reading package manager stopped packages"

    #@dd
    move-object/from16 v0, v40

    #@df
    move-object/from16 v1, v21

    #@e1
    invoke-static {v5, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e4
    .line 1372
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    #@e5
    .line 1393
    .local v34, "str":Ljava/io/FileInputStream;
    :catch_1
    move-exception v20

    #@e6
    .end local v34    # "str":Ljava/io/FileInputStream;
    .local v20, "e":Ljava/io/IOException;
    :goto_4
    move-object/from16 v35, v34

    #@e8
    .restart local v35    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0

    #@ea
    .line 1419
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v32    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    #@eb
    .line 1421
    .end local v32    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    new-instance v34, Ljava/io/FileInputStream;

    #@ed
    move-object/from16 v0, v34

    #@ef
    move-object/from16 v1, v38

    #@f1
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    #@f4
    .line 1423
    .end local v35    # "str":Ljava/io/FileInputStream;
    .local v34, "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@f7
    move-result-object v31

    #@f8
    .line 1424
    .local v31, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@fa
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@fd
    move-result-object v5

    #@fe
    move-object/from16 v0, v31

    #@100
    move-object/from16 v1, v34

    #@102
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@105
    .line 1427
    :cond_3
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@108
    move-result v37

    #@109
    .local v37, "type":I
    const/4 v5, 0x2

    #@10a
    move/from16 v0, v37

    #@10c
    if-eq v0, v5, :cond_4

    #@10e
    .line 1428
    const/4 v5, 0x1

    #@10f
    move/from16 v0, v37

    #@111
    if-ne v0, v5, :cond_3

    #@113
    .line 1432
    :cond_4
    const/4 v5, 0x2

    #@114
    move/from16 v0, v37

    #@116
    if-eq v0, v5, :cond_5

    #@118
    .line 1433
    move-object/from16 v0, p0

    #@11a
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@11c
    const-string/jumbo v40, "No start tag found in package restrictions file\n"

    #@11f
    move-object/from16 v0, v40

    #@121
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    .line 1435
    const-string/jumbo v5, "No start tag found in package manager stopped packages"

    #@127
    .line 1434
    const/16 v40, 0x5

    #@129
    move/from16 v0, v40

    #@12b
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@12e
    .line 1436
    return-void

    #@12f
    .line 1439
    :cond_5
    const/16 v26, 0x0

    #@131
    .line 1441
    .local v26, "maxAppLinkGeneration":I
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@134
    move-result v29

    #@135
    .line 1442
    .local v29, "outerDepth":I
    const/4 v4, 0x0

    #@136
    .line 1443
    :cond_6
    :goto_6
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@139
    move-result v37

    #@13a
    const/4 v5, 0x1

    #@13b
    move/from16 v0, v37

    #@13d
    if-eq v0, v5, :cond_1c

    #@13f
    .line 1444
    const/4 v5, 0x3

    #@140
    move/from16 v0, v37

    #@142
    if-ne v0, v5, :cond_7

    #@144
    .line 1445
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@147
    move-result v5

    #@148
    move/from16 v0, v29

    #@14a
    if-le v5, v0, :cond_1c

    #@14c
    .line 1446
    :cond_7
    const/4 v5, 0x3

    #@14d
    move/from16 v0, v37

    #@14f
    if-eq v0, v5, :cond_6

    #@151
    .line 1447
    const/4 v5, 0x4

    #@152
    move/from16 v0, v37

    #@154
    if-eq v0, v5, :cond_6

    #@156
    .line 1451
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@159
    move-result-object v36

    #@15a
    .line 1452
    .local v36, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "pkg"

    #@15d
    move-object/from16 v0, v36

    #@15f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@162
    move-result v5

    #@163
    if-eqz v5, :cond_17

    #@165
    .line 1453
    const-string/jumbo v5, "name"

    #@168
    const/16 v40, 0x0

    #@16a
    move-object/from16 v0, v31

    #@16c
    move-object/from16 v1, v40

    #@16e
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@171
    move-result-object v27

    #@172
    .line 1454
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@174
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@176
    move-object/from16 v0, v27

    #@178
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17b
    move-result-object v4

    #@17c
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@17e
    .line 1455
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_8

    #@180
    .line 1456
    const-string/jumbo v5, "PackageManager"

    #@183
    new-instance v40, Ljava/lang/StringBuilder;

    #@185
    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v41, "No package known for stopped package: "

    #@18b
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v40

    #@18f
    move-object/from16 v0, v40

    #@191
    move-object/from16 v1, v27

    #@193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v40

    #@197
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v40

    #@19b
    move-object/from16 v0, v40

    #@19d
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a0
    .line 1458
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1a3
    goto :goto_6

    #@1a4
    .line 1541
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "maxAppLinkGeneration":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v36    # "tagName":Ljava/lang/String;
    .end local v37    # "type":I
    :catch_2
    move-exception v21

    #@1a5
    .restart local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_2

    #@1a7
    .line 1461
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "maxAppLinkGeneration":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v36    # "tagName":Ljava/lang/String;
    .restart local v37    # "type":I
    :cond_8
    const-string/jumbo v5, "enabled"

    #@1aa
    const/16 v40, 0x0

    #@1ac
    move-object/from16 v0, v31

    #@1ae
    move-object/from16 v1, v40

    #@1b0
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b3
    move-result-object v22

    #@1b4
    .line 1462
    .local v22, "enabledStr":Ljava/lang/String;
    if-nez v22, :cond_c

    #@1b6
    .line 1463
    const/4 v6, 0x0

    #@1b7
    .line 1465
    .local v6, "enabled":I
    :goto_7
    const-string/jumbo v5, "enabledCaller"

    #@1ba
    .line 1464
    const/16 v40, 0x0

    #@1bc
    move-object/from16 v0, v31

    #@1be
    move-object/from16 v1, v40

    #@1c0
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c3
    move-result-object v11

    #@1c4
    .line 1466
    .local v11, "enabledCaller":Ljava/lang/String;
    const-string/jumbo v5, "inst"

    #@1c7
    const/16 v40, 0x0

    #@1c9
    move-object/from16 v0, v31

    #@1cb
    move-object/from16 v1, v40

    #@1cd
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d0
    move-result-object v24

    #@1d1
    .line 1467
    .local v24, "installedStr":Ljava/lang/String;
    if-nez v24, :cond_d

    #@1d3
    .line 1468
    const/4 v7, 0x1

    #@1d4
    .line 1469
    :goto_8
    const-string/jumbo v5, "stopped"

    #@1d7
    const/16 v40, 0x0

    #@1d9
    move-object/from16 v0, v31

    #@1db
    move-object/from16 v1, v40

    #@1dd
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e0
    move-result-object v33

    #@1e1
    .line 1470
    .local v33, "stoppedStr":Ljava/lang/String;
    if-nez v33, :cond_e

    #@1e3
    .line 1471
    const/4 v8, 0x0

    #@1e4
    .line 1474
    :goto_9
    const-string/jumbo v5, "blocked"

    #@1e7
    const/16 v40, 0x0

    #@1e9
    move-object/from16 v0, v31

    #@1eb
    move-object/from16 v1, v40

    #@1ed
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f0
    move-result-object v19

    #@1f1
    .line 1475
    .local v19, "blockedStr":Ljava/lang/String;
    if-nez v19, :cond_f

    #@1f3
    .line 1476
    const/4 v10, 0x0

    #@1f4
    .line 1477
    :goto_a
    const-string/jumbo v5, "hidden"

    #@1f7
    const/16 v40, 0x0

    #@1f9
    move-object/from16 v0, v31

    #@1fb
    move-object/from16 v1, v40

    #@1fd
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@200
    move-result-object v23

    #@201
    .line 1478
    .local v23, "hiddenStr":Ljava/lang/String;
    if-nez v23, :cond_10

    #@203
    .line 1480
    :goto_b
    const-string/jumbo v5, "nl"

    #@206
    const/16 v40, 0x0

    #@208
    move-object/from16 v0, v31

    #@20a
    move-object/from16 v1, v40

    #@20c
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20f
    move-result-object v28

    #@210
    .line 1481
    .local v28, "notLaunchedStr":Ljava/lang/String;
    if-nez v33, :cond_11

    #@212
    .line 1482
    const/4 v9, 0x0

    #@213
    .line 1484
    :goto_c
    const-string/jumbo v5, "blockUninstall"

    #@216
    .line 1483
    const/16 v40, 0x0

    #@218
    move-object/from16 v0, v31

    #@21a
    move-object/from16 v1, v40

    #@21c
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21f
    move-result-object v18

    #@220
    .line 1485
    .local v18, "blockUninstallStr":Ljava/lang/String;
    if-nez v18, :cond_12

    #@222
    .line 1486
    const/4 v14, 0x0

    #@223
    .line 1489
    :goto_d
    const-string/jumbo v5, "domainVerificationStatus"

    #@226
    const/16 v40, 0x0

    #@228
    move-object/from16 v0, v31

    #@22a
    move-object/from16 v1, v40

    #@22c
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22f
    move-result-object v39

    #@230
    .line 1490
    .local v39, "verifStateStr":Ljava/lang/String;
    if-nez v39, :cond_13

    #@232
    .line 1491
    const/4 v15, 0x0

    #@233
    .line 1494
    .local v15, "verifState":I
    :goto_e
    const-string/jumbo v5, "app-link-generation"

    #@236
    const/16 v40, 0x0

    #@238
    move-object/from16 v0, v31

    #@23a
    move-object/from16 v1, v40

    #@23c
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23f
    move-result-object v25

    #@240
    .line 1495
    .local v25, "linkGenStr":Ljava/lang/String;
    if-nez v25, :cond_14

    #@242
    const/16 v16, 0x0

    #@244
    .line 1496
    .local v16, "linkGeneration":I
    :goto_f
    move/from16 v0, v16

    #@246
    move/from16 v1, v26

    #@248
    if-le v0, v1, :cond_9

    #@24a
    .line 1497
    move/from16 v26, v16

    #@24c
    .line 1500
    :cond_9
    const/4 v12, 0x0

    #@24d
    .line 1501
    .local v12, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    #@24e
    .line 1503
    .local v13, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@251
    move-result v30

    #@252
    .line 1504
    .end local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "packageDepth":I
    :cond_a
    :goto_10
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@255
    move-result v37

    #@256
    const/4 v5, 0x1

    #@257
    move/from16 v0, v37

    #@259
    if-eq v0, v5, :cond_16

    #@25b
    .line 1505
    const/4 v5, 0x3

    #@25c
    move/from16 v0, v37

    #@25e
    if-ne v0, v5, :cond_b

    #@260
    .line 1506
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@263
    move-result v5

    #@264
    move/from16 v0, v30

    #@266
    if-le v5, v0, :cond_16

    #@268
    .line 1507
    :cond_b
    const/4 v5, 0x3

    #@269
    move/from16 v0, v37

    #@26b
    if-eq v0, v5, :cond_a

    #@26d
    .line 1508
    const/4 v5, 0x4

    #@26e
    move/from16 v0, v37

    #@270
    if-eq v0, v5, :cond_a

    #@272
    .line 1511
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@275
    move-result-object v36

    #@276
    .line 1512
    const-string/jumbo v5, "enabled-components"

    #@279
    move-object/from16 v0, v36

    #@27b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27e
    move-result v5

    #@27f
    if-eqz v5, :cond_15

    #@281
    .line 1513
    move-object/from16 v0, p0

    #@283
    move-object/from16 v1, v31

    #@285
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    #@288
    move-result-object v12

    #@289
    .local v12, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_10

    #@28a
    .line 1463
    .end local v6    # "enabled":I
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "verifState":I
    .end local v16    # "linkGeneration":I
    .end local v18    # "blockUninstallStr":Ljava/lang/String;
    .end local v19    # "blockedStr":Ljava/lang/String;
    .end local v23    # "hiddenStr":Ljava/lang/String;
    .end local v24    # "installedStr":Ljava/lang/String;
    .end local v25    # "linkGenStr":Ljava/lang/String;
    .end local v28    # "notLaunchedStr":Ljava/lang/String;
    .end local v30    # "packageDepth":I
    .end local v33    # "stoppedStr":Ljava/lang/String;
    .end local v39    # "verifStateStr":Ljava/lang/String;
    :cond_c
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@28d
    move-result v6

    #@28e
    .restart local v6    # "enabled":I
    goto/16 :goto_7

    #@290
    .line 1468
    .restart local v11    # "enabledCaller":Ljava/lang/String;
    .restart local v24    # "installedStr":Ljava/lang/String;
    :cond_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@293
    move-result v7

    #@294
    .local v7, "installed":Z
    goto/16 :goto_8

    #@296
    .line 1471
    .end local v7    # "installed":Z
    .restart local v33    # "stoppedStr":Ljava/lang/String;
    :cond_e
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@299
    move-result v8

    #@29a
    .local v8, "stopped":Z
    goto/16 :goto_9

    #@29c
    .line 1476
    .end local v8    # "stopped":Z
    .restart local v19    # "blockedStr":Ljava/lang/String;
    :cond_f
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@29f
    move-result v10

    #@2a0
    .local v10, "hidden":Z
    goto/16 :goto_a

    #@2a2
    .line 1479
    .end local v10    # "hidden":Z
    .restart local v23    # "hiddenStr":Ljava/lang/String;
    :cond_10
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2a5
    move-result v10

    #@2a6
    .restart local v10    # "hidden":Z
    goto/16 :goto_b

    #@2a8
    .line 1482
    .end local v10    # "hidden":Z
    .restart local v28    # "notLaunchedStr":Ljava/lang/String;
    :cond_11
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2ab
    move-result v9

    #@2ac
    .local v9, "notLaunched":Z
    goto/16 :goto_c

    #@2ae
    .line 1486
    .end local v9    # "notLaunched":Z
    .restart local v18    # "blockUninstallStr":Ljava/lang/String;
    :cond_12
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2b1
    move-result v14

    #@2b2
    .local v14, "blockUninstall":Z
    goto/16 :goto_d

    #@2b4
    .line 1492
    .end local v14    # "blockUninstall":Z
    .restart local v39    # "verifStateStr":Ljava/lang/String;
    :cond_13
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b7
    move-result v15

    #@2b8
    .restart local v15    # "verifState":I
    goto/16 :goto_e

    #@2ba
    .line 1495
    .restart local v25    # "linkGenStr":Ljava/lang/String;
    :cond_14
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2bd
    move-result v16

    #@2be
    .restart local v16    # "linkGeneration":I
    goto :goto_f

    #@2bf
    .line 1514
    .restart local v30    # "packageDepth":I
    :cond_15
    const-string/jumbo v5, "disabled-components"

    #@2c2
    move-object/from16 v0, v36

    #@2c4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c7
    move-result v5

    #@2c8
    if-eqz v5, :cond_a

    #@2ca
    .line 1515
    move-object/from16 v0, p0

    #@2cc
    move-object/from16 v1, v31

    #@2ce
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    #@2d1
    move-result-object v13

    #@2d2
    .local v13, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_10

    #@2d3
    .end local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_16
    move/from16 v5, p1

    #@2d5
    .line 1519
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@2d8
    goto/16 :goto_6

    #@2da
    .line 1548
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "enabled":I
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v15    # "verifState":I
    .end local v16    # "linkGeneration":I
    .end local v18    # "blockUninstallStr":Ljava/lang/String;
    .end local v19    # "blockedStr":Ljava/lang/String;
    .end local v22    # "enabledStr":Ljava/lang/String;
    .end local v23    # "hiddenStr":Ljava/lang/String;
    .end local v24    # "installedStr":Ljava/lang/String;
    .end local v25    # "linkGenStr":Ljava/lang/String;
    .end local v26    # "maxAppLinkGeneration":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "notLaunchedStr":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "packageDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "stoppedStr":Ljava/lang/String;
    .end local v36    # "tagName":Ljava/lang/String;
    .end local v37    # "type":I
    .end local v39    # "verifStateStr":Ljava/lang/String;
    :catch_3
    move-exception v20

    #@2db
    .line 1549
    .restart local v20    # "e":Ljava/io/IOException;
    :goto_11
    move-object/from16 v0, p0

    #@2dd
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@2df
    const-string/jumbo v40, "Error reading: "

    #@2e2
    move-object/from16 v0, v40

    #@2e4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v5

    #@2e8
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@2eb
    move-result-object v40

    #@2ec
    move-object/from16 v0, v40

    #@2ee
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    .line 1550
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f6
    const-string/jumbo v40, "Error reading settings: "

    #@2f9
    move-object/from16 v0, v40

    #@2fb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v5

    #@2ff
    move-object/from16 v0, v20

    #@301
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v5

    #@305
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v5

    #@309
    const/16 v40, 0x6

    #@30b
    move/from16 v0, v40

    #@30d
    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@310
    .line 1551
    const-string/jumbo v5, "PackageManager"

    #@313
    const-string/jumbo v40, "Error reading package manager stopped packages"

    #@316
    move-object/from16 v0, v40

    #@318
    move-object/from16 v1, v20

    #@31a
    invoke-static {v5, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31d
    goto/16 :goto_3

    #@31f
    .line 1522
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v26    # "maxAppLinkGeneration":I
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v36    # "tagName":Ljava/lang/String;
    .restart local v37    # "type":I
    :cond_17
    :try_start_5
    const-string/jumbo v5, "preferred-activities"

    #@322
    move-object/from16 v0, v36

    #@324
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@327
    move-result v5

    #@328
    if-eqz v5, :cond_18

    #@32a
    .line 1523
    move-object/from16 v0, p0

    #@32c
    move-object/from16 v1, v31

    #@32e
    move/from16 v2, p1

    #@330
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@333
    goto/16 :goto_6

    #@335
    .line 1524
    :cond_18
    const-string/jumbo v5, "persistent-preferred-activities"

    #@338
    move-object/from16 v0, v36

    #@33a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33d
    move-result v5

    #@33e
    if-eqz v5, :cond_19

    #@340
    .line 1525
    move-object/from16 v0, p0

    #@342
    move-object/from16 v1, v31

    #@344
    move/from16 v2, p1

    #@346
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@349
    goto/16 :goto_6

    #@34b
    .line 1526
    :cond_19
    const-string/jumbo v5, "crossProfile-intent-filters"

    #@34e
    move-object/from16 v0, v36

    #@350
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@353
    move-result v5

    #@354
    if-eqz v5, :cond_1a

    #@356
    .line 1527
    move-object/from16 v0, p0

    #@358
    move-object/from16 v1, v31

    #@35a
    move/from16 v2, p1

    #@35c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@35f
    goto/16 :goto_6

    #@361
    .line 1528
    :cond_1a
    const-string/jumbo v5, "default-apps"

    #@364
    move-object/from16 v0, v36

    #@366
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@369
    move-result v5

    #@36a
    if-eqz v5, :cond_1b

    #@36c
    .line 1529
    move-object/from16 v0, p0

    #@36e
    move-object/from16 v1, v31

    #@370
    move/from16 v2, p1

    #@372
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@375
    goto/16 :goto_6

    #@377
    .line 1531
    :cond_1b
    const-string/jumbo v5, "PackageManager"

    #@37a
    new-instance v40, Ljava/lang/StringBuilder;

    #@37c
    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    #@37f
    const-string/jumbo v41, "Unknown element under <stopped-packages>: "

    #@382
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@385
    move-result-object v40

    #@386
    .line 1532
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@389
    move-result-object v41

    #@38a
    .line 1531
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38d
    move-result-object v40

    #@38e
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@391
    move-result-object v40

    #@392
    move-object/from16 v0, v40

    #@394
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@397
    .line 1533
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@39a
    goto/16 :goto_6

    #@39c
    .line 1537
    .end local v36    # "tagName":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileInputStream;->close()V

    #@39f
    .line 1539
    move-object/from16 v0, p0

    #@3a1
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@3a3
    add-int/lit8 v40, v26, 0x1

    #@3a5
    move/from16 v0, p1

    #@3a7
    move/from16 v1, v40

    #@3a9
    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@3ac
    goto/16 :goto_3

    #@3ae
    .line 1548
    .end local v26    # "maxAppLinkGeneration":I
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "str":Ljava/io/FileInputStream;
    .end local v37    # "type":I
    .restart local v35    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v20

    #@3af
    .restart local v20    # "e":Ljava/io/IOException;
    move-object/from16 v34, v35

    #@3b1
    .end local v35    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_11

    #@3b3
    .line 1393
    .end local v20    # "e":Ljava/io/IOException;
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v35    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v20

    #@3b4
    .restart local v20    # "e":Ljava/io/IOException;
    move-object/from16 v34, v35

    #@3b6
    .end local v35    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4

    #@3b8
    .end local v20    # "e":Ljava/io/IOException;
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v35    # "str":Ljava/io/FileInputStream;
    :cond_1d
    move-object/from16 v34, v35

    #@3ba
    .end local v35    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_5

    #@3bc
    .local v34, "str":Ljava/io/FileInputStream;
    :cond_1e
    move-object/from16 v35, v34

    #@3be
    .restart local v35    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x3

    #@2
    .line 1248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 1250
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v3

    #@a
    .local v3, "type":I
    const/4 v4, 0x1

    #@b
    if-eq v3, v4, :cond_4

    #@d
    .line 1251
    if-ne v3, v6, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v4

    #@13
    if-le v4, v0, :cond_4

    #@15
    .line 1252
    :cond_1
    if-eq v3, v6, :cond_0

    #@17
    const/4 v4, 0x4

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 1256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 1257
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 1258
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    #@29
    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    .line 1259
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@2e
    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    if-nez v4, :cond_2

    #@34
    .line 1260
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@3b
    goto :goto_0

    #@3c
    .line 1263
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Error in package manager settings: <preferred-activity> "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 1264
    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@4a
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 1263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 1264
    const-string/jumbo v5, " at "

    #@55
    .line 1263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 1265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 1263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 1262
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 1269
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v5, "Unknown element under <preferred-activities>: "

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    .line 1268
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@84
    .line 1270
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@87
    goto/16 :goto_0

    #@89
    .line 1247
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readStoppedLPw()V
    .locals 15

    #@0
    .prologue
    .line 1940
    const/4 v8, 0x0

    #@1
    .line 1941
    .local v8, "str":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@6
    move-result v12

    #@7
    if-eqz v12, :cond_d

    #@9
    .line 1943
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    #@b
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@d
    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 1944
    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v9, "str":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@12
    const-string/jumbo v13, "Reading from backup stopped packages file\n"

    #@15
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1946
    const-string/jumbo v12, "Need to read from backup stopped packages file"

    #@1b
    .line 1945
    const/4 v13, 0x4

    #@1c
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1f
    .line 1947
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@21
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@24
    move-result v12

    #@25
    if-eqz v12, :cond_0

    #@27
    .line 1951
    const-string/jumbo v12, "PackageManager"

    #@2a
    new-instance v13, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v14, "Cleaning up stopped packages file "

    #@32
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v13

    #@36
    .line 1952
    iget-object v14, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@38
    .line 1951
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v13

    #@3c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v13

    #@40
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1953
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@45
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@48
    .line 1961
    :cond_0
    :goto_0
    if-nez v9, :cond_c

    #@4a
    .line 1962
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@4c
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@4f
    move-result v12

    #@50
    if-nez v12, :cond_2

    #@52
    .line 1963
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@54
    const-string/jumbo v13, "No stopped packages file found\n"

    #@57
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 1965
    const-string/jumbo v12, "No stopped packages file file; assuming all started"

    #@5d
    .line 1964
    const/4 v13, 0x4

    #@5e
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@61
    .line 1969
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@63
    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@66
    move-result-object v12

    #@67
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v6

    #@6b
    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v12

    #@6f
    if-eqz v12, :cond_1

    #@71
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v5

    #@75
    check-cast v5, Lcom/android/server/pm/PackageSetting;

    #@77
    .line 1970
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v12, 0x0

    #@78
    const/4 v13, 0x0

    #@79
    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    #@7c
    .line 1971
    const/4 v12, 0x0

    #@7d
    const/4 v13, 0x0

    #@7e
    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    #@81
    goto :goto_1

    #@82
    .line 2025
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@83
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v9

    #@84
    .line 2026
    .end local v9    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :goto_2
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@86
    const-string/jumbo v13, "Error reading: "

    #@89
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v12

    #@8d
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    #@90
    move-result-object v13

    #@91
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 2028
    new-instance v12, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v13, "Error reading stopped packages: "

    #@9c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v12

    #@a0
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v12

    #@a4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v12

    #@a8
    .line 2027
    const/4 v13, 0x6

    #@a9
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@ac
    .line 2029
    const-string/jumbo v12, "PackageManager"

    #@af
    const-string/jumbo v13, "Error reading package manager stopped packages"

    #@b2
    invoke-static {v12, v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b5
    .line 1939
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    #@b6
    .line 1955
    .local v8, "str":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@b7
    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    move-object v9, v8

    #@b8
    .restart local v9    # "str":Ljava/io/FileInputStream;
    goto :goto_0

    #@b9
    .line 1973
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    #@ba
    .line 1975
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    #@bc
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@be
    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    #@c1
    .line 1977
    .end local v9    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c4
    move-result-object v4

    #@c5
    .line 1978
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    #@c6
    invoke-interface {v4, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@c9
    .line 1981
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@cc
    move-result v11

    #@cd
    .local v11, "type":I
    const/4 v12, 0x2

    #@ce
    if-eq v11, v12, :cond_4

    #@d0
    .line 1982
    const/4 v12, 0x1

    #@d1
    if-ne v11, v12, :cond_3

    #@d3
    .line 1986
    :cond_4
    const/4 v12, 0x2

    #@d4
    if-eq v11, v12, :cond_5

    #@d6
    .line 1987
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@d8
    const-string/jumbo v13, "No start tag found in stopped packages file\n"

    #@db
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 1989
    const-string/jumbo v12, "No start tag found in package manager stopped packages"

    #@e1
    .line 1988
    const/4 v13, 0x5

    #@e2
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@e5
    .line 1990
    return-void

    #@e6
    .line 1993
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e9
    move-result v3

    #@ea
    .line 1994
    .local v3, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@ed
    move-result v11

    #@ee
    const/4 v12, 0x1

    #@ef
    if-eq v11, v12, :cond_b

    #@f1
    .line 1995
    const/4 v12, 0x3

    #@f2
    if-ne v11, v12, :cond_7

    #@f4
    .line 1996
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f7
    move-result v12

    #@f8
    if-le v12, v3, :cond_b

    #@fa
    .line 1997
    :cond_7
    const/4 v12, 0x3

    #@fb
    if-eq v11, v12, :cond_6

    #@fd
    .line 1998
    const/4 v12, 0x4

    #@fe
    if-eq v11, v12, :cond_6

    #@100
    .line 2002
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@103
    move-result-object v10

    #@104
    .line 2003
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "pkg"

    #@107
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v12

    #@10b
    if-eqz v12, :cond_a

    #@10d
    .line 2004
    const-string/jumbo v12, "name"

    #@110
    const/4 v13, 0x0

    #@111
    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@114
    move-result-object v2

    #@115
    .line 2005
    .local v2, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@117
    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    move-result-object v7

    #@11b
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    #@11d
    .line 2006
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_9

    #@11f
    .line 2007
    const/4 v12, 0x1

    #@120
    const/4 v13, 0x0

    #@121
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    #@124
    .line 2008
    const-string/jumbo v12, "1"

    #@127
    const-string/jumbo v13, "nl"

    #@12a
    const/4 v14, 0x0

    #@12b
    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12e
    move-result-object v13

    #@12f
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@132
    move-result v12

    #@133
    if-eqz v12, :cond_8

    #@135
    .line 2009
    const/4 v12, 0x1

    #@136
    const/4 v13, 0x0

    #@137
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    #@13a
    .line 2015
    :cond_8
    :goto_7
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@13d
    goto :goto_6

    #@13e
    .line 2025
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_2
    move-exception v1

    #@13f
    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_2

    #@141
    .line 2012
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_9
    const-string/jumbo v12, "PackageManager"

    #@144
    .line 2013
    new-instance v13, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v14, "No package known for stopped package: "

    #@14c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v13

    #@150
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v13

    #@154
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v13

    #@158
    .line 2012
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@15b
    goto :goto_7

    #@15c
    .line 2032
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_3
    move-exception v0

    #@15d
    .line 2033
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@15f
    const-string/jumbo v13, "Error reading: "

    #@162
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v12

    #@166
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@169
    move-result-object v13

    #@16a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 2034
    new-instance v12, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v13, "Error reading settings: "

    #@175
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v12

    #@179
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v12

    #@17d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v12

    #@181
    const/4 v13, 0x6

    #@182
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@185
    .line 2035
    const-string/jumbo v12, "PackageManager"

    #@188
    const-string/jumbo v13, "Error reading package manager stopped packages"

    #@18b
    invoke-static {v12, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18e
    goto/16 :goto_3

    #@190
    .line 2017
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_a
    :try_start_5
    const-string/jumbo v12, "PackageManager"

    #@193
    new-instance v13, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v14, "Unknown element under <stopped-packages>: "

    #@19b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v13

    #@19f
    .line 2018
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a2
    move-result-object v14

    #@1a3
    .line 2017
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v13

    #@1a7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v13

    #@1ab
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ae
    .line 2019
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1b1
    goto/16 :goto_6

    #@1b3
    .line 2023
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@1b6
    goto/16 :goto_3

    #@1b8
    .line 2032
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "str":Ljava/io/FileInputStream;
    .end local v11    # "type":I
    .restart local v9    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    #@1b9
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v8, v9

    #@1ba
    .end local v9    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto :goto_8

    #@1bb
    .line 1955
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v9    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    #@1bc
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v8, v9

    #@1bd
    .end local v9    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4

    #@1bf
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v9    # "str":Ljava/io/FileInputStream;
    :cond_c
    move-object v8, v9

    #@1c0
    .end local v9    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_5

    #@1c2
    .local v8, "str":Ljava/io/FileInputStream;
    :cond_d
    move-object v9, v8

    #@1c3
    .restart local v9    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3687
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@2
    monitor-enter v9

    #@3
    .line 3689
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 3690
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    #@10
    .line 3691
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@13
    .line 3694
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v0

    #@19
    .line 3695
    .local v0, "count":I
    const/4 v5, 0x0

    #@1a
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    #@1c
    .line 3696
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    #@21
    move-result v7

    #@22
    .line 3697
    .local v7, "sourceUserId":I
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@2a
    .line 3698
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v6, 0x0

    #@2b
    .line 3700
    .local v6, "needsWriting":Z
    new-instance v3, Landroid/util/ArraySet;

    #@2d
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    #@30
    move-result-object v8

    #@31
    invoke-direct {v3, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@34
    .line 3701
    .local v3, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v2

    #@38
    .local v2, "cpif$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_2

    #@3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    #@44
    .line 3702
    .local v1, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    #@47
    move-result v8

    #@48
    if-ne v8, p1, :cond_1

    #@4a
    .line 3703
    const/4 v6, 0x1

    #@4b
    .line 3704
    invoke-virtual {v4, v1}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 3687
    .end local v0    # "count":I
    .end local v1    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v2    # "cpif$iterator":Ljava/util/Iterator;
    .end local v3    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "i":I
    .end local v6    # "needsWriting":Z
    .end local v7    # "sourceUserId":I
    :catchall_0
    move-exception v8

    #@50
    monitor-exit v9

    #@51
    throw v8

    #@52
    .line 3707
    .restart local v0    # "count":I
    .restart local v2    # "cpif$iterator":Ljava/util/Iterator;
    .restart local v3    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .restart local v5    # "i":I
    .restart local v6    # "needsWriting":Z
    .restart local v7    # "sourceUserId":I
    :cond_2
    if-eqz v6, :cond_3

    #@54
    .line 3708
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 3695
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_0

    #@5a
    .end local v2    # "cpif$iterator":Ljava/util/Iterator;
    .end local v3    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v6    # "needsWriting":Z
    .end local v7    # "sourceUserId":I
    :cond_4
    monitor-exit v9

    #@5b
    .line 3686
    return-void
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 467
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1142
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1143
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 1147
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1149
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    #@f
    .line 1150
    const/4 v1, 0x1

    #@10
    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    #@0
    .prologue
    .line 1154
    const/4 v0, 0x0

    #@1
    .line 1155
    .local v0, "result":Z
    const/4 v2, 0x0

    #@2
    array-length v3, p2

    #@3
    .end local v0    # "result":Z
    :goto_0
    if-ge v2, v3, :cond_0

    #@5
    aget v1, p2, v2

    #@7
    .line 1156
    .local v1, "userId":I
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    #@a
    move-result v4

    #@b
    or-int/2addr v0, v4

    #@c
    .line 1155
    .local v0, "result":Z
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1158
    .end local v0    # "result":Z
    .end local v1    # "userId":I
    :cond_0
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 923
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    #@a
    .line 924
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 925
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 926
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@15
    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    #@18
    .line 927
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@1a
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@1c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 928
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@24
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@26
    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@28
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 929
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@2d
    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@2f
    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    #@32
    .line 930
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@34
    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@36
    return v1

    #@37
    .line 933
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@39
    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    #@3c
    .line 934
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@3e
    return v1

    #@3f
    .line 937
    :cond_1
    const/4 v1, -0x1

    #@40
    return v1
.end method

.method removeUserLPw(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3670
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 3671
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Map$Entry;

    #@16
    .line 3672
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@1c
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    #@1f
    goto :goto_0

    #@20
    .line 3674
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@25
    .line 3675
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    #@28
    move-result-object v3

    #@29
    .line 3676
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@2c
    .line 3677
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    #@2f
    move-result-object v3

    #@30
    .line 3678
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@33
    .line 3679
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    #@36
    .line 3681
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@38
    invoke-static {v4, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    #@3b
    .line 3683
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    #@3e
    .line 3669
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1162
    const/4 v0, -0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 1163
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a
    .line 1166
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@d
    .line 1167
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 381
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@a
    .line 382
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    #@d
    move-result v1

    #@e
    if-eq v1, p2, :cond_0

    #@10
    .line 383
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    #@13
    .line 379
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 390
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@a
    .line 391
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    #@d
    .line 388
    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 9
    .param p1, "yucky"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 3829
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    #@3
    move-result v7

    #@4
    .line 3830
    .local v7, "appId":I
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v8

    #@a
    check-cast v8, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 3831
    .local v8, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v8, :cond_0

    #@e
    .line 3832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Unknown package: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 3834
    :cond_0
    if-nez p4, :cond_1

    #@2a
    iget v0, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2c
    if-eq v7, v0, :cond_1

    #@2e
    .line 3835
    new-instance v0, Ljava/lang/SecurityException;

    #@30
    .line 3836
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "Permission Denial: attempt to change stopped state from pid="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 3837
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3f
    move-result v2

    #@40
    .line 3836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 3838
    const-string/jumbo v2, ", uid="

    #@47
    .line 3836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 3838
    const-string/jumbo v2, ", package uid="

    #@52
    .line 3836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 3838
    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    #@58
    .line 3836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 3835
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0

    #@64
    .line 3847
    :cond_1
    invoke-virtual {v8, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@67
    move-result v0

    #@68
    if-eq v0, p3, :cond_4

    #@6a
    .line 3848
    invoke-virtual {v8, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    #@6d
    .line 3850
    invoke-virtual {v8, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_3

    #@73
    .line 3851
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@75
    if-eqz v0, :cond_2

    #@77
    .line 3852
    const-string/jumbo v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    #@7a
    .line 3853
    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@7c
    .line 3854
    iget-object v4, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@7e
    const/4 v0, 0x1

    #@7f
    new-array v6, v0, [I

    #@81
    const/4 v0, 0x0

    #@82
    aput p6, v6, v0

    #@84
    .line 3853
    const/4 v3, 0x0

    #@85
    .line 3854
    const/4 v5, 0x0

    #@86
    move-object v0, p1

    #@87
    .line 3852
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@8a
    .line 3856
    :cond_2
    const/4 v0, 0x0

    #@8b
    invoke-virtual {v8, v0, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    #@8e
    .line 3858
    :cond_3
    const/4 v0, 0x1

    #@8f
    return v0

    #@90
    .line 3860
    :cond_4
    const/4 v0, 0x0

    #@91
    return v0
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "origPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 529
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    #@4
    if-ge v2, v4, :cond_4

    #@6
    .line 531
    if-nez v2, :cond_2

    #@8
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@a
    .line 532
    .local v3, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "bp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_3

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@1e
    .line 533
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 538
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@28
    .line 539
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    #@2a
    .line 540
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@2c
    .line 541
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 542
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@32
    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@34
    .line 544
    :cond_1
    iput v6, v0, Lcom/android/server/pm/BasePermission;->uid:I

    #@36
    .line 545
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/BasePermission;->setGids([IZ)V

    #@39
    goto :goto_2

    #@3a
    .line 531
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "bp$iterator":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@3c
    .restart local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    goto :goto_1

    #@3d
    .line 529
    .restart local v1    # "bp$iterator":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 527
    .end local v1    # "bp$iterator":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_4
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1102
    .local v1, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    #@a
    .line 1106
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 1110
    :cond_0
    const/4 v2, 0x2

    #@d
    if-ne p2, v2, :cond_1

    #@f
    .line 1111
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@11
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->get(I)I

    #@14
    move-result v2

    #@15
    add-int/lit8 v0, v2, 0x1

    #@17
    .line 1112
    .local v0, "alwaysGeneration":I
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v2, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@1c
    .line 1117
    :goto_0
    invoke-virtual {v1, p2, v0, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    #@1f
    .line 1118
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 1114
    .end local v0    # "alwaysGeneration":I
    :cond_1
    const/4 v0, 0x0

    #@22
    .restart local v0    # "alwaysGeneration":I
    goto :goto_0
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .locals 15
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 849
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6
    if-nez v13, :cond_1

    #@8
    .line 850
    :cond_0
    const-string/jumbo v13, "PackageManager"

    #@b
    .line 851
    const-string/jumbo v14, "Trying to update info for null package. Just ignoring"

    #@e
    .line 850
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 852
    const/16 v13, -0x2710

    #@13
    return v13

    #@14
    .line 856
    :cond_1
    move-object/from16 v0, p1

    #@16
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@18
    if-nez v13, :cond_2

    #@1a
    .line 857
    const/16 v13, -0x2710

    #@1c
    return v13

    #@1d
    .line 860
    :cond_2
    move-object/from16 v0, p1

    #@1f
    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@21
    .line 863
    .local v11, "sus":Lcom/android/server/pm/SharedUserSetting;
    move-object/from16 v0, p1

    #@23
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@25
    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@27
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v4

    #@2b
    .local v4, "eachPerm$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v13

    #@2f
    if-eqz v13, :cond_a

    #@31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/lang/String;

    #@37
    .line 864
    .local v3, "eachPerm":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/server/pm/BasePermission;

    #@3f
    .line 865
    .local v1, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_3

    #@41
    .line 870
    const/4 v12, 0x0

    #@42
    .line 871
    .local v12, "used":Z
    iget-object v13, v11, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@44
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v9

    #@48
    .local v9, "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v13

    #@4c
    if-eqz v13, :cond_5

    #@4e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    check-cast v8, Lcom/android/server/pm/PackageSetting;

    #@54
    .line 872
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@56
    if-eqz v13, :cond_4

    #@58
    .line 873
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@5a
    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5c
    move-object/from16 v0, p1

    #@5e
    iget-object v14, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@60
    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@62
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v13

    #@66
    if-nez v13, :cond_4

    #@68
    .line 874
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6a
    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@6c
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@6f
    move-result v13

    #@70
    .line 872
    if-eqz v13, :cond_4

    #@72
    .line 875
    const/4 v12, 0x1

    #@73
    .line 879
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_5
    if-nez v12, :cond_3

    #@75
    .line 883
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@78
    move-result-object v7

    #@79
    .line 884
    .local v7, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, p1

    #@7b
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@7d
    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@7f
    invoke-virtual {p0, v13}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    #@82
    move-result-object v2

    #@83
    .line 888
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_8

    #@85
    .line 889
    const/4 v10, 0x0

    #@86
    .line 890
    .local v10, "reqByDisabledSysPkg":Z
    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@88
    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8a
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v6

    #@8e
    .local v6, "permission$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v13

    #@92
    if-eqz v13, :cond_7

    #@94
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, Ljava/lang/String;

    #@9a
    .line 891
    .local v5, "permission":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v13

    #@9e
    if-eqz v13, :cond_6

    #@a0
    .line 892
    const/4 v10, 0x1

    #@a1
    .line 896
    .end local v5    # "permission":Ljava/lang/String;
    :cond_7
    if-nez v10, :cond_3

    #@a3
    .line 904
    .end local v6    # "permission$iterator":Ljava/util/Iterator;
    .end local v10    # "reqByDisabledSysPkg":Z
    :cond_8
    const/16 v13, 0xff

    #@a5
    const/4 v14, 0x0

    #@a6
    .line 903
    move/from16 v0, p2

    #@a8
    invoke-virtual {v7, v1, v0, v13, v14}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@ab
    .line 906
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    #@ae
    move-result v13

    #@af
    .line 907
    const/4 v14, 0x1

    #@b0
    .line 906
    if-ne v13, v14, :cond_9

    #@b2
    .line 908
    const/4 v13, -0x1

    #@b3
    return v13

    #@b4
    .line 912
    :cond_9
    move/from16 v0, p2

    #@b6
    invoke-virtual {v7, v1, v0}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@b9
    move-result v13

    #@ba
    .line 913
    const/4 v14, 0x1

    #@bb
    .line 912
    if-ne v13, v14, :cond_3

    #@bd
    .line 914
    return p2

    #@be
    .line 918
    .end local v1    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "eachPerm":Ljava/lang/String;
    .end local v7    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v9    # "pkg$iterator":Ljava/util/Iterator;
    .end local v12    # "used":Z
    :cond_a
    const/16 v13, -0x2710

    #@c0
    return v13
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1647
    const-string/jumbo v4, "all-intent-filter-verifications"

    #@4
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1648
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v0

    #@d
    .line 1649
    .local v0, "N":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 1650
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@18
    .line 1651
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@1b
    move-result-object v2

    #@1c
    .line 1652
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v2, :cond_0

    #@1e
    .line 1653
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@21
    .line 1649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1656
    .end local v2    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const-string/jumbo v4, "all-intent-filter-verifications"

    #@27
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 1646
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    #@0
    .prologue
    .line 1203
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@7
    move-result-object v2

    #@8
    const/4 v1, 0x0

    #@9
    array-length v3, v2

    #@a
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    aget v0, v2, v1

    #@e
    .line 1204
    .local v0, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@10
    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    #@13
    .line 1203
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1202
    .end local v0    # "userId":I
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    #@0
    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1195
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    #@6
    return-void

    #@7
    .line 1197
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/content/pm/UserInfo;

    #@17
    .line 1198
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@19
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@1c
    goto :goto_0

    #@1d
    .line 1193
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1618
    const-string/jumbo v3, "crossProfile-intent-filters"

    #@4
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1619
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@f
    .line 1620
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    #@11
    .line 1621
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "cpif$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    #@25
    .line 1622
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v3, "item"

    #@28
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1623
    invoke-virtual {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2e
    .line 1624
    const-string/jumbo v3, "item"

    #@31
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    goto :goto_0

    #@35
    .line 1627
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v1    # "cpif$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "crossProfile-intent-filters"

    #@38
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1617
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1702
    const-string/jumbo v1, "default-apps"

    #@4
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1703
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    .line 1704
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 1705
    const-string/jumbo v1, "default-browser"

    #@18
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 1706
    const-string/jumbo v1, "packageName"

    #@1e
    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21
    .line 1707
    const-string/jumbo v1, "default-browser"

    #@24
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 1709
    :cond_0
    const-string/jumbo v1, "default-apps"

    #@2a
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 1701
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2306
    const-string/jumbo v0, "updated-package"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2307
    const-string/jumbo v0, "name"

    #@a
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@c
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 2308
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2309
    const-string/jumbo v0, "realName"

    #@16
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@18
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2311
    :cond_0
    const-string/jumbo v0, "codePath"

    #@1e
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@20
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 2312
    const-string/jumbo v0, "ft"

    #@26
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    #@28
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 2313
    const-string/jumbo v0, "it"

    #@32
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    #@34
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 2314
    const-string/jumbo v0, "ut"

    #@3e
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    #@40
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 2315
    const-string/jumbo v0, "version"

    #@4a
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@4c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@53
    .line 2316
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@55
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_1

    #@5d
    .line 2317
    const-string/jumbo v0, "resourcePath"

    #@60
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@62
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 2319
    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@67
    if-eqz v0, :cond_2

    #@69
    .line 2320
    const-string/jumbo v0, "nativeLibraryPath"

    #@6c
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@6e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@71
    .line 2322
    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@73
    if-eqz v0, :cond_3

    #@75
    .line 2323
    const-string/jumbo v0, "primaryCpuAbi"

    #@78
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@7a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7d
    .line 2325
    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@7f
    if-eqz v0, :cond_4

    #@81
    .line 2326
    const-string/jumbo v0, "secondaryCpuAbi"

    #@84
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@86
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@89
    .line 2328
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@8b
    if-eqz v0, :cond_5

    #@8d
    .line 2329
    const-string/jumbo v0, "cpuAbiOverride"

    #@90
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@92
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@95
    .line 2332
    :cond_5
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@97
    if-nez v0, :cond_7

    #@99
    .line 2333
    const-string/jumbo v0, "userId"

    #@9c
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@9e
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    .line 2339
    :goto_0
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@a7
    if-nez v0, :cond_6

    #@a9
    .line 2340
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@b4
    .line 2344
    :cond_6
    const-string/jumbo v0, "updated-package"

    #@b7
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ba
    .line 2305
    return-void

    #@bb
    .line 2335
    :cond_7
    const-string/jumbo v0, "sharedUserId"

    #@be
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@c0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c7
    goto :goto_0
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1633
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1634
    const-string/jumbo v0, "domain-verification"

    #@c
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 1635
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@12
    .line 1640
    const-string/jumbo v0, "domain-verification"

    #@15
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 1632
    :cond_0
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2430
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 2431
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v2, "defined-keyset"

    #@1c
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 2432
    const-string/jumbo v3, "alias"

    #@22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/String;

    #@28
    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 2433
    const-string/jumbo v3, "identifier"

    #@2e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/lang/Long;

    #@34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v4

    #@38
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3f
    .line 2434
    const-string/jumbo v2, "defined-keyset"

    #@42
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45
    goto :goto_0

    #@46
    .line 2429
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 29

    #@0
    .prologue
    .line 2046
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@4
    move-object/from16 v25, v0

    #@6
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    #@9
    move-result v25

    #@a
    if-eqz v25, :cond_1

    #@c
    .line 2051
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@10
    move-object/from16 v25, v0

    #@12
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    #@15
    move-result v25

    #@16
    if-nez v25, :cond_0

    #@18
    .line 2052
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@1c
    move-object/from16 v25, v0

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@22
    move-object/from16 v26, v0

    #@24
    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@27
    move-result v25

    #@28
    if-nez v25, :cond_1

    #@2a
    .line 2053
    const-string/jumbo v25, "PackageManager"

    #@2d
    .line 2054
    const-string/jumbo v26, "Unable to backup package manager settings,  current changes will be lost at reboot"

    #@30
    .line 2053
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2056
    return-void

    #@34
    .line 2059
    :cond_0
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@38
    move-object/from16 v25, v0

    #@3a
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    #@3d
    .line 2060
    const-string/jumbo v25, "PackageManager"

    #@40
    const-string/jumbo v26, "Preserving older settings backup"

    #@43
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 2064
    :cond_1
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@4a
    move-object/from16 v25, v0

    #@4c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    #@4f
    .line 2067
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@55
    move-object/from16 v25, v0

    #@57
    move-object/from16 v0, v25

    #@59
    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5c
    .line 2068
    .local v10, "fstr":Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/BufferedOutputStream;

    #@5e
    move-object/from16 v0, v19

    #@60
    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@63
    .line 2071
    .local v19, "str":Ljava/io/BufferedOutputStream;
    new-instance v18, Lcom/android/internal/util/FastXmlSerializer;

    #@65
    invoke-direct/range {v18 .. v18}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@68
    .line 2072
    .local v18, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v25, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6a
    invoke-virtual/range {v25 .. v25}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@6d
    move-result-object v25

    #@6e
    move-object/from16 v0, v18

    #@70
    move-object/from16 v1, v19

    #@72
    move-object/from16 v2, v25

    #@74
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@77
    .line 2073
    const/16 v25, 0x1

    #@79
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7c
    move-result-object v25

    #@7d
    const/16 v26, 0x0

    #@7f
    move-object/from16 v0, v18

    #@81
    move-object/from16 v1, v26

    #@83
    move-object/from16 v2, v25

    #@85
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@88
    .line 2074
    const-string/jumbo v25, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@8b
    const/16 v26, 0x1

    #@8d
    move-object/from16 v0, v18

    #@8f
    move-object/from16 v1, v25

    #@91
    move/from16 v2, v26

    #@93
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@96
    .line 2076
    const-string/jumbo v25, "packages"

    #@99
    const/16 v26, 0x0

    #@9b
    move-object/from16 v0, v18

    #@9d
    move-object/from16 v1, v26

    #@9f
    move-object/from16 v2, v25

    #@a1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a4
    .line 2078
    const/4 v11, 0x0

    #@a5
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@a9
    move-object/from16 v25, v0

    #@ab
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@ae
    move-result v25

    #@af
    move/from16 v0, v25

    #@b1
    if-ge v11, v0, :cond_2

    #@b3
    .line 2079
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@b7
    move-object/from16 v25, v0

    #@b9
    move-object/from16 v0, v25

    #@bb
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@be
    move-result-object v24

    #@bf
    check-cast v24, Ljava/lang/String;

    #@c1
    .line 2080
    .local v24, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@c5
    move-object/from16 v25, v0

    #@c7
    move-object/from16 v0, v25

    #@c9
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@cc
    move-result-object v23

    #@cd
    check-cast v23, Lcom/android/server/pm/Settings$VersionInfo;

    #@cf
    .line 2082
    .local v23, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v25, "version"

    #@d2
    const/16 v26, 0x0

    #@d4
    move-object/from16 v0, v18

    #@d6
    move-object/from16 v1, v26

    #@d8
    move-object/from16 v2, v25

    #@da
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@dd
    .line 2083
    const-string/jumbo v25, "volumeUuid"

    #@e0
    move-object/from16 v0, v18

    #@e2
    move-object/from16 v1, v25

    #@e4
    move-object/from16 v2, v24

    #@e6
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 2084
    const-string/jumbo v25, "sdkVersion"

    #@ec
    move-object/from16 v0, v23

    #@ee
    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@f0
    move/from16 v26, v0

    #@f2
    move-object/from16 v0, v18

    #@f4
    move-object/from16 v1, v25

    #@f6
    move/from16 v2, v26

    #@f8
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@fb
    .line 2085
    const-string/jumbo v25, "databaseVersion"

    #@fe
    move-object/from16 v0, v23

    #@100
    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@102
    move/from16 v26, v0

    #@104
    move-object/from16 v0, v18

    #@106
    move-object/from16 v1, v25

    #@108
    move/from16 v2, v26

    #@10a
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@10d
    .line 2086
    const-string/jumbo v25, "fingerprint"

    #@110
    move-object/from16 v0, v23

    #@112
    iget-object v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@114
    move-object/from16 v26, v0

    #@116
    move-object/from16 v0, v18

    #@118
    move-object/from16 v1, v25

    #@11a
    move-object/from16 v2, v26

    #@11c
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@11f
    .line 2087
    const-string/jumbo v25, "version"

    #@122
    const/16 v26, 0x0

    #@124
    move-object/from16 v0, v18

    #@126
    move-object/from16 v1, v26

    #@128
    move-object/from16 v2, v25

    #@12a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12d
    .line 2078
    add-int/lit8 v11, v11, 0x1

    #@12f
    goto/16 :goto_0

    #@131
    .line 2090
    .end local v23    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "volumeUuid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@135
    move-object/from16 v25, v0

    #@137
    if-eqz v25, :cond_3

    #@139
    .line 2091
    const-string/jumbo v25, "verifier"

    #@13c
    const/16 v26, 0x0

    #@13e
    move-object/from16 v0, v18

    #@140
    move-object/from16 v1, v26

    #@142
    move-object/from16 v2, v25

    #@144
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@147
    .line 2092
    const-string/jumbo v25, "device"

    #@14a
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@14e
    move-object/from16 v26, v0

    #@150
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    #@153
    move-result-object v26

    #@154
    const/16 v27, 0x0

    #@156
    move-object/from16 v0, v18

    #@158
    move-object/from16 v1, v27

    #@15a
    move-object/from16 v2, v25

    #@15c
    move-object/from16 v3, v26

    #@15e
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@161
    .line 2093
    const-string/jumbo v25, "verifier"

    #@164
    const/16 v26, 0x0

    #@166
    move-object/from16 v0, v18

    #@168
    move-object/from16 v1, v26

    #@16a
    move-object/from16 v2, v25

    #@16c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16f
    .line 2096
    :cond_3
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@173
    move-object/from16 v25, v0

    #@175
    if-eqz v25, :cond_4

    #@177
    .line 2097
    const-string/jumbo v25, "read-external-storage"

    #@17a
    const/16 v26, 0x0

    #@17c
    move-object/from16 v0, v18

    #@17e
    move-object/from16 v1, v26

    #@180
    move-object/from16 v2, v25

    #@182
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@185
    .line 2099
    const-string/jumbo v26, "enforcement"

    #@188
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@18c
    move-object/from16 v25, v0

    #@18e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    #@191
    move-result v25

    #@192
    if-eqz v25, :cond_6

    #@194
    const-string/jumbo v25, "1"

    #@197
    :goto_1
    const/16 v27, 0x0

    #@199
    .line 2098
    move-object/from16 v0, v18

    #@19b
    move-object/from16 v1, v27

    #@19d
    move-object/from16 v2, v26

    #@19f
    move-object/from16 v3, v25

    #@1a1
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a4
    .line 2100
    const-string/jumbo v25, "read-external-storage"

    #@1a7
    const/16 v26, 0x0

    #@1a9
    move-object/from16 v0, v18

    #@1ab
    move-object/from16 v1, v26

    #@1ad
    move-object/from16 v2, v25

    #@1af
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b2
    .line 2103
    :cond_4
    const-string/jumbo v25, "permission-trees"

    #@1b5
    const/16 v26, 0x0

    #@1b7
    move-object/from16 v0, v18

    #@1b9
    move-object/from16 v1, v26

    #@1bb
    move-object/from16 v2, v25

    #@1bd
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c0
    .line 2104
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@1c4
    move-object/from16 v25, v0

    #@1c6
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@1c9
    move-result-object v25

    #@1ca
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1cd
    move-result-object v5

    #@1ce
    .local v5, "bp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1d1
    move-result v25

    #@1d2
    if-eqz v25, :cond_7

    #@1d4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d7
    move-result-object v4

    #@1d8
    check-cast v4, Lcom/android/server/pm/BasePermission;

    #@1da
    .line 2105
    .local v4, "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    #@1dc
    move-object/from16 v1, v18

    #@1de
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1e1
    goto :goto_2

    #@1e2
    .line 2194
    .end local v4    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "bp$iterator":Ljava/util/Iterator;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v8

    #@1e3
    .line 2195
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v25, "PackageManager"

    #@1e6
    const-string/jumbo v26, "Unable to write package manager settings, current changes will be lost at reboot"

    #@1e9
    move-object/from16 v0, v25

    #@1eb
    move-object/from16 v1, v26

    #@1ed
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f0
    .line 2202
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@1f4
    move-object/from16 v25, v0

    #@1f6
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    #@1f9
    move-result v25

    #@1fa
    if-eqz v25, :cond_5

    #@1fc
    .line 2203
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@200
    move-object/from16 v25, v0

    #@202
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    #@205
    move-result v25

    #@206
    if-nez v25, :cond_5

    #@208
    .line 2204
    const-string/jumbo v25, "PackageManager"

    #@20b
    new-instance v26, Ljava/lang/StringBuilder;

    #@20d
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@210
    const-string/jumbo v27, "Failed to clean up mangled file: "

    #@213
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v26

    #@217
    .line 2205
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@21b
    move-object/from16 v27, v0

    #@21d
    .line 2204
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v26

    #@221
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@224
    move-result-object v26

    #@225
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@228
    .line 2041
    :cond_5
    return-void

    #@229
    .line 2099
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "i":I
    .restart local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    :cond_6
    :try_start_1
    const-string/jumbo v25, "0"

    #@22c
    goto/16 :goto_1

    #@22e
    .line 2107
    .restart local v5    # "bp$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v25, "permission-trees"

    #@231
    const/16 v26, 0x0

    #@233
    move-object/from16 v0, v18

    #@235
    move-object/from16 v1, v26

    #@237
    move-object/from16 v2, v25

    #@239
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23c
    .line 2109
    const-string/jumbo v25, "permissions"

    #@23f
    const/16 v26, 0x0

    #@241
    move-object/from16 v0, v18

    #@243
    move-object/from16 v1, v26

    #@245
    move-object/from16 v2, v25

    #@247
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24a
    .line 2110
    move-object/from16 v0, p0

    #@24c
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@24e
    move-object/from16 v25, v0

    #@250
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@253
    move-result-object v25

    #@254
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@257
    move-result-object v5

    #@258
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@25b
    move-result v25

    #@25c
    if-eqz v25, :cond_8

    #@25e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@261
    move-result-object v4

    #@262
    check-cast v4, Lcom/android/server/pm/BasePermission;

    #@264
    .line 2111
    .restart local v4    # "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    #@266
    move-object/from16 v1, v18

    #@268
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@26b
    goto :goto_4

    #@26c
    .line 2197
    .end local v4    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "bp$iterator":Ljava/util/Iterator;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v6

    #@26d
    .line 2198
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v25, "PackageManager"

    #@270
    const-string/jumbo v26, "Unable to write package manager settings, current changes will be lost at reboot"

    #@273
    move-object/from16 v0, v25

    #@275
    move-object/from16 v1, v26

    #@277
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27a
    goto/16 :goto_3

    #@27c
    .line 2113
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "bp$iterator":Ljava/util/Iterator;
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "i":I
    .restart local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    :cond_8
    :try_start_2
    const-string/jumbo v25, "permissions"

    #@27f
    const/16 v26, 0x0

    #@281
    move-object/from16 v0, v18

    #@283
    move-object/from16 v1, v26

    #@285
    move-object/from16 v2, v25

    #@287
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28a
    .line 2115
    move-object/from16 v0, p0

    #@28c
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@28e
    move-object/from16 v25, v0

    #@290
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@293
    move-result-object v25

    #@294
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@297
    move-result-object v17

    #@298
    .local v17, "pkg$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@29b
    move-result v25

    #@29c
    if-eqz v25, :cond_9

    #@29e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a1
    move-result-object v16

    #@2a2
    check-cast v16, Lcom/android/server/pm/PackageSetting;

    #@2a4
    .line 2116
    .local v16, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    #@2a6
    move-object/from16 v1, v18

    #@2a8
    move-object/from16 v2, v16

    #@2aa
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    #@2ad
    goto :goto_5

    #@2ae
    .line 2119
    .end local v16    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v0, p0

    #@2b0
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2b2
    move-object/from16 v25, v0

    #@2b4
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@2b7
    move-result-object v25

    #@2b8
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2bb
    move-result-object v17

    #@2bc
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@2bf
    move-result v25

    #@2c0
    if-eqz v25, :cond_a

    #@2c2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c5
    move-result-object v16

    #@2c6
    check-cast v16, Lcom/android/server/pm/PackageSetting;

    #@2c8
    .line 2120
    .restart local v16    # "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    #@2ca
    move-object/from16 v1, v18

    #@2cc
    move-object/from16 v2, v16

    #@2ce
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    #@2d1
    goto :goto_6

    #@2d2
    .line 2123
    .end local v16    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@2d6
    move-object/from16 v25, v0

    #@2d8
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@2db
    move-result-object v25

    #@2dc
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2df
    move-result-object v22

    #@2e0
    .local v22, "usr$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@2e3
    move-result v25

    #@2e4
    if-eqz v25, :cond_b

    #@2e6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e9
    move-result-object v21

    #@2ea
    check-cast v21, Lcom/android/server/pm/SharedUserSetting;

    #@2ec
    .line 2124
    .local v21, "usr":Lcom/android/server/pm/SharedUserSetting;
    const-string/jumbo v25, "shared-user"

    #@2ef
    const/16 v26, 0x0

    #@2f1
    move-object/from16 v0, v18

    #@2f3
    move-object/from16 v1, v26

    #@2f5
    move-object/from16 v2, v25

    #@2f7
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2fa
    .line 2125
    const-string/jumbo v25, "name"

    #@2fd
    move-object/from16 v0, v21

    #@2ff
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@301
    move-object/from16 v26, v0

    #@303
    const/16 v27, 0x0

    #@305
    move-object/from16 v0, v18

    #@307
    move-object/from16 v1, v27

    #@309
    move-object/from16 v2, v25

    #@30b
    move-object/from16 v3, v26

    #@30d
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@310
    .line 2126
    const-string/jumbo v25, "userId"

    #@313
    .line 2127
    move-object/from16 v0, v21

    #@315
    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@317
    move/from16 v26, v0

    #@319
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@31c
    move-result-object v26

    #@31d
    .line 2126
    const/16 v27, 0x0

    #@31f
    move-object/from16 v0, v18

    #@321
    move-object/from16 v1, v27

    #@323
    move-object/from16 v2, v25

    #@325
    move-object/from16 v3, v26

    #@327
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32a
    .line 2128
    move-object/from16 v0, v21

    #@32c
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@32e
    move-object/from16 v25, v0

    #@330
    const-string/jumbo v26, "sigs"

    #@333
    move-object/from16 v0, p0

    #@335
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@337
    move-object/from16 v27, v0

    #@339
    move-object/from16 v0, v25

    #@33b
    move-object/from16 v1, v18

    #@33d
    move-object/from16 v2, v26

    #@33f
    move-object/from16 v3, v27

    #@341
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@344
    .line 2129
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@347
    move-result-object v25

    #@348
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@34b
    move-result-object v25

    #@34c
    move-object/from16 v0, p0

    #@34e
    move-object/from16 v1, v18

    #@350
    move-object/from16 v2, v25

    #@352
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@355
    .line 2131
    const-string/jumbo v25, "shared-user"

    #@358
    const/16 v26, 0x0

    #@35a
    move-object/from16 v0, v18

    #@35c
    move-object/from16 v1, v26

    #@35e
    move-object/from16 v2, v25

    #@360
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@363
    goto/16 :goto_7

    #@365
    .line 2134
    .end local v21    # "usr":Lcom/android/server/pm/SharedUserSetting;
    :cond_b
    move-object/from16 v0, p0

    #@367
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@369
    move-object/from16 v25, v0

    #@36b
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    #@36e
    move-result v25

    #@36f
    if-lez v25, :cond_d

    #@371
    .line 2135
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@375
    move-object/from16 v25, v0

    #@377
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37a
    move-result-object v13

    #@37b
    .local v13, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@37e
    move-result v25

    #@37f
    if-eqz v25, :cond_d

    #@381
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@384
    move-result-object v12

    #@385
    check-cast v12, Landroid/content/pm/PackageCleanItem;

    #@387
    .line 2136
    .local v12, "item":Landroid/content/pm/PackageCleanItem;
    iget v0, v12, Landroid/content/pm/PackageCleanItem;->userId:I

    #@389
    move/from16 v25, v0

    #@38b
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@38e
    move-result-object v20

    #@38f
    .line 2137
    .local v20, "userStr":Ljava/lang/String;
    const-string/jumbo v25, "cleaning-package"

    #@392
    const/16 v26, 0x0

    #@394
    move-object/from16 v0, v18

    #@396
    move-object/from16 v1, v26

    #@398
    move-object/from16 v2, v25

    #@39a
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39d
    .line 2138
    const-string/jumbo v25, "name"

    #@3a0
    iget-object v0, v12, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@3a2
    move-object/from16 v26, v0

    #@3a4
    const/16 v27, 0x0

    #@3a6
    move-object/from16 v0, v18

    #@3a8
    move-object/from16 v1, v27

    #@3aa
    move-object/from16 v2, v25

    #@3ac
    move-object/from16 v3, v26

    #@3ae
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b1
    .line 2139
    const-string/jumbo v26, "code"

    #@3b4
    iget-boolean v0, v12, Landroid/content/pm/PackageCleanItem;->andCode:Z

    #@3b6
    move/from16 v25, v0

    #@3b8
    if-eqz v25, :cond_c

    #@3ba
    const-string/jumbo v25, "true"

    #@3bd
    :goto_9
    const/16 v27, 0x0

    #@3bf
    move-object/from16 v0, v18

    #@3c1
    move-object/from16 v1, v27

    #@3c3
    move-object/from16 v2, v26

    #@3c5
    move-object/from16 v3, v25

    #@3c7
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3ca
    .line 2140
    const-string/jumbo v25, "user"

    #@3cd
    const/16 v26, 0x0

    #@3cf
    move-object/from16 v0, v18

    #@3d1
    move-object/from16 v1, v26

    #@3d3
    move-object/from16 v2, v25

    #@3d5
    move-object/from16 v3, v20

    #@3d7
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3da
    .line 2141
    const-string/jumbo v25, "cleaning-package"

    #@3dd
    const/16 v26, 0x0

    #@3df
    move-object/from16 v0, v18

    #@3e1
    move-object/from16 v1, v26

    #@3e3
    move-object/from16 v2, v25

    #@3e5
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e8
    goto :goto_8

    #@3e9
    .line 2139
    :cond_c
    const-string/jumbo v25, "false"

    #@3ec
    goto :goto_9

    #@3ed
    .line 2145
    .end local v12    # "item":Landroid/content/pm/PackageCleanItem;
    .end local v13    # "item$iterator":Ljava/util/Iterator;
    .end local v20    # "userStr":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    #@3ef
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@3f1
    move-object/from16 v25, v0

    #@3f3
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@3f6
    move-result v25

    #@3f7
    if-lez v25, :cond_e

    #@3f9
    .line 2146
    move-object/from16 v0, p0

    #@3fb
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@3fd
    move-object/from16 v25, v0

    #@3ff
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@402
    move-result-object v25

    #@403
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@406
    move-result-object v9

    #@407
    .local v9, "e$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@40a
    move-result v25

    #@40b
    if-eqz v25, :cond_e

    #@40d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@410
    move-result-object v7

    #@411
    check-cast v7, Ljava/util/Map$Entry;

    #@413
    .line 2147
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v25, "renamed-package"

    #@416
    const/16 v26, 0x0

    #@418
    move-object/from16 v0, v18

    #@41a
    move-object/from16 v1, v26

    #@41c
    move-object/from16 v2, v25

    #@41e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@421
    .line 2148
    const-string/jumbo v26, "new"

    #@424
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@427
    move-result-object v25

    #@428
    check-cast v25, Ljava/lang/String;

    #@42a
    const/16 v27, 0x0

    #@42c
    move-object/from16 v0, v18

    #@42e
    move-object/from16 v1, v27

    #@430
    move-object/from16 v2, v26

    #@432
    move-object/from16 v3, v25

    #@434
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@437
    .line 2149
    const-string/jumbo v26, "old"

    #@43a
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@43d
    move-result-object v25

    #@43e
    check-cast v25, Ljava/lang/String;

    #@440
    const/16 v27, 0x0

    #@442
    move-object/from16 v0, v18

    #@444
    move-object/from16 v1, v27

    #@446
    move-object/from16 v2, v26

    #@448
    move-object/from16 v3, v25

    #@44a
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44d
    .line 2150
    const-string/jumbo v25, "renamed-package"

    #@450
    const/16 v26, 0x0

    #@452
    move-object/from16 v0, v18

    #@454
    move-object/from16 v1, v26

    #@456
    move-object/from16 v2, v25

    #@458
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45b
    goto :goto_a

    #@45c
    .line 2154
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "e$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    #@45e
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@460
    move-object/from16 v25, v0

    #@462
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@465
    move-result v15

    #@466
    .line 2155
    .local v15, "numIVIs":I
    if-lez v15, :cond_10

    #@468
    .line 2159
    const-string/jumbo v25, "restored-ivi"

    #@46b
    const/16 v26, 0x0

    #@46d
    move-object/from16 v0, v18

    #@46f
    move-object/from16 v1, v26

    #@471
    move-object/from16 v2, v25

    #@473
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@476
    .line 2160
    const/4 v11, 0x0

    #@477
    :goto_b
    if-ge v11, v15, :cond_f

    #@479
    .line 2161
    move-object/from16 v0, p0

    #@47b
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@47d
    move-object/from16 v25, v0

    #@47f
    move-object/from16 v0, v25

    #@481
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@484
    move-result-object v14

    #@485
    check-cast v14, Landroid/content/pm/IntentFilterVerificationInfo;

    #@487
    .line 2162
    .local v14, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    move-object/from16 v0, p0

    #@489
    move-object/from16 v1, v18

    #@48b
    invoke-virtual {v0, v1, v14}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@48e
    .line 2160
    add-int/lit8 v11, v11, 0x1

    #@490
    goto :goto_b

    #@491
    .line 2164
    .end local v14    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_f
    const-string/jumbo v25, "restored-ivi"

    #@494
    const/16 v26, 0x0

    #@496
    move-object/from16 v0, v18

    #@498
    move-object/from16 v1, v26

    #@49a
    move-object/from16 v2, v25

    #@49c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49f
    .line 2171
    :cond_10
    move-object/from16 v0, p0

    #@4a1
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    #@4a3
    move-object/from16 v25, v0

    #@4a5
    move-object/from16 v0, v25

    #@4a7
    move-object/from16 v1, v18

    #@4a9
    invoke-virtual {v0, v1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    #@4ac
    .line 2173
    const-string/jumbo v25, "packages"

    #@4af
    const/16 v26, 0x0

    #@4b1
    move-object/from16 v0, v18

    #@4b3
    move-object/from16 v1, v26

    #@4b5
    move-object/from16 v2, v25

    #@4b7
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4ba
    .line 2175
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@4bd
    .line 2177
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    #@4c0
    .line 2178
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@4c3
    .line 2179
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    #@4c6
    .line 2183
    move-object/from16 v0, p0

    #@4c8
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@4ca
    move-object/from16 v25, v0

    #@4cc
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    #@4cf
    .line 2184
    move-object/from16 v0, p0

    #@4d1
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@4d3
    move-object/from16 v25, v0

    #@4d5
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    #@4d8
    move-result-object v25

    #@4d9
    .line 2185
    const/16 v26, 0x1b0

    #@4db
    .line 2187
    const/16 v27, -0x1

    #@4dd
    const/16 v28, -0x1

    #@4df
    .line 2184
    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@4e2
    .line 2189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    #@4e5
    .line 2190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    #@4e8
    .line 2191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@4eb
    .line 2192
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2349
    const-string/jumbo v0, "package"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2350
    const-string/jumbo v0, "name"

    #@a
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@c
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 2351
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2352
    const-string/jumbo v0, "realName"

    #@16
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@18
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2354
    :cond_0
    const-string/jumbo v0, "codePath"

    #@1e
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@20
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 2355
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@25
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_1

    #@2d
    .line 2356
    const-string/jumbo v0, "resourcePath"

    #@30
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@32
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 2359
    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 2360
    const-string/jumbo v0, "nativeLibraryPath"

    #@3c
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@3e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 2362
    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 2363
    const-string/jumbo v0, "primaryCpuAbi"

    #@48
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@4a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 2365
    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 2366
    const-string/jumbo v0, "secondaryCpuAbi"

    #@54
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@56
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@59
    .line 2368
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@5b
    if-eqz v0, :cond_5

    #@5d
    .line 2369
    const-string/jumbo v0, "cpuAbiOverride"

    #@60
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@62
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 2372
    :cond_5
    const-string/jumbo v0, "publicFlags"

    #@68
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@6a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@71
    .line 2373
    const-string/jumbo v0, "privateFlags"

    #@74
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7d
    .line 2374
    const-string/jumbo v0, "ft"

    #@80
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    #@82
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@89
    .line 2375
    const-string/jumbo v0, "it"

    #@8c
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    #@8e
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@95
    .line 2376
    const-string/jumbo v0, "ut"

    #@98
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    #@9a
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a1
    .line 2377
    const-string/jumbo v0, "version"

    #@a4
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@a6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ad
    .line 2378
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@af
    if-nez v0, :cond_a

    #@b1
    .line 2379
    const-string/jumbo v0, "userId"

    #@b4
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@b6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bd
    .line 2383
    :goto_0
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    #@bf
    if-eqz v0, :cond_6

    #@c1
    .line 2384
    const-string/jumbo v0, "uidError"

    #@c4
    const-string/jumbo v1, "true"

    #@c7
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ca
    .line 2386
    :cond_6
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->installStatus:I

    #@cc
    if-nez v0, :cond_7

    #@ce
    .line 2387
    const-string/jumbo v0, "installStatus"

    #@d1
    const-string/jumbo v1, "false"

    #@d4
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d7
    .line 2389
    :cond_7
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@d9
    if-eqz v0, :cond_8

    #@db
    .line 2390
    const-string/jumbo v0, "installer"

    #@de
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@e0
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e3
    .line 2392
    :cond_8
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@e5
    if-eqz v0, :cond_9

    #@e7
    .line 2393
    const-string/jumbo v0, "volumeUuid"

    #@ea
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@ec
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ef
    .line 2395
    :cond_9
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@f1
    const-string/jumbo v1, "sigs"

    #@f4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@f6
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@f9
    .line 2397
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@fc
    move-result-object v0

    #@fd
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@100
    move-result-object v0

    #@101
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@104
    .line 2400
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@106
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    #@109
    .line 2401
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@10b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    #@10e
    .line 2402
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@110
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    #@113
    .line 2403
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@115
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@118
    .line 2405
    const-string/jumbo v0, "package"

    #@11b
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11e
    .line 2348
    return-void

    #@11f
    .line 2381
    :cond_a
    const-string/jumbo v0, "sharedUserId"

    #@122
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@124
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@127
    move-result-object v1

    #@128
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12b
    goto :goto_0
.end method

.method writePackageListLPr()V
    .locals 1

    #@0
    .prologue
    .line 2212
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    #@4
    .line 2211
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 24
    .param p1, "creatingUserId"    # I

    #@0
    .prologue
    .line 2217
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v20

    #@4
    const/16 v21, 0x1

    #@6
    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    #@9
    move-result-object v18

    #@a
    .line 2218
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    #@d
    move-result v20

    #@e
    move/from16 v0, v20

    #@10
    new-array v0, v0, [I

    #@12
    move-object/from16 v17, v0

    #@14
    .line 2219
    .local v17, "userIds":[I
    const/4 v8, 0x0

    #@15
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v17

    #@17
    array-length v0, v0

    #@18
    move/from16 v20, v0

    #@1a
    move/from16 v0, v20

    #@1c
    if-ge v8, v0, :cond_0

    #@1e
    .line 2220
    move-object/from16 v0, v18

    #@20
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v20

    #@24
    check-cast v20, Landroid/content/pm/UserInfo;

    #@26
    move-object/from16 v0, v20

    #@28
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2a
    move/from16 v20, v0

    #@2c
    aput v20, v17, v8

    #@2e
    .line 2219
    add-int/lit8 v8, v8, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2222
    :cond_0
    const/16 v20, -0x1

    #@33
    move/from16 v0, p1

    #@35
    move/from16 v1, v20

    #@37
    if-eq v0, v1, :cond_1

    #@39
    .line 2223
    move-object/from16 v0, v17

    #@3b
    move/from16 v1, p1

    #@3d
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@40
    move-result-object v17

    #@41
    .line 2227
    :cond_1
    new-instance v16, Ljava/io/File;

    #@43
    new-instance v20, Ljava/lang/StringBuilder;

    #@45
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@4c
    move-object/from16 v21, v0

    #@4e
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@51
    move-result-object v21

    #@52
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v20

    #@56
    const-string/jumbo v21, ".tmp"

    #@59
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v20

    #@5d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v20

    #@61
    move-object/from16 v0, v16

    #@63
    move-object/from16 v1, v20

    #@65
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@68
    .line 2228
    .local v16, "tempFile":Ljava/io/File;
    new-instance v10, Lcom/android/internal/util/JournaledFile;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@6e
    move-object/from16 v20, v0

    #@70
    move-object/from16 v0, v20

    #@72
    move-object/from16 v1, v16

    #@74
    invoke-direct {v10, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    #@77
    .line 2230
    .local v10, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    #@7a
    move-result-object v19

    #@7b
    .line 2231
    .local v19, "writeTarget":Ljava/io/File;
    const/4 v5, 0x0

    #@7c
    .line 2232
    .local v5, "fstr":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    #@7d
    .line 2234
    .local v14, "str":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    #@7f
    move-object/from16 v0, v19

    #@81
    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@84
    .line 2235
    .local v6, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v15, Ljava/io/BufferedOutputStream;

    #@86
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    invoke-direct {v15, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@89
    .line 2236
    .local v15, "str":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@8c
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    move-result-object v20

    #@8d
    const/16 v21, 0x1a0

    #@8f
    const/16 v22, 0x3e8

    #@91
    const/16 v23, 0x408

    #@93
    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    #@96
    .line 2238
    new-instance v13, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    .line 2239
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@9f
    move-object/from16 v20, v0

    #@a1
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@a4
    move-result-object v20

    #@a5
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a8
    move-result-object v12

    #@a9
    .local v12, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@ac
    move-result v20

    #@ad
    if-eqz v20, :cond_9

    #@af
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b2
    move-result-object v11

    #@b3
    check-cast v11, Lcom/android/server/pm/PackageSetting;

    #@b5
    .line 2240
    .local v11, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@b7
    move-object/from16 v20, v0

    #@b9
    if-eqz v20, :cond_3

    #@bb
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@bd
    move-object/from16 v20, v0

    #@bf
    move-object/from16 v0, v20

    #@c1
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c3
    move-object/from16 v20, v0

    #@c5
    if-nez v20, :cond_4

    #@c7
    .line 2241
    :cond_3
    const-string/jumbo v20, "PackageSettings"

    #@ca
    new-instance v21, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v22, "Skipping "

    #@d2
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v21

    #@d6
    move-object/from16 v0, v21

    #@d8
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v21

    #@dc
    const-string/jumbo v22, " due to missing metadata"

    #@df
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v21

    #@e3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v21

    #@e7
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@ea
    goto :goto_1

    #@eb
    .line 2297
    .end local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "pkg$iterator":Ljava/util/Iterator;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    #@ec
    .local v4, "e":Ljava/lang/Exception;
    move-object v14, v15

    #@ed
    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .local v14, "str":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    #@ee
    .line 2298
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    :goto_2
    const-string/jumbo v20, "PackageSettings"

    #@f1
    const-string/jumbo v21, "Failed to write packages.list"

    #@f4
    move-object/from16 v0, v20

    #@f6
    move-object/from16 v1, v21

    #@f8
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fb
    .line 2299
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@fe
    .line 2300
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->rollback()V

    #@101
    .line 2215
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    #@102
    .line 2245
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v12    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    :cond_4
    :try_start_3
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@104
    move-object/from16 v20, v0

    #@106
    move-object/from16 v0, v20

    #@108
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10a
    .line 2246
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v20, Ljava/io/File;

    #@10c
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@10e
    move-object/from16 v21, v0

    #@110
    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@113
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    .line 2247
    .local v3, "dataPath":Ljava/lang/String;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@119
    move/from16 v20, v0

    #@11b
    and-int/lit8 v20, v20, 0x2

    #@11d
    if-eqz v20, :cond_5

    #@11f
    const/4 v9, 0x1

    #@120
    .line 2248
    .local v9, "isDebug":Z
    :goto_4
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@123
    move-result-object v20

    #@124
    move-object/from16 v0, v20

    #@126
    move-object/from16 v1, v17

    #@128
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->computeGids([I)[I

    #@12b
    move-result-object v7

    #@12c
    .line 2251
    .local v7, "gids":[I
    const-string/jumbo v20, " "

    #@12f
    move-object/from16 v0, v20

    #@131
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@134
    move-result v20

    #@135
    if-gez v20, :cond_2

    #@137
    .line 2272
    const/16 v20, 0x0

    #@139
    move/from16 v0, v20

    #@13b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@13e
    .line 2273
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@140
    move-object/from16 v20, v0

    #@142
    move-object/from16 v0, v20

    #@144
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    .line 2274
    const-string/jumbo v20, " "

    #@14a
    move-object/from16 v0, v20

    #@14c
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    .line 2275
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@151
    move/from16 v20, v0

    #@153
    move/from16 v0, v20

    #@155
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@158
    .line 2276
    if-eqz v9, :cond_6

    #@15a
    const-string/jumbo v20, " 1 "

    #@15d
    :goto_5
    move-object/from16 v0, v20

    #@15f
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    .line 2277
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    .line 2278
    const-string/jumbo v20, " "

    #@168
    move-object/from16 v0, v20

    #@16a
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 2279
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@16f
    move-object/from16 v20, v0

    #@171
    move-object/from16 v0, v20

    #@173
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    .line 2280
    const-string/jumbo v20, " "

    #@179
    move-object/from16 v0, v20

    #@17b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    .line 2281
    if-eqz v7, :cond_7

    #@180
    array-length v0, v7

    #@181
    move/from16 v20, v0

    #@183
    if-lez v20, :cond_7

    #@185
    .line 2282
    const/16 v20, 0x0

    #@187
    aget v20, v7, v20

    #@189
    move/from16 v0, v20

    #@18b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18e
    .line 2283
    const/4 v8, 0x1

    #@18f
    :goto_6
    array-length v0, v7

    #@190
    move/from16 v20, v0

    #@192
    move/from16 v0, v20

    #@194
    if-ge v8, v0, :cond_8

    #@196
    .line 2284
    const-string/jumbo v20, ","

    #@199
    move-object/from16 v0, v20

    #@19b
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    .line 2285
    aget v20, v7, v8

    #@1a0
    move/from16 v0, v20

    #@1a2
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a5
    .line 2283
    add-int/lit8 v8, v8, 0x1

    #@1a7
    goto :goto_6

    #@1a8
    .line 2247
    .end local v7    # "gids":[I
    .end local v9    # "isDebug":Z
    :cond_5
    const/4 v9, 0x0

    #@1a9
    .restart local v9    # "isDebug":Z
    goto/16 :goto_4

    #@1ab
    .line 2276
    .restart local v7    # "gids":[I
    :cond_6
    const-string/jumbo v20, " 0 "

    #@1ae
    goto :goto_5

    #@1af
    .line 2288
    :cond_7
    const-string/jumbo v20, "none"

    #@1b2
    move-object/from16 v0, v20

    #@1b4
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    .line 2290
    :cond_8
    const-string/jumbo v20, "\n"

    #@1ba
    move-object/from16 v0, v20

    #@1bc
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    .line 2291
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v20

    #@1c3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    #@1c6
    move-result-object v20

    #@1c7
    move-object/from16 v0, v20

    #@1c9
    invoke-virtual {v15, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    #@1cc
    goto/16 :goto_1

    #@1ce
    .line 2293
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "dataPath":Ljava/lang/String;
    .end local v7    # "gids":[I
    .end local v9    # "isDebug":Z
    .end local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_9
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    #@1d1
    .line 2294
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1d4
    .line 2295
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    #@1d7
    .line 2296
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@1da
    move-object v14, v15

    #@1db
    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .restart local v14    # "str":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    #@1dc
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    #@1de
    .line 2297
    .end local v12    # "pkg$iterator":Ljava/util/Iterator;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    .local v14, "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    #@1df
    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    #@1e1
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    #@1e2
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    #@1e3
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 17
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1718
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    #@3
    move-result-object v11

    #@4
    .line 1719
    .local v11, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 1720
    .local v2, "backupFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    #@a
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@d
    move-result-object v14

    #@e
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    #@14
    .line 1721
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@17
    move-result v13

    #@18
    if-eqz v13, :cond_1

    #@1a
    .line 1726
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@1d
    move-result v13

    #@1e
    if-nez v13, :cond_0

    #@20
    .line 1727
    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@23
    move-result v13

    #@24
    if-nez v13, :cond_1

    #@26
    .line 1728
    const-string/jumbo v13, "PackageManager"

    #@29
    .line 1729
    const-string/jumbo v14, "Unable to backup user packages state file, current changes will be lost at reboot"

    #@2c
    .line 1728
    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1731
    return-void

    #@30
    .line 1734
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    #@33
    .line 1735
    const-string/jumbo v13, "PackageManager"

    #@36
    const-string/jumbo v14, "Preserving older stopped packages backup"

    #@39
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1740
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    #@3e
    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@41
    .line 1741
    .local v4, "fstr":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/BufferedOutputStream;

    #@43
    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@46
    .line 1743
    .local v10, "str":Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    #@48
    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@4b
    .line 1744
    .local v9, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4d
    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@50
    move-result-object v13

    #@51
    invoke-interface {v9, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@54
    .line 1745
    const/4 v13, 0x1

    #@55
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@58
    move-result-object v13

    #@59
    const/4 v14, 0x0

    #@5a
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@5d
    .line 1746
    const-string/jumbo v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@60
    const/4 v14, 0x1

    #@61
    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@64
    .line 1748
    const-string/jumbo v13, "package-restrictions"

    #@67
    const/4 v14, 0x0

    #@68
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6b
    .line 1750
    move-object/from16 v0, p0

    #@6d
    iget-object v13, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@6f
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@72
    move-result-object v13

    #@73
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v8

    #@77
    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v13

    #@7b
    if-eqz v13, :cond_14

    #@7d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v7

    #@81
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    #@83
    .line 1751
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    #@85
    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@88
    move-result-object v12

    #@89
    .line 1752
    .local v12, "ustate":Landroid/content/pm/PackageUserState;
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    #@8b
    if-nez v13, :cond_3

    #@8d
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@8f
    if-nez v13, :cond_3

    #@91
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    #@93
    if-eqz v13, :cond_3

    #@95
    .line 1753
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    #@97
    if-eqz v13, :cond_d

    #@99
    .line 1762
    :cond_3
    :goto_1
    const-string/jumbo v13, "pkg"

    #@9c
    const/4 v14, 0x0

    #@9d
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a0
    .line 1763
    const-string/jumbo v13, "name"

    #@a3
    iget-object v14, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@a5
    const/4 v15, 0x0

    #@a6
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a9
    .line 1766
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    #@ab
    if-nez v13, :cond_4

    #@ad
    .line 1767
    const-string/jumbo v13, "inst"

    #@b0
    const-string/jumbo v14, "false"

    #@b3
    const/4 v15, 0x0

    #@b4
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b7
    .line 1769
    :cond_4
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    #@b9
    if-eqz v13, :cond_5

    #@bb
    .line 1770
    const-string/jumbo v13, "stopped"

    #@be
    const-string/jumbo v14, "true"

    #@c1
    const/4 v15, 0x0

    #@c2
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c5
    .line 1772
    :cond_5
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@c7
    if-eqz v13, :cond_6

    #@c9
    .line 1773
    const-string/jumbo v13, "nl"

    #@cc
    const-string/jumbo v14, "true"

    #@cf
    const/4 v15, 0x0

    #@d0
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d3
    .line 1775
    :cond_6
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->hidden:Z

    #@d5
    if-eqz v13, :cond_7

    #@d7
    .line 1776
    const-string/jumbo v13, "hidden"

    #@da
    const-string/jumbo v14, "true"

    #@dd
    const/4 v15, 0x0

    #@de
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e1
    .line 1778
    :cond_7
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@e3
    if-eqz v13, :cond_8

    #@e5
    .line 1779
    const-string/jumbo v13, "blockUninstall"

    #@e8
    const-string/jumbo v14, "true"

    #@eb
    const/4 v15, 0x0

    #@ec
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ef
    .line 1781
    :cond_8
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    #@f1
    if-eqz v13, :cond_9

    #@f3
    .line 1782
    const-string/jumbo v13, "enabled"

    #@f6
    .line 1783
    iget v14, v12, Landroid/content/pm/PackageUserState;->enabled:I

    #@f8
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@fb
    move-result-object v14

    #@fc
    .line 1782
    const/4 v15, 0x0

    #@fd
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@100
    .line 1784
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@102
    if-eqz v13, :cond_9

    #@104
    .line 1785
    const-string/jumbo v13, "enabledCaller"

    #@107
    .line 1786
    iget-object v14, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@109
    .line 1785
    const/4 v15, 0x0

    #@10a
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10d
    .line 1789
    :cond_9
    iget v13, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@10f
    if-eqz v13, :cond_a

    #@111
    .line 1791
    const-string/jumbo v13, "domainVerificationStatus"

    #@114
    .line 1792
    iget v14, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@116
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@119
    move-result-object v14

    #@11a
    .line 1791
    const/4 v15, 0x0

    #@11b
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11e
    .line 1794
    :cond_a
    iget v13, v12, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@120
    if-eqz v13, :cond_b

    #@122
    .line 1795
    const-string/jumbo v13, "app-link-generation"

    #@125
    .line 1796
    iget v14, v12, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@127
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12a
    move-result-object v14

    #@12b
    .line 1795
    const/4 v15, 0x0

    #@12c
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12f
    .line 1798
    :cond_b
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@131
    if-eqz v13, :cond_11

    #@133
    .line 1799
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@135
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@138
    move-result v13

    #@139
    if-lez v13, :cond_11

    #@13b
    .line 1800
    const-string/jumbo v13, "enabled-components"

    #@13e
    const/4 v14, 0x0

    #@13f
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@142
    .line 1801
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@144
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@147
    move-result-object v6

    #@148
    .local v6, "name$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@14b
    move-result v13

    #@14c
    if-eqz v13, :cond_10

    #@14e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@151
    move-result-object v5

    #@152
    check-cast v5, Ljava/lang/String;

    #@154
    .line 1802
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v13, "item"

    #@157
    const/4 v14, 0x0

    #@158
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15b
    .line 1803
    const-string/jumbo v13, "name"

    #@15e
    const/4 v14, 0x0

    #@15f
    invoke-interface {v9, v14, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@162
    .line 1804
    const-string/jumbo v13, "item"

    #@165
    const/4 v14, 0x0

    #@166
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@169
    goto :goto_2

    #@16a
    .line 1846
    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    .end local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .end local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :catch_0
    move-exception v3

    #@16b
    .line 1847
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v13, "PackageManager"

    #@16e
    .line 1848
    const-string/jumbo v14, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    #@171
    .line 1847
    invoke-static {v13, v14, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@174
    .line 1853
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@177
    move-result v13

    #@178
    if-eqz v13, :cond_c

    #@17a
    .line 1854
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    #@17d
    move-result v13

    #@17e
    if-nez v13, :cond_c

    #@180
    .line 1855
    const-string/jumbo v13, "PackageManager"

    #@183
    new-instance v14, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    const-string/jumbo v15, "Failed to clean up mangled file: "

    #@18b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v14

    #@18f
    .line 1856
    move-object/from16 v0, p0

    #@191
    iget-object v15, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@193
    .line 1855
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v14

    #@197
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v14

    #@19b
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19e
    .line 1712
    :cond_c
    return-void

    #@19f
    .line 1754
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_d
    :try_start_1
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->hidden:Z

    #@1a1
    .line 1752
    if-nez v13, :cond_3

    #@1a3
    .line 1755
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@1a5
    if-eqz v13, :cond_e

    #@1a7
    .line 1756
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@1a9
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@1ac
    move-result v13

    #@1ad
    if-gtz v13, :cond_3

    #@1af
    .line 1757
    :cond_e
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1b1
    if-eqz v13, :cond_f

    #@1b3
    .line 1758
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1b5
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@1b8
    move-result v13

    #@1b9
    if-gtz v13, :cond_3

    #@1bb
    .line 1759
    :cond_f
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@1bd
    .line 1752
    if-nez v13, :cond_3

    #@1bf
    .line 1760
    iget v13, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@1c1
    if-eqz v13, :cond_2

    #@1c3
    goto/16 :goto_1

    #@1c5
    .line 1806
    .restart local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_10
    const-string/jumbo v13, "enabled-components"

    #@1c8
    const/4 v14, 0x0

    #@1c9
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1cc
    .line 1808
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_11
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1ce
    if-eqz v13, :cond_13

    #@1d0
    .line 1809
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1d2
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@1d5
    move-result v13

    #@1d6
    if-lez v13, :cond_13

    #@1d8
    .line 1810
    const-string/jumbo v13, "disabled-components"

    #@1db
    const/4 v14, 0x0

    #@1dc
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1df
    .line 1811
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1e1
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e4
    move-result-object v6

    #@1e5
    .restart local v6    # "name$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1e8
    move-result v13

    #@1e9
    if-eqz v13, :cond_12

    #@1eb
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ee
    move-result-object v5

    #@1ef
    check-cast v5, Ljava/lang/String;

    #@1f1
    .line 1812
    .restart local v5    # "name":Ljava/lang/String;
    const-string/jumbo v13, "item"

    #@1f4
    const/4 v14, 0x0

    #@1f5
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f8
    .line 1813
    const-string/jumbo v13, "name"

    #@1fb
    const/4 v14, 0x0

    #@1fc
    invoke-interface {v9, v14, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1ff
    .line 1814
    const-string/jumbo v13, "item"

    #@202
    const/4 v14, 0x0

    #@203
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@206
    goto :goto_3

    #@207
    .line 1816
    .end local v5    # "name":Ljava/lang/String;
    :cond_12
    const-string/jumbo v13, "disabled-components"

    #@20a
    const/4 v14, 0x0

    #@20b
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20e
    .line 1819
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_13
    const-string/jumbo v13, "pkg"

    #@211
    const/4 v14, 0x0

    #@212
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@215
    goto/16 :goto_0

    #@217
    .line 1823
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_14
    const/4 v13, 0x1

    #@218
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, p1

    #@21c
    invoke-virtual {v0, v9, v1, v13}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    #@21f
    .line 1824
    move-object/from16 v0, p0

    #@221
    move/from16 v1, p1

    #@223
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    #@226
    .line 1825
    move-object/from16 v0, p0

    #@228
    move/from16 v1, p1

    #@22a
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    #@22d
    .line 1826
    move-object/from16 v0, p0

    #@22f
    move/from16 v1, p1

    #@231
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    #@234
    .line 1828
    const-string/jumbo v13, "package-restrictions"

    #@237
    const/4 v14, 0x0

    #@238
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23b
    .line 1830
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@23e
    .line 1832
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    #@241
    .line 1833
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@244
    .line 1834
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    #@247
    .line 1838
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@24a
    .line 1839
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    #@24d
    move-result-object v13

    #@24e
    .line 1840
    const/16 v14, 0x1b0

    #@250
    .line 1842
    const/4 v15, -0x1

    #@251
    const/16 v16, -0x1

    #@253
    .line 1839
    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@256
    .line 1845
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2440
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    #@3
    const/4 v2, 0x1

    #@4
    if-eq v1, v2, :cond_3

    #@6
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_3

    #@a
    .line 2441
    const-string/jumbo v1, "item"

    #@d
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 2442
    const-string/jumbo v1, "name"

    #@13
    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@15
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 2443
    const-string/jumbo v1, "package"

    #@1b
    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@1d
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20
    .line 2444
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 2445
    const-string/jumbo v1, "protection"

    #@27
    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@29
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30
    .line 2450
    :cond_0
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    #@32
    const/4 v2, 0x2

    #@33
    if-ne v1, v2, :cond_2

    #@35
    .line 2451
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@37
    if-eqz v1, :cond_4

    #@39
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@3b
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@3d
    .line 2452
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_2

    #@3f
    .line 2453
    const-string/jumbo v1, "type"

    #@42
    const-string/jumbo v2, "dynamic"

    #@45
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 2454
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    #@4a
    if-eqz v1, :cond_1

    #@4c
    .line 2455
    const-string/jumbo v1, "icon"

    #@4f
    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    #@51
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 2457
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@5a
    if-eqz v1, :cond_2

    #@5c
    .line 2458
    const-string/jumbo v1, "label"

    #@5f
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@61
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@68
    .line 2462
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    const-string/jumbo v1, "item"

    #@6b
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6e
    .line 2439
    :cond_3
    return-void

    #@6f
    .line 2451
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@71
    .restart local v0    # "pi":Landroid/content/pm/PermissionInfo;
    goto :goto_0
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    #@1
    .line 1920
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1921
    return-void

    #@8
    .line 1924
    :cond_0
    const-string/jumbo v2, "perms"

    #@b
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e
    .line 1926
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@1e
    .line 1927
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    #@21
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 1928
    const-string/jumbo v2, "name"

    #@27
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e
    .line 1929
    const-string/jumbo v2, "granted"

    #@31
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    #@34
    move-result v3

    #@35
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3c
    .line 1930
    const-string/jumbo v2, "flags"

    #@3f
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@42
    move-result v3

    #@43
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 1931
    const-string/jumbo v2, "item"

    #@4d
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    goto :goto_0

    #@51
    .line 1934
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    const-string/jumbo v2, "perms"

    #@54
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 1919
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1604
    const-string/jumbo v3, "persistent-preferred-activities"

    #@4
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1605
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@f
    .line 1606
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    #@11
    .line 1607
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "ppa$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/pm/PersistentPreferredActivity;

    #@25
    .line 1608
    .local v0, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v3, "item"

    #@28
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1609
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2e
    .line 1610
    const-string/jumbo v3, "item"

    #@31
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    goto :goto_0

    #@35
    .line 1613
    .end local v0    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    .end local v1    # "ppa$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "persistent-preferred-activities"

    #@38
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1603
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1590
    const-string/jumbo v3, "preferred-activities"

    #@4
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1591
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    #@f
    .line 1592
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    #@11
    .line 1593
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "pa$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/pm/PreferredActivity;

    #@25
    .line 1594
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v3, "item"

    #@28
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1595
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@2e
    .line 1596
    const-string/jumbo v3, "item"

    #@31
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    goto :goto_0

    #@35
    .line 1599
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v1    # "pa$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "preferred-activities"

    #@38
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1589
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 4466
    if-eqz p2, :cond_0

    #@2
    .line 4467
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    #@7
    .line 4465
    :goto_0
    return-void

    #@8
    .line 4469
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    #@d
    goto :goto_0
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2410
    const-string/jumbo v0, "proper-signing-keyset"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2411
    const-string/jumbo v0, "identifier"

    #@a
    .line 2412
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 2411
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 2413
    const-string/jumbo v0, "proper-signing-keyset"

    #@18
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2409
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2418
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@4
    move-result-wide v2

    #@5
    .line 2419
    .local v2, "properSigning":J
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 2420
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    #@e
    move-result-object v5

    #@f
    const/4 v4, 0x0

    #@10
    array-length v6, v5

    #@11
    :goto_0
    if-ge v4, v6, :cond_0

    #@13
    aget-wide v0, v5, v4

    #@15
    .line 2421
    .local v0, "id":J
    const-string/jumbo v7, "upgrade-keyset"

    #@18
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2422
    const-string/jumbo v7, "identifier"

    #@1e
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 2423
    const-string/jumbo v7, "upgrade-keyset"

    #@28
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 2420
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2417
    .end local v0    # "id":J
    :cond_0
    return-void
.end method
