.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$DatabaseVersion;,
        Lcom/android/server/pm/Settings$RestoredPermissionGrant;,
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_DONE:Ljava/lang/String; = "done"

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

.field private static final ATTR_REVOKE_ON_UPGRADE:Ljava/lang/String; = "rou"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_USER_SET:Ljava/lang/String; = "set"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

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

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERMISSION_ENTRY:Ljava/lang/String; = "perm"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RESTORED_RUNTIME_PERMISSIONS:Ljava/lang/String; = "restored-perms"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final USER_RUNTIME_GRANT_MASK:I = 0xb

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

.field final mDefaultDialerApp:Landroid/util/SparseArray;
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

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

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

.field private final mRestoredUserGrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/pm/Settings$RestoredPermissionGrant;",
            ">;>;>;"
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
.method static synthetic -get0(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

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
    const/16 v7, 0x10

    #@2
    const/16 v6, 0x8

    #@4
    const/4 v5, 0x4

    #@5
    const/4 v4, 0x2

    #@6
    const/4 v3, 0x1

    #@7
    .line 287
    const/4 v0, 0x0

    #@8
    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@a
    .line 3518
    const/high16 v0, 0x8000000

    #@c
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    #@e
    .line 3519
    const/high16 v0, 0x10000000

    #@10
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    #@12
    .line 3520
    const/high16 v0, 0x20000000

    #@14
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    #@16
    .line 3521
    const/high16 v0, 0x40000000    # 2.0f

    #@18
    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    #@1a
    .line 4230
    const/16 v0, 0x1e

    #@1c
    new-array v0, v0, [Ljava/lang/Object;

    #@1e
    .line 4231
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x0

    #@23
    aput-object v1, v0, v2

    #@25
    const-string/jumbo v1, "SYSTEM"

    #@28
    aput-object v1, v0, v3

    #@2a
    .line 4232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    aput-object v1, v0, v4

    #@30
    const-string/jumbo v1, "DEBUGGABLE"

    #@33
    const/4 v2, 0x3

    #@34
    aput-object v1, v0, v2

    #@36
    .line 4233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v1

    #@3a
    aput-object v1, v0, v5

    #@3c
    const-string/jumbo v1, "HAS_CODE"

    #@3f
    const/4 v2, 0x5

    #@40
    aput-object v1, v0, v2

    #@42
    .line 4234
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v1

    #@46
    const/4 v2, 0x6

    #@47
    aput-object v1, v0, v2

    #@49
    const-string/jumbo v1, "PERSISTENT"

    #@4c
    const/4 v2, 0x7

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 4235
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v1

    #@53
    aput-object v1, v0, v6

    #@55
    const-string/jumbo v1, "FACTORY_TEST"

    #@58
    const/16 v2, 0x9

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 4236
    const/16 v1, 0x20

    #@5e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v1

    #@62
    const/16 v2, 0xa

    #@64
    aput-object v1, v0, v2

    #@66
    const-string/jumbo v1, "ALLOW_TASK_REPARENTING"

    #@69
    const/16 v2, 0xb

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 4237
    const/16 v1, 0x40

    #@6f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v1

    #@73
    const/16 v2, 0xc

    #@75
    aput-object v1, v0, v2

    #@77
    const-string/jumbo v1, "ALLOW_CLEAR_USER_DATA"

    #@7a
    const/16 v2, 0xd

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 4238
    const/16 v1, 0x80

    #@80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v1

    #@84
    const/16 v2, 0xe

    #@86
    aput-object v1, v0, v2

    #@88
    const-string/jumbo v1, "UPDATED_SYSTEM_APP"

    #@8b
    const/16 v2, 0xf

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 4239
    const/16 v1, 0x100

    #@91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v1

    #@95
    aput-object v1, v0, v7

    #@97
    const-string/jumbo v1, "TEST_ONLY"

    #@9a
    const/16 v2, 0x11

    #@9c
    aput-object v1, v0, v2

    #@9e
    .line 4240
    const/16 v1, 0x4000

    #@a0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v1

    #@a4
    const/16 v2, 0x12

    #@a6
    aput-object v1, v0, v2

    #@a8
    const-string/jumbo v1, "VM_SAFE_MODE"

    #@ab
    const/16 v2, 0x13

    #@ad
    aput-object v1, v0, v2

    #@af
    .line 4241
    const v1, 0x8000

    #@b2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v1

    #@b6
    const/16 v2, 0x14

    #@b8
    aput-object v1, v0, v2

    #@ba
    const-string/jumbo v1, "ALLOW_BACKUP"

    #@bd
    const/16 v2, 0x15

    #@bf
    aput-object v1, v0, v2

    #@c1
    .line 4242
    const/high16 v1, 0x10000

    #@c3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c6
    move-result-object v1

    #@c7
    const/16 v2, 0x16

    #@c9
    aput-object v1, v0, v2

    #@cb
    const-string/jumbo v1, "KILL_AFTER_RESTORE"

    #@ce
    const/16 v2, 0x17

    #@d0
    aput-object v1, v0, v2

    #@d2
    .line 4243
    const/high16 v1, 0x20000

    #@d4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d7
    move-result-object v1

    #@d8
    const/16 v2, 0x18

    #@da
    aput-object v1, v0, v2

    #@dc
    const-string/jumbo v1, "RESTORE_ANY_VERSION"

    #@df
    const/16 v2, 0x19

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 4244
    const/high16 v1, 0x40000

    #@e5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e8
    move-result-object v1

    #@e9
    const/16 v2, 0x1a

    #@eb
    aput-object v1, v0, v2

    #@ed
    const-string/jumbo v1, "EXTERNAL_STORAGE"

    #@f0
    const/16 v2, 0x1b

    #@f2
    aput-object v1, v0, v2

    #@f4
    .line 4245
    const/high16 v1, 0x100000

    #@f6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f9
    move-result-object v1

    #@fa
    const/16 v2, 0x1c

    #@fc
    aput-object v1, v0, v2

    #@fe
    const-string/jumbo v1, "LARGE_HEAP"

    #@101
    const/16 v2, 0x1d

    #@103
    aput-object v1, v0, v2

    #@105
    .line 4230
    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@107
    .line 4248
    const/16 v0, 0x1a

    #@109
    new-array v0, v0, [Ljava/lang/Object;

    #@10b
    .line 4249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10e
    move-result-object v1

    #@10f
    const/4 v2, 0x0

    #@110
    aput-object v1, v0, v2

    #@112
    const-string/jumbo v1, "HIDDEN"

    #@115
    aput-object v1, v0, v3

    #@117
    .line 4250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11a
    move-result-object v1

    #@11b
    aput-object v1, v0, v4

    #@11d
    const-string/jumbo v1, "CANT_SAVE_STATE"

    #@120
    const/4 v2, 0x3

    #@121
    aput-object v1, v0, v2

    #@123
    .line 4251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@126
    move-result-object v1

    #@127
    aput-object v1, v0, v5

    #@129
    const-string/jumbo v1, "FORWARD_LOCK"

    #@12c
    const/4 v2, 0x5

    #@12d
    aput-object v1, v0, v2

    #@12f
    .line 4252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@132
    move-result-object v1

    #@133
    const/4 v2, 0x6

    #@134
    aput-object v1, v0, v2

    #@136
    const-string/jumbo v1, "PRIVILEGED"

    #@139
    const/4 v2, 0x7

    #@13a
    aput-object v1, v0, v2

    #@13c
    .line 4253
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13f
    move-result-object v1

    #@140
    aput-object v1, v0, v6

    #@142
    const-string/jumbo v1, "HAS_DOMAIN_URLS"

    #@145
    const/16 v2, 0x9

    #@147
    aput-object v1, v0, v2

    #@149
    .line 4254
    const/16 v1, 0x20

    #@14b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14e
    move-result-object v1

    #@14f
    const/16 v2, 0xa

    #@151
    aput-object v1, v0, v2

    #@153
    const-string/jumbo v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    #@156
    const/16 v2, 0xb

    #@158
    aput-object v1, v0, v2

    #@15a
    .line 4255
    const/16 v1, 0x40

    #@15c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15f
    move-result-object v1

    #@160
    const/16 v2, 0xc

    #@162
    aput-object v1, v0, v2

    #@164
    const-string/jumbo v1, "DIRECT_BOOT_AWARE"

    #@167
    const/16 v2, 0xd

    #@169
    aput-object v1, v0, v2

    #@16b
    .line 4256
    const/16 v1, 0x80

    #@16d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@170
    move-result-object v1

    #@171
    const/16 v2, 0xe

    #@173
    aput-object v1, v0, v2

    #@175
    const-string/jumbo v1, "AUTOPLAY"

    #@178
    const/16 v2, 0xf

    #@17a
    aput-object v1, v0, v2

    #@17c
    .line 4257
    const/16 v1, 0x100

    #@17e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@181
    move-result-object v1

    #@182
    aput-object v1, v0, v7

    #@184
    const-string/jumbo v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    #@187
    const/16 v2, 0x11

    #@189
    aput-object v1, v0, v2

    #@18b
    .line 4258
    const/16 v1, 0x200

    #@18d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@190
    move-result-object v1

    #@191
    const/16 v2, 0x12

    #@193
    aput-object v1, v0, v2

    #@195
    const-string/jumbo v1, "EPHEMERAL"

    #@198
    const/16 v2, 0x13

    #@19a
    aput-object v1, v0, v2

    #@19c
    .line 4259
    const/16 v1, 0x400

    #@19e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a1
    move-result-object v1

    #@1a2
    const/16 v2, 0x14

    #@1a4
    aput-object v1, v0, v2

    #@1a6
    const-string/jumbo v1, "REQUIRED_FOR_SYSTEM_USER"

    #@1a9
    const/16 v2, 0x15

    #@1ab
    aput-object v1, v0, v2

    #@1ad
    .line 4260
    const/16 v1, 0x800

    #@1af
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b2
    move-result-object v1

    #@1b3
    const/16 v2, 0x16

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    const-string/jumbo v1, "RESIZEABLE_ACTIVITIES"

    #@1ba
    const/16 v2, 0x17

    #@1bc
    aput-object v1, v0, v2

    #@1be
    .line 4261
    const/16 v1, 0x1000

    #@1c0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c3
    move-result-object v1

    #@1c4
    const/16 v2, 0x18

    #@1c6
    aput-object v1, v0, v2

    #@1c8
    const-string/jumbo v1, "BACKUP_IN_FOREGROUND"

    #@1cb
    const/16 v2, 0x19

    #@1cd
    aput-object v1, v0, v2

    #@1cf
    .line 4248
    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@1d1
    .line 125
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/Object;)V
    .locals 5
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 251
    new-instance v1, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@b
    .line 254
    new-instance v1, Landroid/util/ArraySet;

    #@d
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    #@12
    .line 257
    new-instance v1, Landroid/util/ArrayMap;

    #@14
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    #@19
    .line 261
    new-instance v1, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    .line 260
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@20
    .line 265
    new-instance v1, Landroid/util/ArrayMap;

    #@22
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@25
    .line 264
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@27
    .line 285
    new-instance v1, Landroid/util/SparseArray;

    #@29
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@2c
    .line 284
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@2e
    .line 290
    new-instance v1, Landroid/util/ArrayMap;

    #@30
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@33
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@35
    .line 335
    new-instance v1, Landroid/util/SparseArray;

    #@37
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@3a
    .line 334
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@3c
    .line 340
    new-instance v1, Landroid/util/SparseArray;

    #@3e
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@41
    .line 339
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@43
    .line 344
    new-instance v1, Landroid/util/SparseArray;

    #@45
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@48
    .line 343
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@4a
    .line 347
    new-instance v1, Landroid/util/ArrayMap;

    #@4c
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@4f
    .line 346
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@51
    .line 348
    new-instance v1, Ljava/util/ArrayList;

    #@53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@56
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@58
    .line 350
    new-instance v1, Landroid/util/SparseArray;

    #@5a
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@5d
    .line 349
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@5f
    .line 354
    new-instance v1, Ljava/util/ArrayList;

    #@61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@64
    .line 353
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@66
    .line 356
    new-instance v1, Landroid/util/ArrayMap;

    #@68
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@6b
    .line 355
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@6d
    .line 360
    new-instance v1, Landroid/util/ArrayMap;

    #@6f
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@72
    .line 359
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@74
    .line 364
    new-instance v1, Landroid/util/ArrayMap;

    #@76
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@79
    .line 363
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@7b
    .line 368
    new-instance v1, Ljava/util/ArrayList;

    #@7d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@80
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@82
    .line 374
    new-instance v1, Landroid/util/ArrayMap;

    #@84
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@87
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@89
    .line 377
    new-instance v1, Landroid/util/SparseArray;

    #@8b
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@8e
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@90
    .line 380
    new-instance v1, Landroid/util/SparseArray;

    #@92
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@95
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    #@97
    .line 383
    new-instance v1, Landroid/util/SparseIntArray;

    #@99
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@9c
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@9e
    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@a5
    .line 394
    new-instance v1, Ljava/util/ArrayList;

    #@a7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@aa
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@ac
    .line 398
    new-instance v1, Lcom/android/server/pm/KeySetManagerService;

    #@ae
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@b0
    invoke-direct {v1, v2}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    #@b3
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    #@b5
    .line 405
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    #@b7
    .line 407
    new-instance v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@b9
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    #@bb
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    #@be
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@c0
    .line 409
    new-instance v1, Ljava/io/File;

    #@c2
    const-string/jumbo v2, "system"

    #@c5
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c8
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@ca
    .line 410
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@cc
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@cf
    .line 411
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@d1
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    .line 412
    const/16 v2, 0x1fd

    #@d7
    .line 411
    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@da
    .line 415
    new-instance v1, Ljava/io/File;

    #@dc
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@de
    const-string/jumbo v3, "packages.xml"

    #@e1
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e4
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@e6
    .line 416
    new-instance v1, Ljava/io/File;

    #@e8
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@ea
    const-string/jumbo v3, "packages-backup.xml"

    #@ed
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f0
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@f2
    .line 417
    new-instance v1, Ljava/io/File;

    #@f4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@f6
    const-string/jumbo v3, "packages.list"

    #@f9
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@fc
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@fe
    .line 418
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@100
    const/16 v2, 0x1a0

    #@102
    const/16 v3, 0x3e8

    #@104
    const/16 v4, 0x408

    #@106
    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    #@109
    .line 420
    new-instance v0, Ljava/io/File;

    #@10b
    const-string/jumbo v1, "/config/sdcardfs"

    #@10e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@111
    .line 421
    .local v0, "kernelDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@114
    move-result v1

    #@115
    if-eqz v1, :cond_0

    #@117
    .end local v0    # "kernelDir":Ljava/io/File;
    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    #@119
    .line 424
    new-instance v1, Ljava/io/File;

    #@11b
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@11d
    const-string/jumbo v3, "packages-stopped.xml"

    #@120
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@123
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@125
    .line 425
    new-instance v1, Ljava/io/File;

    #@127
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    #@129
    const-string/jumbo v3, "packages-stopped-backup.xml"

    #@12c
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@12f
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@131
    .line 404
    return-void

    #@132
    .line 421
    .restart local v0    # "kernelDir":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    #@133
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 401
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Ljava/lang/Object;)V

    #@7
    .line 400
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
    .line 952
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 953
    if-eqz p3, :cond_1

    #@8
    .line 954
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@a
    if-eqz v2, :cond_4

    #@c
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@e
    if-eq v2, p3, :cond_4

    #@10
    .line 956
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
    .line 957
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@2b
    .line 956
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 957
    const-string/jumbo v3, " but is now "

    #@32
    .line 956
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 958
    const-string/jumbo v3, "; I am not changing its files so it will probably fail!"

    #@3d
    .line 956
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 955
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@48
    .line 959
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@4a
    invoke-virtual {v2, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    #@4d
    .line 968
    :cond_0
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    #@50
    .line 969
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@52
    .line 970
    iget v2, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@54
    iput v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@56
    .line 975
    :cond_1
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@58
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    .line 976
    .local v1, "userIdPs":Ljava/lang/Object;
    if-nez p3, :cond_5

    #@5e
    .line 977
    if-eqz v1, :cond_2

    #@60
    if-eq v1, p1, :cond_2

    #@62
    .line 978
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@64
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    #@67
    .line 986
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
    .line 987
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v0, :cond_3

    #@71
    .line 991
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@73
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 992
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@79
    .line 951
    :cond_3
    return-void

    #@7a
    .line 960
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "userIdPs":Ljava/lang/Object;
    :cond_4
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@7c
    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@7e
    if-eq v2, v3, :cond_0

    #@80
    .line 962
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
    .line 963
    const-string/jumbo v3, " but is now user "

    #@a2
    .line 962
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    .line 964
    const-string/jumbo v3, " with id "

    #@ad
    .line 962
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    .line 964
    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@b3
    .line 962
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v2

    #@b7
    .line 965
    const-string/jumbo v3, "; I am not changing its files so it will probably fail!"

    #@ba
    .line 962
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v2

    #@c2
    .line 961
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@c5
    goto :goto_0

    #@c6
    .line 981
    .restart local v1    # "userIdPs":Ljava/lang/Object;
    :cond_5
    if-eqz v1, :cond_2

    #@c8
    if-eq v1, p3, :cond_2

    #@ca
    .line 982
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
    .line 1132
    const/16 v2, 0x4e1f

    #@5
    if-le p1, v2, :cond_0

    #@7
    .line 1133
    return v4

    #@8
    .line 1136
    :cond_0
    const/16 v2, 0x2710

    #@a
    if-lt p1, v2, :cond_3

    #@c
    .line 1137
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    .line 1138
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@14
    .line 1139
    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    #@16
    .line 1140
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 1141
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1143
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 1145
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
    .line 1146
    const-string/jumbo v3, " name="

    #@39
    .line 1145
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
    .line 1144
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@48
    .line 1147
    return v4

    #@49
    .line 1149
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 1159
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_1
    const/4 v2, 0x1

    #@4f
    return v2

    #@50
    .line 1151
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@52
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    if-eqz v2, :cond_4

    #@58
    .line 1153
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
    .line 1154
    const-string/jumbo v3, " name="

    #@6b
    .line 1153
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
    .line 1152
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@7a
    .line 1155
    return v4

    #@7b
    .line 1157
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    #@7d
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@80
    goto :goto_1
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 20
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
    .line 3216
    move-object/from16 v0, p1

    #@2
    move/from16 v1, p3

    #@4
    move/from16 v2, p9

    #@6
    move-object/from16 v3, p2

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->updateFlagsForResolve(IILjava/lang/Object;)I

    #@b
    move-result p3

    #@c
    .line 3217
    move-object/from16 v0, p1

    #@e
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@10
    .line 3218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    const/16 v19, 0x0

    #@16
    .line 3217
    move-object/from16 v0, p2

    #@18
    move/from16 v1, p3

    #@1a
    move/from16 v2, v19

    #@1c
    invoke-virtual {v8, v0, v9, v1, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@1f
    move-result-object v17

    #@20
    .line 3221
    .local v17, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    #@21
    .line 3223
    .local v6, "systemMatch":I
    if-eqz v17, :cond_10

    #@23
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@26
    move-result v8

    #@27
    const/4 v9, 0x1

    #@28
    if-le v8, v9, :cond_10

    #@2a
    .line 3224
    const/4 v14, 0x0

    #@2b
    .line 3225
    .local v14, "haveAct":Z
    const/4 v15, 0x0

    #@2c
    .line 3226
    .local v15, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@2f
    move-result v8

    #@30
    new-array v7, v8, [Landroid/content/ComponentName;

    #@32
    .line 3227
    .local v7, "set":[Landroid/content/ComponentName;
    const/16 v16, 0x0

    #@34
    .local v16, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@37
    move-result v8

    #@38
    move/from16 v0, v16

    #@3a
    if-ge v0, v8, :cond_0

    #@3c
    .line 3228
    move-object/from16 v0, v17

    #@3e
    move/from16 v1, v16

    #@40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v8

    #@44
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@46
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@48
    .line 3229
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/content/ComponentName;

    #@4a
    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4c
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@4e
    move-object/from16 v19, v0

    #@50
    move-object/from16 v0, v19

    #@52
    invoke-direct {v8, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    aput-object v8, v7, v16

    #@57
    .line 3230
    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@59
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5b
    and-int/lit8 v8, v8, 0x1

    #@5d
    if-nez v8, :cond_3

    #@5f
    .line 3231
    move-object/from16 v0, v17

    #@61
    move/from16 v1, v16

    #@63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v8

    #@67
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@69
    iget v8, v8, Landroid/content/pm/ResolveInfo;->match:I

    #@6b
    if-ltz v8, :cond_4

    #@6d
    .line 3237
    aget-object v15, v7, v16

    #@6f
    .line 3251
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "haveNonSys":Landroid/content/ComponentName;
    :cond_0
    if-eqz v15, :cond_1

    #@71
    if-lez v6, :cond_1

    #@73
    .line 3256
    const/4 v15, 0x0

    #@74
    .line 3258
    :cond_1
    if-eqz v14, :cond_c

    #@76
    if-nez v15, :cond_c

    #@78
    .line 3259
    new-instance v5, Landroid/content/IntentFilter;

    #@7a
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    #@7d
    .line 3260
    .local v5, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    if-eqz v8, :cond_2

    #@83
    .line 3261
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@8a
    .line 3263
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@8d
    move-result-object v8

    #@8e
    if-eqz v8, :cond_5

    #@90
    .line 3264
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@93
    move-result-object v8

    #@94
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@97
    move-result-object v12

    #@98
    .local v12, "cat$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@9b
    move-result v8

    #@9c
    if-eqz v8, :cond_5

    #@9e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a1
    move-result-object v11

    #@a2
    check-cast v11, Ljava/lang/String;

    #@a4
    .line 3265
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@a7
    goto :goto_1

    #@a8
    .line 3240
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "cat":Ljava/lang/String;
    .end local v12    # "cat$iterator":Ljava/util/Iterator;
    .restart local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "haveNonSys":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@ae
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v8

    #@b2
    if-eqz v8, :cond_4

    #@b4
    .line 3241
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@b7
    move-result-object v8

    #@b8
    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@ba
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v8

    #@be
    .line 3240
    if-eqz v8, :cond_4

    #@c0
    .line 3244
    const/4 v14, 0x1

    #@c1
    .line 3245
    move-object/from16 v0, v17

    #@c3
    move/from16 v1, v16

    #@c5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v8

    #@c9
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@cb
    iget v6, v8, Landroid/content/pm/ResolveInfo;->match:I

    #@cd
    .line 3227
    :cond_4
    add-int/lit8 v16, v16, 0x1

    #@cf
    goto/16 :goto_0

    #@d1
    .line 3268
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "haveNonSys":Landroid/content/ComponentName;
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    :cond_5
    const/high16 v8, 0x10000

    #@d3
    and-int v8, v8, p3

    #@d5
    if-eqz v8, :cond_6

    #@d7
    .line 3269
    const-string/jumbo v8, "android.intent.category.DEFAULT"

    #@da
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@dd
    .line 3271
    :cond_6
    if-eqz p5, :cond_7

    #@df
    .line 3272
    move-object/from16 v0, p5

    #@e1
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@e4
    .line 3274
    :cond_7
    if-eqz p6, :cond_8

    #@e6
    .line 3275
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@e9
    move-result-object v8

    #@ea
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    #@ed
    move-result v9

    #@ee
    invoke-virtual {v5, v8, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@f1
    .line 3277
    :cond_8
    if-eqz p7, :cond_9

    #@f3
    .line 3278
    move-object/from16 v0, p7

    #@f5
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    #@f8
    .line 3280
    :cond_9
    if-eqz p8, :cond_a

    #@fa
    .line 3281
    move-object/from16 v0, p8

    #@fc
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    #@ff
    .line 3283
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@102
    move-result-object v8

    #@103
    if-eqz v8, :cond_b

    #@105
    .line 3285
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@108
    move-result-object v8

    #@109
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@10c
    .line 3290
    :cond_b
    :goto_2
    new-instance v4, Lcom/android/server/pm/PreferredActivity;

    #@10e
    const/4 v9, 0x1

    #@10f
    move-object/from16 v8, p4

    #@111
    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    #@114
    .line 3291
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    #@116
    move/from16 v1, p9

    #@118
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    #@11b
    move-result-object v8

    #@11c
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@11f
    .line 3215
    .end local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "set":[Landroid/content/ComponentName;
    .end local v14    # "haveAct":Z
    .end local v16    # "i":I
    :goto_3
    return-void

    #@120
    .line 3286
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "set":[Landroid/content/ComponentName;
    .restart local v14    # "haveAct":Z
    .restart local v16    # "i":I
    :catch_0
    move-exception v13

    #@121
    .line 3287
    .local v13, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v8, "PackageSettings"

    #@124
    new-instance v9, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v19, "Malformed mimetype "

    #@12c
    move-object/from16 v0, v19

    #@12e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v9

    #@132
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@135
    move-result-object v19

    #@136
    move-object/from16 v0, v19

    #@138
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v9

    #@13c
    const-string/jumbo v19, " for "

    #@13f
    move-object/from16 v0, v19

    #@141
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v9

    #@145
    move-object/from16 v0, p4

    #@147
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v9

    #@14b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v9

    #@14f
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@152
    goto :goto_2

    #@153
    .line 3292
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_c
    if-nez v15, :cond_f

    #@155
    .line 3293
    new-instance v18, Ljava/lang/StringBuilder;

    #@157
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    .line 3294
    .local v18, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "No component "

    #@15d
    move-object/from16 v0, v18

    #@15f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    .line 3295
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@165
    move-result-object v8

    #@166
    move-object/from16 v0, v18

    #@168
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    .line 3296
    const-string/jumbo v8, " found setting preferred "

    #@16e
    move-object/from16 v0, v18

    #@170
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    .line 3297
    move-object/from16 v0, v18

    #@175
    move-object/from16 v1, p2

    #@177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17a
    .line 3298
    const-string/jumbo v8, "; possible matches are "

    #@17d
    move-object/from16 v0, v18

    #@17f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    .line 3299
    const/16 v16, 0x0

    #@184
    :goto_4
    array-length v8, v7

    #@185
    move/from16 v0, v16

    #@187
    if-ge v0, v8, :cond_e

    #@189
    .line 3300
    if-lez v16, :cond_d

    #@18b
    const-string/jumbo v8, ", "

    #@18e
    move-object/from16 v0, v18

    #@190
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    .line 3301
    :cond_d
    aget-object v8, v7, v16

    #@195
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@198
    move-result-object v8

    #@199
    move-object/from16 v0, v18

    #@19b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    .line 3299
    add-int/lit8 v16, v16, 0x1

    #@1a0
    goto :goto_4

    #@1a1
    .line 3303
    :cond_e
    const-string/jumbo v8, "PackageSettings"

    #@1a4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v9

    #@1a8
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ab
    goto/16 :goto_3

    #@1ad
    .line 3305
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_f
    const-string/jumbo v8, "PackageSettings"

    #@1b0
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v19, "Not setting preferred "

    #@1b8
    move-object/from16 v0, v19

    #@1ba
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v9

    #@1be
    move-object/from16 v0, p2

    #@1c0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v9

    #@1c4
    const-string/jumbo v19, "; found third party match "

    #@1c7
    move-object/from16 v0, v19

    #@1c9
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v9

    #@1cd
    .line 3306
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1d0
    move-result-object v19

    #@1d1
    .line 3305
    move-object/from16 v0, v19

    #@1d3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v9

    #@1d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v9

    #@1db
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1de
    goto/16 :goto_3

    #@1e0
    .line 3309
    .end local v7    # "set":[Landroid/content/ComponentName;
    .end local v14    # "haveAct":Z
    .end local v16    # "i":I
    :cond_10
    const-string/jumbo v8, "PackageSettings"

    #@1e3
    new-instance v9, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v19, "No potential matches found for "

    #@1eb
    move-object/from16 v0, v19

    #@1ed
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v9

    #@1f1
    move-object/from16 v0, p2

    #@1f3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v9

    #@1f7
    const-string/jumbo v19, " while setting preferred "

    #@1fa
    move-object/from16 v0, v19

    #@1fc
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v9

    #@200
    .line 3310
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@203
    move-result-object v19

    #@204
    .line 3309
    move-object/from16 v0, v19

    #@206
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v9

    #@20a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20d
    move-result-object v9

    #@20e
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@211
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
    .line 3110
    new-instance v37, Landroid/content/Intent;

    #@2
    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    #@5
    .line 3111
    .local v37, "intent":Landroid/content/Intent;
    const/high16 v5, 0xc0000

    #@7
    .line 3113
    .local v5, "flags":I
    const/4 v2, 0x0

    #@8
    move-object/from16 v0, p2

    #@a
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    move-object/from16 v0, v37

    #@10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 3114
    const/16 v34, 0x0

    #@15
    .local v34, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    #@18
    move-result v2

    #@19
    move/from16 v0, v34

    #@1b
    if-ge v0, v2, :cond_1

    #@1d
    .line 3115
    move-object/from16 v0, p2

    #@1f
    move/from16 v1, v34

    #@21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    #@24
    move-result-object v29

    #@25
    .line 3116
    .local v29, "cat":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    #@28
    move-object/from16 v0, v29

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 3117
    const/high16 v2, 0x10000

    #@32
    or-int/2addr v5, v2

    #@33
    .line 3114
    :goto_1
    add-int/lit8 v34, v34, 0x1

    #@35
    goto :goto_0

    #@36
    .line 3119
    :cond_0
    move-object/from16 v0, v37

    #@38
    move-object/from16 v1, v29

    #@3a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@3d
    goto :goto_1

    #@3e
    .line 3123
    .end local v29    # "cat":Ljava/lang/String;
    :cond_1
    const/16 v31, 0x1

    #@40
    .line 3124
    .local v31, "doNonData":Z
    const/16 v33, 0x0

    #@42
    .line 3126
    .local v33, "hasSchemes":Z
    const/16 v39, 0x0

    #@44
    .local v39, "ischeme":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@47
    move-result v2

    #@48
    move/from16 v0, v39

    #@4a
    if-ge v0, v2, :cond_b

    #@4c
    .line 3127
    const/16 v32, 0x1

    #@4e
    .line 3128
    .local v32, "doScheme":Z
    move-object/from16 v0, p2

    #@50
    move/from16 v1, v39

    #@52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    .line 3129
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@58
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_3

    #@5e
    .line 3132
    :cond_2
    :goto_3
    const/16 v40, 0x0

    #@60
    .local v40, "issp":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    #@63
    move-result v2

    #@64
    move/from16 v0, v40

    #@66
    if-ge v0, v2, :cond_4

    #@68
    .line 3133
    new-instance v28, Landroid/net/Uri$Builder;

    #@6a
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@6d
    .line 3134
    .local v28, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@6f
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@72
    .line 3135
    move-object/from16 v0, p2

    #@74
    move/from16 v1, v40

    #@76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    #@79
    move-result-object v8

    #@7a
    .line 3136
    .local v8, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v8}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    move-object/from16 v0, v28

    #@80
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@83
    .line 3137
    new-instance v4, Landroid/content/Intent;

    #@85
    move-object/from16 v0, v37

    #@87
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@8a
    .line 3138
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@91
    .line 3140
    const/4 v9, 0x0

    #@92
    const/4 v10, 0x0

    #@93
    move-object/from16 v2, p0

    #@95
    move-object/from16 v3, p1

    #@97
    move-object/from16 v6, p3

    #@99
    move/from16 v11, p4

    #@9b
    .line 3139
    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@9e
    .line 3141
    const/16 v32, 0x0

    #@a0
    .line 3132
    add-int/lit8 v40, v40, 0x1

    #@a2
    goto :goto_4

    #@a3
    .line 3130
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v8    # "ssp":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    .end local v40    # "issp":I
    :cond_3
    const/16 v33, 0x1

    #@a5
    goto :goto_3

    #@a6
    .line 3143
    .restart local v40    # "issp":I
    :cond_4
    const/16 v35, 0x0

    #@a8
    .local v35, "iauth":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@ab
    move-result v2

    #@ac
    move/from16 v0, v35

    #@ae
    if-ge v0, v2, :cond_9

    #@b0
    .line 3144
    const/16 v30, 0x1

    #@b2
    .line 3145
    .local v30, "doAuth":Z
    move-object/from16 v0, p2

    #@b4
    move/from16 v1, v35

    #@b6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    #@b9
    move-result-object v16

    #@ba
    .line 3146
    .local v16, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    const/16 v38, 0x0

    #@bc
    .local v38, "ipath":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    #@bf
    move-result v2

    #@c0
    move/from16 v0, v38

    #@c2
    if-ge v0, v2, :cond_6

    #@c4
    .line 3147
    new-instance v28, Landroid/net/Uri$Builder;

    #@c6
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@c9
    .line 3148
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@cb
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@ce
    .line 3149
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    if-eqz v2, :cond_5

    #@d4
    .line 3150
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    move-object/from16 v0, v28

    #@da
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@dd
    .line 3152
    :cond_5
    move-object/from16 v0, p2

    #@df
    move/from16 v1, v38

    #@e1
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    #@e4
    move-result-object v17

    #@e5
    .line 3153
    .local v17, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@e8
    move-result-object v2

    #@e9
    move-object/from16 v0, v28

    #@eb
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@ee
    .line 3154
    new-instance v4, Landroid/content/Intent;

    #@f0
    move-object/from16 v0, v37

    #@f2
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@f5
    .line 3155
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@fc
    .line 3157
    const/4 v15, 0x0

    #@fd
    move-object/from16 v9, p0

    #@ff
    move-object/from16 v10, p1

    #@101
    move-object v11, v4

    #@102
    move v12, v5

    #@103
    move-object/from16 v13, p3

    #@105
    move-object v14, v7

    #@106
    move/from16 v18, p4

    #@108
    .line 3156
    invoke-direct/range {v9 .. v18}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@10b
    .line 3158
    const/16 v32, 0x0

    #@10d
    const/16 v30, 0x0

    #@10f
    .line 3146
    add-int/lit8 v38, v38, 0x1

    #@111
    goto :goto_6

    #@112
    .line 3160
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "path":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_6
    if-eqz v30, :cond_8

    #@114
    .line 3161
    new-instance v28, Landroid/net/Uri$Builder;

    #@116
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@119
    .line 3162
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@11b
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@11e
    .line 3163
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@121
    move-result-object v2

    #@122
    if-eqz v2, :cond_7

    #@124
    .line 3164
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@127
    move-result-object v2

    #@128
    move-object/from16 v0, v28

    #@12a
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12d
    .line 3166
    :cond_7
    new-instance v4, Landroid/content/Intent;

    #@12f
    move-object/from16 v0, v37

    #@131
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@134
    .line 3167
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@13b
    .line 3169
    const/16 v24, 0x0

    #@13d
    const/16 v26, 0x0

    #@13f
    move-object/from16 v18, p0

    #@141
    move-object/from16 v19, p1

    #@143
    move-object/from16 v20, v4

    #@145
    move/from16 v21, v5

    #@147
    move-object/from16 v22, p3

    #@149
    move-object/from16 v23, v7

    #@14b
    move-object/from16 v25, v16

    #@14d
    move/from16 v27, p4

    #@14f
    .line 3168
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@152
    .line 3170
    const/16 v32, 0x0

    #@154
    .line 3143
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    add-int/lit8 v35, v35, 0x1

    #@156
    goto/16 :goto_5

    #@158
    .line 3173
    .end local v16    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v30    # "doAuth":Z
    .end local v38    # "ipath":I
    :cond_9
    if-eqz v32, :cond_a

    #@15a
    .line 3174
    new-instance v28, Landroid/net/Uri$Builder;

    #@15c
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@15f
    .line 3175
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    #@161
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@164
    .line 3176
    new-instance v4, Landroid/content/Intent;

    #@166
    move-object/from16 v0, v37

    #@168
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@16b
    .line 3177
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@16e
    move-result-object v2

    #@16f
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@172
    .line 3179
    const/16 v24, 0x0

    #@174
    const/16 v25, 0x0

    #@176
    const/16 v26, 0x0

    #@178
    move-object/from16 v18, p0

    #@17a
    move-object/from16 v19, p1

    #@17c
    move-object/from16 v20, v4

    #@17e
    move/from16 v21, v5

    #@180
    move-object/from16 v22, p3

    #@182
    move-object/from16 v23, v7

    #@184
    move/from16 v27, p4

    #@186
    .line 3178
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@189
    .line 3181
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_a
    const/16 v31, 0x0

    #@18b
    .line 3126
    add-int/lit8 v39, v39, 0x1

    #@18d
    goto/16 :goto_2

    #@18f
    .line 3184
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v32    # "doScheme":Z
    .end local v35    # "iauth":I
    .end local v40    # "issp":I
    :cond_b
    const/16 v36, 0x0

    #@191
    .local v36, "idata":I
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    #@194
    move-result v2

    #@195
    move/from16 v0, v36

    #@197
    if-ge v0, v2, :cond_10

    #@199
    .line 3185
    move-object/from16 v0, p2

    #@19b
    move/from16 v1, v36

    #@19d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    #@1a0
    move-result-object v41

    #@1a1
    .line 3186
    .local v41, "mimeType":Ljava/lang/String;
    if-eqz v33, :cond_e

    #@1a3
    .line 3187
    new-instance v28, Landroid/net/Uri$Builder;

    #@1a5
    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    #@1a8
    .line 3188
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    const/16 v39, 0x0

    #@1aa
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@1ad
    move-result v2

    #@1ae
    move/from16 v0, v39

    #@1b0
    if-ge v0, v2, :cond_f

    #@1b2
    .line 3189
    move-object/from16 v0, p2

    #@1b4
    move/from16 v1, v39

    #@1b6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    #@1b9
    move-result-object v7

    #@1ba
    .line 3190
    .restart local v7    # "scheme":Ljava/lang/String;
    if-eqz v7, :cond_c

    #@1bc
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@1bf
    move-result v2

    #@1c0
    if-eqz v2, :cond_d

    #@1c2
    .line 3188
    :cond_c
    :goto_9
    add-int/lit8 v39, v39, 0x1

    #@1c4
    goto :goto_8

    #@1c5
    .line 3191
    :cond_d
    new-instance v4, Landroid/content/Intent;

    #@1c7
    move-object/from16 v0, v37

    #@1c9
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1cc
    .line 3192
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v28

    #@1ce
    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1d1
    .line 3193
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1d4
    move-result-object v2

    #@1d5
    move-object/from16 v0, v41

    #@1d7
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@1da
    .line 3195
    const/16 v24, 0x0

    #@1dc
    const/16 v25, 0x0

    #@1de
    const/16 v26, 0x0

    #@1e0
    move-object/from16 v18, p0

    #@1e2
    move-object/from16 v19, p1

    #@1e4
    move-object/from16 v20, v4

    #@1e6
    move/from16 v21, v5

    #@1e8
    move-object/from16 v22, p3

    #@1ea
    move-object/from16 v23, v7

    #@1ec
    move/from16 v27, p4

    #@1ee
    .line 3194
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@1f1
    goto :goto_9

    #@1f2
    .line 3199
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_e
    new-instance v4, Landroid/content/Intent;

    #@1f4
    move-object/from16 v0, v37

    #@1f6
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1f9
    .line 3200
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v41

    #@1fb
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@1fe
    .line 3202
    const/16 v23, 0x0

    #@200
    const/16 v24, 0x0

    #@202
    const/16 v25, 0x0

    #@204
    const/16 v26, 0x0

    #@206
    move-object/from16 v18, p0

    #@208
    move-object/from16 v19, p1

    #@20a
    move-object/from16 v20, v4

    #@20c
    move/from16 v21, v5

    #@20e
    move-object/from16 v22, p3

    #@210
    move/from16 v27, p4

    #@212
    .line 3201
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@215
    .line 3204
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_f
    const/16 v31, 0x0

    #@217
    .line 3184
    add-int/lit8 v36, v36, 0x1

    #@219
    goto/16 :goto_7

    #@21b
    .line 3207
    .end local v41    # "mimeType":Ljava/lang/String;
    :cond_10
    if-eqz v31, :cond_11

    #@21d
    .line 3209
    const/16 v23, 0x0

    #@21f
    const/16 v24, 0x0

    #@221
    const/16 v25, 0x0

    #@223
    const/16 v26, 0x0

    #@225
    move-object/from16 v18, p0

    #@227
    move-object/from16 v19, p1

    #@229
    move-object/from16 v20, v37

    #@22b
    move/from16 v21, v5

    #@22d
    move-object/from16 v22, p3

    #@22f
    move/from16 v27, p4

    #@231
    .line 3208
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    #@234
    .line 3101
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
    .line 4112
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
    .line 4809
    if-nez p1, :cond_0

    #@2
    .line 4810
    const-string/jumbo v1, "unknown"

    #@5
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 4808
    :goto_0
    return-void

    #@9
    .line 4813
    :cond_0
    const-string/jumbo v1, "["

    #@c
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 4814
    const-string/jumbo v1, "base"

    #@12
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    .line 4815
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 4816
    const-string/jumbo v1, ":"

    #@1c
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@21
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@24
    .line 4818
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 4819
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
    .line 4820
    const-string/jumbo v1, ", "

    #@31
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 4821
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@36
    aget-object v1, v1, v0

    #@38
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    .line 4822
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@3d
    aget v1, v1, v0

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 4823
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
    .line 4819
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_1

    #@51
    .line 4827
    .end local v0    # "i":I
    :cond_3
    const-string/jumbo v1, "]"

    #@54
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    goto :goto_0
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;ZZLjava/lang/String;Ljava/util/List;)Lcom/android/server/pm/PackageSetting;
    .locals 31
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
    .param p16, "parentPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Landroid/os/UserHandle;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    .local p17, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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
    .line 692
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@f
    move-result-object v29

    #@10
    .line 693
    .local v29, "userManager":Lcom/android/server/pm/UserManagerService;
    if-eqz v4, :cond_2

    #@12
    .line 694
    move-object/from16 v0, p8

    #@14
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@16
    .line 695
    move-object/from16 v0, p9

    #@18
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@1a
    .line 696
    if-eqz p17, :cond_0

    #@1c
    .line 697
    new-instance v5, Ljava/util/ArrayList;

    #@1e
    move-object/from16 v0, p17

    #@20
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@23
    iput-object v5, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@25
    .line 700
    :cond_0
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@27
    move-object/from16 v0, p5

    #@29
    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_1

    #@2f
    .line 702
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@31
    and-int/lit8 v5, v5, 0x1

    #@33
    if-eqz v5, :cond_3

    #@35
    .line 706
    const-string/jumbo v5, "PackageManager"

    #@38
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "Trying to update system app code path from "

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    .line 707
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@46
    .line 706
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 707
    const-string/jumbo v7, " to "

    #@4d
    .line 706
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    .line 707
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    .line 706
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 737
    :cond_1
    :goto_0
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@62
    move-object/from16 v0, p4

    #@64
    if-eq v5, v0, :cond_7

    #@66
    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v6, "Package "

    #@6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    const-string/jumbo v6, " shared user changed from "

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    .line 740
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@81
    if-eqz v5, :cond_5

    #@83
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@85
    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@87
    .line 739
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    .line 741
    const-string/jumbo v6, " to "

    #@8e
    .line 739
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    .line 742
    if-eqz p4, :cond_6

    #@94
    move-object/from16 v0, p4

    #@96
    iget-object v5, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@98
    .line 739
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 743
    const-string/jumbo v6, "; replacing with new"

    #@9f
    .line 739
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    .line 738
    const/4 v6, 0x5

    #@a8
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@ab
    .line 744
    const/4 v4, 0x0

    #@ac
    .line 753
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_2
    :goto_3
    if-nez v4, :cond_14

    #@ae
    .line 754
    if-eqz p2, :cond_8

    #@b0
    .line 756
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    #@b2
    move-object/from16 v0, p2

    #@b4
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@b6
    .line 758
    const/4 v12, 0x0

    #@b7
    move-object/from16 v6, p1

    #@b9
    move-object/from16 v7, p5

    #@bb
    move-object/from16 v8, p6

    #@bd
    move-object/from16 v9, p7

    #@bf
    move-object/from16 v10, p8

    #@c1
    move-object/from16 v11, p9

    #@c3
    move/from16 v13, p10

    #@c5
    move/from16 v14, p11

    #@c7
    move/from16 v15, p12

    #@c9
    move-object/from16 v16, p16

    #@cb
    move-object/from16 v17, p17

    #@cd
    .line 756
    invoke-direct/range {v4 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;)V

    #@d0
    .line 764
    .restart local v4    # "p":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@d2
    move-object/from16 v23, v0

    #@d4
    .line 765
    .local v23, "s":Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    #@d9
    .line 766
    move-object/from16 v0, v23

    #@db
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@dd
    .line 767
    move-object/from16 v0, p2

    #@df
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@e1
    iput-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@e3
    .line 768
    move-object/from16 v0, p2

    #@e5
    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@e7
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@e9
    .line 769
    move-object/from16 v0, p2

    #@eb
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    #@ed
    .line 770
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@f4
    move-result-object v6

    #@f5
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@f8
    .line 771
    move-object/from16 v0, p0

    #@fa
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@fc
    move-object/from16 v0, p2

    #@fe
    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 772
    move-object/from16 v0, p2

    #@107
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@109
    move-object/from16 p1, v0

    #@10b
    .line 774
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    #@10e
    move-result-wide v6

    #@10f
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    #@112
    .line 851
    .end local v23    # "s":Lcom/android/server/pm/PackageSignatures;
    :goto_4
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@114
    if-gez v5, :cond_12

    #@116
    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v6, "Package "

    #@11e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v5

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    const-string/jumbo v6, " could not be assigned a valid uid"

    #@12b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v5

    #@12f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v5

    #@133
    .line 852
    const/4 v6, 0x5

    #@134
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@137
    .line 854
    const/4 v5, 0x0

    #@138
    return-object v5

    #@139
    .line 711
    :cond_3
    const-string/jumbo v5, "PackageManager"

    #@13c
    new-instance v6, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v7, "Package "

    #@144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    move-object/from16 v0, p1

    #@14a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v6

    #@14e
    const-string/jumbo v7, " codePath changed from "

    #@151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v6

    #@155
    .line 712
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@157
    .line 711
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v6

    #@15b
    .line 712
    const-string/jumbo v7, " to "

    #@15e
    .line 711
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v6

    #@162
    move-object/from16 v0, p5

    #@164
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v6

    #@168
    .line 712
    const-string/jumbo v7, "; Retaining data and using new"

    #@16b
    .line 711
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v6

    #@16f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v6

    #@173
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@176
    .line 718
    and-int/lit8 v5, p11, 0x1

    #@178
    if-eqz v5, :cond_4

    #@17a
    .line 719
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    #@17d
    move-result-object v5

    #@17e
    if-nez v5, :cond_4

    #@180
    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@183
    move-result-object v20

    #@184
    .line 721
    .local v20, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v20, :cond_4

    #@186
    .line 722
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@189
    move-result-object v28

    #@18a
    .local v28, "userInfo$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@18d
    move-result v5

    #@18e
    if-eqz v5, :cond_4

    #@190
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@193
    move-result-object v27

    #@194
    check-cast v27, Landroid/content/pm/UserInfo;

    #@196
    .line 723
    .local v27, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v27

    #@198
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@19a
    const/4 v6, 0x1

    #@19b
    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    #@19e
    goto :goto_5

    #@19f
    .line 734
    .end local v20    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v28    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p7

    #@1a1
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@1a3
    goto/16 :goto_0

    #@1a5
    .line 740
    :cond_5
    const-string/jumbo v5, "<nothing>"

    #@1a8
    goto/16 :goto_1

    #@1aa
    .line 742
    :cond_6
    const-string/jumbo v5, "<nothing>"

    #@1ad
    goto/16 :goto_2

    #@1af
    .line 749
    :cond_7
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@1b1
    and-int/lit8 v6, p11, 0x1

    #@1b3
    or-int/2addr v5, v6

    #@1b4
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@1b6
    .line 750
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@1b8
    and-int/lit8 v6, p12, 0x8

    #@1ba
    or-int/2addr v5, v6

    #@1bb
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@1bd
    goto/16 :goto_3

    #@1bf
    .line 776
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_8
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    #@1c1
    .line 778
    const/4 v12, 0x0

    #@1c2
    move-object/from16 v5, p1

    #@1c4
    move-object/from16 v6, p3

    #@1c6
    move-object/from16 v7, p5

    #@1c8
    move-object/from16 v8, p6

    #@1ca
    move-object/from16 v9, p7

    #@1cc
    move-object/from16 v10, p8

    #@1ce
    move-object/from16 v11, p9

    #@1d0
    move/from16 v13, p10

    #@1d2
    move/from16 v14, p11

    #@1d4
    move/from16 v15, p12

    #@1d6
    move-object/from16 v16, p16

    #@1d8
    move-object/from16 v17, p17

    #@1da
    .line 776
    invoke-direct/range {v4 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;)V

    #@1dd
    .line 780
    .restart local v4    # "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    #@1e0
    move-result-wide v6

    #@1e1
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    #@1e4
    .line 781
    move-object/from16 v0, p4

    #@1e6
    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@1e8
    .line 783
    and-int/lit8 v5, p11, 0x1

    #@1ea
    if-nez v5, :cond_d

    #@1ec
    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@1ef
    move-result-object v30

    #@1f0
    .line 790
    .local v30, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p13, :cond_a

    #@1f2
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    #@1f5
    move-result v22

    #@1f6
    .line 791
    .local v22, "installUserId":I
    :goto_6
    if-eqz v30, :cond_d

    #@1f8
    if-eqz p15, :cond_d

    #@1fa
    .line 792
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1fd
    move-result-object v25

    #@1fe
    .local v25, "user$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@201
    move-result v5

    #@202
    if-eqz v5, :cond_d

    #@204
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@207
    move-result-object v24

    #@208
    check-cast v24, Landroid/content/pm/UserInfo;

    #@20a
    .line 799
    .local v24, "user":Landroid/content/pm/UserInfo;
    if-eqz p13, :cond_b

    #@20c
    .line 800
    const/4 v5, -0x1

    #@20d
    move/from16 v0, v22

    #@20f
    if-ne v0, v5, :cond_9

    #@211
    .line 801
    move-object/from16 v0, v24

    #@213
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@215
    move-object/from16 v0, p0

    #@217
    move-object/from16 v1, v29

    #@219
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    #@21c
    move-result v5

    #@21d
    if-eqz v5, :cond_b

    #@21f
    .line 802
    :cond_9
    move-object/from16 v0, v24

    #@221
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@223
    move/from16 v0, v22

    #@225
    if-ne v0, v5, :cond_c

    #@227
    const/4 v9, 0x1

    #@228
    .line 803
    .local v9, "installed":Z
    :goto_8
    move-object/from16 v0, v24

    #@22a
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@22c
    const-wide/16 v6, 0x0

    #@22e
    const/4 v8, 0x0

    #@22f
    .line 805
    const/4 v10, 0x1

    #@230
    .line 806
    const/4 v11, 0x1

    #@231
    .line 807
    const/4 v12, 0x0

    #@232
    .line 808
    const/4 v13, 0x0

    #@233
    .line 809
    const/4 v14, 0x0

    #@234
    const/4 v15, 0x0

    #@235
    const/16 v16, 0x0

    #@237
    .line 810
    const/16 v17, 0x0

    #@239
    .line 811
    const/16 v18, 0x0

    #@23b
    const/16 v19, 0x0

    #@23d
    .line 803
    invoke-virtual/range {v4 .. v19}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V

    #@240
    .line 812
    move-object/from16 v0, v24

    #@242
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@244
    move-object/from16 v0, p0

    #@246
    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@249
    goto :goto_7

    #@24a
    .line 790
    .end local v9    # "installed":Z
    .end local v22    # "installUserId":I
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    .end local v25    # "user$iterator":Ljava/util/Iterator;
    :cond_a
    const/16 v22, 0x0

    #@24c
    .restart local v22    # "installUserId":I
    goto :goto_6

    #@24d
    .line 799
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    .restart local v25    # "user$iterator":Ljava/util/Iterator;
    :cond_b
    const/4 v9, 0x1

    #@24e
    .restart local v9    # "installed":Z
    goto :goto_8

    #@24f
    .line 802
    .end local v9    # "installed":Z
    :cond_c
    const/4 v9, 0x0

    #@250
    .restart local v9    # "installed":Z
    goto :goto_8

    #@251
    .line 816
    .end local v9    # "installed":Z
    .end local v22    # "installUserId":I
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    .end local v25    # "user$iterator":Ljava/util/Iterator;
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    if-eqz p4, :cond_e

    #@253
    .line 817
    move-object/from16 v0, p4

    #@255
    iget v5, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@257
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@259
    goto/16 :goto_4

    #@25b
    .line 820
    :cond_e
    move-object/from16 v0, p0

    #@25d
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@25f
    move-object/from16 v0, p1

    #@261
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@264
    move-result-object v21

    #@265
    check-cast v21, Lcom/android/server/pm/PackageSetting;

    #@267
    .line 821
    .local v21, "dis":Lcom/android/server/pm/PackageSetting;
    if-eqz v21, :cond_11

    #@269
    .line 826
    move-object/from16 v0, v21

    #@26b
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@26d
    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@26f
    if-eqz v5, :cond_f

    #@271
    .line 827
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@273
    move-object/from16 v0, v21

    #@275
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@277
    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@279
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@27c
    move-result-object v5

    #@27d
    check-cast v5, [Landroid/content/pm/Signature;

    #@27f
    iput-object v5, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@281
    .line 829
    :cond_f
    move-object/from16 v0, v21

    #@283
    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@285
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@287
    .line 831
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@28a
    move-result-object v5

    #@28b
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@28e
    move-result-object v6

    #@28f
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@292
    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@295
    move-result-object v30

    #@296
    .line 834
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v30, :cond_10

    #@298
    .line 835
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29b
    move-result-object v25

    #@29c
    .restart local v25    # "user$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@29f
    move-result v5

    #@2a0
    if-eqz v5, :cond_10

    #@2a2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a5
    move-result-object v24

    #@2a6
    check-cast v24, Landroid/content/pm/UserInfo;

    #@2a8
    .line 836
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v24

    #@2aa
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@2ac
    move/from16 v26, v0

    #@2ae
    .line 838
    .local v26, "userId":I
    move-object/from16 v0, v21

    #@2b0
    move/from16 v1, v26

    #@2b2
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    #@2b5
    move-result-object v5

    #@2b6
    .line 837
    move/from16 v0, v26

    #@2b8
    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    #@2bb
    .line 840
    move-object/from16 v0, v21

    #@2bd
    move/from16 v1, v26

    #@2bf
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    #@2c2
    move-result-object v5

    #@2c3
    .line 839
    move/from16 v0, v26

    #@2c5
    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    #@2c8
    goto :goto_9

    #@2c9
    .line 844
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    .end local v25    # "user$iterator":Ljava/util/Iterator;
    .end local v26    # "userId":I
    :cond_10
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    move-object/from16 v1, p1

    #@2cf
    invoke-direct {v0, v5, v4, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@2d2
    goto/16 :goto_4

    #@2d4
    .line 847
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    move-object/from16 v0, p0

    #@2d6
    invoke-direct {v0, v4}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    #@2d9
    move-result v5

    #@2da
    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2dc
    goto/16 :goto_4

    #@2de
    .line 856
    .end local v21    # "dis":Lcom/android/server/pm/PackageSetting;
    :cond_12
    if-eqz p14, :cond_13

    #@2e0
    .line 859
    move-object/from16 v0, p0

    #@2e2
    move-object/from16 v1, p1

    #@2e4
    move-object/from16 v2, p4

    #@2e6
    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    #@2e9
    .line 882
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_13
    return-object v4

    #@2ea
    .line 862
    :cond_14
    if-eqz p13, :cond_13

    #@2ec
    if-eqz p15, :cond_13

    #@2ee
    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@2f1
    move-result-object v30

    #@2f2
    .line 867
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v30, :cond_13

    #@2f4
    .line 868
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f7
    move-result-object v25

    #@2f8
    .restart local v25    # "user$iterator":Ljava/util/Iterator;
    :cond_15
    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@2fb
    move-result v5

    #@2fc
    if-eqz v5, :cond_13

    #@2fe
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@301
    move-result-object v24

    #@302
    check-cast v24, Landroid/content/pm/UserInfo;

    #@304
    .line 869
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    #@307
    move-result v5

    #@308
    const/4 v6, -0x1

    #@309
    if-ne v5, v6, :cond_16

    #@30b
    .line 870
    move-object/from16 v0, v24

    #@30d
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@30f
    move-object/from16 v0, p0

    #@311
    move-object/from16 v1, v29

    #@313
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    #@316
    move-result v5

    #@317
    if-eqz v5, :cond_17

    #@319
    .line 871
    :cond_16
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    #@31c
    move-result v5

    #@31d
    move-object/from16 v0, v24

    #@31f
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    #@321
    if-ne v5, v6, :cond_15

    #@323
    .line 872
    :cond_17
    move-object/from16 v0, v24

    #@325
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@327
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    #@32a
    move-result v9

    #@32b
    .line 873
    .local v9, "installed":Z
    if-nez v9, :cond_15

    #@32d
    .line 874
    move-object/from16 v0, v24

    #@32f
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@331
    const/4 v6, 0x1

    #@332
    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    #@335
    .line 875
    move-object/from16 v0, v24

    #@337
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@339
    move-object/from16 v0, p0

    #@33b
    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@33e
    goto :goto_a
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1380
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    .line 1381
    const-string/jumbo v2, "package-restrictions-backup.xml"

    #@9
    .line 1380
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1368
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
    .line 1369
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
    .line 1375
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
    .line 1376
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
    .line 4057
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 4058
    .local v0, "N":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 4059
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 4060
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 4061
    add-int/lit16 v2, v1, 0x2710

    #@19
    return v2

    #@1a
    .line 4058
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 4066
    :cond_1
    const/16 v2, 0x270f

    #@1f
    if-le v0, v2, :cond_2

    #@21
    .line 4067
    const/4 v2, -0x1

    #@22
    return v2

    #@23
    .line 4070
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 4071
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
    .line 4857
    const/4 v1, 0x0

    #@1
    .line 4858
    :goto_0
    if-eqz p1, :cond_1

    #@3
    .line 4859
    if-nez v1, :cond_0

    #@5
    .line 4860
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 4861
    .local v1, "flagsString":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 4862
    const-string/jumbo v2, "[ "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 4864
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
    .line 4865
    .local v0, "flag":I
    not-int v2, v0

    #@1b
    and-int/2addr p1, v2

    #@1c
    .line 4866
    invoke-static {v0}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 4867
    const/16 v2, 0x20

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    goto :goto_0

    #@29
    .line 4869
    .end local v0    # "flag":I
    :cond_1
    if-eqz v1, :cond_2

    #@2b
    .line 4870
    const/16 v2, 0x5d

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 4871
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    return-object v2

    #@35
    .line 4873
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
    .line 4219
    const-string/jumbo v2, "[ "

    #@3
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 4220
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 4221
    aget-object v2, p2, v0

    #@c
    check-cast v2, Ljava/lang/Integer;

    #@e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v1

    #@12
    .line 4222
    .local v1, "mask":I
    and-int v2, p1, v1

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 4223
    add-int/lit8 v2, v0, 0x1

    #@18
    aget-object v2, p2, v2

    #@1a
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1d
    .line 4224
    const-string/jumbo v2, " "

    #@20
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 4220
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@25
    goto :goto_0

    #@26
    .line 4227
    .end local v1    # "mask":I
    :cond_1
    const-string/jumbo v2, "]"

    #@29
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    .line 4218
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
    .line 1751
    const/4 v1, 0x0

    #@3
    .line 1753
    .local v1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v2

    #@7
    .line 1755
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
    .line 1756
    if-ne v4, v7, :cond_1

    #@10
    .line 1757
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v5

    #@14
    if-le v5, v2, :cond_3

    #@16
    .line 1758
    :cond_1
    if-eq v4, v7, :cond_0

    #@18
    .line 1759
    const/4 v5, 0x4

    #@19
    if-eq v4, v5, :cond_0

    #@1b
    .line 1762
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1763
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 1764
    const-string/jumbo v5, "name"

    #@2b
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1765
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@31
    .line 1766
    if-nez v1, :cond_2

    #@33
    .line 1767
    new-instance v1, Landroid/util/ArraySet;

    #@35
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@38
    .line 1769
    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 1773
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
    .line 1490
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v2

    #@5
    .line 1492
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
    .line 1493
    if-ne v4, v7, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v5

    #@12
    if-le v5, v2, :cond_3

    #@14
    .line 1494
    :cond_1
    if-eq v4, v7, :cond_0

    #@16
    const/4 v5, 0x4

    #@17
    if-eq v4, v5, :cond_0

    #@19
    .line 1497
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 1498
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    #@20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    .line 1499
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    #@28
    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 1500
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@32
    goto :goto_0

    #@33
    .line 1502
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
    .line 1504
    .local v1, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    #@48
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@4b
    .line 1505
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4e
    goto :goto_0

    #@4f
    .line 1489
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
    .line 3317
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 3319
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
    .line 3320
    if-ne v3, v6, :cond_1

    #@f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v4

    #@13
    if-le v4, v0, :cond_4

    #@15
    .line 3321
    :cond_1
    if-eq v3, v6, :cond_0

    #@17
    const/4 v4, 0x4

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 3325
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 3326
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 3327
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    #@29
    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    .line 3328
    .local v2, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@2e
    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    if-nez v4, :cond_2

    #@34
    .line 3329
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@36
    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    #@38
    invoke-direct {p0, p1, v2, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    #@3b
    goto :goto_0

    #@3c
    .line 3333
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
    .line 3334
    iget-object v5, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@4a
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 3333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 3334
    const-string/jumbo v5, " at "

    #@55
    .line 3333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 3335
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 3333
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 3332
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 3339
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
    .line 3338
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@84
    .line 3340
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@87
    goto/16 :goto_0

    #@89
    .line 3316
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
    .line 3836
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v1

    #@7
    .line 3838
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
    .line 3839
    if-ne v3, v6, :cond_1

    #@10
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    if-le v4, v1, :cond_4

    #@16
    .line 3840
    :cond_1
    if-eq v3, v6, :cond_0

    #@18
    const/4 v4, 0x4

    #@19
    if-eq v3, v4, :cond_0

    #@1b
    .line 3844
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 3845
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 3846
    const-string/jumbo v4, "name"

    #@2b
    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 3847
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@31
    .line 3848
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    #@38
    .line 3858
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3851
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
    .line 3852
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 3851
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 3850
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 3856
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
    .line 3855
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@73
    goto :goto_1

    #@74
    .line 3835
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 32
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3413
    const-string/jumbo v6, "name"

    #@3
    const/4 v15, 0x0

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 3414
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "realName"

    #@d
    const/4 v15, 0x0

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 3415
    .local v4, "realName":Ljava/lang/String;
    const-string/jumbo v6, "codePath"

    #@17
    const/4 v15, 0x0

    #@18
    move-object/from16 v0, p1

    #@1a
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v17

    #@1e
    .line 3416
    .local v17, "codePathStr":Ljava/lang/String;
    const-string/jumbo v6, "resourcePath"

    #@21
    const/4 v15, 0x0

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v22

    #@28
    .line 3418
    .local v22, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v6, "requiredCpuAbi"

    #@2b
    const/4 v15, 0x0

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v20

    #@32
    .line 3419
    .local v20, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "nativeLibraryPath"

    #@35
    const/4 v15, 0x0

    #@36
    move-object/from16 v0, p1

    #@38
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 3421
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v6, "parentPackageName"

    #@3f
    const/4 v15, 0x0

    #@40
    move-object/from16 v0, p1

    #@42
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v14

    #@46
    .line 3423
    .local v14, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v6, "primaryCpuAbi"

    #@49
    const/4 v15, 0x0

    #@4a
    move-object/from16 v0, p1

    #@4c
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    .line 3424
    .local v8, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "secondaryCpuAbi"

    #@53
    const/4 v15, 0x0

    #@54
    move-object/from16 v0, p1

    #@56
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    .line 3425
    .local v9, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "cpuAbiOverride"

    #@5d
    const/4 v15, 0x0

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    .line 3427
    .local v10, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v8, :cond_0

    #@66
    if-eqz v20, :cond_0

    #@68
    .line 3428
    move-object/from16 v8, v20

    #@6a
    .line 3431
    :cond_0
    if-nez v22, :cond_1

    #@6c
    .line 3432
    move-object/from16 v22, v17

    #@6e
    .line 3434
    :cond_1
    const-string/jumbo v6, "version"

    #@71
    const/4 v15, 0x0

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v28

    #@78
    .line 3435
    .local v28, "version":Ljava/lang/String;
    const/4 v11, 0x0

    #@79
    .line 3436
    .local v11, "versionCode":I
    if-eqz v28, :cond_2

    #@7b
    .line 3438
    :try_start_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    move-result v11

    #@7f
    .line 3444
    :cond_2
    :goto_0
    const/4 v13, 0x0

    #@80
    .line 3445
    .local v13, "pkgPrivateFlags":I
    const/4 v12, 0x1

    #@81
    .line 3446
    .local v12, "pkgFlags":I
    new-instance v5, Ljava/io/File;

    #@83
    move-object/from16 v0, v17

    #@85
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@88
    .line 3447
    .local v5, "codePathFile":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/io/File;)Z

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_3

    #@8e
    .line 3448
    const/16 v13, 0x8

    #@90
    .line 3450
    :cond_3
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    #@92
    .line 3451
    new-instance v6, Ljava/io/File;

    #@94
    move-object/from16 v0, v22

    #@96
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@99
    .line 3453
    const/4 v15, 0x0

    #@9a
    .line 3450
    invoke-direct/range {v2 .. v15}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;)V

    #@9d
    .line 3454
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v6, "ft"

    #@a0
    const/4 v15, 0x0

    #@a1
    move-object/from16 v0, p1

    #@a3
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v26

    #@a7
    .line 3455
    .local v26, "timeStampStr":Ljava/lang/String;
    if-eqz v26, :cond_a

    #@a9
    .line 3457
    const/16 v6, 0x10

    #@ab
    :try_start_1
    move-object/from16 v0, v26

    #@ad
    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@b0
    move-result-wide v24

    #@b1
    .line 3458
    .local v24, "timeStamp":J
    move-wide/from16 v0, v24

    #@b3
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    #@b6
    .line 3471
    .end local v24    # "timeStamp":J
    :cond_4
    :goto_1
    const-string/jumbo v6, "it"

    #@b9
    const/4 v15, 0x0

    #@ba
    move-object/from16 v0, p1

    #@bc
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@bf
    move-result-object v26

    #@c0
    .line 3472
    if-eqz v26, :cond_5

    #@c2
    .line 3474
    const/16 v6, 0x10

    #@c4
    :try_start_2
    move-object/from16 v0, v26

    #@c6
    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@c9
    move-result-wide v30

    #@ca
    move-wide/from16 v0, v30

    #@cc
    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    #@ce
    .line 3478
    :cond_5
    :goto_2
    const-string/jumbo v6, "ut"

    #@d1
    const/4 v15, 0x0

    #@d2
    move-object/from16 v0, p1

    #@d4
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d7
    move-result-object v26

    #@d8
    .line 3479
    if-eqz v26, :cond_6

    #@da
    .line 3481
    const/16 v6, 0x10

    #@dc
    :try_start_3
    move-object/from16 v0, v26

    #@de
    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@e1
    move-result-wide v30

    #@e2
    move-wide/from16 v0, v30

    #@e4
    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    #@e6
    .line 3485
    :cond_6
    :goto_3
    const-string/jumbo v6, "userId"

    #@e9
    const/4 v15, 0x0

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ef
    move-result-object v19

    #@f0
    .line 3486
    .local v19, "idStr":Ljava/lang/String;
    if-eqz v19, :cond_b

    #@f2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f5
    move-result v6

    #@f6
    :goto_4
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@f8
    .line 3487
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@fa
    if-gtz v6, :cond_7

    #@fc
    .line 3488
    const-string/jumbo v6, "sharedUserId"

    #@ff
    const/4 v15, 0x0

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@105
    move-result-object v23

    #@106
    .line 3489
    .local v23, "sharedIdStr":Ljava/lang/String;
    if-eqz v23, :cond_c

    #@108
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10b
    move-result v6

    #@10c
    :goto_5
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@10e
    .line 3492
    .end local v23    # "sharedIdStr":Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@111
    move-result v21

    #@112
    .line 3494
    .local v21, "outerDepth":I
    :cond_8
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@115
    move-result v27

    #@116
    .local v27, "type":I
    const/4 v6, 0x1

    #@117
    move/from16 v0, v27

    #@119
    if-eq v0, v6, :cond_10

    #@11b
    .line 3495
    const/4 v6, 0x3

    #@11c
    move/from16 v0, v27

    #@11e
    if-ne v0, v6, :cond_9

    #@120
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@123
    move-result v6

    #@124
    move/from16 v0, v21

    #@126
    if-le v6, v0, :cond_10

    #@128
    .line 3496
    :cond_9
    const/4 v6, 0x3

    #@129
    move/from16 v0, v27

    #@12b
    if-eq v0, v6, :cond_8

    #@12d
    const/4 v6, 0x4

    #@12e
    move/from16 v0, v27

    #@130
    if-eq v0, v6, :cond_8

    #@132
    .line 3500
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@135
    move-result-object v6

    #@136
    const-string/jumbo v15, "perms"

    #@139
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v6

    #@13d
    if-eqz v6, :cond_d

    #@13f
    .line 3501
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@142
    move-result-object v6

    #@143
    move-object/from16 v0, p0

    #@145
    move-object/from16 v1, p1

    #@147
    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    #@14a
    goto :goto_6

    #@14b
    .line 3439
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "codePathFile":Ljava/io/File;
    .end local v12    # "pkgFlags":I
    .end local v13    # "pkgPrivateFlags":I
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    .end local v27    # "type":I
    :catch_0
    move-exception v18

    #@14c
    .local v18, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    #@14e
    .line 3462
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "codePathFile":Ljava/io/File;
    .restart local v12    # "pkgFlags":I
    .restart local v13    # "pkgPrivateFlags":I
    .restart local v26    # "timeStampStr":Ljava/lang/String;
    :cond_a
    const-string/jumbo v6, "ts"

    #@151
    const/4 v15, 0x0

    #@152
    move-object/from16 v0, p1

    #@154
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@157
    move-result-object v26

    #@158
    .line 3463
    if-eqz v26, :cond_4

    #@15a
    .line 3465
    :try_start_4
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@15d
    move-result-wide v24

    #@15e
    .line 3466
    .restart local v24    # "timeStamp":J
    move-wide/from16 v0, v24

    #@160
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    #@163
    goto/16 :goto_1

    #@165
    .line 3467
    .end local v24    # "timeStamp":J
    :catch_1
    move-exception v18

    #@166
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    #@168
    .line 3486
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "idStr":Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    #@169
    goto :goto_4

    #@16a
    .line 3489
    .restart local v23    # "sharedIdStr":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    #@16b
    goto :goto_5

    #@16c
    .line 3502
    .end local v23    # "sharedIdStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v27    # "type":I
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@16f
    move-result-object v6

    #@170
    const-string/jumbo v15, "child-package"

    #@173
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@176
    move-result v6

    #@177
    if-eqz v6, :cond_f

    #@179
    .line 3503
    const-string/jumbo v6, "name"

    #@17c
    const/4 v15, 0x0

    #@17d
    move-object/from16 v0, p1

    #@17f
    invoke-interface {v0, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@182
    move-result-object v16

    #@183
    .line 3504
    .local v16, "childPackageName":Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@185
    if-nez v6, :cond_e

    #@187
    .line 3505
    new-instance v6, Ljava/util/ArrayList;

    #@189
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@18c
    iput-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@18e
    .line 3507
    :cond_e
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@190
    move-object/from16 v0, v16

    #@192
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@195
    goto/16 :goto_6

    #@197
    .line 3510
    .end local v16    # "childPackageName":Ljava/lang/String;
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    #@199
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19c
    const-string/jumbo v15, "Unknown element under <updated-package>: "

    #@19f
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v6

    #@1a3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a6
    move-result-object v15

    #@1a7
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v6

    #@1ab
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v6

    #@1af
    .line 3509
    const/4 v15, 0x5

    #@1b0
    invoke-static {v15, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1b3
    .line 3511
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1b6
    goto/16 :goto_6

    #@1b8
    .line 3515
    :cond_10
    move-object/from16 v0, p0

    #@1ba
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@1bc
    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bf
    .line 3412
    return-void

    #@1c0
    .line 3482
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v27    # "type":I
    :catch_2
    move-exception v18

    #@1c1
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    #@1c3
    .line 3475
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v18

    #@1c4
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@1c6
    .line 3459
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v18

    #@1c7
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
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
    .line 1512
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5
    .line 1513
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@8
    .line 1514
    const-string/jumbo v1, "PackageSettings"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Read domain verification for package: "

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
    .line 1511
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
    .line 3864
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v1

    #@7
    .line 3866
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
    .line 3867
    if-ne v3, v6, :cond_1

    #@10
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    if-le v4, v1, :cond_4

    #@16
    .line 3868
    :cond_1
    if-eq v3, v6, :cond_0

    #@18
    const/4 v4, 0x4

    #@19
    if-eq v3, v4, :cond_0

    #@1b
    .line 3872
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 3873
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@22
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 3874
    const-string/jumbo v4, "name"

    #@2b
    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 3875
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@31
    .line 3876
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    #@38
    .line 3886
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3b
    goto :goto_0

    #@3c
    .line 3879
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
    .line 3880
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 3879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 3878
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 3884
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
    .line 3883
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@73
    goto :goto_1

    #@74
    .line 3863
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
    .line 3346
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 3348
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 3349
    return p4

    #@7
    .line 3351
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
    .line 3352
    :catch_0
    move-exception v0

    #@d
    .line 3354
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
    .line 3355
    const-string/jumbo v3, " has bad integer value "

    #@20
    .line 3354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 3355
    const-string/jumbo v3, " at "

    #@2b
    .line 3354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 3356
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 3354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 3353
    const/4 v3, 0x5

    #@3c
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@3f
    .line 3358
    return p4
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 50
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3524
    const/16 v35, 0x0

    #@2
    .line 3525
    .local v35, "name":Ljava/lang/String;
    const/4 v6, 0x0

    #@3
    .line 3526
    .local v6, "realName":Ljava/lang/String;
    const/16 v28, 0x0

    #@5
    .line 3527
    .local v28, "idStr":Ljava/lang/String;
    const/16 v40, 0x0

    #@7
    .line 3528
    .local v40, "sharedIdStr":Ljava/lang/String;
    const/16 v21, 0x0

    #@9
    .line 3529
    .local v21, "codePathStr":Ljava/lang/String;
    const/16 v39, 0x0

    #@b
    .line 3530
    .local v39, "resourcePathStr":Ljava/lang/String;
    const/16 v34, 0x0

    #@d
    .line 3531
    .local v34, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v9, 0x0

    #@e
    .line 3532
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v10, 0x0

    #@f
    .line 3533
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v11, 0x0

    #@10
    .line 3534
    .local v11, "secondaryCpuAbiString":Ljava/lang/String;
    const/4 v12, 0x0

    #@11
    .line 3535
    .local v12, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v41, 0x0

    #@13
    .line 3536
    .local v41, "systemStr":Ljava/lang/String;
    const/16 v30, 0x0

    #@15
    .line 3537
    .local v30, "installerPackageName":Ljava/lang/String;
    const/16 v31, 0x0

    #@17
    .line 3538
    .local v31, "isOrphaned":Ljava/lang/String;
    const/16 v49, 0x0

    #@19
    .line 3539
    .local v49, "volumeUuid":Ljava/lang/String;
    const/16 v47, 0x0

    #@1b
    .line 3540
    .local v47, "uidError":Ljava/lang/String;
    const/4 v15, 0x0

    #@1c
    .line 3541
    .local v15, "pkgFlags":I
    const/16 v16, 0x0

    #@1e
    .line 3542
    .local v16, "pkgPrivateFlags":I
    const-wide/16 v44, 0x0

    #@20
    .line 3543
    .local v44, "timeStamp":J
    const-wide/16 v24, 0x0

    #@22
    .line 3544
    .local v24, "firstInstallTime":J
    const-wide/16 v32, 0x0

    #@24
    .line 3545
    .local v32, "lastUpdateTime":J
    const/16 v37, 0x0

    #@26
    .line 3546
    .local v37, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    const/16 v48, 0x0

    #@28
    .line 3547
    .local v48, "version":Ljava/lang/String;
    const/4 v14, 0x0

    #@29
    .line 3550
    .local v14, "versionCode":I
    :try_start_0
    const-string/jumbo v5, "name"

    #@2c
    const/4 v7, 0x0

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v35

    #@33
    .line 3551
    .local v35, "name":Ljava/lang/String;
    const-string/jumbo v5, "realName"

    #@36
    const/4 v7, 0x0

    #@37
    move-object/from16 v0, p1

    #@39
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    .line 3552
    .local v6, "realName":Ljava/lang/String;
    const-string/jumbo v5, "userId"

    #@40
    const/4 v7, 0x0

    #@41
    move-object/from16 v0, p1

    #@43
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v28

    #@47
    .line 3553
    .local v28, "idStr":Ljava/lang/String;
    const-string/jumbo v5, "uidError"

    #@4a
    const/4 v7, 0x0

    #@4b
    move-object/from16 v0, p1

    #@4d
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v47

    #@51
    .line 3554
    .local v47, "uidError":Ljava/lang/String;
    const-string/jumbo v5, "sharedUserId"

    #@54
    const/4 v7, 0x0

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v40

    #@5b
    .line 3555
    .local v40, "sharedIdStr":Ljava/lang/String;
    const-string/jumbo v5, "codePath"

    #@5e
    const/4 v7, 0x0

    #@5f
    move-object/from16 v0, p1

    #@61
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v21

    #@65
    .line 3556
    .local v21, "codePathStr":Ljava/lang/String;
    const-string/jumbo v5, "resourcePath"

    #@68
    const/4 v7, 0x0

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v39

    #@6f
    .line 3558
    .local v39, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v5, "requiredCpuAbi"

    #@72
    const/4 v7, 0x0

    #@73
    move-object/from16 v0, p1

    #@75
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v34

    #@79
    .line 3560
    .local v34, "legacyCpuAbiString":Ljava/lang/String;
    const-string/jumbo v5, "parentPackageName"

    #@7c
    const/4 v7, 0x0

    #@7d
    move-object/from16 v0, p1

    #@7f
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v17

    #@83
    .line 3562
    .local v17, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v5, "nativeLibraryPath"

    #@86
    const/4 v7, 0x0

    #@87
    move-object/from16 v0, p1

    #@89
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v9

    #@8d
    .line 3563
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v5, "primaryCpuAbi"

    #@90
    const/4 v7, 0x0

    #@91
    move-object/from16 v0, p1

    #@93
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    .line 3564
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v5, "secondaryCpuAbi"

    #@9a
    const/4 v7, 0x0

    #@9b
    move-object/from16 v0, p1

    #@9d
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v11

    #@a1
    .line 3565
    .local v11, "secondaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v5, "cpuAbiOverride"

    #@a4
    const/4 v7, 0x0

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@aa
    move-result-object v12

    #@ab
    .line 3567
    .local v12, "cpuAbiOverrideString":Ljava/lang/String;
    if-nez v10, :cond_0

    #@ad
    if-eqz v34, :cond_0

    #@af
    .line 3568
    move-object/from16 v10, v34

    #@b1
    .line 3571
    :cond_0
    const-string/jumbo v5, "version"

    #@b4
    const/4 v7, 0x0

    #@b5
    move-object/from16 v0, p1

    #@b7
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    #@ba
    move-result-object v48

    #@bb
    .line 3572
    .local v48, "version":Ljava/lang/String;
    if-eqz v48, :cond_1

    #@bd
    .line 3574
    :try_start_1
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@c0
    move-result v14

    #@c1
    .line 3578
    :cond_1
    :goto_0
    :try_start_2
    const-string/jumbo v5, "installer"

    #@c4
    const/4 v7, 0x0

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ca
    move-result-object v30

    #@cb
    .line 3579
    .local v30, "installerPackageName":Ljava/lang/String;
    const-string/jumbo v5, "isOrphaned"

    #@ce
    const/4 v7, 0x0

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d4
    move-result-object v31

    #@d5
    .line 3580
    .local v31, "isOrphaned":Ljava/lang/String;
    const-string/jumbo v5, "volumeUuid"

    #@d8
    const/4 v7, 0x0

    #@d9
    move-object/from16 v0, p1

    #@db
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@de
    move-result-object v49

    #@df
    .line 3582
    .local v49, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "publicFlags"

    #@e2
    const/4 v7, 0x0

    #@e3
    move-object/from16 v0, p1

    #@e5
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_a

    #@e8
    move-result-object v41

    #@e9
    .line 3583
    .local v41, "systemStr":Ljava/lang/String;
    if-eqz v41, :cond_c

    #@eb
    .line 3585
    :try_start_3
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    #@ee
    move-result v15

    #@ef
    .line 3588
    :goto_1
    :try_start_4
    const-string/jumbo v5, "privateFlags"

    #@f2
    const/4 v7, 0x0

    #@f3
    move-object/from16 v0, p1

    #@f5
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_a

    #@f8
    move-result-object v41

    #@f9
    .line 3589
    if-eqz v41, :cond_2

    #@fb
    .line 3591
    :try_start_5
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    #@fe
    move-result v16

    #@ff
    .line 3632
    :cond_2
    :goto_2
    :try_start_6
    const-string/jumbo v5, "ft"

    #@102
    const/4 v7, 0x0

    #@103
    move-object/from16 v0, p1

    #@105
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_a

    #@108
    move-result-object v43

    #@109
    .line 3633
    .local v43, "timeStampStr":Ljava/lang/String;
    if-eqz v43, :cond_14

    #@10b
    .line 3635
    const/16 v5, 0x10

    #@10d
    :try_start_7
    move-object/from16 v0, v43

    #@10f
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    #@112
    move-result-wide v44

    #@113
    .line 3647
    :cond_3
    :goto_3
    :try_start_8
    const-string/jumbo v5, "it"

    #@116
    const/4 v7, 0x0

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_a

    #@11c
    move-result-object v43

    #@11d
    .line 3648
    if-eqz v43, :cond_4

    #@11f
    .line 3650
    const/16 v5, 0x10

    #@121
    :try_start_9
    move-object/from16 v0, v43

    #@123
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6

    #@126
    move-result-wide v24

    #@127
    .line 3654
    :cond_4
    :goto_4
    :try_start_a
    const-string/jumbo v5, "ut"

    #@12a
    const/4 v7, 0x0

    #@12b
    move-object/from16 v0, p1

    #@12d
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    #@130
    move-result-object v43

    #@131
    .line 3655
    if-eqz v43, :cond_5

    #@133
    .line 3657
    const/16 v5, 0x10

    #@135
    :try_start_b
    move-object/from16 v0, v43

    #@137
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    #@13a
    move-result-wide v32

    #@13b
    .line 3664
    :cond_5
    :goto_5
    if-eqz v28, :cond_15

    #@13d
    :try_start_c
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@140
    move-result v13

    #@141
    .line 3665
    .local v13, "userId":I
    :goto_6
    if-nez v39, :cond_6

    #@143
    .line 3666
    move-object/from16 v39, v21

    #@145
    .line 3668
    :cond_6
    if-eqz v6, :cond_7

    #@147
    .line 3669
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@14a
    move-result-object v6

    #@14b
    .line 3671
    :cond_7
    if-nez v35, :cond_16

    #@14d
    .line 3673
    new-instance v5, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v7, "Error in package manager settings: <package> has no name at "

    #@155
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v5

    #@159
    .line 3674
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@15c
    move-result-object v7

    #@15d
    .line 3673
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v5

    #@165
    .line 3672
    const/4 v7, 0x5

    #@166
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_a

    #@169
    move-object/from16 v4, v37

    #@16b
    .line 3727
    .end local v6    # "realName":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v17    # "parentPackageName":Ljava/lang/String;
    .end local v21    # "codePathStr":Ljava/lang/String;
    .end local v28    # "idStr":Ljava/lang/String;
    .end local v30    # "installerPackageName":Ljava/lang/String;
    .end local v31    # "isOrphaned":Ljava/lang/String;
    .end local v34    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v35    # "name":Ljava/lang/String;
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v39    # "resourcePathStr":Ljava/lang/String;
    .end local v40    # "sharedIdStr":Ljava/lang/String;
    .end local v41    # "systemStr":Ljava/lang/String;
    .end local v43    # "timeStampStr":Ljava/lang/String;
    .end local v47    # "uidError":Ljava/lang/String;
    .end local v48    # "version":Ljava/lang/String;
    .end local v49    # "volumeUuid":Ljava/lang/String;
    .local v4, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :goto_7
    if-eqz v4, :cond_2e

    #@16d
    .line 3728
    const-string/jumbo v5, "true"

    #@170
    move-object/from16 v0, v47

    #@172
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v5

    #@176
    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    #@178
    .line 3729
    move-object/from16 v0, v30

    #@17a
    iput-object v0, v4, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    #@17c
    .line 3730
    const-string/jumbo v5, "true"

    #@17f
    move-object/from16 v0, v31

    #@181
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@184
    move-result v5

    #@185
    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    #@187
    .line 3731
    move-object/from16 v0, v49

    #@189
    iput-object v0, v4, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    #@18b
    .line 3732
    iput-object v9, v4, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@18d
    .line 3733
    iput-object v10, v4, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    #@18f
    .line 3734
    iput-object v11, v4, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    #@191
    .line 3736
    const-string/jumbo v5, "enabled"

    #@194
    const/4 v7, 0x0

    #@195
    move-object/from16 v0, p1

    #@197
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19a
    move-result-object v23

    #@19b
    .line 3737
    .local v23, "enabledStr":Ljava/lang/String;
    if-eqz v23, :cond_20

    #@19d
    .line 3739
    :try_start_d
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a0
    move-result v5

    #@1a1
    const/4 v7, 0x0

    #@1a2
    const/4 v8, 0x0

    #@1a3
    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_9

    #@1a6
    .line 3758
    :goto_8
    if-eqz v30, :cond_8

    #@1a8
    .line 3759
    move-object/from16 v0, p0

    #@1aa
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    #@1ac
    move-object/from16 v0, v30

    #@1ae
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1b1
    .line 3762
    :cond_8
    const-string/jumbo v5, "installStatus"

    #@1b4
    const/4 v7, 0x0

    #@1b5
    move-object/from16 v0, p1

    #@1b7
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1ba
    move-result-object v29

    #@1bb
    .line 3763
    .local v29, "installStatusStr":Ljava/lang/String;
    if-eqz v29, :cond_9

    #@1bd
    .line 3764
    const-string/jumbo v5, "false"

    #@1c0
    move-object/from16 v0, v29

    #@1c2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c5
    move-result v5

    #@1c6
    if-eqz v5, :cond_21

    #@1c8
    .line 3765
    const/4 v5, 0x0

    #@1c9
    iput v5, v4, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@1cb
    .line 3771
    :cond_9
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1ce
    move-result v36

    #@1cf
    .line 3773
    .local v36, "outerDepth":I
    :cond_a
    :goto_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d2
    move-result v46

    #@1d3
    .local v46, "type":I
    const/4 v5, 0x1

    #@1d4
    move/from16 v0, v46

    #@1d6
    if-eq v0, v5, :cond_2f

    #@1d8
    .line 3774
    const/4 v5, 0x3

    #@1d9
    move/from16 v0, v46

    #@1db
    if-ne v0, v5, :cond_b

    #@1dd
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1e0
    move-result v5

    #@1e1
    move/from16 v0, v36

    #@1e3
    if-le v5, v0, :cond_2f

    #@1e5
    .line 3775
    :cond_b
    const/4 v5, 0x3

    #@1e6
    move/from16 v0, v46

    #@1e8
    if-eq v0, v5, :cond_a

    #@1ea
    const/4 v5, 0x4

    #@1eb
    move/from16 v0, v46

    #@1ed
    if-eq v0, v5, :cond_a

    #@1ef
    .line 3779
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f2
    move-result-object v42

    #@1f3
    .line 3781
    .local v42, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "disabled-components"

    #@1f6
    move-object/from16 v0, v42

    #@1f8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fb
    move-result v5

    #@1fc
    if-eqz v5, :cond_22

    #@1fe
    .line 3782
    const/4 v5, 0x0

    #@1ff
    move-object/from16 v0, p0

    #@201
    move-object/from16 v1, p1

    #@203
    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    #@206
    goto :goto_a

    #@207
    .line 3575
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v23    # "enabledStr":Ljava/lang/String;
    .end local v29    # "installStatusStr":Ljava/lang/String;
    .end local v36    # "outerDepth":I
    .end local v42    # "tagName":Ljava/lang/String;
    .end local v46    # "type":I
    .restart local v6    # "realName":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v17    # "parentPackageName":Ljava/lang/String;
    .restart local v21    # "codePathStr":Ljava/lang/String;
    .restart local v28    # "idStr":Ljava/lang/String;
    .local v30, "installerPackageName":Ljava/lang/String;
    .local v31, "isOrphaned":Ljava/lang/String;
    .restart local v34    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v35    # "name":Ljava/lang/String;
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v39    # "resourcePathStr":Ljava/lang/String;
    .restart local v40    # "sharedIdStr":Ljava/lang/String;
    .local v41, "systemStr":Ljava/lang/String;
    .restart local v47    # "uidError":Ljava/lang/String;
    .restart local v48    # "version":Ljava/lang/String;
    .local v49, "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v22

    #@208
    .local v22, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    #@20a
    .line 3586
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .local v30, "installerPackageName":Ljava/lang/String;
    .local v31, "isOrphaned":Ljava/lang/String;
    .local v41, "systemStr":Ljava/lang/String;
    .local v49, "volumeUuid":Ljava/lang/String;
    :catch_1
    move-exception v22

    #@20b
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    #@20d
    .line 3592
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v22

    #@20e
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@210
    .line 3597
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_e
    const-string/jumbo v5, "flags"

    #@213
    const/4 v7, 0x0

    #@214
    move-object/from16 v0, p1

    #@216
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_a

    #@219
    move-result-object v41

    #@21a
    .line 3598
    if-eqz v41, :cond_11

    #@21c
    .line 3600
    :try_start_f
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_3

    #@21f
    move-result v15

    #@220
    .line 3603
    :goto_b
    :try_start_10
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    #@222
    and-int/2addr v5, v15

    #@223
    if-eqz v5, :cond_d

    #@225
    .line 3604
    const/16 v16, 0x1

    #@227
    .line 3606
    :cond_d
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    #@229
    and-int/2addr v5, v15

    #@22a
    if-eqz v5, :cond_e

    #@22c
    .line 3607
    or-int/lit8 v16, v16, 0x2

    #@22e
    .line 3609
    :cond_e
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    #@230
    and-int/2addr v5, v15

    #@231
    if-eqz v5, :cond_f

    #@233
    .line 3610
    or-int/lit8 v16, v16, 0x4

    #@235
    .line 3612
    :cond_f
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    #@237
    and-int/2addr v5, v15

    #@238
    if-eqz v5, :cond_10

    #@23a
    .line 3613
    or-int/lit8 v16, v16, 0x8

    #@23c
    .line 3615
    :cond_10
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    #@23e
    .line 3616
    sget v7, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    #@240
    .line 3615
    or-int/2addr v5, v7

    #@241
    .line 3617
    sget v7, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    #@243
    .line 3615
    or-int/2addr v5, v7

    #@244
    .line 3618
    sget v7, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    #@246
    .line 3615
    or-int/2addr v5, v7

    #@247
    not-int v5, v5

    #@248
    and-int/2addr v15, v5

    #@249
    goto/16 :goto_2

    #@24b
    .line 3601
    :catch_3
    move-exception v22

    #@24c
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto :goto_b

    #@24d
    .line 3621
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string/jumbo v5, "system"

    #@250
    const/4 v7, 0x0

    #@251
    move-object/from16 v0, p1

    #@253
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@256
    move-result-object v41

    #@257
    .line 3622
    if-eqz v41, :cond_13

    #@259
    .line 3623
    const-string/jumbo v5, "true"

    #@25c
    move-object/from16 v0, v41

    #@25e
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@261
    move-result v5

    #@262
    if-eqz v5, :cond_12

    #@264
    const/4 v5, 0x1

    #@265
    :goto_c
    or-int/lit8 v15, v5, 0x0

    #@267
    goto/16 :goto_2

    #@269
    .line 3624
    :cond_12
    const/4 v5, 0x0

    #@26a
    goto :goto_c

    #@26b
    .line 3628
    :cond_13
    const/4 v15, 0x1

    #@26c
    goto/16 :goto_2

    #@26e
    .line 3636
    .restart local v43    # "timeStampStr":Ljava/lang/String;
    :catch_4
    move-exception v22

    #@26f
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    #@271
    .line 3639
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    const-string/jumbo v5, "ts"

    #@274
    const/4 v7, 0x0

    #@275
    move-object/from16 v0, p1

    #@277
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a

    #@27a
    move-result-object v43

    #@27b
    .line 3640
    if-eqz v43, :cond_3

    #@27d
    .line 3642
    :try_start_11
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5

    #@280
    move-result-wide v44

    #@281
    goto/16 :goto_3

    #@283
    .line 3643
    :catch_5
    move-exception v22

    #@284
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    #@286
    .line 3651
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v22

    #@287
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    #@289
    .line 3658
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v22

    #@28a
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_5

    #@28c
    .line 3664
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    const/4 v13, 0x0

    #@28d
    .restart local v13    # "userId":I
    goto/16 :goto_6

    #@28f
    .line 3675
    :cond_16
    if-nez v21, :cond_17

    #@291
    .line 3677
    :try_start_12
    new-instance v5, Ljava/lang/StringBuilder;

    #@293
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@296
    const-string/jumbo v7, "Error in package manager settings: <package> has no codePath at "

    #@299
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v5

    #@29d
    .line 3678
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2a0
    move-result-object v7

    #@2a1
    .line 3677
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v5

    #@2a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a8
    move-result-object v5

    #@2a9
    .line 3676
    const/4 v7, 0x5

    #@2aa
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2ad
    move-object/from16 v4, v37

    #@2af
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    #@2b1
    .line 3679
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_17
    if-lez v13, :cond_19

    #@2b3
    .line 3680
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2b6
    move-result-object v5

    #@2b7
    new-instance v7, Ljava/io/File;

    #@2b9
    move-object/from16 v0, v21

    #@2bb
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2be
    .line 3681
    new-instance v8, Ljava/io/File;

    #@2c0
    move-object/from16 v0, v39

    #@2c2
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2c5
    .line 3683
    const/16 v18, 0x0

    #@2c7
    move-object/from16 v4, p0

    #@2c9
    .line 3680
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/util/List;)Lcom/android/server/pm/PackageSetting;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_a

    #@2cc
    move-result-object v4

    #@2cd
    .line 3687
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    if-nez v4, :cond_18

    #@2cf
    .line 3688
    :try_start_13
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    const-string/jumbo v7, "Failure adding uid "

    #@2d7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v5

    #@2db
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v5

    #@2df
    .line 3689
    const-string/jumbo v7, " while parsing settings at "

    #@2e2
    .line 3688
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v5

    #@2e6
    .line 3690
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2e9
    move-result-object v7

    #@2ea
    .line 3688
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v5

    #@2ee
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f1
    move-result-object v5

    #@2f2
    const/4 v7, 0x6

    #@2f3
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_8

    #@2f6
    goto/16 :goto_7

    #@2f8
    .line 3722
    :catch_8
    move-exception v22

    #@2f9
    .line 3724
    .end local v6    # "realName":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v17    # "parentPackageName":Ljava/lang/String;
    .end local v21    # "codePathStr":Ljava/lang/String;
    .end local v28    # "idStr":Ljava/lang/String;
    .end local v30    # "installerPackageName":Ljava/lang/String;
    .end local v31    # "isOrphaned":Ljava/lang/String;
    .end local v34    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v35    # "name":Ljava/lang/String;
    .end local v39    # "resourcePathStr":Ljava/lang/String;
    .end local v40    # "sharedIdStr":Ljava/lang/String;
    .end local v41    # "systemStr":Ljava/lang/String;
    .end local v43    # "timeStampStr":Ljava/lang/String;
    .end local v47    # "uidError":Ljava/lang/String;
    .end local v48    # "version":Ljava/lang/String;
    .end local v49    # "volumeUuid":Ljava/lang/String;
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2fb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2fe
    const-string/jumbo v7, "Error in package manager settings: package "

    #@301
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v5

    #@305
    move-object/from16 v0, v35

    #@307
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v5

    #@30b
    const-string/jumbo v7, " has bad userId "

    #@30e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@311
    move-result-object v5

    #@312
    move-object/from16 v0, v28

    #@314
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v5

    #@318
    .line 3725
    const-string/jumbo v7, " at "

    #@31b
    .line 3724
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v5

    #@31f
    .line 3725
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@322
    move-result-object v7

    #@323
    .line 3724
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v5

    #@327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32a
    move-result-object v5

    #@32b
    .line 3723
    const/4 v7, 0x5

    #@32c
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@32f
    goto/16 :goto_7

    #@331
    .line 3692
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "realName":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v13    # "userId":I
    .restart local v17    # "parentPackageName":Ljava/lang/String;
    .restart local v21    # "codePathStr":Ljava/lang/String;
    .restart local v28    # "idStr":Ljava/lang/String;
    .restart local v30    # "installerPackageName":Ljava/lang/String;
    .restart local v31    # "isOrphaned":Ljava/lang/String;
    .restart local v34    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v35    # "name":Ljava/lang/String;
    .restart local v39    # "resourcePathStr":Ljava/lang/String;
    .restart local v40    # "sharedIdStr":Ljava/lang/String;
    .restart local v41    # "systemStr":Ljava/lang/String;
    .restart local v43    # "timeStampStr":Ljava/lang/String;
    .restart local v47    # "uidError":Ljava/lang/String;
    .restart local v48    # "version":Ljava/lang/String;
    .restart local v49    # "volumeUuid":Ljava/lang/String;
    :cond_18
    :try_start_14
    move-wide/from16 v0, v44

    #@333
    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    #@336
    .line 3693
    move-wide/from16 v0, v24

    #@338
    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@33a
    .line 3694
    move-wide/from16 v0, v32

    #@33c
    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_8

    #@33e
    goto/16 :goto_7

    #@340
    .line 3696
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_19
    if-eqz v40, :cond_1c

    #@342
    .line 3697
    if-eqz v40, :cond_1a

    #@344
    :try_start_15
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@347
    move-result v13

    #@348
    .line 3698
    :goto_e
    if-lez v13, :cond_1b

    #@34a
    .line 3699
    new-instance v4, Lcom/android/server/pm/PendingPackage;

    #@34c
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@34f
    move-result-object v5

    #@350
    new-instance v7, Ljava/io/File;

    #@352
    move-object/from16 v0, v21

    #@354
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@357
    .line 3700
    new-instance v8, Ljava/io/File;

    #@359
    move-object/from16 v0, v39

    #@35b
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@35e
    .line 3703
    const/16 v18, 0x0

    #@360
    .line 3699
    invoke-direct/range {v4 .. v18}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/util/List;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_a

    #@363
    .line 3704
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :try_start_16
    move-wide/from16 v0, v44

    #@365
    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    #@368
    .line 3705
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    move-wide/from16 v0, v24

    #@36a
    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    #@36c
    .line 3706
    move-wide/from16 v0, v32

    #@36e
    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    #@370
    .line 3707
    move-object/from16 v0, p0

    #@372
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@374
    move-object v0, v4

    #@375
    check-cast v0, Lcom/android/server/pm/PendingPackage;

    #@377
    move-object v5, v0

    #@378
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_8

    #@37b
    goto/16 :goto_7

    #@37d
    .line 3697
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_1a
    const/4 v13, 0x0

    #@37e
    goto :goto_e

    #@37f
    .line 3713
    :cond_1b
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    #@381
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@384
    const-string/jumbo v7, "Error in package manager settings: package "

    #@387
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v5

    #@38b
    move-object/from16 v0, v35

    #@38d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@390
    move-result-object v5

    #@391
    .line 3714
    const-string/jumbo v7, " has bad sharedId "

    #@394
    .line 3713
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v5

    #@398
    move-object/from16 v0, v40

    #@39a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39d
    move-result-object v5

    #@39e
    .line 3714
    const-string/jumbo v7, " at "

    #@3a1
    .line 3713
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v5

    #@3a5
    .line 3715
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3a8
    move-result-object v7

    #@3a9
    .line 3713
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v5

    #@3ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b0
    move-result-object v5

    #@3b1
    .line 3712
    const/4 v7, 0x5

    #@3b2
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@3b5
    move-object/from16 v4, v37

    #@3b7
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    #@3b9
    .line 3719
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3bb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3be
    const-string/jumbo v7, "Error in package manager settings: package "

    #@3c1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c4
    move-result-object v5

    #@3c5
    move-object/from16 v0, v35

    #@3c7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ca
    move-result-object v5

    #@3cb
    const-string/jumbo v7, " has bad userId "

    #@3ce
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d1
    move-result-object v5

    #@3d2
    move-object/from16 v0, v28

    #@3d4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v5

    #@3d8
    .line 3720
    const-string/jumbo v7, " at "

    #@3db
    .line 3719
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3de
    move-result-object v5

    #@3df
    .line 3720
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3e2
    move-result-object v7

    #@3e3
    .line 3719
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e6
    move-result-object v5

    #@3e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ea
    move-result-object v5

    #@3eb
    .line 3718
    const/4 v7, 0x5

    #@3ec
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_a

    #@3ef
    move-object/from16 v4, v37

    #@3f1
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    #@3f3
    .line 3740
    .end local v6    # "realName":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v17    # "parentPackageName":Ljava/lang/String;
    .end local v21    # "codePathStr":Ljava/lang/String;
    .end local v28    # "idStr":Ljava/lang/String;
    .end local v30    # "installerPackageName":Ljava/lang/String;
    .end local v31    # "isOrphaned":Ljava/lang/String;
    .end local v34    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v35    # "name":Ljava/lang/String;
    .end local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v39    # "resourcePathStr":Ljava/lang/String;
    .end local v40    # "sharedIdStr":Ljava/lang/String;
    .end local v41    # "systemStr":Ljava/lang/String;
    .end local v43    # "timeStampStr":Ljava/lang/String;
    .end local v47    # "uidError":Ljava/lang/String;
    .end local v48    # "version":Ljava/lang/String;
    .end local v49    # "volumeUuid":Ljava/lang/String;
    .restart local v23    # "enabledStr":Ljava/lang/String;
    :catch_9
    move-exception v22

    #@3f4
    .line 3741
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "true"

    #@3f7
    move-object/from16 v0, v23

    #@3f9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3fc
    move-result v5

    #@3fd
    if-eqz v5, :cond_1d

    #@3ff
    .line 3742
    const/4 v5, 0x1

    #@400
    const/4 v7, 0x0

    #@401
    const/4 v8, 0x0

    #@402
    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@405
    goto/16 :goto_8

    #@407
    .line 3743
    :cond_1d
    const-string/jumbo v5, "false"

    #@40a
    move-object/from16 v0, v23

    #@40c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40f
    move-result v5

    #@410
    if-eqz v5, :cond_1e

    #@412
    .line 3744
    const/4 v5, 0x2

    #@413
    const/4 v7, 0x0

    #@414
    const/4 v8, 0x0

    #@415
    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@418
    goto/16 :goto_8

    #@41a
    .line 3745
    :cond_1e
    const-string/jumbo v5, "default"

    #@41d
    move-object/from16 v0, v23

    #@41f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@422
    move-result v5

    #@423
    if-eqz v5, :cond_1f

    #@425
    .line 3746
    const/4 v5, 0x0

    #@426
    const/4 v7, 0x0

    #@427
    const/4 v8, 0x0

    #@428
    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@42b
    goto/16 :goto_8

    #@42d
    .line 3749
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@42f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@432
    const-string/jumbo v7, "Error in package manager settings: package "

    #@435
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@438
    move-result-object v5

    #@439
    move-object/from16 v0, v35

    #@43b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43e
    move-result-object v5

    #@43f
    .line 3750
    const-string/jumbo v7, " has bad enabled value: "

    #@442
    .line 3749
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@445
    move-result-object v5

    #@446
    move-object/from16 v0, v28

    #@448
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44b
    move-result-object v5

    #@44c
    .line 3750
    const-string/jumbo v7, " at "

    #@44f
    .line 3749
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@452
    move-result-object v5

    #@453
    .line 3751
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@456
    move-result-object v7

    #@457
    .line 3749
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v5

    #@45b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45e
    move-result-object v5

    #@45f
    .line 3748
    const/4 v7, 0x5

    #@460
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@463
    goto/16 :goto_8

    #@465
    .line 3755
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_20
    const/4 v5, 0x0

    #@466
    const/4 v7, 0x0

    #@467
    const/4 v8, 0x0

    #@468
    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    #@46b
    goto/16 :goto_8

    #@46d
    .line 3767
    .restart local v29    # "installStatusStr":Ljava/lang/String;
    :cond_21
    const/4 v5, 0x1

    #@46e
    iput v5, v4, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    #@470
    goto/16 :goto_9

    #@472
    .line 3783
    .restart local v36    # "outerDepth":I
    .restart local v42    # "tagName":Ljava/lang/String;
    .restart local v46    # "type":I
    :cond_22
    const-string/jumbo v5, "enabled-components"

    #@475
    move-object/from16 v0, v42

    #@477
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47a
    move-result v5

    #@47b
    if-eqz v5, :cond_23

    #@47d
    .line 3784
    const/4 v5, 0x0

    #@47e
    move-object/from16 v0, p0

    #@480
    move-object/from16 v1, p1

    #@482
    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    #@485
    goto/16 :goto_a

    #@487
    .line 3785
    :cond_23
    const-string/jumbo v5, "sigs"

    #@48a
    move-object/from16 v0, v42

    #@48c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48f
    move-result v5

    #@490
    if-eqz v5, :cond_24

    #@492
    .line 3786
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@494
    move-object/from16 v0, p0

    #@496
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@498
    move-object/from16 v0, p1

    #@49a
    invoke-virtual {v5, v0, v7}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    #@49d
    goto/16 :goto_a

    #@49f
    .line 3787
    :cond_24
    const-string/jumbo v5, "perms"

    #@4a2
    move-object/from16 v0, v42

    #@4a4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a7
    move-result v5

    #@4a8
    if-eqz v5, :cond_25

    #@4aa
    .line 3789
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@4ad
    move-result-object v5

    #@4ae
    .line 3788
    move-object/from16 v0, p0

    #@4b0
    move-object/from16 v1, p1

    #@4b2
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    #@4b5
    .line 3790
    const/4 v5, 0x1

    #@4b6
    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    #@4b8
    goto/16 :goto_a

    #@4ba
    .line 3791
    :cond_25
    const-string/jumbo v5, "proper-signing-keyset"

    #@4bd
    move-object/from16 v0, v42

    #@4bf
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c2
    move-result v5

    #@4c3
    if-eqz v5, :cond_27

    #@4c5
    .line 3792
    const-string/jumbo v5, "identifier"

    #@4c8
    const/4 v7, 0x0

    #@4c9
    move-object/from16 v0, p1

    #@4cb
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4ce
    move-result-object v5

    #@4cf
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4d2
    move-result-wide v26

    #@4d3
    .line 3793
    .local v26, "id":J
    move-object/from16 v0, p0

    #@4d5
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@4d7
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4da
    move-result-object v7

    #@4db
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4de
    move-result-object v38

    #@4df
    check-cast v38, Ljava/lang/Integer;

    #@4e1
    .line 3794
    .local v38, "refCt":Ljava/lang/Integer;
    if-eqz v38, :cond_26

    #@4e3
    .line 3795
    move-object/from16 v0, p0

    #@4e5
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@4e7
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4ea
    move-result-object v7

    #@4eb
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    #@4ee
    move-result v8

    #@4ef
    add-int/lit8 v8, v8, 0x1

    #@4f1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f4
    move-result-object v8

    #@4f5
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f8
    .line 3799
    :goto_f
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@4fa
    move-wide/from16 v0, v26

    #@4fc
    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    #@4ff
    goto/16 :goto_a

    #@501
    .line 3797
    :cond_26
    move-object/from16 v0, p0

    #@503
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@505
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@508
    move-result-object v7

    #@509
    const/4 v8, 0x1

    #@50a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50d
    move-result-object v8

    #@50e
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@511
    goto :goto_f

    #@512
    .line 3800
    .end local v26    # "id":J
    .end local v38    # "refCt":Ljava/lang/Integer;
    :cond_27
    const-string/jumbo v5, "signing-keyset"

    #@515
    move-object/from16 v0, v42

    #@517
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51a
    move-result v5

    #@51b
    if-nez v5, :cond_a

    #@51d
    .line 3802
    const-string/jumbo v5, "upgrade-keyset"

    #@520
    move-object/from16 v0, v42

    #@522
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@525
    move-result v5

    #@526
    if-eqz v5, :cond_28

    #@528
    .line 3803
    const-string/jumbo v5, "identifier"

    #@52b
    const/4 v7, 0x0

    #@52c
    move-object/from16 v0, p1

    #@52e
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@531
    move-result-object v5

    #@532
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@535
    move-result-wide v26

    #@536
    .line 3804
    .restart local v26    # "id":J
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@538
    move-wide/from16 v0, v26

    #@53a
    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    #@53d
    goto/16 :goto_a

    #@53f
    .line 3805
    .end local v26    # "id":J
    :cond_28
    const-string/jumbo v5, "defined-keyset"

    #@542
    move-object/from16 v0, v42

    #@544
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@547
    move-result v5

    #@548
    if-eqz v5, :cond_2a

    #@54a
    .line 3806
    const-string/jumbo v5, "identifier"

    #@54d
    const/4 v7, 0x0

    #@54e
    move-object/from16 v0, p1

    #@550
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@553
    move-result-object v5

    #@554
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@557
    move-result-wide v26

    #@558
    .line 3807
    .restart local v26    # "id":J
    const-string/jumbo v5, "alias"

    #@55b
    const/4 v7, 0x0

    #@55c
    move-object/from16 v0, p1

    #@55e
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@561
    move-result-object v19

    #@562
    .line 3808
    .local v19, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@564
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@566
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@569
    move-result-object v7

    #@56a
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56d
    move-result-object v38

    #@56e
    check-cast v38, Ljava/lang/Integer;

    #@570
    .line 3809
    .restart local v38    # "refCt":Ljava/lang/Integer;
    if-eqz v38, :cond_29

    #@572
    .line 3810
    move-object/from16 v0, p0

    #@574
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@576
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@579
    move-result-object v7

    #@57a
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    #@57d
    move-result v8

    #@57e
    add-int/lit8 v8, v8, 0x1

    #@580
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@583
    move-result-object v8

    #@584
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@587
    .line 3814
    :goto_10
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@589
    move-wide/from16 v0, v26

    #@58b
    move-object/from16 v2, v19

    #@58d
    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    #@590
    goto/16 :goto_a

    #@592
    .line 3812
    :cond_29
    move-object/from16 v0, p0

    #@594
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@596
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@599
    move-result-object v7

    #@59a
    const/4 v8, 0x1

    #@59b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59e
    move-result-object v8

    #@59f
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a2
    goto :goto_10

    #@5a3
    .line 3815
    .end local v19    # "alias":Ljava/lang/String;
    .end local v26    # "id":J
    .end local v38    # "refCt":Ljava/lang/Integer;
    :cond_2a
    const-string/jumbo v5, "domain-verification"

    #@5a6
    move-object/from16 v0, v42

    #@5a8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5ab
    move-result v5

    #@5ac
    if-eqz v5, :cond_2b

    #@5ae
    .line 3816
    move-object/from16 v0, p0

    #@5b0
    move-object/from16 v1, p1

    #@5b2
    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    #@5b5
    goto/16 :goto_a

    #@5b7
    .line 3817
    :cond_2b
    const-string/jumbo v5, "child-package"

    #@5ba
    move-object/from16 v0, v42

    #@5bc
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5bf
    move-result v5

    #@5c0
    if-eqz v5, :cond_2d

    #@5c2
    .line 3818
    const-string/jumbo v5, "name"

    #@5c5
    const/4 v7, 0x0

    #@5c6
    move-object/from16 v0, p1

    #@5c8
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5cb
    move-result-object v20

    #@5cc
    .line 3819
    .local v20, "childPackageName":Ljava/lang/String;
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@5ce
    if-nez v5, :cond_2c

    #@5d0
    .line 3820
    new-instance v5, Ljava/util/ArrayList;

    #@5d2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5d5
    iput-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@5d7
    .line 3822
    :cond_2c
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    #@5d9
    move-object/from16 v0, v20

    #@5db
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5de
    goto/16 :goto_a

    #@5e0
    .line 3825
    .end local v20    # "childPackageName":Ljava/lang/String;
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e5
    const-string/jumbo v7, "Unknown element under <package>: "

    #@5e8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5eb
    move-result-object v5

    #@5ec
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5ef
    move-result-object v7

    #@5f0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f3
    move-result-object v5

    #@5f4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f7
    move-result-object v5

    #@5f8
    .line 3824
    const/4 v7, 0x5

    #@5f9
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@5fc
    .line 3826
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5ff
    goto/16 :goto_a

    #@601
    .line 3830
    .end local v23    # "enabledStr":Ljava/lang/String;
    .end local v29    # "installStatusStr":Ljava/lang/String;
    .end local v36    # "outerDepth":I
    .end local v42    # "tagName":Ljava/lang/String;
    .end local v46    # "type":I
    :cond_2e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@604
    .line 3523
    :cond_2f
    return-void

    #@605
    .line 3722
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v37    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_a
    move-exception v22

    #@606
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v4, v37

    #@608
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
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
    .line 3363
    .local p1, "out":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v3

    #@4
    .line 3365
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
    if-eq v8, v9, :cond_8

    #@b
    .line 3366
    const/4 v9, 0x3

    #@c
    if-ne v8, v9, :cond_1

    #@e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v9

    #@12
    if-le v9, v3, :cond_8

    #@14
    .line 3367
    :cond_1
    const/4 v9, 0x3

    #@15
    if-eq v8, v9, :cond_0

    #@17
    const/4 v9, 0x4

    #@18
    if-eq v8, v9, :cond_0

    #@1a
    .line 3371
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 3372
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    #@21
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_7

    #@27
    .line 3373
    const-string/jumbo v9, "name"

    #@2a
    const/4 v10, 0x0

    #@2b
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 3374
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v9, "package"

    #@32
    const/4 v10, 0x0

    #@33
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 3375
    .local v6, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v9, "type"

    #@3a
    const/4 v10, 0x0

    #@3b
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 3376
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v2, :cond_6

    #@41
    if-eqz v6, :cond_6

    #@43
    .line 3377
    const-string/jumbo v9, "dynamic"

    #@46
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    .line 3378
    .local v1, "dynamic":Z
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@50
    .line 3380
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_2

    #@52
    iget v9, v0, Lcom/android/server/pm/BasePermission;->type:I

    #@54
    const/4 v10, 0x1

    #@55
    if-eq v9, v10, :cond_3

    #@57
    .line 3381
    :cond_2
    new-instance v0, Lcom/android/server/pm/BasePermission;

    #@59
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@5c
    move-result-object v10

    #@5d
    .line 3382
    if-eqz v1, :cond_5

    #@5f
    const/4 v9, 0x2

    #@60
    .line 3381
    :goto_1
    invoke-direct {v0, v10, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@63
    .line 3384
    .restart local v0    # "bp":Lcom/android/server/pm/BasePermission;
    :cond_3
    const-string/jumbo v9, "protection"

    #@66
    const/4 v10, 0x0

    #@67
    .line 3385
    const/4 v11, 0x0

    #@68
    .line 3384
    invoke-direct {p0, p2, v10, v9, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    #@6b
    move-result v9

    #@6c
    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@6e
    .line 3386
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@70
    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    #@73
    move-result v9

    #@74
    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@76
    .line 3387
    if-eqz v1, :cond_4

    #@78
    .line 3388
    new-instance v4, Landroid/content/pm/PermissionInfo;

    #@7a
    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    #@7d
    .line 3389
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@83
    .line 3390
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@89
    .line 3391
    const-string/jumbo v9, "icon"

    #@8c
    const/4 v10, 0x0

    #@8d
    const/4 v11, 0x0

    #@8e
    invoke-direct {p0, p2, v10, v9, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    #@91
    move-result v9

    #@92
    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    #@94
    .line 3392
    const-string/jumbo v9, "label"

    #@97
    const/4 v10, 0x0

    #@98
    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@9e
    .line 3393
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@a0
    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@a2
    .line 3394
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@a4
    .line 3396
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_4
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@a6
    invoke-virtual {p1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    .line 3407
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "dynamic":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@ac
    goto/16 :goto_0

    #@ae
    .line 3382
    .restart local v1    # "dynamic":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ptype":Ljava/lang/String;
    .restart local v6    # "sourcePackage":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    #@af
    goto :goto_1

    #@b0
    .line 3399
    .end local v1    # "dynamic":Z
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v10, "Error in package manager settings: permissions has no name at "

    #@b8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v9

    #@bc
    .line 3400
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@bf
    move-result-object v10

    #@c0
    .line 3399
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v9

    #@c8
    .line 3398
    const/4 v10, 0x5

    #@c9
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@cc
    goto :goto_2

    #@cd
    .line 3404
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v10, "Unknown element reading permissions: "

    #@d5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v9

    #@d9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@dc
    move-result-object v10

    #@dd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v9

    #@e1
    const-string/jumbo v10, " at "

    #@e4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    .line 3405
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    .line 3404
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    .line 3403
    const/4 v10, 0x5

    #@f5
    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@f8
    goto :goto_2

    #@f9
    .line 3362
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_8
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
    .line 1468
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1470
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
    .line 1471
    if-ne v3, v6, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v4

    #@12
    if-le v4, v0, :cond_3

    #@14
    .line 1472
    :cond_1
    if-eq v3, v6, :cond_0

    #@16
    const/4 v4, 0x4

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 1475
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1476
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 1477
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    #@28
    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 1478
    .local v1, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@32
    goto :goto_0

    #@33
    .line 1481
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
    .line 1482
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 1481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 1480
    const/4 v5, 0x5

    #@4c
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@4f
    .line 1483
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@52
    goto :goto_0

    #@53
    .line 1467
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
    .line 1519
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 1521
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
    .line 1522
    if-ne v3, v7, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v4

    #@12
    if-le v4, v1, :cond_3

    #@14
    .line 1523
    :cond_1
    if-eq v3, v7, :cond_0

    #@16
    const/4 v4, 0x4

    #@17
    if-eq v3, v4, :cond_0

    #@19
    .line 1526
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1527
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "domain-verification"

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 1528
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@28
    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 1533
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
    .line 1535
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
    .line 1536
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@52
    goto :goto_0

    #@53
    .line 1518
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
    .line 3891
    const/4 v2, 0x0

    #@1
    .line 3892
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 3893
    .local v1, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    #@3
    .line 3894
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    #@4
    .line 3895
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    #@5
    .line 3897
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
    .line 3898
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v10, "userId"

    #@10
    const/4 v11, 0x0

    #@11
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 3899
    .local v1, "idStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v9

    #@1b
    .line 3900
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
    .line 3901
    const/4 v4, 0x1

    #@2d
    .line 3903
    :cond_0
    if-nez v2, :cond_5

    #@2f
    .line 3905
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
    .line 3906
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@3e
    move-result-object v11

    #@3f
    .line 3905
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    .line 3904
    const/4 v11, 0x5

    #@48
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 3926
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    :cond_1
    :goto_1
    if-eqz v6, :cond_9

    #@4d
    .line 3927
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@50
    move-result v3

    #@51
    .line 3929
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
    .line 3930
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
    .line 3931
    :cond_3
    const/4 v10, 0x3

    #@62
    if-eq v8, v10, :cond_2

    #@64
    const/4 v10, 0x4

    #@65
    if-eq v8, v10, :cond_2

    #@67
    .line 3935
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    .line 3936
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "sigs"

    #@6e
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v10

    #@72
    if-eqz v10, :cond_7

    #@74
    .line 3937
    iget-object v10, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@76
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v10, p1, v11}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    #@7b
    goto :goto_2

    #@7c
    .line 3899
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
    .line 3907
    :cond_5
    if-nez v9, :cond_6

    #@80
    .line 3909
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
    .line 3910
    const-string/jumbo v11, " has bad userId "

    #@93
    .line 3909
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v10

    #@97
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    .line 3910
    const-string/jumbo v11, " at "

    #@9e
    .line 3909
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v10

    #@a2
    .line 3911
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@a5
    move-result-object v11

    #@a6
    .line 3909
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v10

    #@aa
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v10

    #@ae
    .line 3908
    const/4 v11, 0x5

    #@af
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@b2
    goto :goto_1

    #@b3
    .line 3920
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    :catch_0
    move-exception v0

    #@b4
    .line 3922
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
    .line 3923
    const-string/jumbo v11, " at "

    #@d2
    .line 3922
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v10

    #@d6
    .line 3923
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@d9
    move-result-object v11

    #@da
    .line 3922
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v10

    #@de
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v10

    #@e2
    .line 3921
    const/4 v11, 0x5

    #@e3
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@e6
    goto/16 :goto_1

    #@e8
    .line 3913
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
    .line 3916
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
    .line 3917
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@101
    move-result-object v11

    #@102
    .line 3916
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
    .line 3915
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@10e
    goto/16 :goto_1

    #@110
    .line 3938
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
    .line 3939
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@11c
    move-result-object v10

    #@11d
    invoke-virtual {p0, p1, v10}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    #@120
    goto/16 :goto_2

    #@122
    .line 3942
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
    .line 3941
    const/4 v11, 0x5

    #@13b
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@13e
    .line 3943
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@141
    goto/16 :goto_2

    #@143
    .line 3947
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@146
    .line 3890
    :cond_a
    return-void
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1103
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 1104
    return-void

    #@a
    .line 1106
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v3

    #@11
    if-ge v0, v3, :cond_2

    #@13
    .line 1107
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@1b
    .line 1108
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1109
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@21
    .line 1110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    .line 1109
    if-eqz v3, :cond_1

    #@27
    .line 1111
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    #@2a
    .line 1112
    const/4 v3, 0x1

    #@2b
    iput-boolean v3, v2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    #@2d
    .line 1106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1115
    .end local v1    # "installerPackageName":Ljava/lang/String;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@35
    .line 1101
    return-void
.end method

.method private removeUserIdLPw(I)V
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1173
    const/16 v2, 0x2710

    #@2
    if-lt p1, v2, :cond_1

    #@4
    .line 1174
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 1175
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@c
    .line 1176
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 1180
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    :goto_0
    add-int/lit8 v2, p1, 0x1

    #@16
    invoke-direct {p0, v2}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    #@19
    .line 1172
    return-void

    #@1a
    .line 1178
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
    .line 1119
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1120
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@a
    .line 1121
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 1122
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    #@13
    .line 1123
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@15
    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    #@18
    .line 1128
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 1118
    return-void

    #@1e
    .line 1125
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
    .line 1184
    const/16 v2, 0x2710

    #@2
    if-lt p1, v2, :cond_1

    #@4
    .line 1185
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 1186
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@c
    .line 1187
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    #@e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 1183
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1189
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
    .line 4049
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 4050
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    #@6
    .line 4048
    :cond_0
    return-void
.end method


# virtual methods
.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/util/List;)Lcom/android/server/pm/PackageSetting;
    .locals 17
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
    .param p13, "parentPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    #@0
    .prologue
    .line 596
    .local p14, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 597
    .local v3, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    #@e
    .line 598
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    #@10
    move/from16 v0, p9

    #@12
    if-ne v4, v0, :cond_0

    #@14
    .line 599
    return-object v3

    #@15
    .line 602
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "Adding duplicate package, keeping first: "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    move-object/from16 v0, p1

    #@23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 601
    const/4 v5, 0x6

    #@2c
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2f
    .line 603
    const/4 v4, 0x0

    #@30
    return-object v4

    #@31
    .line 605
    :cond_1
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    #@33
    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v4, p1

    #@35
    move-object/from16 v5, p2

    #@37
    move-object/from16 v6, p3

    #@39
    move-object/from16 v7, p4

    #@3b
    move-object/from16 v8, p5

    #@3d
    move-object/from16 v9, p6

    #@3f
    move-object/from16 v10, p7

    #@41
    move-object/from16 v11, p8

    #@43
    move/from16 v12, p10

    #@45
    move/from16 v13, p11

    #@47
    move/from16 v14, p12

    #@49
    move-object/from16 v15, p13

    #@4b
    move-object/from16 v16, p14

    #@4d
    invoke-direct/range {v3 .. v16}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;)V

    #@50
    .line 609
    .restart local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p9

    #@52
    iput v0, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    #@54
    .line 610
    move-object/from16 v0, p0

    #@56
    move/from16 v1, p9

    #@58
    move-object/from16 v2, p1

    #@5a
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_2

    #@60
    .line 611
    move-object/from16 v0, p0

    #@62
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 612
    return-object v3

    #@6a
    .line 614
    :cond_2
    const/4 v4, 0x0

    #@6b
    return-object v4
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    #@0
    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2760
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 2758
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
    .line 618
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    #@9
    .line 619
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_1

    #@b
    .line 620
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@d
    if-ne v1, p2, :cond_0

    #@f
    .line 621
    return-object v0

    #@10
    .line 624
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
    .line 623
    const/4 v2, 0x6

    #@25
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@28
    .line 625
    return-object v3

    #@29
    .line 627
    :cond_1
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    #@2b
    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    #@2e
    .line 628
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@30
    .line 629
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 630
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 631
    return-object v0

    #@3c
    .line 633
    :cond_2
    return-object v3
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 23
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3028
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
    .line 3029
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
    .line 3030
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
    .line 3032
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@36
    move-object/from16 v17, v0

    #@38
    .line 3031
    move-object/from16 v0, v17

    #@3a
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    #@3c
    .line 3033
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
    .line 3034
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@4b
    .line 3035
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v17, Landroid/content/ComponentName;

    #@4d
    .line 3036
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
    .line 3035
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
    .line 3033
    add-int/lit8 v8, v8, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 3042
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
    .line 3043
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
    .line 3046
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    #@8b
    move-result v17

    #@8c
    if-nez v17, :cond_3

    #@8e
    .line 3047
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
    .line 3048
    return-void

    #@b2
    .line 3044
    :cond_2
    return-void

    #@b3
    .line 3052
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
    .line 3053
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
    .line 3054
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
    .line 3052
    :cond_4
    :goto_2
    add-int/lit8 v17, v17, 0x1

    #@105
    goto :goto_1

    #@106
    .line 3057
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    #@109
    move-result v20

    #@10a
    if-nez v20, :cond_6

    #@10c
    .line 3058
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
    .line 3063
    :cond_6
    const/4 v14, 0x0

    #@131
    .line 3065
    .local v14, "str":Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Ljava/io/BufferedInputStream;

    #@133
    new-instance v20, Ljava/io/FileInputStream;

    #@135
    move-object/from16 v0, v20

    #@137
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@13a
    move-object/from16 v0, v20

    #@13c
    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13f
    .line 3066
    .end local v14    # "str":Ljava/io/InputStream;
    .local v15, "str":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@142
    move-result-object v10

    #@143
    .line 3067
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    #@145
    move-object/from16 v0, v20

    #@147
    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@14a
    .line 3070
    :cond_7
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@14d
    move-result v16

    #@14e
    .local v16, "type":I
    const/16 v20, 0x2

    #@150
    move/from16 v0, v16

    #@152
    move/from16 v1, v20

    #@154
    if-eq v0, v1, :cond_8

    #@156
    .line 3071
    const/16 v20, 0x1

    #@158
    move/from16 v0, v16

    #@15a
    move/from16 v1, v20

    #@15c
    if-ne v0, v1, :cond_7

    #@15e
    .line 3075
    :cond_8
    const/16 v20, 0x2

    #@160
    move/from16 v0, v16

    #@162
    move/from16 v1, v20

    #@164
    if-eq v0, v1, :cond_9

    #@166
    .line 3076
    const-string/jumbo v20, "PackageSettings"

    #@169
    new-instance v21, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v22, "Preferred apps file "

    #@171
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v21

    #@175
    move-object/from16 v0, v21

    #@177
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v21

    #@17b
    const-string/jumbo v22, " does not have start tag"

    #@17e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v21

    #@182
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v21

    #@186
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@189
    .line 3090
    if-eqz v15, :cond_4

    #@18b
    .line 3092
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@18e
    goto/16 :goto_2

    #@190
    .line 3093
    :catch_0
    move-exception v5

    #@191
    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@193
    .line 3079
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_3
    const-string/jumbo v20, "preferred-activities"

    #@196
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@199
    move-result-object v21

    #@19a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19d
    move-result v20

    #@19e
    if-nez v20, :cond_a

    #@1a0
    .line 3080
    const-string/jumbo v20, "PackageSettings"

    #@1a3
    new-instance v21, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    const-string/jumbo v22, "Preferred apps file "

    #@1ab
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v21

    #@1af
    move-object/from16 v0, v21

    #@1b1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v21

    #@1b5
    .line 3081
    const-string/jumbo v22, " does not start with \'preferred-activities\'"

    #@1b8
    .line 3080
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v21

    #@1bc
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v21

    #@1c0
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c3
    .line 3090
    if-eqz v15, :cond_4

    #@1c5
    .line 3092
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@1c8
    goto/16 :goto_2

    #@1ca
    .line 3093
    :catch_1
    move-exception v5

    #@1cb
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@1cd
    .line 3084
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    #@1cf
    move-object/from16 v1, p1

    #@1d1
    move/from16 v2, p2

    #@1d3
    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1d6
    .line 3090
    if-eqz v15, :cond_4

    #@1d8
    .line 3092
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@1db
    goto/16 :goto_2

    #@1dd
    .line 3093
    :catch_2
    move-exception v5

    #@1de
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@1e0
    .line 3087
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "str":Ljava/io/InputStream;
    .end local v16    # "type":I
    .restart local v14    # "str":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    #@1e1
    .line 3088
    .end local v14    # "str":Ljava/io/InputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string/jumbo v20, "PackageSettings"

    #@1e4
    new-instance v21, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v22, "Error reading apps file "

    #@1ec
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v21

    #@1f0
    move-object/from16 v0, v21

    #@1f2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v21

    #@1f6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v21

    #@1fa
    move-object/from16 v0, v20

    #@1fc
    move-object/from16 v1, v21

    #@1fe
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@201
    .line 3090
    if-eqz v14, :cond_4

    #@203
    .line 3092
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@206
    goto/16 :goto_2

    #@208
    .line 3093
    :catch_4
    move-exception v5

    #@209
    goto/16 :goto_2

    #@20b
    .line 3085
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v14    # "str":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    #@20c
    .line 3086
    .end local v14    # "str":Ljava/io/InputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_9
    const-string/jumbo v20, "PackageSettings"

    #@20f
    new-instance v21, Ljava/lang/StringBuilder;

    #@211
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@214
    const-string/jumbo v22, "Error reading apps file "

    #@217
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v21

    #@21b
    move-object/from16 v0, v21

    #@21d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v21

    #@221
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@224
    move-result-object v21

    #@225
    move-object/from16 v0, v20

    #@227
    move-object/from16 v1, v21

    #@229
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@22c
    .line 3090
    if-eqz v14, :cond_4

    #@22e
    .line 3092
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@231
    goto/16 :goto_2

    #@233
    .line 3093
    :catch_6
    move-exception v5

    #@234
    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@236
    .line 3089
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    #@237
    .line 3090
    :goto_5
    if-eqz v14, :cond_b

    #@239
    .line 3092
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    #@23c
    .line 3089
    :cond_b
    :goto_6
    throw v17

    #@23d
    .line 3093
    :catch_7
    move-exception v5

    #@23e
    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    #@23f
    .line 3026
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    :cond_c
    return-void

    #@240
    .line 3089
    .restart local v7    # "f":Ljava/io/File;
    .restart local v15    # "str":Ljava/io/InputStream;
    :catchall_1
    move-exception v17

    #@241
    move-object v14, v15

    #@242
    .end local v15    # "str":Ljava/io/InputStream;
    .local v14, "str":Ljava/io/InputStream;
    goto :goto_5

    #@243
    .line 3085
    .end local v14    # "str":Ljava/io/InputStream;
    .restart local v15    # "str":Ljava/io/InputStream;
    :catch_8
    move-exception v6

    #@244
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v14, v15

    #@245
    .end local v15    # "str":Ljava/io/InputStream;
    .restart local v14    # "str":Ljava/io/InputStream;
    goto :goto_4

    #@246
    .line 3087
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "str":Ljava/io/InputStream;
    .restart local v15    # "str":Ljava/io/InputStream;
    :catch_9
    move-exception v5

    #@247
    .restart local v5    # "e":Ljava/io/IOException;
    move-object v14, v15

    #@248
    .end local v15    # "str":Ljava/io/InputStream;
    .restart local v14    # "str":Ljava/io/InputStream;
    goto :goto_3
.end method

.method applyPendingPermissionGrantsLPw(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 468
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Landroid/util/ArrayMap;

    #@9
    .line 469
    .local v4, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v4, :cond_0

    #@b
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v7

    #@f
    if-nez v7, :cond_1

    #@11
    .line 470
    :cond_0
    return-void

    #@12
    .line 473
    :cond_1
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/util/ArraySet;

    #@18
    .line 474
    .local v3, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v3, :cond_2

    #@1a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@1d
    move-result v7

    #@1e
    if-nez v7, :cond_3

    #@20
    .line 475
    :cond_2
    return-void

    #@21
    .line 478
    :cond_3
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@29
    .line 479
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_4

    #@2b
    .line 480
    const-string/jumbo v7, "PackageSettings"

    #@2e
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v9, "Can\'t find supposedly installed package "

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 481
    return-void

    #@46
    .line 483
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@49
    move-result-object v5

    #@4a
    .line 485
    .local v5, "perms":Lcom/android/server/pm/PermissionsState;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v2

    #@4e
    .local v2, "grant$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_7

    #@54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    #@5a
    .line 486
    .local v1, "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@5c
    iget-object v8, v1, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    #@5e
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@64
    .line 487
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_5

    #@66
    .line 488
    iget-boolean v7, v1, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    #@68
    if-eqz v7, :cond_6

    #@6a
    .line 489
    invoke-virtual {v5, v0, p2}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@6d
    .line 491
    :cond_6
    iget v7, v1, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@6f
    const/16 v8, 0xb

    #@71
    invoke-virtual {v5, v0, p2, v8, v7}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@74
    goto :goto_0

    #@75
    .line 496
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    :cond_7
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 497
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@7b
    move-result v7

    #@7c
    const/4 v8, 0x1

    #@7d
    if-ge v7, v8, :cond_8

    #@7f
    .line 498
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@81
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->remove(I)V

    #@84
    .line 500
    :cond_8
    invoke-virtual {p0, p2, v9}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    #@87
    .line 466
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1400
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
    .line 1240
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 1241
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    #@b
    .line 1245
    return-object v3

    #@c
    .line 1247
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@f
    move-result-object v0

    #@10
    .line 1248
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v0, :cond_1

    #@12
    .line 1249
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@14
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-direct {v0, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@17
    .line 1250
    .restart local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@1a
    .line 1263
    :goto_0
    return-object v0

    #@1b
    .line 1256
    :cond_1
    invoke-virtual {v0, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Ljava/util/ArrayList;)V

    #@1e
    goto :goto_0
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I)V
    .locals 23
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 3959
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@4
    monitor-enter v4

    #@5
    .line 3960
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@c
    move-result-object v16

    #@d
    .line 3961
    .local v16, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    #@10
    move-result v17

    #@11
    .line 3962
    .local v17, "packagesCount":I
    move/from16 v0, v17

    #@13
    new-array v0, v0, [Ljava/lang/String;

    #@15
    move-object/from16 v22, v0

    #@17
    .line 3963
    .local v22, "volumeUuids":[Ljava/lang/String;
    move/from16 v0, v17

    #@19
    new-array v15, v0, [Ljava/lang/String;

    #@1b
    .line 3964
    .local v15, "names":[Ljava/lang/String;
    move/from16 v0, v17

    #@1d
    new-array v11, v0, [I

    #@1f
    .line 3965
    .local v11, "appIds":[I
    move/from16 v0, v17

    #@21
    new-array v0, v0, [Ljava/lang/String;

    #@23
    move-object/from16 v20, v0

    #@25
    .line 3966
    .local v20, "seinfos":[Ljava/lang/String;
    move/from16 v0, v17

    #@27
    new-array v0, v0, [I

    #@29
    move-object/from16 v21, v0

    #@2b
    .line 3967
    .local v21, "targetSdkVersions":[I
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v18

    #@2f
    .line 3968
    .local v18, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v14, 0x0

    #@30
    .local v14, "i":I
    :goto_0
    move/from16 v0, v17

    #@32
    if-ge v14, v0, :cond_2

    #@34
    .line 3969
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v19

    #@38
    check-cast v19, Lcom/android/server/pm/PackageSetting;

    #@3a
    .line 3970
    .local v19, "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v19

    #@3c
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3e
    if-eqz v3, :cond_0

    #@40
    move-object/from16 v0, v19

    #@42
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@44
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@46
    if-nez v3, :cond_1

    #@48
    .line 3968
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 3974
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    #@4e
    move-result v3

    #@4f
    move-object/from16 v0, v19

    #@51
    move/from16 v1, p3

    #@53
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    #@56
    .line 3977
    move-object/from16 v0, v19

    #@58
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@5a
    aput-object v3, v22, v14

    #@5c
    .line 3978
    move-object/from16 v0, v19

    #@5e
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@60
    aput-object v3, v15, v14

    #@62
    .line 3979
    move-object/from16 v0, v19

    #@64
    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@66
    aput v3, v11, v14

    #@68
    .line 3980
    move-object/from16 v0, v19

    #@6a
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6c
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6e
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@70
    aput-object v3, v20, v14

    #@72
    .line 3981
    move-object/from16 v0, v19

    #@74
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@76
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@78
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@7a
    aput v3, v21, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    goto :goto_1

    #@7d
    .line 3959
    .end local v11    # "appIds":[I
    .end local v14    # "i":I
    .end local v15    # "names":[Ljava/lang/String;
    .end local v16    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v17    # "packagesCount":I
    .end local v18    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "seinfos":[Ljava/lang/String;
    .end local v21    # "targetSdkVersions":[I
    .end local v22    # "volumeUuids":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@7e
    monitor-exit v4

    #@7f
    throw v3

    #@80
    .restart local v11    # "appIds":[I
    .restart local v14    # "i":I
    .restart local v15    # "names":[Ljava/lang/String;
    .restart local v16    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "packagesCount":I
    .restart local v18    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v20    # "seinfos":[Ljava/lang/String;
    .restart local v21    # "targetSdkVersions":[I
    .restart local v22    # "volumeUuids":[Ljava/lang/String;
    :cond_2
    monitor-exit v4

    #@81
    .line 3984
    const/4 v14, 0x0

    #@82
    :goto_2
    move/from16 v0, v17

    #@84
    if-ge v14, v0, :cond_4

    #@86
    .line 3985
    aget-object v3, v15, v14

    #@88
    if-nez v3, :cond_3

    #@8a
    .line 3984
    :goto_3
    add-int/lit8 v14, v14, 0x1

    #@8c
    goto :goto_2

    #@8d
    .line 3989
    :cond_3
    const/4 v13, 0x3

    #@8e
    .line 3991
    .local v13, "flags":I
    :try_start_1
    aget-object v4, v22, v14

    #@90
    aget-object v5, v15, v14

    #@92
    aget v8, v11, v14

    #@94
    .line 3992
    aget-object v9, v20, v14

    #@96
    aget v10, v21, v14

    #@98
    .line 3991
    const/4 v7, 0x3

    #@99
    move-object/from16 v3, p2

    #@9b
    move/from16 v6, p3

    #@9d
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_1
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    #@a0
    goto :goto_3

    #@a1
    .line 3993
    :catch_0
    move-exception v12

    #@a2
    .line 3994
    .local v12, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v3, "PackageSettings"

    #@a5
    const-string/jumbo v4, "Failed to prepare app data"

    #@a8
    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ab
    goto :goto_3

    #@ac
    .line 3997
    .end local v12    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v13    # "flags":I
    :cond_4
    move-object/from16 v0, p0

    #@ae
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@b0
    monitor-enter v3

    #@b1
    .line 3998
    :try_start_2
    move-object/from16 v0, p0

    #@b3
    move-object/from16 v1, p1

    #@b5
    move/from16 v2, p3

    #@b7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@ba
    monitor-exit v3

    #@bb
    .line 3952
    return-void

    #@bc
    .line 3997
    :catchall_1
    move-exception v4

    #@bd
    monitor-exit v3

    #@be
    throw v4
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 538
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 539
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@b
    .line 540
    const-string/jumbo v3, "PackageManager"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Package "

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
    .line 541
    return v6

    #@2d
    .line 543
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@35
    .line 545
    .local v0, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    #@37
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@39
    if-eqz v3, :cond_1

    #@3b
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3d
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@45
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 561
    :cond_1
    return v6

    #@4c
    .line 546
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4e
    if-eqz v3, :cond_3

    #@50
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@52
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@54
    if-eqz v3, :cond_3

    #@56
    .line 547
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@58
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5a
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5c
    or-int/lit16 v4, v4, 0x80

    #@5e
    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@60
    .line 549
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@62
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 551
    if-eqz p2, :cond_4

    #@67
    .line 556
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    #@69
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    #@6c
    .line 557
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    #@6f
    .line 559
    .end local v1    # "newp":Lcom/android/server/pm/PackageSetting;
    :cond_4
    const/4 v3, 0x1

    #@70
    return v3
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    #@0
    .prologue
    .line 4832
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 4833
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 4834
    const-string/jumbo v0, "gids="

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 4835
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 4834
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 4831
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
    .line 4879
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 4880
    .local v2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_2

    #@a
    .line 4881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    const-string/jumbo v3, "install permissions:"

    #@10
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 4882
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
    .line 4883
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    #@25
    .line 4884
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
    .line 4887
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
    .line 4888
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
    .line 4889
    const-string/jumbo v3, ", flags="

    #@4f
    .line 4890
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@52
    move-result v4

    #@53
    .line 4889
    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_0

    #@5b
    .line 4878
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v1    # "permissionState$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .locals 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
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
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4290
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p3, :cond_a

    #@2
    .line 4291
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 4292
    const-string/jumbo v4, ","

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 4293
    move-object/from16 v0, p5

    #@13
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@15
    if-eqz v4, :cond_0

    #@17
    move-object/from16 v0, p5

    #@19
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@1b
    :goto_0
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 4294
    const-string/jumbo v4, ","

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 4295
    move-object/from16 v0, p5

    #@2a
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@31
    .line 4296
    const-string/jumbo v4, ","

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    .line 4297
    move-object/from16 v0, p5

    #@3b
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@3d
    move-object/from16 v0, p1

    #@3f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@42
    .line 4298
    const-string/jumbo v4, ","

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 4299
    move-object/from16 v0, p5

    #@4c
    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    #@4e
    move-object/from16 v0, p1

    #@50
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@53
    .line 4300
    const-string/jumbo v4, ","

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 4301
    move-object/from16 v0, p5

    #@5d
    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    #@5f
    move-object/from16 v0, p1

    #@61
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@64
    .line 4302
    const-string/jumbo v4, ","

    #@67
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 4303
    move-object/from16 v0, p5

    #@6e
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@70
    if-eqz v4, :cond_1

    #@72
    move-object/from16 v0, p5

    #@74
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@76
    :goto_1
    move-object/from16 v0, p1

    #@78
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    .line 4304
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@7e
    .line 4305
    move-object/from16 v0, p5

    #@80
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@82
    if-eqz v4, :cond_2

    #@84
    .line 4306
    move-object/from16 v0, p1

    #@86
    move-object/from16 v1, p3

    #@88
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    const-string/jumbo v4, "-"

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    const-string/jumbo v4, "splt,"

    #@96
    move-object/from16 v0, p1

    #@98
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    .line 4307
    const-string/jumbo v4, "base,"

    #@9e
    move-object/from16 v0, p1

    #@a0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    .line 4308
    move-object/from16 v0, p5

    #@a5
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@a7
    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    #@a9
    move-object/from16 v0, p1

    #@ab
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@ae
    .line 4309
    move-object/from16 v0, p5

    #@b0
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@b2
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@b4
    if-eqz v4, :cond_2

    #@b6
    .line 4310
    const/16 v16, 0x0

    #@b8
    .local v16, "i":I
    :goto_2
    move-object/from16 v0, p5

    #@ba
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@bc
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@be
    array-length v4, v4

    #@bf
    move/from16 v0, v16

    #@c1
    if-ge v0, v4, :cond_2

    #@c3
    .line 4311
    move-object/from16 v0, p1

    #@c5
    move-object/from16 v1, p3

    #@c7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ca
    const-string/jumbo v4, "-"

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    const-string/jumbo v4, "splt,"

    #@d5
    move-object/from16 v0, p1

    #@d7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@da
    .line 4312
    move-object/from16 v0, p5

    #@dc
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@de
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    #@e0
    aget-object v4, v4, v16

    #@e2
    move-object/from16 v0, p1

    #@e4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e7
    const-string/jumbo v4, ","

    #@ea
    move-object/from16 v0, p1

    #@ec
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    .line 4313
    move-object/from16 v0, p5

    #@f1
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@f3
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    #@f5
    aget v4, v4, v16

    #@f7
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@fc
    .line 4310
    add-int/lit8 v16, v16, 0x1

    #@fe
    goto :goto_2

    #@ff
    .line 4293
    .end local v16    # "i":I
    :cond_0
    move-object/from16 v0, p5

    #@101
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@103
    goto/16 :goto_0

    #@105
    .line 4303
    :cond_1
    const-string/jumbo v4, "?"

    #@108
    goto/16 :goto_1

    #@10a
    .line 4317
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10d
    move-result-object v28

    #@10e
    .local v28, "user$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@111
    move-result v4

    #@112
    if-eqz v4, :cond_9

    #@114
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@117
    move-result-object v27

    #@118
    check-cast v27, Landroid/content/pm/UserInfo;

    #@11a
    .line 4318
    .local v27, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p1

    #@11c
    move-object/from16 v1, p3

    #@11e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@121
    .line 4319
    const-string/jumbo v4, "-"

    #@124
    move-object/from16 v0, p1

    #@126
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    .line 4320
    const-string/jumbo v4, "usr"

    #@12c
    move-object/from16 v0, p1

    #@12e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    .line 4321
    const-string/jumbo v4, ","

    #@134
    move-object/from16 v0, p1

    #@136
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@139
    .line 4322
    move-object/from16 v0, v27

    #@13b
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@13d
    move-object/from16 v0, p1

    #@13f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@142
    .line 4323
    const-string/jumbo v4, ","

    #@145
    move-object/from16 v0, p1

    #@147
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    .line 4324
    move-object/from16 v0, v27

    #@14c
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@14e
    move-object/from16 v0, p5

    #@150
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    #@153
    move-result v4

    #@154
    if-eqz v4, :cond_3

    #@156
    const-string/jumbo v4, "I"

    #@159
    :goto_4
    move-object/from16 v0, p1

    #@15b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15e
    .line 4325
    move-object/from16 v0, v27

    #@160
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@162
    move-object/from16 v0, p5

    #@164
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    #@167
    move-result v4

    #@168
    if-eqz v4, :cond_4

    #@16a
    const-string/jumbo v4, "B"

    #@16d
    :goto_5
    move-object/from16 v0, p1

    #@16f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@172
    .line 4326
    move-object/from16 v0, v27

    #@174
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@176
    move-object/from16 v0, p5

    #@178
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    #@17b
    move-result v4

    #@17c
    if-eqz v4, :cond_5

    #@17e
    const-string/jumbo v4, "SU"

    #@181
    :goto_6
    move-object/from16 v0, p1

    #@183
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@186
    .line 4327
    move-object/from16 v0, v27

    #@188
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@18a
    move-object/from16 v0, p5

    #@18c
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@18f
    move-result v4

    #@190
    if-eqz v4, :cond_6

    #@192
    const-string/jumbo v4, "S"

    #@195
    :goto_7
    move-object/from16 v0, p1

    #@197
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19a
    .line 4328
    move-object/from16 v0, v27

    #@19c
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@19e
    move-object/from16 v0, p5

    #@1a0
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    #@1a3
    move-result v4

    #@1a4
    if-eqz v4, :cond_7

    #@1a6
    const-string/jumbo v4, "l"

    #@1a9
    :goto_8
    move-object/from16 v0, p1

    #@1ab
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    .line 4329
    const-string/jumbo v4, ","

    #@1b1
    move-object/from16 v0, p1

    #@1b3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b6
    .line 4330
    move-object/from16 v0, v27

    #@1b8
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@1ba
    move-object/from16 v0, p5

    #@1bc
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    #@1bf
    move-result v4

    #@1c0
    move-object/from16 v0, p1

    #@1c2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@1c5
    .line 4331
    move-object/from16 v0, v27

    #@1c7
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@1c9
    move-object/from16 v0, p5

    #@1cb
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    #@1ce
    move-result-object v17

    #@1cf
    .line 4332
    .local v17, "lastDisabledAppCaller":Ljava/lang/String;
    const-string/jumbo v4, ","

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    .line 4333
    if-eqz v17, :cond_8

    #@1d9
    .end local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p1

    #@1db
    move-object/from16 v1, v17

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    .line 4334
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1e3
    goto/16 :goto_3

    #@1e5
    .line 4324
    :cond_3
    const-string/jumbo v4, "i"

    #@1e8
    goto/16 :goto_4

    #@1ea
    .line 4325
    :cond_4
    const-string/jumbo v4, "b"

    #@1ed
    goto :goto_5

    #@1ee
    .line 4326
    :cond_5
    const-string/jumbo v4, "su"

    #@1f1
    goto :goto_6

    #@1f2
    .line 4327
    :cond_6
    const-string/jumbo v4, "s"

    #@1f5
    goto :goto_7

    #@1f6
    .line 4328
    :cond_7
    const-string/jumbo v4, "L"

    #@1f9
    goto :goto_8

    #@1fa
    .line 4333
    .restart local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_8
    const-string/jumbo v17, "?"

    #@1fd
    goto :goto_9

    #@1fe
    .line 4336
    .end local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v27    # "user":Landroid/content/pm/UserInfo;
    :cond_9
    return-void

    #@1ff
    .line 4339
    .end local v28    # "user$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@202
    const-string/jumbo v4, "Package ["

    #@205
    move-object/from16 v0, p1

    #@207
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20a
    .line 4340
    move-object/from16 v0, p5

    #@20c
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@20e
    if-eqz v4, :cond_1e

    #@210
    move-object/from16 v0, p5

    #@212
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@214
    :goto_a
    move-object/from16 v0, p1

    #@216
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@219
    .line 4341
    const-string/jumbo v4, "] ("

    #@21c
    move-object/from16 v0, p1

    #@21e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@221
    .line 4342
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@224
    move-result v4

    #@225
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@228
    move-result-object v4

    #@229
    move-object/from16 v0, p1

    #@22b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22e
    .line 4343
    const-string/jumbo v4, "):"

    #@231
    move-object/from16 v0, p1

    #@233
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@236
    .line 4345
    move-object/from16 v0, p5

    #@238
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@23a
    if-eqz v4, :cond_b

    #@23c
    .line 4346
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23f
    const-string/jumbo v4, "  compat name="

    #@242
    move-object/from16 v0, p1

    #@244
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@247
    .line 4347
    move-object/from16 v0, p5

    #@249
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@24b
    move-object/from16 v0, p1

    #@24d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@250
    .line 4350
    :cond_b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@253
    const-string/jumbo v4, "  userId="

    #@256
    move-object/from16 v0, p1

    #@258
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25b
    move-object/from16 v0, p5

    #@25d
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@25f
    move-object/from16 v0, p1

    #@261
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@264
    .line 4352
    move-object/from16 v0, p5

    #@266
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@268
    if-eqz v4, :cond_c

    #@26a
    .line 4353
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26d
    const-string/jumbo v4, "  sharedUser="

    #@270
    move-object/from16 v0, p1

    #@272
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@275
    move-object/from16 v0, p5

    #@277
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@279
    move-object/from16 v0, p1

    #@27b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@27e
    .line 4355
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@281
    const-string/jumbo v4, "  pkg="

    #@284
    move-object/from16 v0, p1

    #@286
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@289
    move-object/from16 v0, p5

    #@28b
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@28d
    move-object/from16 v0, p1

    #@28f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@292
    .line 4356
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@295
    const-string/jumbo v4, "  codePath="

    #@298
    move-object/from16 v0, p1

    #@29a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29d
    move-object/from16 v0, p5

    #@29f
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a6
    .line 4357
    if-nez p4, :cond_d

    #@2a8
    .line 4358
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ab
    const-string/jumbo v4, "  resourcePath="

    #@2ae
    move-object/from16 v0, p1

    #@2b0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b3
    move-object/from16 v0, p5

    #@2b5
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@2b7
    move-object/from16 v0, p1

    #@2b9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2bc
    .line 4359
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bf
    const-string/jumbo v4, "  legacyNativeLibraryDir="

    #@2c2
    move-object/from16 v0, p1

    #@2c4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c7
    .line 4360
    move-object/from16 v0, p5

    #@2c9
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@2cb
    move-object/from16 v0, p1

    #@2cd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d0
    .line 4361
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d3
    const-string/jumbo v4, "  primaryCpuAbi="

    #@2d6
    move-object/from16 v0, p1

    #@2d8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2db
    move-object/from16 v0, p5

    #@2dd
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@2df
    move-object/from16 v0, p1

    #@2e1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e4
    .line 4362
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e7
    const-string/jumbo v4, "  secondaryCpuAbi="

    #@2ea
    move-object/from16 v0, p1

    #@2ec
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    move-object/from16 v0, p5

    #@2f1
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@2f3
    move-object/from16 v0, p1

    #@2f5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f8
    .line 4364
    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    const-string/jumbo v4, "  versionCode="

    #@2fe
    move-object/from16 v0, p1

    #@300
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@303
    move-object/from16 v0, p5

    #@305
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@307
    move-object/from16 v0, p1

    #@309
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@30c
    .line 4365
    move-object/from16 v0, p5

    #@30e
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@310
    if-eqz v4, :cond_e

    #@312
    .line 4366
    const-string/jumbo v4, " minSdk="

    #@315
    move-object/from16 v0, p1

    #@317
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31a
    move-object/from16 v0, p5

    #@31c
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@31e
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@320
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    #@322
    move-object/from16 v0, p1

    #@324
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@327
    .line 4367
    const-string/jumbo v4, " targetSdk="

    #@32a
    move-object/from16 v0, p1

    #@32c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32f
    move-object/from16 v0, p5

    #@331
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@333
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@335
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@337
    move-object/from16 v0, p1

    #@339
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@33c
    .line 4369
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@33f
    .line 4370
    move-object/from16 v0, p5

    #@341
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@343
    if-eqz v4, :cond_2a

    #@345
    .line 4371
    move-object/from16 v0, p5

    #@347
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@349
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@34b
    if-eqz v4, :cond_21

    #@34d
    .line 4372
    move-object/from16 v0, p5

    #@34f
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@351
    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@353
    move-object/from16 v18, v0

    #@355
    .line 4373
    .local v18, "parentPkg":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    #@357
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@359
    move-object/from16 v0, v18

    #@35b
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@35d
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@360
    move-result-object v24

    #@361
    check-cast v24, Lcom/android/server/pm/PackageSetting;

    #@363
    .line 4374
    .local v24, "pps":Lcom/android/server/pm/PackageSetting;
    if-eqz v24, :cond_1f

    #@365
    move-object/from16 v0, v24

    #@367
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@369
    move-object/from16 v0, v18

    #@36b
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@36d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@370
    move-result v4

    #@371
    if-eqz v4, :cond_1f

    #@373
    .line 4377
    :goto_b
    if-eqz v24, :cond_f

    #@375
    .line 4378
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@378
    const-string/jumbo v4, "  parentPackage="

    #@37b
    move-object/from16 v0, p1

    #@37d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@380
    .line 4379
    move-object/from16 v0, v24

    #@382
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@384
    if-eqz v4, :cond_20

    #@386
    move-object/from16 v0, v24

    #@388
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@38a
    :goto_c
    move-object/from16 v0, p1

    #@38c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38f
    .line 4399
    .end local v18    # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_f
    :goto_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@392
    const-string/jumbo v4, "  versionName="

    #@395
    move-object/from16 v0, p1

    #@397
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39a
    move-object/from16 v0, p5

    #@39c
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@39e
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    #@3a0
    move-object/from16 v0, p1

    #@3a2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a5
    .line 4400
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a8
    const-string/jumbo v4, "  splits="

    #@3ab
    move-object/from16 v0, p1

    #@3ad
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b0
    move-object/from16 v0, p5

    #@3b2
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3b4
    move-object/from16 v0, p1

    #@3b6
    invoke-static {v0, v4}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    #@3b9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3bc
    .line 4401
    move-object/from16 v0, p5

    #@3be
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3c0
    invoke-static {v4}, Landroid/content/pm/PackageParser;->getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I

    #@3c3
    move-result v10

    #@3c4
    .line 4402
    .local v10, "apkSigningVersion":I
    if-eqz v10, :cond_10

    #@3c6
    .line 4403
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c9
    const-string/jumbo v4, "  apkSigningVersion="

    #@3cc
    move-object/from16 v0, p1

    #@3ce
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d1
    move-object/from16 v0, p1

    #@3d3
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    #@3d6
    .line 4405
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d9
    const-string/jumbo v4, "  applicationInfo="

    #@3dc
    move-object/from16 v0, p1

    #@3de
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e1
    .line 4406
    move-object/from16 v0, p5

    #@3e3
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3e5
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3e7
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    #@3ea
    move-result-object v4

    #@3eb
    move-object/from16 v0, p1

    #@3ed
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f0
    .line 4407
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f3
    const-string/jumbo v4, "  flags="

    #@3f6
    move-object/from16 v0, p1

    #@3f8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fb
    move-object/from16 v0, p5

    #@3fd
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3ff
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@401
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@403
    .line 4408
    sget-object v5, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@405
    .line 4407
    move-object/from16 v0, p1

    #@407
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    #@40a
    .line 4408
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@40d
    .line 4409
    move-object/from16 v0, p5

    #@40f
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@411
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@413
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@415
    if-eqz v4, :cond_11

    #@417
    .line 4410
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41a
    const-string/jumbo v4, "  privateFlags="

    #@41d
    move-object/from16 v0, p1

    #@41f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@422
    .line 4411
    move-object/from16 v0, p5

    #@424
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@426
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@428
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@42a
    sget-object v5, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@42c
    .line 4410
    move-object/from16 v0, p1

    #@42e
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    #@431
    .line 4411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@434
    .line 4413
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@437
    const-string/jumbo v4, "  dataDir="

    #@43a
    move-object/from16 v0, p1

    #@43c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43f
    move-object/from16 v0, p5

    #@441
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@443
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@445
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@447
    move-object/from16 v0, p1

    #@449
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44c
    .line 4414
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44f
    const-string/jumbo v4, "  supportsScreens=["

    #@452
    move-object/from16 v0, p1

    #@454
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@457
    .line 4415
    const/4 v15, 0x1

    #@458
    .line 4416
    .local v15, "first":Z
    move-object/from16 v0, p5

    #@45a
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@45c
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@45e
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@460
    and-int/lit16 v4, v4, 0x200

    #@462
    if-eqz v4, :cond_13

    #@464
    .line 4417
    if-nez v15, :cond_12

    #@466
    .line 4418
    const-string/jumbo v4, ", "

    #@469
    move-object/from16 v0, p1

    #@46b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46e
    .line 4419
    :cond_12
    const/4 v15, 0x0

    #@46f
    .line 4420
    const-string/jumbo v4, "small"

    #@472
    move-object/from16 v0, p1

    #@474
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@477
    .line 4422
    :cond_13
    move-object/from16 v0, p5

    #@479
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@47b
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@47d
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@47f
    and-int/lit16 v4, v4, 0x400

    #@481
    if-eqz v4, :cond_15

    #@483
    .line 4423
    if-nez v15, :cond_14

    #@485
    .line 4424
    const-string/jumbo v4, ", "

    #@488
    move-object/from16 v0, p1

    #@48a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48d
    .line 4425
    :cond_14
    const/4 v15, 0x0

    #@48e
    .line 4426
    const-string/jumbo v4, "medium"

    #@491
    move-object/from16 v0, p1

    #@493
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@496
    .line 4428
    :cond_15
    move-object/from16 v0, p5

    #@498
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@49a
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@49c
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@49e
    and-int/lit16 v4, v4, 0x800

    #@4a0
    if-eqz v4, :cond_17

    #@4a2
    .line 4429
    if-nez v15, :cond_16

    #@4a4
    .line 4430
    const-string/jumbo v4, ", "

    #@4a7
    move-object/from16 v0, p1

    #@4a9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ac
    .line 4431
    :cond_16
    const/4 v15, 0x0

    #@4ad
    .line 4432
    const-string/jumbo v4, "large"

    #@4b0
    move-object/from16 v0, p1

    #@4b2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b5
    .line 4434
    :cond_17
    move-object/from16 v0, p5

    #@4b7
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4b9
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4bb
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4bd
    const/high16 v5, 0x80000

    #@4bf
    and-int/2addr v4, v5

    #@4c0
    if-eqz v4, :cond_19

    #@4c2
    .line 4435
    if-nez v15, :cond_18

    #@4c4
    .line 4436
    const-string/jumbo v4, ", "

    #@4c7
    move-object/from16 v0, p1

    #@4c9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cc
    .line 4437
    :cond_18
    const/4 v15, 0x0

    #@4cd
    .line 4438
    const-string/jumbo v4, "xlarge"

    #@4d0
    move-object/from16 v0, p1

    #@4d2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d5
    .line 4440
    :cond_19
    move-object/from16 v0, p5

    #@4d7
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4d9
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4db
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4dd
    and-int/lit16 v4, v4, 0x1000

    #@4df
    if-eqz v4, :cond_1b

    #@4e1
    .line 4441
    if-nez v15, :cond_1a

    #@4e3
    .line 4442
    const-string/jumbo v4, ", "

    #@4e6
    move-object/from16 v0, p1

    #@4e8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4eb
    .line 4443
    :cond_1a
    const/4 v15, 0x0

    #@4ec
    .line 4444
    const-string/jumbo v4, "resizeable"

    #@4ef
    move-object/from16 v0, p1

    #@4f1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f4
    .line 4446
    :cond_1b
    move-object/from16 v0, p5

    #@4f6
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@4f8
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4fa
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4fc
    and-int/lit16 v4, v4, 0x2000

    #@4fe
    if-eqz v4, :cond_1d

    #@500
    .line 4447
    if-nez v15, :cond_1c

    #@502
    .line 4448
    const-string/jumbo v4, ", "

    #@505
    move-object/from16 v0, p1

    #@507
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50a
    .line 4449
    :cond_1c
    const/4 v15, 0x0

    #@50b
    .line 4450
    const-string/jumbo v4, "anyDensity"

    #@50e
    move-object/from16 v0, p1

    #@510
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@513
    .line 4452
    :cond_1d
    const-string/jumbo v4, "]"

    #@516
    move-object/from16 v0, p1

    #@518
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51b
    .line 4453
    move-object/from16 v0, p5

    #@51d
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@51f
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@521
    if-eqz v4, :cond_27

    #@523
    move-object/from16 v0, p5

    #@525
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@527
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@529
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@52c
    move-result v4

    #@52d
    if-lez v4, :cond_27

    #@52f
    .line 4454
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@532
    const-string/jumbo v4, "  libraries:"

    #@535
    move-object/from16 v0, p1

    #@537
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@53a
    .line 4455
    const/16 v16, 0x0

    #@53c
    .restart local v16    # "i":I
    :goto_e
    move-object/from16 v0, p5

    #@53e
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@540
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@542
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@545
    move-result v4

    #@546
    move/from16 v0, v16

    #@548
    if-ge v0, v4, :cond_27

    #@54a
    .line 4456
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54d
    const-string/jumbo v4, "    "

    #@550
    move-object/from16 v0, p1

    #@552
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@555
    move-object/from16 v0, p5

    #@557
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@559
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    #@55b
    move/from16 v0, v16

    #@55d
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@560
    move-result-object v4

    #@561
    check-cast v4, Ljava/lang/String;

    #@563
    move-object/from16 v0, p1

    #@565
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@568
    .line 4455
    add-int/lit8 v16, v16, 0x1

    #@56a
    goto :goto_e

    #@56b
    .line 4340
    .end local v10    # "apkSigningVersion":I
    .end local v15    # "first":Z
    .end local v16    # "i":I
    :cond_1e
    move-object/from16 v0, p5

    #@56d
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@56f
    goto/16 :goto_a

    #@571
    .line 4375
    .restart local v18    # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v24    # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_1f
    move-object/from16 v0, p0

    #@573
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@575
    move-object/from16 v0, v18

    #@577
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@579
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@57c
    move-result-object v24

    #@57d
    .end local v24    # "pps":Lcom/android/server/pm/PackageSetting;
    check-cast v24, Lcom/android/server/pm/PackageSetting;

    #@57f
    .restart local v24    # "pps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_b

    #@581
    .line 4379
    :cond_20
    move-object/from16 v0, v24

    #@583
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@585
    goto/16 :goto_c

    #@587
    .line 4381
    .end local v18    # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_21
    move-object/from16 v0, p5

    #@589
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@58b
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@58d
    if-eqz v4, :cond_f

    #@58f
    .line 4382
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@592
    const-string/jumbo v4, "  childPackages=["

    #@595
    move-object/from16 v0, p1

    #@597
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59a
    .line 4383
    move-object/from16 v0, p5

    #@59c
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@59e
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@5a0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5a3
    move-result v11

    #@5a4
    .line 4384
    .local v11, "childCount":I
    const/16 v16, 0x0

    #@5a6
    .restart local v16    # "i":I
    :goto_f
    move/from16 v0, v16

    #@5a8
    if-ge v0, v11, :cond_26

    #@5aa
    .line 4385
    move-object/from16 v0, p5

    #@5ac
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@5ae
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@5b0
    move/from16 v0, v16

    #@5b2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b5
    move-result-object v12

    #@5b6
    check-cast v12, Landroid/content/pm/PackageParser$Package;

    #@5b8
    .line 4386
    .local v12, "childPkg":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    #@5ba
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@5bc
    iget-object v5, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5be
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c1
    move-result-object v14

    #@5c2
    check-cast v14, Lcom/android/server/pm/PackageSetting;

    #@5c4
    .line 4387
    .local v14, "cps":Lcom/android/server/pm/PackageSetting;
    if-eqz v14, :cond_24

    #@5c6
    iget-object v4, v14, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@5c8
    iget-object v5, v12, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@5ca
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5cd
    move-result v4

    #@5ce
    if-eqz v4, :cond_24

    #@5d0
    .line 4390
    :goto_10
    if-eqz v14, :cond_23

    #@5d2
    .line 4391
    if-lez v16, :cond_22

    #@5d4
    .line 4392
    const-string/jumbo v4, ", "

    #@5d7
    move-object/from16 v0, p1

    #@5d9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5dc
    .line 4394
    :cond_22
    iget-object v4, v14, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@5de
    if-eqz v4, :cond_25

    #@5e0
    iget-object v4, v14, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@5e2
    :goto_11
    move-object/from16 v0, p1

    #@5e4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e7
    .line 4384
    :cond_23
    add-int/lit8 v16, v16, 0x1

    #@5e9
    goto :goto_f

    #@5ea
    .line 4388
    :cond_24
    move-object/from16 v0, p0

    #@5ec
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@5ee
    iget-object v5, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5f0
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f3
    move-result-object v14

    #@5f4
    .end local v14    # "cps":Lcom/android/server/pm/PackageSetting;
    check-cast v14, Lcom/android/server/pm/PackageSetting;

    #@5f6
    .restart local v14    # "cps":Lcom/android/server/pm/PackageSetting;
    goto :goto_10

    #@5f7
    .line 4394
    :cond_25
    iget-object v4, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@5f9
    goto :goto_11

    #@5fa
    .line 4397
    .end local v12    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "cps":Lcom/android/server/pm/PackageSetting;
    :cond_26
    const-string/jumbo v4, "]"

    #@5fd
    move-object/from16 v0, p1

    #@5ff
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@602
    goto/16 :goto_d

    #@604
    .line 4459
    .end local v11    # "childCount":I
    .end local v16    # "i":I
    .restart local v10    # "apkSigningVersion":I
    .restart local v15    # "first":Z
    :cond_27
    move-object/from16 v0, p5

    #@606
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@608
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@60a
    if-eqz v4, :cond_28

    #@60c
    move-object/from16 v0, p5

    #@60e
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@610
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@612
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@615
    move-result v4

    #@616
    if-lez v4, :cond_28

    #@618
    .line 4460
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61b
    const-string/jumbo v4, "  usesLibraries:"

    #@61e
    move-object/from16 v0, p1

    #@620
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@623
    .line 4461
    const/16 v16, 0x0

    #@625
    .restart local v16    # "i":I
    :goto_12
    move-object/from16 v0, p5

    #@627
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@629
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@62b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@62e
    move-result v4

    #@62f
    move/from16 v0, v16

    #@631
    if-ge v0, v4, :cond_28

    #@633
    .line 4462
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@636
    const-string/jumbo v4, "    "

    #@639
    move-object/from16 v0, p1

    #@63b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63e
    move-object/from16 v0, p5

    #@640
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@642
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    #@644
    move/from16 v0, v16

    #@646
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@649
    move-result-object v4

    #@64a
    check-cast v4, Ljava/lang/String;

    #@64c
    move-object/from16 v0, p1

    #@64e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@651
    .line 4461
    add-int/lit8 v16, v16, 0x1

    #@653
    goto :goto_12

    #@654
    .line 4465
    .end local v16    # "i":I
    :cond_28
    move-object/from16 v0, p5

    #@656
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@658
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@65a
    if-eqz v4, :cond_29

    #@65c
    .line 4466
    move-object/from16 v0, p5

    #@65e
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@660
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@662
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@665
    move-result v4

    #@666
    if-lez v4, :cond_29

    #@668
    .line 4467
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66b
    const-string/jumbo v4, "  usesOptionalLibraries:"

    #@66e
    move-object/from16 v0, p1

    #@670
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@673
    .line 4468
    const/16 v16, 0x0

    #@675
    .restart local v16    # "i":I
    :goto_13
    move-object/from16 v0, p5

    #@677
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@679
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@67b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@67e
    move-result v4

    #@67f
    move/from16 v0, v16

    #@681
    if-ge v0, v4, :cond_29

    #@683
    .line 4469
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@686
    const-string/jumbo v4, "    "

    #@689
    move-object/from16 v0, p1

    #@68b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68e
    .line 4470
    move-object/from16 v0, p5

    #@690
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@692
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    #@694
    move/from16 v0, v16

    #@696
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@699
    move-result-object v4

    #@69a
    check-cast v4, Ljava/lang/String;

    #@69c
    move-object/from16 v0, p1

    #@69e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a1
    .line 4468
    add-int/lit8 v16, v16, 0x1

    #@6a3
    goto :goto_13

    #@6a4
    .line 4473
    .end local v16    # "i":I
    :cond_29
    move-object/from16 v0, p5

    #@6a6
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6a8
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@6aa
    if-eqz v4, :cond_2a

    #@6ac
    .line 4474
    move-object/from16 v0, p5

    #@6ae
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6b0
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@6b2
    array-length v4, v4

    #@6b3
    if-lez v4, :cond_2a

    #@6b5
    .line 4475
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b8
    const-string/jumbo v4, "  usesLibraryFiles:"

    #@6bb
    move-object/from16 v0, p1

    #@6bd
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c0
    .line 4476
    const/16 v16, 0x0

    #@6c2
    .restart local v16    # "i":I
    :goto_14
    move-object/from16 v0, p5

    #@6c4
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6c6
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@6c8
    array-length v4, v4

    #@6c9
    move/from16 v0, v16

    #@6cb
    if-ge v0, v4, :cond_2a

    #@6cd
    .line 4477
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d0
    const-string/jumbo v4, "    "

    #@6d3
    move-object/from16 v0, p1

    #@6d5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d8
    move-object/from16 v0, p5

    #@6da
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6dc
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    #@6de
    aget-object v4, v4, v16

    #@6e0
    move-object/from16 v0, p1

    #@6e2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e5
    .line 4476
    add-int/lit8 v16, v16, 0x1

    #@6e7
    goto :goto_14

    #@6e8
    .line 4481
    .end local v10    # "apkSigningVersion":I
    .end local v15    # "first":Z
    .end local v16    # "i":I
    :cond_2a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6eb
    const-string/jumbo v4, "  timeStamp="

    #@6ee
    move-object/from16 v0, p1

    #@6f0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f3
    .line 4482
    move-object/from16 v0, p5

    #@6f5
    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    #@6f7
    move-object/from16 v0, p7

    #@6f9
    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    #@6fc
    .line 4483
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@6ff
    move-result-object v4

    #@700
    move-object/from16 v0, p1

    #@702
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@705
    .line 4484
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@708
    const-string/jumbo v4, "  firstInstallTime="

    #@70b
    move-object/from16 v0, p1

    #@70d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@710
    .line 4485
    move-object/from16 v0, p5

    #@712
    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    #@714
    move-object/from16 v0, p7

    #@716
    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    #@719
    .line 4486
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@71c
    move-result-object v4

    #@71d
    move-object/from16 v0, p1

    #@71f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@722
    .line 4487
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@725
    const-string/jumbo v4, "  lastUpdateTime="

    #@728
    move-object/from16 v0, p1

    #@72a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@72d
    .line 4488
    move-object/from16 v0, p5

    #@72f
    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    #@731
    move-object/from16 v0, p7

    #@733
    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    #@736
    .line 4489
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@739
    move-result-object v4

    #@73a
    move-object/from16 v0, p1

    #@73c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73f
    .line 4490
    move-object/from16 v0, p5

    #@741
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@743
    if-eqz v4, :cond_2b

    #@745
    .line 4491
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@748
    const-string/jumbo v4, "  installerPackageName="

    #@74b
    move-object/from16 v0, p1

    #@74d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@750
    .line 4492
    move-object/from16 v0, p5

    #@752
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@754
    move-object/from16 v0, p1

    #@756
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@759
    .line 4494
    :cond_2b
    move-object/from16 v0, p5

    #@75b
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@75d
    if-eqz v4, :cond_2c

    #@75f
    .line 4495
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@762
    const-string/jumbo v4, "  volumeUuid="

    #@765
    move-object/from16 v0, p1

    #@767
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76a
    .line 4496
    move-object/from16 v0, p5

    #@76c
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@76e
    move-object/from16 v0, p1

    #@770
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@773
    .line 4498
    :cond_2c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@776
    const-string/jumbo v4, "  signatures="

    #@779
    move-object/from16 v0, p1

    #@77b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77e
    move-object/from16 v0, p5

    #@780
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@782
    move-object/from16 v0, p1

    #@784
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@787
    .line 4499
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78a
    const-string/jumbo v4, "  installPermissionsFixed="

    #@78d
    move-object/from16 v0, p1

    #@78f
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@792
    .line 4500
    move-object/from16 v0, p5

    #@794
    iget-boolean v4, v0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    #@796
    move-object/from16 v0, p1

    #@798
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@79b
    .line 4501
    const-string/jumbo v4, " installStatus="

    #@79e
    move-object/from16 v0, p1

    #@7a0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a3
    move-object/from16 v0, p5

    #@7a5
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->installStatus:I

    #@7a7
    move-object/from16 v0, p1

    #@7a9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@7ac
    .line 4502
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7af
    const-string/jumbo v4, "  pkgFlags="

    #@7b2
    move-object/from16 v0, p1

    #@7b4
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b7
    move-object/from16 v0, p5

    #@7b9
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@7bb
    sget-object v5, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    #@7bd
    move-object/from16 v0, p1

    #@7bf
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    #@7c2
    .line 4503
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@7c5
    .line 4505
    move-object/from16 v0, p5

    #@7c7
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@7c9
    if-eqz v4, :cond_32

    #@7cb
    move-object/from16 v0, p5

    #@7cd
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@7cf
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@7d1
    if-eqz v4, :cond_32

    #@7d3
    move-object/from16 v0, p5

    #@7d5
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@7d7
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@7d9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7dc
    move-result v4

    #@7dd
    if-lez v4, :cond_32

    #@7df
    .line 4506
    move-object/from16 v0, p5

    #@7e1
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@7e3
    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    #@7e5
    move-object/from16 v22, v0

    #@7e7
    .line 4507
    .local v22, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7ea
    const-string/jumbo v4, "  declared permissions:"

    #@7ed
    move-object/from16 v0, p1

    #@7ef
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f2
    .line 4508
    const/16 v16, 0x0

    #@7f4
    .restart local v16    # "i":I
    :goto_15
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    #@7f7
    move-result v4

    #@7f8
    move/from16 v0, v16

    #@7fa
    if-ge v0, v4, :cond_32

    #@7fc
    .line 4509
    move-object/from16 v0, v22

    #@7fe
    move/from16 v1, v16

    #@800
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@803
    move-result-object v19

    #@804
    check-cast v19, Landroid/content/pm/PackageParser$Permission;

    #@806
    .line 4510
    .local v19, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz p4, :cond_2d

    #@808
    .line 4511
    move-object/from16 v0, v19

    #@80a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@80c
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@80e
    move-object/from16 v0, p4

    #@810
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@813
    move-result v4

    #@814
    if-eqz v4, :cond_31

    #@816
    .line 4514
    :cond_2d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@819
    const-string/jumbo v4, "    "

    #@81c
    move-object/from16 v0, p1

    #@81e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@821
    move-object/from16 v0, v19

    #@823
    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@825
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@827
    move-object/from16 v0, p1

    #@829
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82c
    .line 4515
    const-string/jumbo v4, ": prot="

    #@82f
    move-object/from16 v0, p1

    #@831
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@834
    .line 4516
    move-object/from16 v0, v19

    #@836
    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@838
    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    #@83a
    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    #@83d
    move-result-object v4

    #@83e
    move-object/from16 v0, p1

    #@840
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@843
    .line 4517
    move-object/from16 v0, v19

    #@845
    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@847
    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    #@849
    and-int/lit8 v4, v4, 0x1

    #@84b
    if-eqz v4, :cond_2e

    #@84d
    .line 4518
    const-string/jumbo v4, ", COSTS_MONEY"

    #@850
    move-object/from16 v0, p1

    #@852
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@855
    .line 4520
    :cond_2e
    move-object/from16 v0, v19

    #@857
    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@859
    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    #@85b
    and-int/lit8 v4, v4, 0x2

    #@85d
    if-eqz v4, :cond_2f

    #@85f
    .line 4521
    const-string/jumbo v4, ", HIDDEN"

    #@862
    move-object/from16 v0, p1

    #@864
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@867
    .line 4523
    :cond_2f
    move-object/from16 v0, v19

    #@869
    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@86b
    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    #@86d
    const/high16 v5, 0x40000000    # 2.0f

    #@86f
    and-int/2addr v4, v5

    #@870
    if-eqz v4, :cond_30

    #@872
    .line 4524
    const-string/jumbo v4, ", INSTALLED"

    #@875
    move-object/from16 v0, p1

    #@877
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87a
    .line 4526
    :cond_30
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@87d
    .line 4508
    :cond_31
    add-int/lit8 v16, v16, 0x1

    #@87f
    goto/16 :goto_15

    #@881
    .line 4530
    .end local v16    # "i":I
    .end local v19    # "perm":Landroid/content/pm/PackageParser$Permission;
    .end local v22    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    :cond_32
    if-nez p4, :cond_33

    #@883
    if-eqz p9, :cond_36

    #@885
    :cond_33
    move-object/from16 v0, p5

    #@887
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@889
    if-eqz v4, :cond_36

    #@88b
    .line 4531
    move-object/from16 v0, p5

    #@88d
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@88f
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@891
    if-eqz v4, :cond_36

    #@893
    .line 4532
    move-object/from16 v0, p5

    #@895
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@897
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@899
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@89c
    move-result v4

    #@89d
    if-lez v4, :cond_36

    #@89f
    .line 4533
    move-object/from16 v0, p5

    #@8a1
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@8a3
    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@8a5
    move-object/from16 v23, v0

    #@8a7
    .line 4534
    .local v23, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8aa
    const-string/jumbo v4, "  requested permissions:"

    #@8ad
    move-object/from16 v0, p1

    #@8af
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b2
    .line 4535
    const/16 v16, 0x0

    #@8b4
    .restart local v16    # "i":I
    :goto_16
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    #@8b7
    move-result v4

    #@8b8
    move/from16 v0, v16

    #@8ba
    if-ge v0, v4, :cond_36

    #@8bc
    .line 4536
    move-object/from16 v0, v23

    #@8be
    move/from16 v1, v16

    #@8c0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8c3
    move-result-object v20

    #@8c4
    check-cast v20, Ljava/lang/String;

    #@8c6
    .line 4537
    .local v20, "perm":Ljava/lang/String;
    if-eqz p4, :cond_34

    #@8c8
    .line 4538
    move-object/from16 v0, p4

    #@8ca
    move-object/from16 v1, v20

    #@8cc
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@8cf
    move-result v4

    #@8d0
    if-eqz v4, :cond_35

    #@8d2
    .line 4541
    :cond_34
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d5
    const-string/jumbo v4, "    "

    #@8d8
    move-object/from16 v0, p1

    #@8da
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8dd
    move-object/from16 v0, p1

    #@8df
    move-object/from16 v1, v20

    #@8e1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e4
    .line 4535
    :cond_35
    add-int/lit8 v16, v16, 0x1

    #@8e6
    goto :goto_16

    #@8e7
    .line 4545
    .end local v16    # "i":I
    .end local v20    # "perm":Ljava/lang/String;
    .end local v23    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_36
    move-object/from16 v0, p5

    #@8e9
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@8eb
    if-eqz v4, :cond_37

    #@8ed
    if-eqz p4, :cond_3c

    #@8ef
    .line 4546
    :cond_37
    :goto_17
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@8f2
    move-result-object v21

    #@8f3
    .line 4547
    .local v21, "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v4, Ljava/lang/StringBuilder;

    #@8f5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8f8
    move-object/from16 v0, p2

    #@8fa
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8fd
    move-result-object v4

    #@8fe
    const-string/jumbo v5, "  "

    #@901
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@904
    move-result-object v4

    #@905
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@908
    move-result-object v4

    #@909
    move-object/from16 v0, p0

    #@90b
    move-object/from16 v1, p1

    #@90d
    move-object/from16 v2, p4

    #@90f
    move-object/from16 v3, v21

    #@911
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    #@914
    .line 4550
    .end local v21    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_38
    invoke-interface/range {p8 .. p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@917
    move-result-object v28

    #@918
    .restart local v28    # "user$iterator":Ljava/util/Iterator;
    :cond_39
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@91b
    move-result v4

    #@91c
    if-eqz v4, :cond_3e

    #@91e
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@921
    move-result-object v27

    #@922
    check-cast v27, Landroid/content/pm/UserInfo;

    #@924
    .line 4551
    .restart local v27    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@927
    const-string/jumbo v4, "  User "

    #@92a
    move-object/from16 v0, p1

    #@92c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92f
    move-object/from16 v0, v27

    #@931
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@933
    move-object/from16 v0, p1

    #@935
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@938
    const-string/jumbo v4, ": "

    #@93b
    move-object/from16 v0, p1

    #@93d
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@940
    .line 4552
    const-string/jumbo v4, "ceDataInode="

    #@943
    move-object/from16 v0, p1

    #@945
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@948
    .line 4553
    move-object/from16 v0, v27

    #@94a
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@94c
    move-object/from16 v0, p5

    #@94e
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    #@951
    move-result-wide v4

    #@952
    move-object/from16 v0, p1

    #@954
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@957
    .line 4554
    const-string/jumbo v4, " installed="

    #@95a
    move-object/from16 v0, p1

    #@95c
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95f
    .line 4555
    move-object/from16 v0, v27

    #@961
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@963
    move-object/from16 v0, p5

    #@965
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    #@968
    move-result v4

    #@969
    move-object/from16 v0, p1

    #@96b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@96e
    .line 4556
    const-string/jumbo v4, " hidden="

    #@971
    move-object/from16 v0, p1

    #@973
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@976
    .line 4557
    move-object/from16 v0, v27

    #@978
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@97a
    move-object/from16 v0, p5

    #@97c
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    #@97f
    move-result v4

    #@980
    move-object/from16 v0, p1

    #@982
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@985
    .line 4558
    const-string/jumbo v4, " suspended="

    #@988
    move-object/from16 v0, p1

    #@98a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98d
    .line 4559
    move-object/from16 v0, v27

    #@98f
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@991
    move-object/from16 v0, p5

    #@993
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    #@996
    move-result v4

    #@997
    move-object/from16 v0, p1

    #@999
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@99c
    .line 4560
    const-string/jumbo v4, " stopped="

    #@99f
    move-object/from16 v0, p1

    #@9a1
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a4
    .line 4561
    move-object/from16 v0, v27

    #@9a6
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@9a8
    move-object/from16 v0, p5

    #@9aa
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@9ad
    move-result v4

    #@9ae
    move-object/from16 v0, p1

    #@9b0
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@9b3
    .line 4562
    const-string/jumbo v4, " notLaunched="

    #@9b6
    move-object/from16 v0, p1

    #@9b8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9bb
    .line 4563
    move-object/from16 v0, v27

    #@9bd
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@9bf
    move-object/from16 v0, p5

    #@9c1
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    #@9c4
    move-result v4

    #@9c5
    move-object/from16 v0, p1

    #@9c7
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    #@9ca
    .line 4564
    const-string/jumbo v4, " enabled="

    #@9cd
    move-object/from16 v0, p1

    #@9cf
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9d2
    .line 4565
    move-object/from16 v0, v27

    #@9d4
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@9d6
    move-object/from16 v0, p5

    #@9d8
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    #@9db
    move-result v4

    #@9dc
    move-object/from16 v0, p1

    #@9de
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    #@9e1
    .line 4566
    move-object/from16 v0, v27

    #@9e3
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@9e5
    move-object/from16 v0, p5

    #@9e7
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    #@9ea
    move-result-object v17

    #@9eb
    .line 4567
    .restart local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v17, :cond_3a

    #@9ed
    .line 4568
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f0
    const-string/jumbo v4, "    lastDisabledCaller: "

    #@9f3
    move-object/from16 v0, p1

    #@9f5
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f8
    .line 4569
    move-object/from16 v0, p1

    #@9fa
    move-object/from16 v1, v17

    #@9fc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9ff
    .line 4572
    :cond_3a
    move-object/from16 v0, p5

    #@a01
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@a03
    if-nez v4, :cond_3b

    #@a05
    .line 4573
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@a08
    move-result-object v21

    #@a09
    .line 4574
    .restart local v21    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v4, Ljava/lang/StringBuilder;

    #@a0b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a0e
    move-object/from16 v0, p2

    #@a10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a13
    move-result-object v4

    #@a14
    const-string/jumbo v5, "    "

    #@a17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1a
    move-result-object v4

    #@a1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1e
    move-result-object v4

    #@a1f
    move-object/from16 v0, v27

    #@a21
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    #@a23
    move-object/from16 v0, v21

    #@a25
    invoke-virtual {v0, v5}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@a28
    move-result-object v5

    #@a29
    move-object/from16 v0, p0

    #@a2b
    move-object/from16 v1, p1

    #@a2d
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    #@a30
    .line 4575
    new-instance v4, Ljava/lang/StringBuilder;

    #@a32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a35
    move-object/from16 v0, p2

    #@a37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3a
    move-result-object v4

    #@a3b
    const-string/jumbo v5, "    "

    #@a3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a41
    move-result-object v4

    #@a42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a45
    move-result-object v6

    #@a46
    .line 4576
    move-object/from16 v0, v27

    #@a48
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@a4a
    .line 4575
    move-object/from16 v0, v21

    #@a4c
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@a4f
    move-result-object v8

    #@a50
    move-object/from16 v4, p0

    #@a52
    move-object/from16 v5, p1

    #@a54
    move-object/from16 v7, p4

    #@a56
    move/from16 v9, p9

    #@a58
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    #@a5b
    .line 4579
    .end local v21    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_3b
    if-nez p4, :cond_39

    #@a5d
    .line 4580
    move-object/from16 v0, v27

    #@a5f
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@a61
    move-object/from16 v0, p5

    #@a63
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    #@a66
    move-result-object v13

    #@a67
    .line 4581
    .local v13, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v13, :cond_3d

    #@a69
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@a6c
    move-result v4

    #@a6d
    if-lez v4, :cond_3d

    #@a6f
    .line 4582
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a72
    const-string/jumbo v4, "    disabledComponents:"

    #@a75
    move-object/from16 v0, p1

    #@a77
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7a
    .line 4583
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a7d
    move-result-object v26

    #@a7e
    .local v26, "s$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@a81
    move-result v4

    #@a82
    if-eqz v4, :cond_3d

    #@a84
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a87
    move-result-object v25

    #@a88
    check-cast v25, Ljava/lang/String;

    #@a8a
    .line 4584
    .local v25, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8d
    const-string/jumbo v4, "      "

    #@a90
    move-object/from16 v0, p1

    #@a92
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a95
    move-object/from16 v0, p1

    #@a97
    move-object/from16 v1, v25

    #@a99
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a9c
    goto :goto_18

    #@a9d
    .line 4545
    .end local v13    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v25    # "s":Ljava/lang/String;
    .end local v26    # "s$iterator":Ljava/util/Iterator;
    .end local v27    # "user":Landroid/content/pm/UserInfo;
    .end local v28    # "user$iterator":Ljava/util/Iterator;
    :cond_3c
    if-eqz p9, :cond_38

    #@a9f
    goto/16 :goto_17

    #@aa1
    .line 4587
    .restart local v13    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v27    # "user":Landroid/content/pm/UserInfo;
    .restart local v28    # "user$iterator":Ljava/util/Iterator;
    :cond_3d
    move-object/from16 v0, v27

    #@aa3
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@aa5
    move-object/from16 v0, p5

    #@aa7
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    #@aaa
    move-result-object v13

    #@aab
    .line 4588
    if-eqz v13, :cond_39

    #@aad
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    #@ab0
    move-result v4

    #@ab1
    if-lez v4, :cond_39

    #@ab3
    .line 4589
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab6
    const-string/jumbo v4, "    enabledComponents:"

    #@ab9
    move-object/from16 v0, p1

    #@abb
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@abe
    .line 4590
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ac1
    move-result-object v26

    #@ac2
    .restart local v26    # "s$iterator":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@ac5
    move-result v4

    #@ac6
    if-eqz v4, :cond_39

    #@ac8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@acb
    move-result-object v25

    #@acc
    check-cast v25, Ljava/lang/String;

    #@ace
    .line 4591
    .restart local v25    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad1
    const-string/jumbo v4, "      "

    #@ad4
    move-object/from16 v0, p1

    #@ad6
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad9
    move-object/from16 v0, p1

    #@adb
    move-object/from16 v1, v25

    #@add
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ae0
    goto :goto_19

    #@ae1
    .line 4289
    .end local v13    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v25    # "s":Ljava/lang/String;
    .end local v26    # "s$iterator":Ljava/util/Iterator;
    .end local v27    # "user":Landroid/content/pm/UserInfo;
    :cond_3e
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .locals 15
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
    .line 4600
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    #@5
    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    .line 4601
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    #@a
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    #@d
    .line 4602
    .local v8, "date":Ljava/util/Date;
    const/4 v13, 0x0

    #@e
    .line 4603
    .local v13, "printedSomething":Z
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@11
    move-result-object v9

    #@12
    .line 4604
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v14

    #@1c
    .local v14, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_a

    #@22
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v6

    #@26
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@28
    .line 4605
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
    .line 4609
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    #@36
    .line 4610
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
    .line 4614
    :cond_2
    if-nez p5, :cond_3

    #@44
    if-eqz p2, :cond_3

    #@46
    .line 4615
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@48
    move-object/from16 v0, p4

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    #@4d
    .line 4618
    :cond_3
    if-nez p5, :cond_4

    #@4f
    if-eqz v13, :cond_6

    #@51
    .line 4624
    :cond_4
    :goto_2
    const-string/jumbo v3, "  "

    #@54
    if-eqz p5, :cond_8

    #@56
    const-string/jumbo v4, "pkg"

    #@59
    .line 4625
    :goto_3
    if-eqz p2, :cond_9

    #@5b
    const/4 v10, 0x1

    #@5c
    :goto_4
    move-object v1, p0

    #@5d
    move-object/from16 v2, p1

    #@5f
    move-object/from16 v5, p3

    #@61
    .line 4624
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    #@64
    goto :goto_0

    #@65
    .line 4606
    :cond_5
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@67
    move-object/from16 v0, p2

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_0

    #@6f
    goto :goto_1

    #@70
    .line 4619
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_7

    #@76
    .line 4620
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@79
    .line 4621
    :cond_7
    const-string/jumbo v1, "Packages:"

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@81
    .line 4622
    const/4 v13, 0x1

    #@82
    goto :goto_2

    #@83
    .line 4624
    :cond_8
    const/4 v4, 0x0

    #@84
    goto :goto_3

    #@85
    .line 4625
    :cond_9
    const/4 v10, 0x0

    #@86
    goto :goto_4

    #@87
    .line 4628
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    const/4 v13, 0x0

    #@88
    .line 4629
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@8a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@8d
    move-result v1

    #@8e
    if-lez v1, :cond_12

    #@90
    if-nez p3, :cond_12

    #@92
    .line 4630
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@94
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@97
    move-result-object v1

    #@98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9b
    move-result-object v12

    #@9c
    .local v12, "e$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@9f
    move-result v1

    #@a0
    if-eqz v1, :cond_12

    #@a2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a5
    move-result-object v11

    #@a6
    check-cast v11, Ljava/util/Map$Entry;

    #@a8
    .line 4631
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_c

    #@aa
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ad
    move-result-object v1

    #@ae
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v1

    #@b4
    if-eqz v1, :cond_f

    #@b6
    .line 4635
    :cond_c
    :goto_6
    if-nez p5, :cond_10

    #@b8
    .line 4636
    if-nez v13, :cond_e

    #@ba
    .line 4637
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@bd
    move-result v1

    #@be
    if-eqz v1, :cond_d

    #@c0
    .line 4638
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@c3
    .line 4639
    :cond_d
    const-string/jumbo v1, "Renamed packages:"

    #@c6
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 4640
    const/4 v13, 0x1

    #@cc
    .line 4642
    :cond_e
    const-string/jumbo v1, "  "

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d4
    .line 4646
    :goto_7
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d7
    move-result-object v1

    #@d8
    check-cast v1, Ljava/lang/String;

    #@da
    move-object/from16 v0, p1

    #@dc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    .line 4647
    if-eqz p5, :cond_11

    #@e1
    const-string/jumbo v1, " -> "

    #@e4
    :goto_8
    move-object/from16 v0, p1

    #@e6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    .line 4648
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@ec
    move-result-object v1

    #@ed
    check-cast v1, Ljava/lang/String;

    #@ef
    move-object/from16 v0, p1

    #@f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    goto :goto_5

    #@f5
    .line 4632
    :cond_f
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@f8
    move-result-object v1

    #@f9
    move-object/from16 v0, p2

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fe
    move-result v1

    #@ff
    if-eqz v1, :cond_b

    #@101
    goto :goto_6

    #@102
    .line 4644
    :cond_10
    const-string/jumbo v1, "ren,"

    #@105
    move-object/from16 v0, p1

    #@107
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10a
    goto :goto_7

    #@10b
    .line 4647
    :cond_11
    const-string/jumbo v1, ","

    #@10e
    goto :goto_8

    #@10f
    .line 4652
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "e$iterator":Ljava/util/Iterator;
    :cond_12
    const/4 v13, 0x0

    #@110
    .line 4653
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@112
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@115
    move-result v1

    #@116
    if-lez v1, :cond_1b

    #@118
    if-nez p3, :cond_1b

    #@11a
    .line 4654
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@11c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@11f
    move-result-object v1

    #@120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@123
    move-result-object v14

    #@124
    :cond_13
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@127
    move-result v1

    #@128
    if-eqz v1, :cond_1b

    #@12a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12d
    move-result-object v6

    #@12e
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@130
    .line 4655
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_14

    #@132
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@134
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@139
    move-result v1

    #@13a
    if-eqz v1, :cond_16

    #@13c
    .line 4659
    :cond_14
    :goto_a
    if-nez p5, :cond_15

    #@13e
    if-eqz v13, :cond_17

    #@140
    .line 4665
    :cond_15
    :goto_b
    const-string/jumbo v3, "  "

    #@143
    if-eqz p5, :cond_19

    #@145
    const-string/jumbo v4, "dis"

    #@148
    .line 4666
    :goto_c
    if-eqz p2, :cond_1a

    #@14a
    const/4 v10, 0x1

    #@14b
    :goto_d
    move-object v1, p0

    #@14c
    move-object/from16 v2, p1

    #@14e
    move-object/from16 v5, p3

    #@150
    .line 4665
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    #@153
    goto :goto_9

    #@154
    .line 4656
    :cond_16
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@156
    move-object/from16 v0, p2

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v1

    #@15c
    if-eqz v1, :cond_13

    #@15e
    goto :goto_a

    #@15f
    .line 4660
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@162
    move-result v1

    #@163
    if-eqz v1, :cond_18

    #@165
    .line 4661
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@168
    .line 4662
    :cond_18
    const-string/jumbo v1, "Hidden system packages:"

    #@16b
    move-object/from16 v0, p1

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@170
    .line 4663
    const/4 v13, 0x1

    #@171
    goto :goto_b

    #@172
    .line 4665
    :cond_19
    const/4 v4, 0x0

    #@173
    goto :goto_c

    #@174
    .line 4666
    :cond_1a
    const/4 v10, 0x0

    #@175
    goto :goto_d

    #@176
    .line 4599
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1b
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
    .line 4673
    const/4 v2, 0x0

    #@2
    .line 4674
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
    .line 4675
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
    .line 4678
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
    .line 4681
    :cond_2
    if-nez v2, :cond_4

    #@2e
    .line 4682
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_3

    #@34
    .line 4683
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@37
    .line 4684
    :cond_3
    const-string/jumbo v3, "Permissions:"

    #@3a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 4685
    const/4 v2, 0x1

    #@3e
    .line 4687
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
    .line 4688
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
    .line 4689
    const-string/jumbo v3, "):"

    #@5d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60
    .line 4690
    const-string/jumbo v3, "    sourcePackage="

    #@63
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@68
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 4691
    const-string/jumbo v3, "    uid="

    #@6e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    iget v3, v0, Lcom/android/server/pm/BasePermission;->uid:I

    #@73
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@76
    .line 4692
    const-string/jumbo v3, " gids="

    #@79
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    .line 4693
    invoke-virtual {v0, v5}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@7f
    move-result-object v3

    #@80
    .line 4692
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    .line 4694
    const-string/jumbo v3, " type="

    #@8a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    iget v3, v0, Lcom/android/server/pm/BasePermission;->type:I

    #@8f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@92
    .line 4695
    const-string/jumbo v3, " prot="

    #@95
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 4696
    iget v3, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@9a
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a1
    .line 4697
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@a3
    if-eqz v3, :cond_6

    #@a5
    .line 4698
    const-string/jumbo v3, "    perm="

    #@a8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@ad
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@b0
    .line 4699
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
    .line 4700
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
    .line 4701
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
    .line 4704
    :cond_6
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    #@da
    if-eqz v3, :cond_7

    #@dc
    .line 4705
    const-string/jumbo v3, "    packageSetting="

    #@df
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    #@e4
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e7
    .line 4707
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
    .line 4708
    const-string/jumbo v3, "    enforced="

    #@f5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f8
    .line 4709
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@fa
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 4672
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
    .line 4762
    const-string/jumbo v0, "Settings parse messages:"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 4763
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    .line 4761
    return-void
.end method

.method dumpRestoredPermissionGrantsLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    #@0
    .prologue
    .line 4767
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v8

    #@6
    if-lez v8, :cond_7

    #@8
    .line 4768
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@b
    .line 4769
    const-string/jumbo v8, "Restored (pending) permission grants:"

    #@e
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 4770
    const/4 v7, 0x0

    #@12
    .local v7, "userIndex":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@17
    move-result v8

    #@18
    if-ge v7, v8, :cond_6

    #@1a
    .line 4772
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/util/ArrayMap;

    #@22
    .line 4773
    .local v3, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v3, :cond_5

    #@24
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@27
    move-result v8

    #@28
    if-lez v8, :cond_5

    #@2a
    .line 4774
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    #@2f
    move-result v6

    #@30
    .line 4775
    .local v6, "userId":I
    const-string/jumbo v8, "  User "

    #@33
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    #@39
    .line 4777
    const/4 v4, 0x0

    #@3a
    .local v4, "pkgIndex":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@3d
    move-result v8

    #@3e
    if-ge v4, v8, :cond_5

    #@40
    .line 4778
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Landroid/util/ArraySet;

    #@46
    .line 4779
    .local v2, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v2, :cond_4

    #@48
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@4b
    move-result v8

    #@4c
    if-lez v8, :cond_4

    #@4e
    .line 4780
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Ljava/lang/String;

    #@54
    .line 4781
    .local v5, "pkgName":Ljava/lang/String;
    const-string/jumbo v8, "    "

    #@57
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    const-string/jumbo v8, " :"

    #@60
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 4783
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v1

    #@67
    .local v1, "g$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v8

    #@6b
    if-eqz v8, :cond_4

    #@6d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    #@73
    .line 4784
    .local v0, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    const-string/jumbo v8, "      "

    #@76
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    .line 4785
    iget-object v8, v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    #@7b
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    .line 4786
    iget-boolean v8, v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    #@80
    if-eqz v8, :cond_0

    #@82
    .line 4787
    const-string/jumbo v8, " GRANTED"

    #@85
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    .line 4789
    :cond_0
    iget v8, v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@8a
    and-int/lit8 v8, v8, 0x1

    #@8c
    if-eqz v8, :cond_1

    #@8e
    .line 4790
    const-string/jumbo v8, " user_set"

    #@91
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 4792
    :cond_1
    iget v8, v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@96
    and-int/lit8 v8, v8, 0x2

    #@98
    if-eqz v8, :cond_2

    #@9a
    .line 4793
    const-string/jumbo v8, " user_fixed"

    #@9d
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 4795
    :cond_2
    iget v8, v0, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    #@a2
    and-int/lit8 v8, v8, 0x8

    #@a4
    if-eqz v8, :cond_3

    #@a6
    .line 4796
    const-string/jumbo v8, " revoke_on_upgrade"

    #@a9
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    .line 4798
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@af
    goto :goto_2

    #@b0
    .line 4777
    .end local v0    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    .end local v1    # "g$iterator":Ljava/util/Iterator;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@b2
    goto :goto_1

    #@b3
    .line 4770
    .end local v2    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    .end local v4    # "pkgIndex":I
    .end local v6    # "userId":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@b5
    goto/16 :goto_0

    #@b7
    .line 4804
    .end local v3    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@ba
    .line 4766
    .end local v7    # "userIndex":I
    :cond_7
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
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
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4841
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    if-eqz p5, :cond_3

    #@8
    .line 4842
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string/jumbo v2, "runtime permissions:"

    #@e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 4843
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_3

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@21
    .line 4844
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_2

    #@23
    .line 4845
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 4848
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    const-string/jumbo v2, "  "

    #@33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 4849
    const-string/jumbo v2, ": granted="

    #@40
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    #@46
    move-result v2

    #@47
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4a
    .line 4850
    const-string/jumbo v2, ", flags="

    #@4d
    .line 4851
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@50
    move-result v3

    #@51
    .line 4850
    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    goto :goto_0

    #@59
    .line 4840
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v1    # "permissionState$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .locals 19
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
    .line 4716
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    #@1
    .line 4717
    .local v12, "printedSomething":Z
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v14

    #@d
    .local v14, "su$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_8

    #@13
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v13

    #@17
    check-cast v13, Lcom/android/server/pm/SharedUserSetting;

    #@19
    .line 4718
    .local v13, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1

    #@1b
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    #@1e
    move-result-object v3

    #@1f
    if-ne v13, v3, :cond_0

    #@21
    .line 4721
    :cond_1
    if-eqz p3, :cond_2

    #@23
    .line 4722
    invoke-virtual {v13}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@26
    move-result-object v3

    #@27
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 4725
    :cond_2
    if-nez p5, :cond_7

    #@31
    .line 4726
    if-nez v12, :cond_4

    #@33
    .line 4727
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 4728
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@3c
    .line 4729
    :cond_3
    const-string/jumbo v3, "Shared users:"

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 4730
    const/4 v12, 0x1

    #@45
    .line 4732
    :cond_4
    const-string/jumbo v3, "  SharedUser ["

    #@48
    move-object/from16 v0, p1

    #@4a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 4733
    iget-object v3, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@4f
    move-object/from16 v0, p1

    #@51
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    .line 4734
    const-string/jumbo v3, "] ("

    #@57
    move-object/from16 v0, p1

    #@59
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 4735
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@5f
    move-result v3

    #@60
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    move-object/from16 v0, p1

    #@66
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 4736
    const-string/jumbo v3, "):"

    #@6c
    move-object/from16 v0, p1

    #@6e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 4738
    const-string/jumbo v11, "    "

    #@74
    .line 4739
    .local v11, "prefix":Ljava/lang/String;
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    const-string/jumbo v3, "userId="

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget v3, v13, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    #@88
    .line 4741
    invoke-virtual {v13}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@8b
    move-result-object v10

    #@8c
    .line 4742
    .local v10, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, p0

    #@8e
    move-object/from16 v1, p1

    #@90
    move-object/from16 v2, p3

    #@92
    invoke-virtual {v0, v1, v11, v2, v10}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    #@95
    .line 4744
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@9c
    move-result-object v17

    #@9d
    const/4 v3, 0x0

    #@9e
    move-object/from16 v0, v17

    #@a0
    array-length v0, v0

    #@a1
    move/from16 v18, v0

    #@a3
    move/from16 v16, v3

    #@a5
    :goto_1
    move/from16 v0, v16

    #@a7
    move/from16 v1, v18

    #@a9
    if-ge v0, v1, :cond_0

    #@ab
    aget v15, v17, v16

    #@ad
    .line 4745
    .local v15, "userId":I
    invoke-virtual {v10, v15}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@b0
    move-result-object v9

    #@b1
    .line 4746
    .local v9, "gids":[I
    invoke-virtual {v10, v15}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    #@b4
    move-result-object v7

    #@b5
    .line 4748
    .local v7, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@b8
    move-result v3

    #@b9
    if-eqz v3, :cond_5

    #@bb
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@be
    move-result v3

    #@bf
    if-eqz v3, :cond_5

    #@c1
    .line 4744
    :goto_2
    add-int/lit8 v3, v16, 0x1

    #@c3
    move/from16 v16, v3

    #@c5
    goto :goto_1

    #@c6
    .line 4749
    :cond_5
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    const-string/jumbo v3, "User "

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    move-object/from16 v0, p1

    #@d5
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    #@d8
    const-string/jumbo v3, ": "

    #@db
    move-object/from16 v0, p1

    #@dd
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e0
    .line 4750
    new-instance v3, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v3

    #@e9
    const-string/jumbo v4, "  "

    #@ec
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v3

    #@f0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v3

    #@f4
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, p1

    #@f8
    invoke-virtual {v0, v1, v3, v9}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    #@fb
    .line 4751
    new-instance v3, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v3

    #@104
    const-string/jumbo v4, "  "

    #@107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v5

    #@10f
    .line 4752
    if-eqz p2, :cond_6

    #@111
    const/4 v8, 0x1

    #@112
    :goto_3
    move-object/from16 v3, p0

    #@114
    move-object/from16 v4, p1

    #@116
    move-object/from16 v6, p3

    #@118
    .line 4751
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    #@11b
    goto :goto_2

    #@11c
    .line 4752
    :cond_6
    const/4 v8, 0x0

    #@11d
    goto :goto_3

    #@11e
    .line 4756
    .end local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v9    # "gids":[I
    .end local v10    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v15    # "userId":I
    :cond_7
    const-string/jumbo v3, "suid,"

    #@121
    move-object/from16 v0, p1

    #@123
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@126
    iget v3, v13, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@128
    move-object/from16 v0, p1

    #@12a
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@12d
    const-string/jumbo v3, ","

    #@130
    move-object/from16 v0, p1

    #@132
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@135
    iget-object v3, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@137
    move-object/from16 v0, p1

    #@139
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13c
    goto/16 :goto_0

    #@13e
    .line 4715
    .end local v13    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_8
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 4265
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3
    .line 4266
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
    .line 4267
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/lang/String;

    #@14
    .line 4268
    .local v2, "volumeUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/pm/Settings$VersionInfo;

    #@1c
    .line 4269
    .local v1, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@1e
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 4270
    const-string/jumbo v3, "Internal:"

    #@27
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 4276
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2d
    .line 4277
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
    .line 4278
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
    .line 4279
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@48
    .line 4280
    const-string/jumbo v3, "fingerprint"

    #@4b
    iget-object v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@50
    .line 4281
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@53
    .line 4282
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@56
    .line 4266
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_0

    #@59
    .line 4271
    :cond_0
    const-string/jumbo v3, "primary_physical"

    #@5c
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_1

    #@62
    .line 4272
    const-string/jumbo v3, "External:"

    #@65
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@68
    goto :goto_1

    #@69
    .line 4274
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
    .line 4284
    .end local v1    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@8b
    .line 4264
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1212
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@8
    .line 1213
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    #@a
    .line 1214
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@c
    .end local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    #@f
    .line 1215
    .restart local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1217
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1203
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@8
    .line 1204
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    #@a
    .line 1205
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@c
    .end local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    #@f
    .line 1206
    .restart local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1208
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1194
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    #@8
    .line 1195
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    #@a
    .line 1196
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    #@c
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    #@f
    .line 1197
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1199
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v16

    #@a
    check-cast v16, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 566
    .local v16, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v16, :cond_0

    #@e
    .line 567
    const-string/jumbo v1, "PackageManager"

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Package "

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
    .line 568
    const/4 v1, 0x0

    #@32
    return-object v1

    #@33
    .line 571
    :cond_0
    move-object/from16 v0, v16

    #@35
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@37
    if-eqz v1, :cond_1

    #@39
    move-object/from16 v0, v16

    #@3b
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3d
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 572
    move-object/from16 v0, v16

    #@43
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@45
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@47
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@49
    and-int/lit16 v2, v2, -0x81

    #@4b
    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@4d
    .line 574
    :cond_1
    move-object/from16 v0, v16

    #@4f
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@51
    move-object/from16 v0, v16

    #@53
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@55
    move-object/from16 v0, v16

    #@57
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    #@59
    .line 575
    move-object/from16 v0, v16

    #@5b
    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@5d
    move-object/from16 v0, v16

    #@5f
    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@61
    .line 576
    move-object/from16 v0, v16

    #@63
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@65
    move-object/from16 v0, v16

    #@67
    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@69
    .line 577
    move-object/from16 v0, v16

    #@6b
    iget v10, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@6d
    move-object/from16 v0, v16

    #@6f
    iget v11, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@71
    move-object/from16 v0, v16

    #@73
    iget v12, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@75
    move-object/from16 v0, v16

    #@77
    iget v13, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    #@79
    .line 578
    move-object/from16 v0, v16

    #@7b
    iget-object v14, v0, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    #@7d
    move-object/from16 v0, v16

    #@7f
    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@81
    move-object/from16 v1, p0

    #@83
    move-object/from16 v2, p1

    #@85
    .line 574
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/util/List;)Lcom/android/server/pm/PackageSetting;

    #@88
    move-result-object v17

    #@89
    .line 579
    .local v17, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    #@8b
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@8d
    move-object/from16 v0, p1

    #@8f
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 580
    return-object v17
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1410
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    #@8
    .line 1411
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    #@a
    .line 1412
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    #@c
    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    #@f
    .line 1413
    .restart local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    #@12
    .line 1414
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1416
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
    .line 534
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
    .line 4192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 4194
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
    .line 4198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 4194
    return-object v3

    #@11
    .line 4195
    :catch_0
    move-exception v2

    #@12
    .line 4198
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 4200
    const/4 v3, 0x0

    #@16
    return-object v3

    #@17
    .line 4197
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    #@18
    .line 4198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 4197
    throw v3
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 4140
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 4141
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 4142
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
    .line 4144
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
    .line 4148
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 4149
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@c
    .line 4150
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    #@e
    .line 4151
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
    .line 4153
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 4154
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
    .line 1349
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

.method getDefaultDialerPackageNameLPw(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1362
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
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

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
    .line 4107
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 4108
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    #@0
    .prologue
    .line 1424
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
    .line 4124
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 4125
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 4126
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
    .line 4128
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
    .line 1227
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@9
    .line 1228
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@b
    .line 1232
    return-object v2

    #@c
    .line 1234
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
    .line 1267
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1268
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 1272
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1274
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
    .line 1304
    if-nez p1, :cond_0

    #@2
    .line 1305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v4

    #@6
    return-object v4

    #@7
    .line 1307
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 1308
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
    .line 1309
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@25
    move-result-object v0

    #@26
    .line 1310
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
    .line 1311
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
    .line 1314
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 1316
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return-object v3
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    #@0
    .prologue
    .line 1420
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
    .line 2745
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
    .line 2746
    .local v1, "kList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 2747
    .local v0, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 2748
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 2749
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 2750
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@28
    .line 2751
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 2752
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 2755
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .locals 24
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
    .line 432
    move-object/from16 v0, p1

    #@2
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@4
    .line 433
    .local v3, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    #@6
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 434
    move-object/from16 v0, p1

    #@c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    #@e
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@10
    move-object/from16 v18, v0

    #@12
    .line 436
    :goto_0
    const/16 v19, 0x0

    #@14
    .line 437
    .local v19, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@16
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 438
    move-object/from16 v0, p1

    #@1c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v20

    #@22
    .line 439
    .local v20, "childCount":I
    new-instance v19, Ljava/util/ArrayList;

    #@24
    .end local v19    # "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    #@27
    .line 440
    .local v19, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x0

    #@29
    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    #@2b
    move/from16 v1, v20

    #@2d
    if-ge v0, v1, :cond_1

    #@2f
    .line 441
    move-object/from16 v0, p1

    #@31
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@33
    move/from16 v0, v22

    #@35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    check-cast v2, Landroid/content/pm/PackageParser$Package;

    #@3b
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@3d
    move-object/from16 v21, v0

    #@3f
    .line 442
    .local v21, "childPackageName":Ljava/lang/String;
    move-object/from16 v0, v19

    #@41
    move-object/from16 v1, v21

    #@43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    .line 440
    add-int/lit8 v22, v22, 0x1

    #@48
    goto :goto_1

    #@49
    .line 434
    .end local v19    # "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "childCount":I
    .end local v21    # "childPackageName":Ljava/lang/String;
    .end local v22    # "i":I
    :cond_0
    const/16 v18, 0x0

    #@4b
    .local v18, "parentPackageName":Ljava/lang/String;
    goto :goto_0

    #@4c
    .line 448
    .end local v18    # "parentPackageName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    #@4e
    iget v12, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@50
    const/16 v17, 0x1

    #@52
    move-object/from16 v2, p0

    #@54
    move-object/from16 v4, p2

    #@56
    move-object/from16 v5, p3

    #@58
    move-object/from16 v6, p4

    #@5a
    move-object/from16 v7, p5

    #@5c
    move-object/from16 v8, p6

    #@5e
    move-object/from16 v9, p7

    #@60
    move-object/from16 v10, p8

    #@62
    move-object/from16 v11, p9

    #@64
    move/from16 v13, p10

    #@66
    move/from16 v14, p11

    #@68
    move-object/from16 v15, p12

    #@6a
    move/from16 v16, p13

    #@6c
    .line 446
    invoke-direct/range {v2 .. v19}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;ZZLjava/lang/String;Ljava/util/List;)Lcom/android/server/pm/PackageSetting;

    #@6f
    move-result-object v23

    #@70
    .line 450
    .local v23, "p":Lcom/android/server/pm/PackageSetting;
    return-object v23
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
    .line 515
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    #@9
    .line 516
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    #@b
    .line 517
    if-nez p4, :cond_0

    #@d
    .line 518
    return-object v2

    #@e
    .line 520
    :cond_0
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    #@10
    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    #@13
    .line 521
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@19
    .line 522
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
    .line 525
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@42
    if-ltz v1, :cond_1

    #@44
    .line 526
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@46
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 530
    :cond_1
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1163
    const/16 v2, 0x2710

    #@2
    if-lt p1, v2, :cond_1

    #@4
    .line 1164
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 1165
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    #@c
    .line 1166
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
    .line 1168
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
    .line 4075
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4076
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    #@a
    .line 4078
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    #@d
    .line 4081
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
    .line 4208
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4209
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v3

    #@c
    if-ge v0, v3, :cond_1

    #@e
    .line 4210
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@16
    .line 4211
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@18
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 4212
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 4209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 4215
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v1
.end method

.method public hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "parentPackageName"    # Ljava/lang/String;
    .param p2, "childPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4086
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v5

    #@6
    .line 4087
    .local v5, "packageCount":I
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    #@9
    .line 4088
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@11
    .line 4089
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@13
    if-eqz v6, :cond_0

    #@15
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@17
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 4087
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 4092
    :cond_1
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@22
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-nez v6, :cond_0

    #@28
    .line 4095
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@2a
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@2d
    move-result v0

    #@2e
    .line 4096
    .local v0, "childCount":I
    const/4 v4, 0x0

    #@2f
    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_0

    #@31
    .line 4097
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@33
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/String;

    #@39
    .line 4098
    .local v1, "currChildPackageName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 4099
    const/4 v6, 0x1

    #@40
    return v6

    #@41
    .line 4096
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_1

    #@44
    .line 4103
    .end local v0    # "childCount":I
    .end local v1    # "currChildPackageName":Ljava/lang/String;
    .end local v2    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "j":I
    :cond_3
    const/4 v6, 0x0

    #@45
    return v6
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 891
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2
    .line 894
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@6
    .line 895
    .local v3, "volumeUuid":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 896
    .local v0, "codePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getResourcePath()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 897
    .local v2, "resourcePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    #@16
    .line 899
    .local v1, "legacyNativeLibraryPath":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@18
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 900
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
    .line 901
    const-string/jumbo v6, " changing from "

    #@38
    .line 900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 901
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@3e
    .line 900
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 901
    const-string/jumbo v6, " to "

    #@45
    .line 900
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
    .line 902
    iput-object v3, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@56
    .line 905
    :cond_0
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@58
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_1

    #@5e
    .line 906
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
    .line 907
    const-string/jumbo v6, " changing from "

    #@78
    .line 906
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 907
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@7e
    .line 906
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    .line 907
    const-string/jumbo v6, " to "

    #@85
    .line 906
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
    .line 908
    new-instance v4, Ljava/io/File;

    #@96
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@99
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    #@9b
    .line 909
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@9d
    .line 912
    :cond_1
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@9f
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_2

    #@a5
    .line 913
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
    .line 914
    const-string/jumbo v6, " changing from "

    #@bf
    .line 913
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    .line 914
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@c5
    .line 913
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    .line 914
    const-string/jumbo v6, " to "

    #@cc
    .line 913
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
    .line 915
    new-instance v4, Ljava/io/File;

    #@dd
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e0
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    #@e2
    .line 916
    iput-object v2, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@e4
    .line 919
    :cond_2
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@e6
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e9
    move-result v4

    #@ea
    if-nez v4, :cond_3

    #@ec
    .line 920
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@ee
    .line 924
    :cond_3
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f0
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@f2
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@f4
    .line 925
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f6
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@f8
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@fa
    .line 926
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    #@fc
    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@fe
    .line 928
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@100
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@102
    if-eq v4, v5, :cond_4

    #@104
    .line 929
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    #@106
    iput v4, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    #@108
    .line 932
    :cond_4
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@10a
    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    #@10c
    if-nez v4, :cond_5

    #@10e
    .line 933
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@110
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@112
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    #@115
    .line 936
    :cond_5
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@117
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@119
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@11b
    if-eq v4, v5, :cond_6

    #@11d
    .line 937
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@11f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@121
    iput v4, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@123
    .line 941
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
    .line 942
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@131
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@133
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@135
    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    #@138
    .line 944
    :cond_7
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@13a
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@13c
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    #@13f
    .line 890
    return-void
.end method

.method isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 886
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
    .line 584
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 4116
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    #@4
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@a
    .line 4117
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@c
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 4119
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@11
    move-result-object v1

    #@12
    .line 4120
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    #@15
    move-result v2

    #@16
    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4132
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 4133
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 4134
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
    .line 4136
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    #@26
    return v1
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    #@5
    .line 1404
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1427
    return-void
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 454
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

.method public processRestoredPermissionGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "restoredFlagSet"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

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
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    #@a
    .line 1896
    return-void
.end method

.method pruneSharedUsersLPw()V
    .locals 9

    #@0
    .prologue
    .line 637
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 638
    .local v5, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v7

    #@b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_4

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 639
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    #@21
    .line 640
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v6, :cond_1

    #@23
    .line 641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    check-cast v7, Ljava/lang/String;

    #@29
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 645
    :cond_1
    iget-object v7, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@2f
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v3

    #@33
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_3

    #@39
    .line 646
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@3f
    .line 647
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@41
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@43
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    if-nez v7, :cond_2

    #@49
    .line 648
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    #@4c
    goto :goto_1

    #@4d
    .line 651
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    iget-object v7, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@4f
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@52
    move-result v7

    #@53
    if-nez v7, :cond_0

    #@55
    .line 652
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@58
    move-result-object v7

    #@59
    check-cast v7, Ljava/lang/String;

    #@5b
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 655
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    const/4 v2, 0x0

    #@60
    .local v2, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@63
    move-result v7

    #@64
    if-ge v2, v7, :cond_5

    #@66
    .line 656
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@68
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 655
    add-int/lit8 v2, v2, 0x1

    #@71
    goto :goto_2

    #@72
    .line 636
    :cond_5
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
    .line 1855
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 1857
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v1

    #@a
    .line 1859
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
    .line 1860
    if-ne v5, v8, :cond_1

    #@13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v6

    #@17
    if-le v6, v1, :cond_4

    #@19
    .line 1861
    :cond_1
    if-eq v5, v8, :cond_0

    #@1b
    const/4 v6, 0x4

    #@1c
    if-eq v5, v6, :cond_0

    #@1e
    .line 1865
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 1866
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "domain-verification"

    #@25
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_3

    #@2b
    .line 1867
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    #@2d
    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@30
    .line 1868
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 1869
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@3c
    .line 1870
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    #@3e
    .line 1872
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@41
    goto :goto_0

    #@42
    .line 1878
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v6, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    goto :goto_0

    #@48
    .line 1886
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
    .line 1887
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    .line 1886
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .line 1885
    const/4 v7, 0x5

    #@61
    invoke-static {v7, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@64
    .line 1888
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@67
    goto :goto_0

    #@68
    .line 1854
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
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
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x3

    #@2
    .line 1543
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v1

    #@6
    .line 1545
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v4

    #@a
    .local v4, "type":I
    const/4 v5, 0x1

    #@b
    if-eq v4, v5, :cond_4

    #@d
    .line 1546
    if-ne v4, v7, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v5

    #@13
    if-le v5, v1, :cond_4

    #@15
    .line 1547
    :cond_1
    if-eq v4, v7, :cond_0

    #@17
    const/4 v5, 0x4

    #@18
    if-eq v4, v5, :cond_0

    #@1a
    .line 1550
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 1551
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "default-browser"

    #@21
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 1552
    const-string/jumbo v5, "packageName"

    #@2a
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 1553
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@33
    goto :goto_0

    #@34
    .line 1554
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "default-dialer"

    #@37
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3

    #@3d
    .line 1555
    const-string/jumbo v5, "packageName"

    #@40
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 1556
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    #@46
    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@49
    goto :goto_0

    #@4a
    .line 1558
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Unknown element under default-apps: "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 1559
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    .line 1558
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    .line 1560
    .local v0, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    #@63
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@66
    .line 1561
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@69
    goto :goto_0

    #@6a
    .line 1542
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
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
    .line 2063
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v6

    #@4
    .line 2065
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
    .line 2066
    const/4 v9, 0x3

    #@c
    if-ne v8, v9, :cond_1

    #@e
    .line 2067
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v9

    #@12
    if-le v9, v6, :cond_9

    #@14
    .line 2068
    :cond_1
    const/4 v9, 0x3

    #@15
    if-eq v8, v9, :cond_0

    #@17
    .line 2069
    const/4 v9, 0x4

    #@18
    if-eq v8, v9, :cond_0

    #@1a
    .line 2072
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 2073
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    #@21
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_8

    #@27
    .line 2074
    const-string/jumbo v9, "name"

    #@2a
    const/4 v10, 0x0

    #@2b
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 2076
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@37
    .line 2077
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    #@39
    .line 2078
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
    .line 2079
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@56
    goto :goto_0

    #@57
    .line 2083
    :cond_2
    const-string/jumbo v9, "granted"

    #@5a
    const/4 v10, 0x0

    #@5b
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    .line 2084
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@61
    .line 2085
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@64
    move-result v3

    #@65
    .line 2087
    :goto_1
    const-string/jumbo v9, "flags"

    #@68
    const/4 v10, 0x0

    #@69
    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    .line 2088
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@6f
    .line 2089
    const/16 v9, 0x10

    #@71
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@74
    move-result v1

    #@75
    .line 2091
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_6

    #@77
    .line 2092
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I

    #@7a
    move-result v9

    #@7b
    .line 2093
    const/4 v10, -0x1

    #@7c
    .line 2092
    if-ne v9, v10, :cond_5

    #@7e
    .line 2094
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
    .line 2095
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9b
    goto/16 :goto_0

    #@9d
    .line 2084
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    #@9e
    .local v3, "granted":Z
    goto :goto_1

    #@9f
    .line 2089
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@a0
    .restart local v1    # "flags":I
    goto :goto_2

    #@a1
    .line 2097
    :cond_5
    const/4 v9, -0x1

    #@a2
    .line 2098
    const/16 v10, 0xff

    #@a4
    .line 2097
    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@a7
    goto/16 :goto_0

    #@a9
    .line 2101
    :cond_6
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    #@ac
    move-result v9

    #@ad
    .line 2102
    const/4 v10, -0x1

    #@ae
    .line 2101
    if-ne v9, v10, :cond_7

    #@b0
    .line 2103
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
    .line 2104
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 2106
    :cond_7
    const/4 v9, -0x1

    #@d0
    .line 2107
    const/16 v10, 0xff

    #@d2
    .line 2106
    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@d5
    goto/16 :goto_0

    #@d7
    .line 2111
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
    .line 2112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e9
    move-result-object v11

    #@ea
    .line 2111
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
    .line 2113
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 2062
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2765
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v45, 0x0

    #@2
    .line 2766
    .local v45, "str":Ljava/io/FileInputStream;
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
    .line 2768
    :try_start_0
    new-instance v46, Ljava/io/FileInputStream;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@12
    move-object/from16 v0, v46

    #@14
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    .line 2769
    .end local v45    # "str":Ljava/io/FileInputStream;
    .local v46, "str":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@1b
    const-string/jumbo v4, "Reading from backup settings file\n"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 2771
    const-string/jumbo v3, "Need to read from backup settings file"

    #@24
    .line 2770
    const/4 v4, 0x4

    #@25
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@28
    .line 2772
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
    .line 2776
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
    .line 2777
    move-object/from16 v0, p0

    #@43
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@45
    .line 2776
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
    .line 2778
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@54
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@57
    :cond_0
    move-object/from16 v45, v46

    #@59
    .line 2785
    .end local v46    # "str":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@60
    .line 2786
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@67
    .line 2787
    move-object/from16 v0, p0

    #@69
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@6b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@6e
    .line 2788
    move-object/from16 v0, p0

    #@70
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    #@72
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    #@75
    .line 2791
    if-nez v45, :cond_3

    #@77
    .line 2792
    :try_start_2
    move-object/from16 v0, p0

    #@79
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@7b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@7e
    move-result v3

    #@7f
    if-nez v3, :cond_2

    #@81
    .line 2793
    move-object/from16 v0, p0

    #@83
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@85
    const-string/jumbo v4, "No settings file found\n"

    #@88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 2795
    const-string/jumbo v3, "No settings file; creating initial state"

    #@8e
    .line 2794
    const/4 v4, 0x4

    #@8f
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@92
    .line 2798
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@94
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@99
    .line 2799
    const-string/jumbo v3, "primary_physical"

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@a1
    .line 2800
    const/4 v3, 0x0

    #@a2
    return v3

    #@a3
    .line 2802
    :cond_2
    new-instance v46, Ljava/io/FileInputStream;

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@a9
    move-object/from16 v0, v46

    #@ab
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@ae
    .restart local v46    # "str":Ljava/io/FileInputStream;
    move-object/from16 v45, v46

    #@b0
    .line 2804
    .end local v46    # "str":Ljava/io/FileInputStream;
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b3
    move-result-object v43

    #@b4
    .line 2805
    .local v43, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@b6
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    move-object/from16 v0, v43

    #@bc
    move-object/from16 v1, v45

    #@be
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@c1
    .line 2808
    :cond_4
    invoke-interface/range {v43 .. v43}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c4
    move-result v48

    #@c5
    .local v48, "type":I
    const/4 v3, 0x2

    #@c6
    move/from16 v0, v48

    #@c8
    if-eq v0, v3, :cond_5

    #@ca
    .line 2809
    const/4 v3, 0x1

    #@cb
    move/from16 v0, v48

    #@cd
    if-ne v0, v3, :cond_4

    #@cf
    .line 2813
    :cond_5
    const/4 v3, 0x2

    #@d0
    move/from16 v0, v48

    #@d2
    if-eq v0, v3, :cond_6

    #@d4
    .line 2814
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@d8
    const-string/jumbo v4, "No start tag found in settings file\n"

    #@db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 2816
    const-string/jumbo v3, "No start tag found in package manager settings"

    #@e1
    .line 2815
    const/4 v4, 0x5

    #@e2
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@e5
    .line 2817
    const-string/jumbo v3, "PackageManager"

    #@e8
    .line 2818
    const-string/jumbo v4, "No start tag found in package manager settings"

    #@eb
    .line 2817
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@ee
    .line 2819
    const/4 v3, 0x0

    #@ef
    return v3

    #@f0
    .line 2822
    :cond_6
    invoke-interface/range {v43 .. v43}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f3
    move-result v41

    #@f4
    .line 2823
    .local v41, "outerDepth":I
    :cond_7
    :goto_1
    invoke-interface/range {v43 .. v43}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f7
    move-result v48

    #@f8
    const/4 v3, 0x1

    #@f9
    move/from16 v0, v48

    #@fb
    if-eq v0, v3, :cond_1d

    #@fd
    .line 2824
    const/4 v3, 0x3

    #@fe
    move/from16 v0, v48

    #@100
    if-ne v0, v3, :cond_8

    #@102
    invoke-interface/range {v43 .. v43}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@105
    move-result v3

    #@106
    move/from16 v0, v41

    #@108
    if-le v3, v0, :cond_1d

    #@10a
    .line 2825
    :cond_8
    const/4 v3, 0x3

    #@10b
    move/from16 v0, v48

    #@10d
    if-eq v0, v3, :cond_7

    #@10f
    const/4 v3, 0x4

    #@110
    move/from16 v0, v48

    #@112
    if-eq v0, v3, :cond_7

    #@114
    .line 2829
    invoke-interface/range {v43 .. v43}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@117
    move-result-object v47

    #@118
    .line 2830
    .local v47, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "package"

    #@11b
    move-object/from16 v0, v47

    #@11d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@120
    move-result v3

    #@121
    if-eqz v3, :cond_9

    #@123
    .line 2831
    move-object/from16 v0, p0

    #@125
    move-object/from16 v1, v43

    #@127
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@12a
    goto :goto_1

    #@12b
    .line 2933
    .end local v41    # "outerDepth":I
    .end local v43    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v47    # "tagName":Ljava/lang/String;
    .end local v48    # "type":I
    :catch_0
    move-exception v30

    #@12c
    .line 2934
    .local v30, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    #@12e
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@130
    const-string/jumbo v4, "Error reading: "

    #@133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v3

    #@137
    invoke-virtual/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    #@13a
    move-result-object v4

    #@13b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    .line 2935
    new-instance v3, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v4, "Error reading settings: "

    #@146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v3

    #@14a
    move-object/from16 v0, v30

    #@14c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v3

    #@150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v3

    #@154
    const/4 v4, 0x6

    #@155
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@158
    .line 2936
    const-string/jumbo v3, "PackageManager"

    #@15b
    const-string/jumbo v4, "Error reading package manager settings"

    #@15e
    move-object/from16 v0, v30

    #@160
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@163
    .line 2955
    .end local v30    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    move-object/from16 v0, p0

    #@165
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@167
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@16a
    move-result v21

    #@16b
    .line 2957
    .local v21, "N":I
    const/16 v33, 0x0

    #@16d
    .local v33, "i":I
    :goto_3
    move/from16 v0, v33

    #@16f
    move/from16 v1, v21

    #@171
    if-ge v0, v1, :cond_21

    #@173
    .line 2958
    move-object/from16 v0, p0

    #@175
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@177
    move/from16 v0, v33

    #@179
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17c
    move-result-object v44

    #@17d
    check-cast v44, Lcom/android/server/pm/PendingPackage;

    #@17f
    .line 2959
    .local v44, "pp":Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v44

    #@181
    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@183
    move-object/from16 v0, p0

    #@185
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    #@188
    move-result-object v35

    #@189
    .line 2960
    .local v35, "idObj":Ljava/lang/Object;
    if-eqz v35, :cond_1f

    #@18b
    move-object/from16 v0, v35

    #@18d
    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    #@18f
    if-eqz v3, :cond_1f

    #@191
    .line 2961
    move-object/from16 v0, v44

    #@193
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@195
    move-object/from16 v0, v44

    #@197
    iget-object v6, v0, Lcom/android/server/pm/PendingPackage;->realName:Ljava/lang/String;

    #@199
    move-object/from16 v7, v35

    #@19b
    .line 2962
    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    #@19d
    move-object/from16 v0, v44

    #@19f
    iget-object v8, v0, Lcom/android/server/pm/PendingPackage;->codePath:Ljava/io/File;

    #@1a1
    move-object/from16 v0, v44

    #@1a3
    iget-object v9, v0, Lcom/android/server/pm/PendingPackage;->resourcePath:Ljava/io/File;

    #@1a5
    .line 2963
    move-object/from16 v0, v44

    #@1a7
    iget-object v10, v0, Lcom/android/server/pm/PendingPackage;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@1a9
    move-object/from16 v0, v44

    #@1ab
    iget-object v11, v0, Lcom/android/server/pm/PendingPackage;->primaryCpuAbiString:Ljava/lang/String;

    #@1ad
    .line 2964
    move-object/from16 v0, v44

    #@1af
    iget-object v12, v0, Lcom/android/server/pm/PendingPackage;->secondaryCpuAbiString:Ljava/lang/String;

    #@1b1
    move-object/from16 v0, v44

    #@1b3
    iget v13, v0, Lcom/android/server/pm/PendingPackage;->versionCode:I

    #@1b5
    move-object/from16 v0, v44

    #@1b7
    iget v14, v0, Lcom/android/server/pm/PendingPackage;->pkgFlags:I

    #@1b9
    move-object/from16 v0, v44

    #@1bb
    iget v15, v0, Lcom/android/server/pm/PendingPackage;->pkgPrivateFlags:I

    #@1bd
    .line 2965
    move-object/from16 v0, v44

    #@1bf
    iget-object v0, v0, Lcom/android/server/pm/PendingPackage;->parentPackageName:Ljava/lang/String;

    #@1c1
    move-object/from16 v19, v0

    #@1c3
    .line 2966
    move-object/from16 v0, v44

    #@1c5
    iget-object v0, v0, Lcom/android/server/pm/PendingPackage;->childPackageNames:Ljava/util/List;

    #@1c7
    move-object/from16 v20, v0

    #@1c9
    .line 2961
    const/4 v5, 0x0

    #@1ca
    .line 2965
    const/16 v16, 0x0

    #@1cc
    const/16 v17, 0x1

    #@1ce
    const/16 v18, 0x0

    #@1d0
    move-object/from16 v3, p0

    #@1d2
    .line 2961
    invoke-direct/range {v3 .. v20}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;ZZLjava/lang/String;Ljava/util/List;)Lcom/android/server/pm/PackageSetting;

    #@1d5
    move-result-object v42

    #@1d6
    .line 2967
    .local v42, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v42, :cond_1e

    #@1d8
    .line 2969
    new-instance v3, Ljava/lang/StringBuilder;

    #@1da
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1dd
    const-string/jumbo v4, "Unable to create application package for "

    #@1e0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v3

    #@1e4
    move-object/from16 v0, v44

    #@1e6
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@1e8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v3

    #@1ec
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v3

    #@1f0
    .line 2968
    const/4 v4, 0x5

    #@1f1
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1f4
    .line 2957
    .end local v42    # "p":Lcom/android/server/pm/PackageSetting;
    :goto_4
    add-int/lit8 v33, v33, 0x1

    #@1f6
    goto/16 :goto_3

    #@1f8
    .line 2832
    .end local v21    # "N":I
    .end local v33    # "i":I
    .end local v35    # "idObj":Ljava/lang/Object;
    .end local v44    # "pp":Lcom/android/server/pm/PendingPackage;
    .restart local v41    # "outerDepth":I
    .restart local v43    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v47    # "tagName":Ljava/lang/String;
    .restart local v48    # "type":I
    :cond_9
    :try_start_3
    const-string/jumbo v3, "permissions"

    #@1fb
    move-object/from16 v0, v47

    #@1fd
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@200
    move-result v3

    #@201
    if-eqz v3, :cond_a

    #@203
    .line 2833
    move-object/from16 v0, p0

    #@205
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@207
    move-object/from16 v0, p0

    #@209
    move-object/from16 v1, v43

    #@20b
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@20e
    goto/16 :goto_1

    #@210
    .line 2938
    .end local v41    # "outerDepth":I
    .end local v43    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v47    # "tagName":Ljava/lang/String;
    .end local v48    # "type":I
    :catch_1
    move-exception v27

    #@211
    .line 2939
    .local v27, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@213
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@215
    const-string/jumbo v4, "Error reading: "

    #@218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v3

    #@21c
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@21f
    move-result-object v4

    #@220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    .line 2940
    new-instance v3, Ljava/lang/StringBuilder;

    #@225
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    const-string/jumbo v4, "Error reading settings: "

    #@22b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22e
    move-result-object v3

    #@22f
    move-object/from16 v0, v27

    #@231
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v3

    #@235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@238
    move-result-object v3

    #@239
    const/4 v4, 0x6

    #@23a
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@23d
    .line 2941
    const-string/jumbo v3, "PackageManager"

    #@240
    const-string/jumbo v4, "Error reading package manager settings"

    #@243
    move-object/from16 v0, v27

    #@245
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@248
    goto/16 :goto_2

    #@24a
    .line 2834
    .end local v27    # "e":Ljava/io/IOException;
    .restart local v41    # "outerDepth":I
    .restart local v43    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v47    # "tagName":Ljava/lang/String;
    .restart local v48    # "type":I
    :cond_a
    :try_start_4
    const-string/jumbo v3, "permission-trees"

    #@24d
    move-object/from16 v0, v47

    #@24f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@252
    move-result v3

    #@253
    if-eqz v3, :cond_b

    #@255
    .line 2835
    move-object/from16 v0, p0

    #@257
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@259
    move-object/from16 v0, p0

    #@25b
    move-object/from16 v1, v43

    #@25d
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    #@260
    goto/16 :goto_1

    #@262
    .line 2836
    :cond_b
    const-string/jumbo v3, "shared-user"

    #@265
    move-object/from16 v0, v47

    #@267
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26a
    move-result v3

    #@26b
    if-eqz v3, :cond_c

    #@26d
    .line 2837
    move-object/from16 v0, p0

    #@26f
    move-object/from16 v1, v43

    #@271
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@274
    goto/16 :goto_1

    #@276
    .line 2838
    :cond_c
    const-string/jumbo v3, "preferred-packages"

    #@279
    move-object/from16 v0, v47

    #@27b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27e
    move-result v3

    #@27f
    if-nez v3, :cond_7

    #@281
    .line 2840
    const-string/jumbo v3, "preferred-activities"

    #@284
    move-object/from16 v0, v47

    #@286
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@289
    move-result v3

    #@28a
    if-eqz v3, :cond_d

    #@28c
    .line 2843
    const/4 v3, 0x0

    #@28d
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v43

    #@291
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@294
    goto/16 :goto_1

    #@296
    .line 2844
    :cond_d
    const-string/jumbo v3, "persistent-preferred-activities"

    #@299
    move-object/from16 v0, v47

    #@29b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29e
    move-result v3

    #@29f
    if-eqz v3, :cond_e

    #@2a1
    .line 2847
    const/4 v3, 0x0

    #@2a2
    move-object/from16 v0, p0

    #@2a4
    move-object/from16 v1, v43

    #@2a6
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2a9
    goto/16 :goto_1

    #@2ab
    .line 2848
    :cond_e
    const-string/jumbo v3, "crossProfile-intent-filters"

    #@2ae
    move-object/from16 v0, v47

    #@2b0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b3
    move-result v3

    #@2b4
    if-eqz v3, :cond_f

    #@2b6
    .line 2851
    const/4 v3, 0x0

    #@2b7
    move-object/from16 v0, p0

    #@2b9
    move-object/from16 v1, v43

    #@2bb
    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2be
    goto/16 :goto_1

    #@2c0
    .line 2852
    :cond_f
    const-string/jumbo v3, "default-browser"

    #@2c3
    move-object/from16 v0, v47

    #@2c5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c8
    move-result v3

    #@2c9
    if-eqz v3, :cond_10

    #@2cb
    .line 2853
    const/4 v3, 0x0

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    move-object/from16 v1, v43

    #@2d0
    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2d3
    goto/16 :goto_1

    #@2d5
    .line 2854
    :cond_10
    const-string/jumbo v3, "updated-package"

    #@2d8
    move-object/from16 v0, v47

    #@2da
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2dd
    move-result v3

    #@2de
    if-eqz v3, :cond_11

    #@2e0
    .line 2855
    move-object/from16 v0, p0

    #@2e2
    move-object/from16 v1, v43

    #@2e4
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2e7
    goto/16 :goto_1

    #@2e9
    .line 2856
    :cond_11
    const-string/jumbo v3, "cleaning-package"

    #@2ec
    move-object/from16 v0, v47

    #@2ee
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f1
    move-result v3

    #@2f2
    if-eqz v3, :cond_14

    #@2f4
    .line 2857
    const-string/jumbo v3, "name"

    #@2f7
    const/4 v4, 0x0

    #@2f8
    move-object/from16 v0, v43

    #@2fa
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2fd
    move-result-object v38

    #@2fe
    .line 2858
    .local v38, "name":Ljava/lang/String;
    const-string/jumbo v3, "user"

    #@301
    const/4 v4, 0x0

    #@302
    move-object/from16 v0, v43

    #@304
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@307
    move-result-object v52

    #@308
    .line 2859
    .local v52, "userStr":Ljava/lang/String;
    const-string/jumbo v3, "code"

    #@30b
    const/4 v4, 0x0

    #@30c
    move-object/from16 v0, v43

    #@30e
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@311
    move-result-object v23

    #@312
    .line 2860
    .local v23, "codeStr":Ljava/lang/String;
    if-eqz v38, :cond_7

    #@314
    .line 2861
    const/16 v51, 0x0

    #@316
    .line 2862
    .local v51, "userId":I
    const/16 v22, 0x1

    #@318
    .line 2864
    .local v22, "andCode":Z
    if-eqz v52, :cond_12

    #@31a
    .line 2865
    :try_start_5
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@31d
    move-result v51

    #@31e
    .line 2869
    :cond_12
    :goto_5
    if-eqz v23, :cond_13

    #@320
    .line 2870
    :try_start_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@323
    move-result v22

    #@324
    .line 2872
    .end local v22    # "andCode":Z
    :cond_13
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    #@326
    move/from16 v0, v51

    #@328
    move-object/from16 v1, v38

    #@32a
    move/from16 v2, v22

    #@32c
    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    #@32f
    move-object/from16 v0, p0

    #@331
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    #@334
    goto/16 :goto_1

    #@336
    .line 2867
    .restart local v22    # "andCode":Z
    :catch_2
    move-exception v29

    #@337
    .local v29, "e":Ljava/lang/NumberFormatException;
    goto :goto_5

    #@338
    .line 2874
    .end local v22    # "andCode":Z
    .end local v23    # "codeStr":Ljava/lang/String;
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .end local v38    # "name":Ljava/lang/String;
    .end local v51    # "userId":I
    .end local v52    # "userStr":Ljava/lang/String;
    :cond_14
    const-string/jumbo v3, "renamed-package"

    #@33b
    move-object/from16 v0, v47

    #@33d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@340
    move-result v3

    #@341
    if-eqz v3, :cond_15

    #@343
    .line 2875
    const-string/jumbo v3, "new"

    #@346
    const/4 v4, 0x0

    #@347
    move-object/from16 v0, v43

    #@349
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34c
    move-result-object v39

    #@34d
    .line 2876
    .local v39, "nname":Ljava/lang/String;
    const-string/jumbo v3, "old"

    #@350
    const/4 v4, 0x0

    #@351
    move-object/from16 v0, v43

    #@353
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@356
    move-result-object v40

    #@357
    .line 2877
    .local v40, "oname":Ljava/lang/String;
    if-eqz v39, :cond_7

    #@359
    if-eqz v40, :cond_7

    #@35b
    .line 2878
    move-object/from16 v0, p0

    #@35d
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    #@35f
    move-object/from16 v0, v39

    #@361
    move-object/from16 v1, v40

    #@363
    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@366
    goto/16 :goto_1

    #@368
    .line 2880
    .end local v39    # "nname":Ljava/lang/String;
    .end local v40    # "oname":Ljava/lang/String;
    :cond_15
    const-string/jumbo v3, "restored-ivi"

    #@36b
    move-object/from16 v0, v47

    #@36d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@370
    move-result v3

    #@371
    if-eqz v3, :cond_16

    #@373
    .line 2881
    move-object/from16 v0, p0

    #@375
    move-object/from16 v1, v43

    #@377
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    #@37a
    goto/16 :goto_1

    #@37c
    .line 2882
    :cond_16
    const-string/jumbo v3, "last-platform-version"

    #@37f
    move-object/from16 v0, v47

    #@381
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@384
    move-result v3

    #@385
    if-eqz v3, :cond_17

    #@387
    .line 2885
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@389
    .line 2884
    move-object/from16 v0, p0

    #@38b
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@38e
    move-result-object v36

    #@38f
    .line 2887
    .local v36, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    #@392
    .line 2886
    move-object/from16 v0, p0

    #@394
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@397
    move-result-object v32

    #@398
    .line 2889
    .local v32, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    #@39b
    const/4 v4, 0x0

    #@39c
    move-object/from16 v0, v43

    #@39e
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3a1
    move-result v3

    #@3a2
    move-object/from16 v0, v36

    #@3a4
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@3a6
    .line 2890
    const-string/jumbo v3, "external"

    #@3a9
    const/4 v4, 0x0

    #@3aa
    move-object/from16 v0, v43

    #@3ac
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3af
    move-result v3

    #@3b0
    move-object/from16 v0, v32

    #@3b2
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@3b4
    .line 2892
    const-string/jumbo v3, "fingerprint"

    #@3b7
    move-object/from16 v0, v43

    #@3b9
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3bc
    move-result-object v3

    #@3bd
    .line 2891
    move-object/from16 v0, v32

    #@3bf
    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@3c1
    move-object/from16 v0, v36

    #@3c3
    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@3c5
    goto/16 :goto_1

    #@3c7
    .line 2894
    .end local v32    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v36    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_17
    const-string/jumbo v3, "database-version"

    #@3ca
    move-object/from16 v0, v47

    #@3cc
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3cf
    move-result v3

    #@3d0
    if-eqz v3, :cond_18

    #@3d2
    .line 2897
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@3d4
    .line 2896
    move-object/from16 v0, p0

    #@3d6
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@3d9
    move-result-object v36

    #@3da
    .line 2899
    .restart local v36    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    #@3dd
    .line 2898
    move-object/from16 v0, p0

    #@3df
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@3e2
    move-result-object v32

    #@3e3
    .line 2901
    .restart local v32    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    #@3e6
    const/4 v4, 0x0

    #@3e7
    move-object/from16 v0, v43

    #@3e9
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3ec
    move-result v3

    #@3ed
    move-object/from16 v0, v36

    #@3ef
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@3f1
    .line 2902
    const-string/jumbo v3, "external"

    #@3f4
    const/4 v4, 0x0

    #@3f5
    move-object/from16 v0, v43

    #@3f7
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3fa
    move-result v3

    #@3fb
    move-object/from16 v0, v32

    #@3fd
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@3ff
    goto/16 :goto_1

    #@401
    .line 2904
    .end local v32    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v36    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_18
    const-string/jumbo v3, "verifier"

    #@404
    move-object/from16 v0, v47

    #@406
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@409
    move-result v3

    #@40a
    if-eqz v3, :cond_19

    #@40c
    .line 2905
    const-string/jumbo v3, "device"

    #@40f
    const/4 v4, 0x0

    #@410
    move-object/from16 v0, v43

    #@412
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@415
    move-result-object v24

    #@416
    .line 2907
    .local v24, "deviceIdentity":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v24 .. v24}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    #@419
    move-result-object v3

    #@41a
    move-object/from16 v0, p0

    #@41c
    iput-object v3, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@41e
    goto/16 :goto_1

    #@420
    .line 2908
    :catch_3
    move-exception v28

    #@421
    .line 2909
    .local v28, "e":Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string/jumbo v3, "PackageManager"

    #@424
    new-instance v4, Ljava/lang/StringBuilder;

    #@426
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@429
    const-string/jumbo v5, "Discard invalid verifier device id: "

    #@42c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42f
    move-result-object v4

    #@430
    .line 2910
    invoke-virtual/range {v28 .. v28}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@433
    move-result-object v5

    #@434
    .line 2909
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@437
    move-result-object v4

    #@438
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43b
    move-result-object v4

    #@43c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43f
    goto/16 :goto_1

    #@441
    .line 2912
    .end local v24    # "deviceIdentity":Ljava/lang/String;
    .end local v28    # "e":Ljava/lang/IllegalArgumentException;
    :cond_19
    const-string/jumbo v3, "read-external-storage"

    #@444
    move-object/from16 v0, v47

    #@446
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@449
    move-result v3

    #@44a
    if-eqz v3, :cond_1a

    #@44c
    .line 2913
    const-string/jumbo v3, "enforcement"

    #@44f
    const/4 v4, 0x0

    #@450
    move-object/from16 v0, v43

    #@452
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@455
    move-result-object v31

    #@456
    .line 2914
    .local v31, "enforcement":Ljava/lang/String;
    const-string/jumbo v3, "1"

    #@459
    move-object/from16 v0, v31

    #@45b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45e
    move-result v3

    #@45f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@462
    move-result-object v3

    #@463
    move-object/from16 v0, p0

    #@465
    iput-object v3, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@467
    goto/16 :goto_1

    #@469
    .line 2915
    .end local v31    # "enforcement":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v3, "keyset-settings"

    #@46c
    move-object/from16 v0, v47

    #@46e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@471
    move-result v3

    #@472
    if-eqz v3, :cond_1b

    #@474
    .line 2916
    move-object/from16 v0, p0

    #@476
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    #@478
    move-object/from16 v0, p0

    #@47a
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    #@47c
    move-object/from16 v0, v43

    #@47e
    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    #@481
    goto/16 :goto_1

    #@483
    .line 2917
    :cond_1b
    const-string/jumbo v3, "version"

    #@486
    move-object/from16 v0, v47

    #@488
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48b
    move-result v3

    #@48c
    if-eqz v3, :cond_1c

    #@48e
    .line 2919
    const-string/jumbo v3, "volumeUuid"

    #@491
    .line 2918
    move-object/from16 v0, v43

    #@493
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@496
    move-result-object v54

    #@497
    .line 2920
    .local v54, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@499
    move-object/from16 v1, v54

    #@49b
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    #@49e
    move-result-object v53

    #@49f
    .line 2921
    .local v53, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "sdkVersion"

    #@4a2
    move-object/from16 v0, v43

    #@4a4
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@4a7
    move-result v3

    #@4a8
    move-object/from16 v0, v53

    #@4aa
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@4ac
    .line 2922
    const-string/jumbo v3, "sdkVersion"

    #@4af
    move-object/from16 v0, v43

    #@4b1
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@4b4
    move-result v3

    #@4b5
    move-object/from16 v0, v53

    #@4b7
    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@4b9
    .line 2923
    const-string/jumbo v3, "fingerprint"

    #@4bc
    move-object/from16 v0, v43

    #@4be
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@4c1
    move-result-object v3

    #@4c2
    move-object/from16 v0, v53

    #@4c4
    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@4c6
    goto/16 :goto_1

    #@4c8
    .line 2925
    .end local v53    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v54    # "volumeUuid":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v3, "PackageManager"

    #@4cb
    new-instance v4, Ljava/lang/StringBuilder;

    #@4cd
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d0
    const-string/jumbo v5, "Unknown element under <packages>: "

    #@4d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d6
    move-result-object v4

    #@4d7
    .line 2926
    invoke-interface/range {v43 .. v43}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4da
    move-result-object v5

    #@4db
    .line 2925
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4de
    move-result-object v4

    #@4df
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e2
    move-result-object v4

    #@4e3
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e6
    .line 2927
    invoke-static/range {v43 .. v43}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4e9
    goto/16 :goto_1

    #@4eb
    .line 2931
    .end local v47    # "tagName":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    #@4ee
    goto/16 :goto_2

    #@4f0
    .line 2972
    .end local v41    # "outerDepth":I
    .end local v43    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v48    # "type":I
    .restart local v21    # "N":I
    .restart local v33    # "i":I
    .restart local v35    # "idObj":Ljava/lang/Object;
    .restart local v42    # "p":Lcom/android/server/pm/PackageSetting;
    .restart local v44    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_1e
    move-object/from16 v0, v42

    #@4f2
    move-object/from16 v1, v44

    #@4f4
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    #@4f7
    goto/16 :goto_4

    #@4f9
    .line 2973
    .end local v42    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_1f
    if-eqz v35, :cond_20

    #@4fb
    .line 2974
    new-instance v3, Ljava/lang/StringBuilder;

    #@4fd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@500
    const-string/jumbo v4, "Bad package setting: package "

    #@503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    move-result-object v3

    #@507
    move-object/from16 v0, v44

    #@509
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@50b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v3

    #@50f
    const-string/jumbo v4, " has shared uid "

    #@512
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@515
    move-result-object v3

    #@516
    .line 2975
    move-object/from16 v0, v44

    #@518
    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@51a
    .line 2974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v3

    #@51e
    .line 2975
    const-string/jumbo v4, " that is not a shared uid\n"

    #@521
    .line 2974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@524
    move-result-object v3

    #@525
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@528
    move-result-object v37

    #@529
    .line 2976
    .local v37, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@52b
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@52d
    move-object/from16 v0, v37

    #@52f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@532
    .line 2977
    const/4 v3, 0x6

    #@533
    move-object/from16 v0, v37

    #@535
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@538
    goto/16 :goto_4

    #@53a
    .line 2979
    .end local v37    # "msg":Ljava/lang/String;
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    #@53c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53f
    const-string/jumbo v4, "Bad package setting: package "

    #@542
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@545
    move-result-object v3

    #@546
    move-object/from16 v0, v44

    #@548
    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    #@54a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54d
    move-result-object v3

    #@54e
    const-string/jumbo v4, " has shared uid "

    #@551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@554
    move-result-object v3

    #@555
    .line 2980
    move-object/from16 v0, v44

    #@557
    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    #@559
    .line 2979
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55c
    move-result-object v3

    #@55d
    .line 2980
    const-string/jumbo v4, " that is not defined\n"

    #@560
    .line 2979
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@563
    move-result-object v3

    #@564
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@567
    move-result-object v37

    #@568
    .line 2981
    .restart local v37    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@56a
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@56c
    move-object/from16 v0, v37

    #@56e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    .line 2982
    const/4 v3, 0x6

    #@572
    move-object/from16 v0, v37

    #@574
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@577
    goto/16 :goto_4

    #@579
    .line 2985
    .end local v35    # "idObj":Ljava/lang/Object;
    .end local v37    # "msg":Ljava/lang/String;
    .end local v44    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_21
    move-object/from16 v0, p0

    #@57b
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    #@57d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@580
    .line 2987
    move-object/from16 v0, p0

    #@582
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@584
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@587
    move-result v3

    #@588
    if-nez v3, :cond_22

    #@58a
    .line 2988
    move-object/from16 v0, p0

    #@58c
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@58e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@591
    move-result v3

    #@592
    .line 2987
    if-eqz v3, :cond_24

    #@594
    .line 2990
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    #@597
    .line 2991
    move-object/from16 v0, p0

    #@599
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@59b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@59e
    .line 2992
    move-object/from16 v0, p0

    #@5a0
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@5a2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@5a5
    .line 2994
    const/4 v3, 0x0

    #@5a6
    move-object/from16 v0, p0

    #@5a8
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@5ab
    .line 3001
    :cond_23
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5ae
    move-result-object v50

    #@5af
    .local v50, "user$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    #@5b2
    move-result v3

    #@5b3
    if-eqz v3, :cond_25

    #@5b5
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5b8
    move-result-object v49

    #@5b9
    check-cast v49, Landroid/content/pm/UserInfo;

    #@5bb
    .line 3002
    .local v49, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@5bd
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@5bf
    move-object/from16 v0, v49

    #@5c1
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@5c3
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    #@5c6
    goto :goto_6

    #@5c7
    .line 2996
    .end local v49    # "user":Landroid/content/pm/UserInfo;
    .end local v50    # "user$iterator":Ljava/util/Iterator;
    :cond_24
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5ca
    move-result-object v50

    #@5cb
    .restart local v50    # "user$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    #@5ce
    move-result v3

    #@5cf
    if-eqz v3, :cond_23

    #@5d1
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d4
    move-result-object v49

    #@5d5
    check-cast v49, Landroid/content/pm/UserInfo;

    #@5d7
    .line 2997
    .restart local v49    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v49

    #@5d9
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@5db
    move-object/from16 v0, p0

    #@5dd
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    #@5e0
    goto :goto_7

    #@5e1
    .line 3009
    .end local v49    # "user":Landroid/content/pm/UserInfo;
    :cond_25
    move-object/from16 v0, p0

    #@5e3
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@5e5
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@5e8
    move-result-object v3

    #@5e9
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5ec
    move-result-object v25

    #@5ed
    .line 3010
    .local v25, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_26
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@5f0
    move-result v3

    #@5f1
    if-eqz v3, :cond_27

    #@5f3
    .line 3011
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f6
    move-result-object v26

    #@5f7
    check-cast v26, Lcom/android/server/pm/PackageSetting;

    #@5f9
    .line 3012
    .local v26, "disabledPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v26

    #@5fb
    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@5fd
    move-object/from16 v0, p0

    #@5ff
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    #@602
    move-result-object v34

    #@603
    .line 3013
    .local v34, "id":Ljava/lang/Object;
    if-eqz v34, :cond_26

    #@605
    move-object/from16 v0, v34

    #@607
    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    #@609
    if-eqz v3, :cond_26

    #@60b
    .line 3014
    check-cast v34, Lcom/android/server/pm/SharedUserSetting;

    #@60d
    .end local v34    # "id":Ljava/lang/Object;
    move-object/from16 v0, v34

    #@60f
    move-object/from16 v1, v26

    #@611
    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@613
    goto :goto_8

    #@614
    .line 3018
    .end local v26    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_27
    move-object/from16 v0, p0

    #@616
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@618
    const-string/jumbo v4, "Read completed successfully: "

    #@61b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61e
    move-result-object v3

    #@61f
    move-object/from16 v0, p0

    #@621
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@623
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@626
    move-result v4

    #@627
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62a
    move-result-object v3

    #@62b
    const-string/jumbo v4, " packages, "

    #@62e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@631
    move-result-object v3

    #@632
    .line 3019
    move-object/from16 v0, p0

    #@634
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@636
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@639
    move-result v4

    #@63a
    .line 3018
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63d
    move-result-object v3

    #@63e
    .line 3019
    const-string/jumbo v4, " shared uids\n"

    #@641
    .line 3018
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@644
    .line 3021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    #@647
    .line 3023
    const/4 v3, 0x1

    #@648
    return v3

    #@649
    .line 2780
    .end local v21    # "N":I
    .end local v25    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v33    # "i":I
    .end local v50    # "user$iterator":Ljava/util/Iterator;
    .restart local v45    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v27

    #@64a
    .restart local v27    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    #@64c
    .end local v27    # "e":Ljava/io/IOException;
    .end local v45    # "str":Ljava/io/FileInputStream;
    .restart local v46    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v27

    #@64d
    .restart local v27    # "e":Ljava/io/IOException;
    move-object/from16 v45, v46

    #@64f
    .end local v46    # "str":Ljava/io/FileInputStream;
    .local v45, "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 40
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1570
    const/16 v33, 0x0

    #@2
    .line 1571
    .local v33, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    #@5
    move-result-object v37

    #@6
    .line 1572
    .local v37, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    #@9
    move-result-object v22

    #@a
    .line 1573
    .local v22, "backupFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_17

    #@10
    .line 1575
    :try_start_0
    new-instance v34, Ljava/io/FileInputStream;

    #@12
    move-object/from16 v0, v34

    #@14
    move-object/from16 v1, v22

    #@16
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@19
    .line 1576
    .end local v33    # "str":Ljava/io/FileInputStream;
    .local v34, "str":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@1d
    const-string/jumbo v7, "Reading from backup stopped packages file\n"

    #@20
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1578
    const-string/jumbo v5, "Need to read from backup stopped packages file"

    #@26
    .line 1577
    const/4 v7, 0x4

    #@27
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2a
    .line 1579
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->exists()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    .line 1583
    const-string/jumbo v5, "PackageManager"

    #@33
    new-instance v7, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v38, "Cleaning up stopped packages file "

    #@3b
    move-object/from16 v0, v38

    #@3d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    move-object/from16 v0, v37

    #@43
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1585
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@51
    .line 1593
    :cond_0
    :goto_0
    if-nez v34, :cond_16

    #@53
    .line 1594
    :try_start_2
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->exists()Z

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_2

    #@59
    .line 1595
    move-object/from16 v0, p0

    #@5b
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@5d
    const-string/jumbo v7, "No stopped packages file found\n"

    #@60
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 1597
    const-string/jumbo v5, "No stopped packages file; assuming all started"

    #@66
    .line 1596
    const/4 v7, 0x4

    #@67
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@6a
    .line 1603
    move-object/from16 v0, p0

    #@6c
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@6e
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@71
    move-result-object v5

    #@72
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v32

    #@76
    .local v32, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v5

    #@7a
    if-eqz v5, :cond_1

    #@7c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v4

    #@80
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@82
    .line 1604
    .local v4, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v6, 0x0

    #@84
    const/4 v8, 0x0

    #@85
    .line 1605
    const/4 v9, 0x1

    #@86
    .line 1606
    const/4 v10, 0x0

    #@87
    .line 1607
    const/4 v11, 0x0

    #@88
    .line 1608
    const/4 v12, 0x0

    #@89
    .line 1609
    const/4 v13, 0x0

    #@8a
    .line 1610
    const/4 v14, 0x0

    #@8b
    const/4 v15, 0x0

    #@8c
    const/16 v16, 0x0

    #@8e
    .line 1611
    const/16 v17, 0x0

    #@90
    .line 1612
    const/16 v18, 0x0

    #@92
    const/16 v19, 0x0

    #@94
    move/from16 v5, p1

    #@96
    .line 1604
    invoke-virtual/range {v4 .. v19}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    #@99
    goto :goto_1

    #@9a
    .line 1734
    .end local v4    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v25

    #@9b
    .local v25, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v33, v34

    #@9d
    .line 1735
    .end local v34    # "str":Ljava/io/FileInputStream;
    .local v33, "str":Ljava/io/FileInputStream;
    :goto_2
    move-object/from16 v0, p0

    #@9f
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@a1
    const-string/jumbo v7, "Error reading: "

    #@a4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    invoke-virtual/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 1737
    new-instance v5, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v7, "Error reading stopped packages: "

    #@b7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    move-object/from16 v0, v25

    #@bd
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    .line 1736
    const/4 v7, 0x6

    #@c6
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@c9
    .line 1738
    const-string/jumbo v5, "PackageManager"

    #@cc
    const-string/jumbo v7, "Error reading package manager stopped packages"

    #@cf
    move-object/from16 v0, v25

    #@d1
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d4
    .line 1566
    .end local v25    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    #@d5
    .line 1587
    .local v33, "str":Ljava/io/FileInputStream;
    :catch_1
    move-exception v24

    #@d6
    .end local v33    # "str":Ljava/io/FileInputStream;
    .local v24, "e":Ljava/io/IOException;
    :goto_4
    move-object/from16 v34, v33

    #@d8
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0

    #@da
    .line 1614
    .end local v24    # "e":Ljava/io/IOException;
    .restart local v32    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    #@db
    .line 1616
    .end local v32    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    new-instance v33, Ljava/io/FileInputStream;

    #@dd
    move-object/from16 v0, v33

    #@df
    move-object/from16 v1, v37

    #@e1
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    #@e4
    .line 1618
    .end local v34    # "str":Ljava/io/FileInputStream;
    .local v33, "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@e7
    move-result-object v31

    #@e8
    .line 1619
    .local v31, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@ea
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@ed
    move-result-object v5

    #@ee
    move-object/from16 v0, v31

    #@f0
    move-object/from16 v1, v33

    #@f2
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@f5
    .line 1622
    :cond_3
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@f8
    move-result v36

    #@f9
    .local v36, "type":I
    const/4 v5, 0x2

    #@fa
    move/from16 v0, v36

    #@fc
    if-eq v0, v5, :cond_4

    #@fe
    .line 1623
    const/4 v5, 0x1

    #@ff
    move/from16 v0, v36

    #@101
    if-ne v0, v5, :cond_3

    #@103
    .line 1627
    :cond_4
    const/4 v5, 0x2

    #@104
    move/from16 v0, v36

    #@106
    if-eq v0, v5, :cond_5

    #@108
    .line 1628
    move-object/from16 v0, p0

    #@10a
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@10c
    const-string/jumbo v7, "No start tag found in package restrictions file\n"

    #@10f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    .line 1630
    const-string/jumbo v5, "No start tag found in package manager stopped packages"

    #@115
    .line 1629
    const/4 v7, 0x5

    #@116
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@119
    .line 1631
    return-void

    #@11a
    .line 1634
    :cond_5
    const/16 v27, 0x0

    #@11c
    .line 1636
    .local v27, "maxAppLinkGeneration":I
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11f
    move-result v29

    #@120
    .line 1637
    .local v29, "outerDepth":I
    const/4 v6, 0x0

    #@121
    .line 1638
    :cond_6
    :goto_6
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@124
    move-result v36

    #@125
    const/4 v5, 0x1

    #@126
    move/from16 v0, v36

    #@128
    if-eq v0, v5, :cond_15

    #@12a
    .line 1639
    const/4 v5, 0x3

    #@12b
    move/from16 v0, v36

    #@12d
    if-ne v0, v5, :cond_7

    #@12f
    .line 1640
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@132
    move-result v5

    #@133
    move/from16 v0, v29

    #@135
    if-le v5, v0, :cond_15

    #@137
    .line 1641
    :cond_7
    const/4 v5, 0x3

    #@138
    move/from16 v0, v36

    #@13a
    if-eq v0, v5, :cond_6

    #@13c
    .line 1642
    const/4 v5, 0x4

    #@13d
    move/from16 v0, v36

    #@13f
    if-eq v0, v5, :cond_6

    #@141
    .line 1646
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@144
    move-result-object v35

    #@145
    .line 1647
    .local v35, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "pkg"

    #@148
    move-object/from16 v0, v35

    #@14a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v5

    #@14e
    if-eqz v5, :cond_10

    #@150
    .line 1648
    const-string/jumbo v5, "name"

    #@153
    const/4 v7, 0x0

    #@154
    move-object/from16 v0, v31

    #@156
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@159
    move-result-object v28

    #@15a
    .line 1649
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15c
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@15e
    move-object/from16 v0, v28

    #@160
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@163
    move-result-object v6

    #@164
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    #@166
    .line 1650
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_8

    #@168
    .line 1651
    const-string/jumbo v5, "PackageManager"

    #@16b
    new-instance v7, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v38, "No package known for stopped package "

    #@173
    move-object/from16 v0, v38

    #@175
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v7

    #@179
    move-object/from16 v0, v28

    #@17b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v7

    #@17f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v7

    #@183
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@186
    .line 1653
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@189
    goto :goto_6

    #@18a
    .line 1734
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "maxAppLinkGeneration":I
    .end local v28    # "name":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "tagName":Ljava/lang/String;
    .end local v36    # "type":I
    :catch_2
    move-exception v25

    #@18b
    .restart local v25    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_2

    #@18d
    .line 1657
    .end local v25    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "maxAppLinkGeneration":I
    .restart local v28    # "name":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v35    # "tagName":Ljava/lang/String;
    .restart local v36    # "type":I
    :cond_8
    const-string/jumbo v5, "ceDataInode"

    #@190
    .line 1658
    const-wide/16 v38, 0x0

    #@192
    .line 1657
    move-object/from16 v0, v31

    #@194
    move-wide/from16 v1, v38

    #@196
    invoke-static {v0, v5, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@199
    move-result-wide v8

    #@19a
    .line 1659
    .local v8, "ceDataInode":J
    const-string/jumbo v5, "inst"

    #@19d
    .line 1660
    const/4 v7, 0x1

    #@19e
    .line 1659
    move-object/from16 v0, v31

    #@1a0
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@1a3
    move-result v11

    #@1a4
    .line 1661
    .local v11, "installed":Z
    const-string/jumbo v5, "stopped"

    #@1a7
    .line 1662
    const/4 v7, 0x0

    #@1a8
    .line 1661
    move-object/from16 v0, v31

    #@1aa
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@1ad
    move-result v12

    #@1ae
    .line 1664
    .local v12, "stopped":Z
    const-string/jumbo v5, "nl"

    #@1b1
    const/4 v7, 0x0

    #@1b2
    .line 1663
    move-object/from16 v0, v31

    #@1b4
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@1b7
    move-result v13

    #@1b8
    .line 1668
    .local v13, "notLaunched":Z
    const-string/jumbo v5, "blocked"

    #@1bb
    const/4 v7, 0x0

    #@1bc
    move-object/from16 v0, v31

    #@1be
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c1
    move-result-object v23

    #@1c2
    .line 1669
    .local v23, "blockedStr":Ljava/lang/String;
    if-nez v23, :cond_c

    #@1c4
    .line 1670
    const/4 v14, 0x0

    #@1c5
    .line 1671
    :goto_7
    const-string/jumbo v5, "hidden"

    #@1c8
    const/4 v7, 0x0

    #@1c9
    move-object/from16 v0, v31

    #@1cb
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1ce
    move-result-object v26

    #@1cf
    .line 1672
    .local v26, "hiddenStr":Ljava/lang/String;
    if-nez v26, :cond_d

    #@1d1
    .line 1675
    :goto_8
    const-string/jumbo v5, "suspended"

    #@1d4
    .line 1676
    const/4 v7, 0x0

    #@1d5
    .line 1675
    move-object/from16 v0, v31

    #@1d7
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@1da
    move-result v15

    #@1db
    .line 1678
    .local v15, "suspended":Z
    const-string/jumbo v5, "blockUninstall"

    #@1de
    const/4 v7, 0x0

    #@1df
    .line 1677
    move-object/from16 v0, v31

    #@1e1
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@1e4
    move-result v19

    #@1e5
    .line 1679
    .local v19, "blockUninstall":Z
    const-string/jumbo v5, "enabled"

    #@1e8
    .line 1680
    const/4 v7, 0x0

    #@1e9
    .line 1679
    move-object/from16 v0, v31

    #@1eb
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@1ee
    move-result v10

    #@1ef
    .line 1682
    .local v10, "enabled":I
    const-string/jumbo v5, "enabledCaller"

    #@1f2
    .line 1681
    const/4 v7, 0x0

    #@1f3
    move-object/from16 v0, v31

    #@1f5
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f8
    move-result-object v16

    #@1f9
    .line 1685
    .local v16, "enabledCaller":Ljava/lang/String;
    const-string/jumbo v5, "domainVerificationStatus"

    #@1fc
    .line 1686
    const/4 v7, 0x0

    #@1fd
    .line 1684
    move-object/from16 v0, v31

    #@1ff
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@202
    move-result v20

    #@203
    .line 1688
    .local v20, "verifState":I
    const-string/jumbo v5, "app-link-generation"

    #@206
    const/4 v7, 0x0

    #@207
    .line 1687
    move-object/from16 v0, v31

    #@209
    invoke-static {v0, v5, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@20c
    move-result v21

    #@20d
    .line 1689
    .local v21, "linkGeneration":I
    move/from16 v0, v21

    #@20f
    move/from16 v1, v27

    #@211
    if-le v0, v1, :cond_9

    #@213
    .line 1690
    move/from16 v27, v21

    #@215
    .line 1693
    :cond_9
    const/16 v17, 0x0

    #@217
    .line 1694
    .local v17, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    #@219
    .line 1696
    .local v18, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@21c
    move-result v30

    #@21d
    .line 1697
    .end local v17    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "packageDepth":I
    :cond_a
    :goto_9
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@220
    move-result v36

    #@221
    const/4 v5, 0x1

    #@222
    move/from16 v0, v36

    #@224
    if-eq v0, v5, :cond_f

    #@226
    .line 1698
    const/4 v5, 0x3

    #@227
    move/from16 v0, v36

    #@229
    if-ne v0, v5, :cond_b

    #@22b
    .line 1699
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@22e
    move-result v5

    #@22f
    move/from16 v0, v30

    #@231
    if-le v5, v0, :cond_f

    #@233
    .line 1700
    :cond_b
    const/4 v5, 0x3

    #@234
    move/from16 v0, v36

    #@236
    if-eq v0, v5, :cond_a

    #@238
    .line 1701
    const/4 v5, 0x4

    #@239
    move/from16 v0, v36

    #@23b
    if-eq v0, v5, :cond_a

    #@23d
    .line 1704
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@240
    move-result-object v35

    #@241
    .line 1705
    const-string/jumbo v5, "enabled-components"

    #@244
    move-object/from16 v0, v35

    #@246
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@249
    move-result v5

    #@24a
    if-eqz v5, :cond_e

    #@24c
    .line 1706
    move-object/from16 v0, p0

    #@24e
    move-object/from16 v1, v31

    #@250
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    #@253
    move-result-object v17

    #@254
    .local v17, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_9

    #@255
    .line 1670
    .end local v10    # "enabled":I
    .end local v15    # "suspended":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v17    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "blockUninstall":Z
    .end local v20    # "verifState":I
    .end local v21    # "linkGeneration":I
    .end local v26    # "hiddenStr":Ljava/lang/String;
    .end local v30    # "packageDepth":I
    :cond_c
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@258
    move-result v14

    #@259
    .local v14, "hidden":Z
    goto/16 :goto_7

    #@25b
    .line 1673
    .end local v14    # "hidden":Z
    .restart local v26    # "hiddenStr":Ljava/lang/String;
    :cond_d
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@25e
    move-result v14

    #@25f
    .restart local v14    # "hidden":Z
    goto/16 :goto_8

    #@261
    .line 1707
    .end local v14    # "hidden":Z
    .restart local v10    # "enabled":I
    .restart local v15    # "suspended":Z
    .restart local v16    # "enabledCaller":Ljava/lang/String;
    .restart local v19    # "blockUninstall":Z
    .restart local v20    # "verifState":I
    .restart local v21    # "linkGeneration":I
    .restart local v30    # "packageDepth":I
    :cond_e
    const-string/jumbo v5, "disabled-components"

    #@264
    move-object/from16 v0, v35

    #@266
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@269
    move-result v5

    #@26a
    if-eqz v5, :cond_a

    #@26c
    .line 1708
    move-object/from16 v0, p0

    #@26e
    move-object/from16 v1, v31

    #@270
    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    #@273
    move-result-object v18

    #@274
    .local v18, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_9

    #@275
    .end local v18    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_f
    move/from16 v7, p1

    #@277
    .line 1712
    invoke-virtual/range {v6 .. v21}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@27a
    goto/16 :goto_6

    #@27c
    .line 1741
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "ceDataInode":J
    .end local v10    # "enabled":I
    .end local v11    # "installed":Z
    .end local v12    # "stopped":Z
    .end local v13    # "notLaunched":Z
    .end local v15    # "suspended":Z
    .end local v16    # "enabledCaller":Ljava/lang/String;
    .end local v19    # "blockUninstall":Z
    .end local v20    # "verifState":I
    .end local v21    # "linkGeneration":I
    .end local v23    # "blockedStr":Ljava/lang/String;
    .end local v26    # "hiddenStr":Ljava/lang/String;
    .end local v27    # "maxAppLinkGeneration":I
    .end local v28    # "name":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "packageDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "tagName":Ljava/lang/String;
    .end local v36    # "type":I
    :catch_3
    move-exception v24

    #@27d
    .line 1742
    .restart local v24    # "e":Ljava/io/IOException;
    :goto_a
    move-object/from16 v0, p0

    #@27f
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@281
    const-string/jumbo v7, "Error reading: "

    #@284
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v5

    #@288
    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@28b
    move-result-object v7

    #@28c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    .line 1743
    new-instance v5, Ljava/lang/StringBuilder;

    #@291
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@294
    const-string/jumbo v7, "Error reading settings: "

    #@297
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v5

    #@29b
    move-object/from16 v0, v24

    #@29d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v5

    #@2a1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a4
    move-result-object v5

    #@2a5
    const/4 v7, 0x6

    #@2a6
    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@2a9
    .line 1744
    const-string/jumbo v5, "PackageManager"

    #@2ac
    const-string/jumbo v7, "Error reading package manager stopped packages"

    #@2af
    move-object/from16 v0, v24

    #@2b1
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b4
    goto/16 :goto_3

    #@2b6
    .line 1715
    .end local v24    # "e":Ljava/io/IOException;
    .restart local v27    # "maxAppLinkGeneration":I
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v35    # "tagName":Ljava/lang/String;
    .restart local v36    # "type":I
    :cond_10
    :try_start_5
    const-string/jumbo v5, "preferred-activities"

    #@2b9
    move-object/from16 v0, v35

    #@2bb
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2be
    move-result v5

    #@2bf
    if-eqz v5, :cond_11

    #@2c1
    .line 1716
    move-object/from16 v0, p0

    #@2c3
    move-object/from16 v1, v31

    #@2c5
    move/from16 v2, p1

    #@2c7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2ca
    goto/16 :goto_6

    #@2cc
    .line 1717
    :cond_11
    const-string/jumbo v5, "persistent-preferred-activities"

    #@2cf
    move-object/from16 v0, v35

    #@2d1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d4
    move-result v5

    #@2d5
    if-eqz v5, :cond_12

    #@2d7
    .line 1718
    move-object/from16 v0, p0

    #@2d9
    move-object/from16 v1, v31

    #@2db
    move/from16 v2, p1

    #@2dd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2e0
    goto/16 :goto_6

    #@2e2
    .line 1719
    :cond_12
    const-string/jumbo v5, "crossProfile-intent-filters"

    #@2e5
    move-object/from16 v0, v35

    #@2e7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ea
    move-result v5

    #@2eb
    if-eqz v5, :cond_13

    #@2ed
    .line 1720
    move-object/from16 v0, p0

    #@2ef
    move-object/from16 v1, v31

    #@2f1
    move/from16 v2, p1

    #@2f3
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@2f6
    goto/16 :goto_6

    #@2f8
    .line 1721
    :cond_13
    const-string/jumbo v5, "default-apps"

    #@2fb
    move-object/from16 v0, v35

    #@2fd
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@300
    move-result v5

    #@301
    if-eqz v5, :cond_14

    #@303
    .line 1722
    move-object/from16 v0, p0

    #@305
    move-object/from16 v1, v31

    #@307
    move/from16 v2, p1

    #@309
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    #@30c
    goto/16 :goto_6

    #@30e
    .line 1724
    :cond_14
    const-string/jumbo v5, "PackageManager"

    #@311
    new-instance v7, Ljava/lang/StringBuilder;

    #@313
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@316
    const-string/jumbo v38, "Unknown element under <stopped-packages>: "

    #@319
    move-object/from16 v0, v38

    #@31b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v7

    #@31f
    .line 1725
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@322
    move-result-object v38

    #@323
    .line 1724
    move-object/from16 v0, v38

    #@325
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v7

    #@329
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32c
    move-result-object v7

    #@32d
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@330
    .line 1726
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@333
    goto/16 :goto_6

    #@335
    .line 1730
    .end local v35    # "tagName":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V

    #@338
    .line 1732
    move-object/from16 v0, p0

    #@33a
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@33c
    add-int/lit8 v7, v27, 0x1

    #@33e
    move/from16 v0, p1

    #@340
    invoke-virtual {v5, v0, v7}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@343
    goto/16 :goto_3

    #@345
    .line 1741
    .end local v27    # "maxAppLinkGeneration":I
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "str":Ljava/io/FileInputStream;
    .end local v36    # "type":I
    .restart local v34    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v24

    #@346
    .restart local v24    # "e":Ljava/io/IOException;
    move-object/from16 v33, v34

    #@348
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_a

    #@34a
    .line 1587
    .end local v24    # "e":Ljava/io/IOException;
    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v24

    #@34b
    .restart local v24    # "e":Ljava/io/IOException;
    move-object/from16 v33, v34

    #@34d
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4

    #@34f
    .end local v24    # "e":Ljava/io/IOException;
    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    :cond_16
    move-object/from16 v33, v34

    #@351
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_5

    #@353
    .local v33, "str":Ljava/io/FileInputStream;
    :cond_17
    move-object/from16 v34, v33

    #@355
    .restart local v34    # "str":Ljava/io/FileInputStream;
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
    .line 1439
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 1441
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
    .line 1442
    if-ne v3, v6, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v4

    #@13
    if-le v4, v0, :cond_4

    #@15
    .line 1443
    :cond_1
    if-eq v3, v6, :cond_0

    #@17
    const/4 v4, 0x4

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 1447
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 1448
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 1449
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    #@29
    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2c
    .line 1450
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@2e
    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    if-nez v4, :cond_2

    #@34
    .line 1451
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@3b
    goto :goto_0

    #@3c
    .line 1454
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
    .line 1455
    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    #@4a
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 1454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 1455
    const-string/jumbo v5, " at "

    #@55
    .line 1454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 1456
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 1454
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 1453
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@68
    goto :goto_0

    #@69
    .line 1460
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
    .line 1459
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@84
    .line 1461
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@87
    goto/16 :goto_0

    #@89
    .line 1438
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readStoppedLPw()V
    .locals 15

    #@0
    .prologue
    .line 2154
    const/4 v8, 0x0

    #@1
    .line 2155
    .local v8, "str":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@6
    move-result v12

    #@7
    if-eqz v12, :cond_d

    #@9
    .line 2157
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    #@b
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    #@d
    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 2158
    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v9, "str":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@12
    const-string/jumbo v13, "Reading from backup stopped packages file\n"

    #@15
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 2160
    const-string/jumbo v12, "Need to read from backup stopped packages file"

    #@1b
    .line 2159
    const/4 v13, 0x4

    #@1c
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@1f
    .line 2161
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@21
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@24
    move-result v12

    #@25
    if-eqz v12, :cond_0

    #@27
    .line 2165
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
    .line 2166
    iget-object v14, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@38
    .line 2165
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
    .line 2167
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@45
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@48
    .line 2175
    :cond_0
    :goto_0
    if-nez v9, :cond_c

    #@4a
    .line 2176
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@4c
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@4f
    move-result v12

    #@50
    if-nez v12, :cond_2

    #@52
    .line 2177
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@54
    const-string/jumbo v13, "No stopped packages file found\n"

    #@57
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 2179
    const-string/jumbo v12, "No stopped packages file file; assuming all started"

    #@5d
    .line 2178
    const/4 v13, 0x4

    #@5e
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@61
    .line 2183
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
    .line 2184
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v12, 0x0

    #@78
    const/4 v13, 0x0

    #@79
    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    #@7c
    .line 2185
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
    .line 2239
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@83
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v9

    #@84
    .line 2240
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
    .line 2242
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
    .line 2241
    const/4 v13, 0x6

    #@a9
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@ac
    .line 2243
    const-string/jumbo v12, "PackageManager"

    #@af
    const-string/jumbo v13, "Error reading package manager stopped packages"

    #@b2
    invoke-static {v12, v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b5
    .line 2153
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    #@b6
    .line 2169
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
    .line 2187
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    #@ba
    .line 2189
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
    .line 2191
    .end local v9    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c4
    move-result-object v4

    #@c5
    .line 2192
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    #@c6
    invoke-interface {v4, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@c9
    .line 2195
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
    .line 2196
    const/4 v12, 0x1

    #@d1
    if-ne v11, v12, :cond_3

    #@d3
    .line 2200
    :cond_4
    const/4 v12, 0x2

    #@d4
    if-eq v11, v12, :cond_5

    #@d6
    .line 2201
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    #@d8
    const-string/jumbo v13, "No start tag found in stopped packages file\n"

    #@db
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 2203
    const-string/jumbo v12, "No start tag found in package manager stopped packages"

    #@e1
    .line 2202
    const/4 v13, 0x5

    #@e2
    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    #@e5
    .line 2204
    return-void

    #@e6
    .line 2207
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e9
    move-result v3

    #@ea
    .line 2208
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
    .line 2209
    const/4 v12, 0x3

    #@f2
    if-ne v11, v12, :cond_7

    #@f4
    .line 2210
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f7
    move-result v12

    #@f8
    if-le v12, v3, :cond_b

    #@fa
    .line 2211
    :cond_7
    const/4 v12, 0x3

    #@fb
    if-eq v11, v12, :cond_6

    #@fd
    .line 2212
    const/4 v12, 0x4

    #@fe
    if-eq v11, v12, :cond_6

    #@100
    .line 2216
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@103
    move-result-object v10

    #@104
    .line 2217
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "pkg"

    #@107
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v12

    #@10b
    if-eqz v12, :cond_a

    #@10d
    .line 2218
    const-string/jumbo v12, "name"

    #@110
    const/4 v13, 0x0

    #@111
    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@114
    move-result-object v2

    #@115
    .line 2219
    .local v2, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@117
    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    move-result-object v7

    #@11b
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    #@11d
    .line 2220
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_9

    #@11f
    .line 2221
    const/4 v12, 0x1

    #@120
    const/4 v13, 0x0

    #@121
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    #@124
    .line 2222
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
    .line 2223
    const/4 v12, 0x1

    #@136
    const/4 v13, 0x0

    #@137
    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    #@13a
    .line 2229
    :cond_8
    :goto_7
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@13d
    goto :goto_6

    #@13e
    .line 2239
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
    .line 2226
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
    .line 2227
    new-instance v13, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v14, "No package known for stopped package "

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
    .line 2226
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@15b
    goto :goto_7

    #@15c
    .line 2246
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_3
    move-exception v0

    #@15d
    .line 2247
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
    .line 2248
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
    .line 2249
    const-string/jumbo v12, "PackageManager"

    #@188
    const-string/jumbo v13, "Error reading package manager stopped packages"

    #@18b
    invoke-static {v12, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18e
    goto/16 :goto_3

    #@190
    .line 2231
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
    .line 2232
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a2
    move-result-object v14

    #@1a3
    .line 2231
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
    .line 2233
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1b1
    goto/16 :goto_6

    #@1b3
    .line 2237
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@1b6
    goto/16 :goto_3

    #@1b8
    .line 2246
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
    .line 2169
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
    .line 4020
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@2
    monitor-enter v9

    #@3
    .line 4022
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v8

    #@9
    if-eqz v8, :cond_0

    #@b
    .line 4023
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    #@10
    .line 4024
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@13
    .line 4027
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v0

    #@19
    .line 4028
    .local v0, "count":I
    const/4 v5, 0x0

    #@1a
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    #@1c
    .line 4029
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    #@21
    move-result v7

    #@22
    .line 4030
    .local v7, "sourceUserId":I
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@2a
    .line 4031
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v6, 0x0

    #@2b
    .line 4033
    .local v6, "needsWriting":Z
    new-instance v3, Landroid/util/ArraySet;

    #@2d
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    #@30
    move-result-object v8

    #@31
    invoke-direct {v3, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@34
    .line 4034
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
    .line 4035
    .local v1, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    #@47
    move-result v8

    #@48
    if-ne v8, p1, :cond_1

    #@4a
    .line 4036
    const/4 v6, 0x1

    #@4b
    .line 4037
    invoke-virtual {v4, v1}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 4020
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
    .line 4040
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
    .line 4041
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 4028
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
    .line 4019
    return-void
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 587
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1321
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    #@a
    .line 1325
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1327
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    #@f
    .line 1328
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
    .line 1332
    const/4 v0, 0x0

    #@1
    .line 1333
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
    .line 1334
    .local v1, "userId":I
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    #@a
    move-result v4

    #@b
    or-int/2addr v0, v4

    #@c
    .line 1333
    .local v0, "result":Z
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1336
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
    .line 1078
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1079
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    #@a
    .line 1080
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 1081
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    #@12
    .line 1082
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1083
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@18
    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    #@1b
    .line 1084
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@1d
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    #@1f
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 1085
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    #@27
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@29
    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1086
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@30
    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@32
    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    #@35
    .line 1087
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@37
    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    #@39
    return v1

    #@3a
    .line 1090
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@3c
    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    #@3f
    .line 1091
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@41
    return v1

    #@42
    .line 1094
    :cond_1
    const/4 v1, -0x1

    #@43
    return v1
.end method

.method removeUserLPw(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 4003
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 4004
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
    .line 4005
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
    .line 4007
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@25
    .line 4008
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    #@28
    move-result-object v3

    #@29
    .line 4009
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@2c
    .line 4010
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    #@2f
    move-result-object v3

    #@30
    .line 4011
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@33
    .line 4012
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    #@36
    .line 4014
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@38
    invoke-static {v4, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    #@3b
    .line 4016
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    #@3e
    .line 4002
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1340
    const/4 v0, -0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 1341
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a
    .line 1344
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@d
    .line 1345
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method setDefaultDialerPackageNameLPw(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1353
    const/4 v0, -0x1

    #@1
    if-ne p2, v0, :cond_0

    #@3
    .line 1354
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a
    .line 1357
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@d
    .line 1358
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
    .line 458
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 459
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@a
    .line 460
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    #@d
    move-result v1

    #@e
    if-eq v1, p2, :cond_0

    #@10
    .line 461
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    #@13
    .line 457
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 505
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    #@a
    .line 506
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    #@d
    .line 507
    if-eqz p2, :cond_0

    #@f
    .line 508
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    #@11
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@14
    .line 503
    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 5
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4159
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    #@4
    move-result v0

    #@5
    .line 4160
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@d
    .line 4161
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    #@f
    .line 4162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Unknown package: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 4164
    :cond_0
    if-nez p4, :cond_1

    #@2b
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@2d
    if-eq v0, v2, :cond_1

    #@2f
    .line 4165
    new-instance v2, Ljava/lang/SecurityException;

    #@31
    .line 4166
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Permission Denial: attempt to change stopped state from pid="

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 4167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@40
    move-result v4

    #@41
    .line 4166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 4168
    const-string/jumbo v4, ", uid="

    #@48
    .line 4166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    .line 4168
    const-string/jumbo v4, ", package uid="

    #@53
    .line 4166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 4168
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@59
    .line 4166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 4165
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@64
    throw v2

    #@65
    .line 4177
    :cond_1
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@68
    move-result v2

    #@69
    if-eq v2, p3, :cond_4

    #@6b
    .line 4178
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    #@6e
    .line 4180
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_3

    #@74
    .line 4181
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@76
    if-eqz v2, :cond_2

    #@78
    .line 4182
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@7a
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@7c
    invoke-virtual {p1, v2, v3, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    #@7f
    .line 4184
    :cond_2
    invoke-virtual {v1, v4, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    #@82
    .line 4186
    :cond_3
    const/4 v2, 0x1

    #@83
    return v2

    #@84
    .line 4188
    :cond_4
    return v4
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
    .line 663
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    #@4
    if-ge v2, v4, :cond_4

    #@6
    .line 665
    if-nez v2, :cond_2

    #@8
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    #@a
    .line 666
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
    .line 667
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 672
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@28
    .line 673
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    #@2a
    .line 674
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@2c
    .line 675
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 676
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@32
    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    #@34
    .line 678
    :cond_1
    iput v6, v0, Lcom/android/server/pm/BasePermission;->uid:I

    #@36
    .line 679
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/BasePermission;->setGids([IZ)V

    #@39
    goto :goto_2

    #@3a
    .line 665
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "bp$iterator":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@3c
    goto :goto_1

    #@3d
    .line 663
    .restart local v1    # "bp$iterator":Ljava/util/Iterator;
    .restart local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 661
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
    .line 1279
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@8
    .line 1280
    .local v1, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_0

    #@a
    .line 1284
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 1288
    :cond_0
    const/4 v2, 0x2

    #@d
    if-ne p2, v2, :cond_1

    #@f
    .line 1289
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@11
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->get(I)I

    #@14
    move-result v2

    #@15
    add-int/lit8 v0, v2, 0x1

    #@17
    .line 1290
    .local v0, "alwaysGeneration":I
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v2, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@1c
    .line 1295
    :goto_0
    invoke-virtual {v1, p2, v0, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    #@1f
    .line 1296
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 1292
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
    .line 1005
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6
    if-nez v13, :cond_1

    #@8
    .line 1006
    :cond_0
    const-string/jumbo v13, "PackageManager"

    #@b
    .line 1007
    const-string/jumbo v14, "Trying to update info for null package. Just ignoring"

    #@e
    .line 1006
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1008
    const/16 v13, -0x2710

    #@13
    return v13

    #@14
    .line 1012
    :cond_1
    move-object/from16 v0, p1

    #@16
    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@18
    if-nez v13, :cond_2

    #@1a
    .line 1013
    const/16 v13, -0x2710

    #@1c
    return v13

    #@1d
    .line 1016
    :cond_2
    move-object/from16 v0, p1

    #@1f
    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@21
    .line 1019
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
    .line 1020
    .local v3, "eachPerm":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/server/pm/BasePermission;

    #@3f
    .line 1021
    .local v1, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_3

    #@41
    .line 1026
    const/4 v12, 0x0

    #@42
    .line 1027
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
    .line 1028
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@56
    if-eqz v13, :cond_4

    #@58
    .line 1029
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
    .line 1030
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@6a
    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@6c
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@6f
    move-result v13

    #@70
    .line 1028
    if-eqz v13, :cond_4

    #@72
    .line 1031
    const/4 v12, 0x1

    #@73
    .line 1035
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_5
    if-nez v12, :cond_3

    #@75
    .line 1039
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@78
    move-result-object v7

    #@79
    .line 1040
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
    .line 1044
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_8

    #@85
    .line 1045
    const/4 v10, 0x0

    #@86
    .line 1046
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
    .line 1047
    .local v5, "permission":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v13

    #@9e
    if-eqz v13, :cond_6

    #@a0
    .line 1048
    const/4 v10, 0x1

    #@a1
    .line 1052
    .end local v5    # "permission":Ljava/lang/String;
    :cond_7
    if-nez v10, :cond_3

    #@a3
    .line 1060
    .end local v6    # "permission$iterator":Ljava/util/Iterator;
    .end local v10    # "reqByDisabledSysPkg":Z
    :cond_8
    const/16 v13, 0xff

    #@a5
    const/4 v14, 0x0

    #@a6
    .line 1059
    move/from16 v0, p2

    #@a8
    invoke-virtual {v7, v1, v0, v13, v14}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    #@ab
    .line 1062
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    #@ae
    move-result v13

    #@af
    .line 1063
    const/4 v14, 0x1

    #@b0
    .line 1062
    if-ne v13, v14, :cond_9

    #@b2
    .line 1064
    const/4 v13, -0x1

    #@b3
    return v13

    #@b4
    .line 1068
    :cond_9
    move/from16 v0, p2

    #@b6
    invoke-virtual {v7, v1, v0}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    #@b9
    move-result v13

    #@ba
    .line 1069
    const/4 v14, 0x1

    #@bb
    .line 1068
    if-ne v13, v14, :cond_3

    #@bd
    .line 1070
    return p2

    #@be
    .line 1074
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
    .line 1840
    const-string/jumbo v4, "all-intent-filter-verifications"

    #@4
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1841
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v0

    #@d
    .line 1842
    .local v0, "N":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@10
    .line 1843
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@18
    .line 1844
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    #@1b
    move-result-object v2

    #@1c
    .line 1845
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v2, :cond_0

    #@1e
    .line 1846
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@21
    .line 1842
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1849
    .end local v2    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const-string/jumbo v4, "all-intent-filter-verifications"

    #@27
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 1839
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    #@0
    .prologue
    .line 1394
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
    .line 1395
    .local v0, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@10
    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    #@13
    .line 1394
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1393
    .end local v0    # "userId":I
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    #@0
    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 1386
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    #@6
    return-void

    #@7
    .line 1388
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
    .line 1389
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@19
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    #@1c
    goto :goto_0

    #@1d
    .line 1384
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .local p2, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 2139
    if-nez p2, :cond_0

    #@3
    .line 2140
    return-void

    #@4
    .line 2142
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .line 2143
    .local v0, "childCount":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 2144
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 2145
    .local v1, "childPackageName":Ljava/lang/String;
    const-string/jumbo v3, "child-package"

    #@14
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17
    .line 2146
    const-string/jumbo v3, "name"

    #@1a
    invoke-interface {p1, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 2147
    const-string/jumbo v3, "child-package"

    #@20
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 2143
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2138
    .end local v1    # "childPackageName":Ljava/lang/String;
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
    .line 1811
    const-string/jumbo v3, "crossProfile-intent-filters"

    #@4
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1812
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    #@f
    .line 1813
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    #@11
    .line 1814
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
    .line 1815
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v3, "item"

    #@28
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1816
    invoke-virtual {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2e
    .line 1817
    const-string/jumbo v3, "item"

    #@31
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    goto :goto_0

    #@35
    .line 1820
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v1    # "cpif$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "crossProfile-intent-filters"

    #@38
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1810
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 4
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
    const/4 v3, 0x0

    #@1
    .line 1903
    const-string/jumbo v2, "default-apps"

    #@4
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1904
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    .line 1905
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 1906
    const-string/jumbo v2, "default-browser"

    #@18
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 1907
    const-string/jumbo v2, "packageName"

    #@1e
    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21
    .line 1908
    const-string/jumbo v2, "default-browser"

    #@24
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 1910
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/lang/String;

    #@2f
    .line 1911
    .local v1, "defaultDialer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_1

    #@35
    .line 1912
    const-string/jumbo v2, "default-dialer"

    #@38
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1913
    const-string/jumbo v2, "packageName"

    #@3e
    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 1914
    const-string/jumbo v2, "default-dialer"

    #@44
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 1916
    :cond_1
    const-string/jumbo v2, "default-apps"

    #@4a
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 1902
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
    .line 2569
    const-string/jumbo v0, "updated-package"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2570
    const-string/jumbo v0, "name"

    #@a
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@c
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 2571
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2572
    const-string/jumbo v0, "realName"

    #@16
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@18
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2574
    :cond_0
    const-string/jumbo v0, "codePath"

    #@1e
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@20
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 2575
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
    .line 2576
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
    .line 2577
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
    .line 2578
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
    .line 2579
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
    .line 2580
    const-string/jumbo v0, "resourcePath"

    #@60
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@62
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 2582
    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@67
    if-eqz v0, :cond_2

    #@69
    .line 2583
    const-string/jumbo v0, "nativeLibraryPath"

    #@6c
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@6e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@71
    .line 2585
    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@73
    if-eqz v0, :cond_3

    #@75
    .line 2586
    const-string/jumbo v0, "primaryCpuAbi"

    #@78
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@7a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7d
    .line 2588
    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@7f
    if-eqz v0, :cond_4

    #@81
    .line 2589
    const-string/jumbo v0, "secondaryCpuAbi"

    #@84
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@86
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@89
    .line 2591
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@8b
    if-eqz v0, :cond_5

    #@8d
    .line 2592
    const-string/jumbo v0, "cpuAbiOverride"

    #@90
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@92
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@95
    .line 2595
    :cond_5
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@97
    if-nez v0, :cond_8

    #@99
    .line 2596
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
    .line 2601
    :goto_0
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    #@a7
    if-eqz v0, :cond_6

    #@a9
    .line 2602
    const-string/jumbo v0, "parentPackageName"

    #@ac
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    #@ae
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b1
    .line 2605
    :cond_6
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@b3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@b6
    .line 2608
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@b8
    if-nez v0, :cond_7

    #@ba
    .line 2609
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@c5
    .line 2613
    :cond_7
    const-string/jumbo v0, "updated-package"

    #@c8
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cb
    .line 2568
    return-void

    #@cc
    .line 2598
    :cond_8
    const-string/jumbo v0, "sharedUserId"

    #@cf
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@d1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d8
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
    .line 1826
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1827
    const-string/jumbo v0, "domain-verification"

    #@c
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 1828
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@12
    .line 1833
    const-string/jumbo v0, "domain-verification"

    #@15
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 1825
    :cond_0
    return-void
.end method

.method writeKernelMappingLPr()V
    .locals 8

    #@0
    .prologue
    .line 2427
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    #@2
    if-nez v6, :cond_0

    #@4
    return-void

    #@5
    .line 2429
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    #@7
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 2430
    .local v1, "known":[Ljava/lang/String;
    new-instance v2, Landroid/util/ArraySet;

    #@d
    array-length v6, v1

    #@e
    invoke-direct {v2, v6}, Landroid/util/ArraySet;-><init>(I)V

    #@11
    .line 2431
    .local v2, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@12
    array-length v7, v1

    #@13
    :goto_0
    if-ge v6, v7, :cond_1

    #@15
    aget-object v3, v1, v6

    #@17
    .line 2432
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 2431
    add-int/lit8 v6, v6, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2435
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@22
    move-result-object v6

    #@23
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v5

    #@27
    .local v5, "ps$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_2

    #@2d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    #@33
    .line 2437
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@38
    .line 2438
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    #@3b
    goto :goto_1

    #@3c
    .line 2442
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    const/4 v0, 0x0

    #@3d
    .local v0, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@40
    move-result v6

    #@41
    if-ge v0, v6, :cond_3

    #@43
    .line 2443
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Ljava/lang/String;

    #@49
    .line 2446
    .restart local v3    # "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    #@4b
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 2447
    new-instance v6, Ljava/io/File;

    #@50
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    #@52
    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@55
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    #@58
    .line 2442
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_2

    #@5b
    .line 2426
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 7
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    .line 2452
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    #@2
    if-nez v4, :cond_0

    #@4
    return-void

    #@5
    .line 2454
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    #@7
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@9
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    .line 2455
    .local v0, "cur":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v4

    #@15
    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@17
    if-ne v4, v5, :cond_1

    #@19
    .line 2457
    return-void

    #@1a
    .line 2462
    :cond_1
    new-instance v1, Ljava/io/File;

    #@1c
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    #@1e
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@20
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    .line 2463
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    #@26
    .line 2465
    new-instance v2, Ljava/io/File;

    #@28
    const-string/jumbo v4, "appid"

    #@2b
    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2e
    .line 2467
    .local v2, "file":Ljava/io/File;
    :try_start_0
    iget v4, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@30
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v2, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    #@37
    .line 2468
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    #@39
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@3b
    iget v6, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    #@3d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 2451
    :goto_0
    return-void

    #@45
    .line 2469
    :catch_0
    move-exception v3

    #@46
    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_0
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
    .line 2708
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
    .line 2709
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v2, "defined-keyset"

    #@1c
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 2710
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
    .line 2711
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
    .line 2712
    const-string/jumbo v2, "defined-keyset"

    #@42
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@45
    goto :goto_0

    #@46
    .line 2707
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 29

    #@0
    .prologue
    .line 2260
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
    .line 2265
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
    .line 2266
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
    .line 2267
    const-string/jumbo v25, "PackageManager"

    #@2d
    .line 2268
    const-string/jumbo v26, "Unable to backup package manager settings,  current changes will be lost at reboot"

    #@30
    .line 2267
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2270
    return-void

    #@34
    .line 2273
    :cond_0
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@38
    move-object/from16 v25, v0

    #@3a
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    #@3d
    .line 2274
    const-string/jumbo v25, "PackageManager"

    #@40
    const-string/jumbo v26, "Preserving older settings backup"

    #@43
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 2278
    :cond_1
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@4a
    move-object/from16 v25, v0

    #@4c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    #@4f
    .line 2281
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
    .line 2282
    .local v10, "fstr":Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/BufferedOutputStream;

    #@5e
    move-object/from16 v0, v19

    #@60
    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@63
    .line 2285
    .local v19, "str":Ljava/io/BufferedOutputStream;
    new-instance v18, Lcom/android/internal/util/FastXmlSerializer;

    #@65
    invoke-direct/range {v18 .. v18}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@68
    .line 2286
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
    .line 2287
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
    .line 2288
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
    .line 2290
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
    .line 2292
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
    .line 2293
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
    .line 2294
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
    .line 2296
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
    .line 2297
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
    .line 2298
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
    .line 2299
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
    .line 2300
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
    .line 2301
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
    .line 2292
    add-int/lit8 v11, v11, 0x1

    #@12f
    goto/16 :goto_0

    #@131
    .line 2304
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
    .line 2305
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
    .line 2306
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
    .line 2307
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
    .line 2310
    :cond_3
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    #@173
    move-object/from16 v25, v0

    #@175
    if-eqz v25, :cond_4

    #@177
    .line 2311
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
    .line 2313
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
    .line 2312
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
    .line 2314
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
    .line 2317
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
    .line 2318
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
    .line 2319
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
    .line 2409
    .end local v4    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "bp$iterator":Ljava/util/Iterator;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v8

    #@1e3
    .line 2410
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
    .line 2417
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
    .line 2418
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
    .line 2419
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
    .line 2420
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    #@21b
    move-object/from16 v27, v0

    #@21d
    .line 2419
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
    .line 2255
    :cond_5
    return-void

    #@229
    .line 2313
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
    .line 2321
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
    .line 2323
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
    .line 2324
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
    .line 2325
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
    .line 2412
    .end local v4    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "bp$iterator":Ljava/util/Iterator;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v6

    #@26d
    .line 2413
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
    .line 2327
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
    .line 2329
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
    .line 2330
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
    .line 2333
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
    .line 2334
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
    .line 2337
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
    .line 2338
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
    .line 2339
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
    .line 2340
    const-string/jumbo v25, "userId"

    #@313
    .line 2341
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
    .line 2340
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
    .line 2342
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
    .line 2343
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
    .line 2345
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
    .line 2348
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
    .line 2349
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
    .line 2350
    .local v12, "item":Landroid/content/pm/PackageCleanItem;
    iget v0, v12, Landroid/content/pm/PackageCleanItem;->userId:I

    #@389
    move/from16 v25, v0

    #@38b
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@38e
    move-result-object v20

    #@38f
    .line 2351
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
    .line 2352
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
    .line 2353
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
    .line 2354
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
    .line 2355
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
    .line 2353
    :cond_c
    const-string/jumbo v25, "false"

    #@3ec
    goto :goto_9

    #@3ed
    .line 2359
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
    .line 2360
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
    .line 2361
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
    .line 2362
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
    .line 2363
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
    .line 2364
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
    .line 2368
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
    .line 2369
    .local v15, "numIVIs":I
    if-lez v15, :cond_10

    #@468
    .line 2373
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
    .line 2374
    const/4 v11, 0x0

    #@477
    :goto_b
    if-ge v11, v15, :cond_f

    #@479
    .line 2375
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
    .line 2376
    .local v14, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    move-object/from16 v0, p0

    #@489
    move-object/from16 v1, v18

    #@48b
    invoke-virtual {v0, v1, v14}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@48e
    .line 2374
    add-int/lit8 v11, v11, 0x1

    #@490
    goto :goto_b

    #@491
    .line 2378
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
    .line 2385
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
    .line 2387
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
    .line 2389
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@4bd
    .line 2391
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    #@4c0
    .line 2392
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@4c3
    .line 2393
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    #@4c6
    .line 2397
    move-object/from16 v0, p0

    #@4c8
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    #@4ca
    move-object/from16 v25, v0

    #@4cc
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    #@4cf
    .line 2398
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
    .line 2399
    const/16 v26, 0x1b0

    #@4db
    .line 2401
    const/16 v27, -0x1

    #@4dd
    const/16 v28, -0x1

    #@4df
    .line 2398
    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@4e2
    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    #@4e5
    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    #@4e8
    .line 2405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    #@4eb
    .line 2406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@4ee
    .line 2407
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
    .line 2618
    const-string/jumbo v0, "package"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2619
    const-string/jumbo v0, "name"

    #@a
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@c
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 2620
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2621
    const-string/jumbo v0, "realName"

    #@16
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    #@18
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2623
    :cond_0
    const-string/jumbo v0, "codePath"

    #@1e
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    #@20
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@23
    .line 2624
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
    .line 2625
    const-string/jumbo v0, "resourcePath"

    #@30
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    #@32
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 2628
    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 2629
    const-string/jumbo v0, "nativeLibraryPath"

    #@3c
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    #@3e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 2631
    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 2632
    const-string/jumbo v0, "primaryCpuAbi"

    #@48
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    #@4a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 2634
    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 2635
    const-string/jumbo v0, "secondaryCpuAbi"

    #@54
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    #@56
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@59
    .line 2637
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@5b
    if-eqz v0, :cond_5

    #@5d
    .line 2638
    const-string/jumbo v0, "cpuAbiOverride"

    #@60
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    #@62
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 2641
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
    .line 2642
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
    .line 2643
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
    .line 2644
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
    .line 2645
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
    .line 2646
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
    .line 2647
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    #@af
    if-nez v0, :cond_c

    #@b1
    .line 2648
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
    .line 2652
    :goto_0
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    #@bf
    if-eqz v0, :cond_6

    #@c1
    .line 2653
    const-string/jumbo v0, "uidError"

    #@c4
    const-string/jumbo v1, "true"

    #@c7
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ca
    .line 2655
    :cond_6
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->installStatus:I

    #@cc
    if-nez v0, :cond_7

    #@ce
    .line 2656
    const-string/jumbo v0, "installStatus"

    #@d1
    const-string/jumbo v1, "false"

    #@d4
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d7
    .line 2658
    :cond_7
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@d9
    if-eqz v0, :cond_8

    #@db
    .line 2659
    const-string/jumbo v0, "installer"

    #@de
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    #@e0
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e3
    .line 2661
    :cond_8
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    #@e5
    if-eqz v0, :cond_9

    #@e7
    .line 2662
    const-string/jumbo v0, "isOrphaned"

    #@ea
    const-string/jumbo v1, "true"

    #@ed
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f0
    .line 2664
    :cond_9
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@f2
    if-eqz v0, :cond_a

    #@f4
    .line 2665
    const-string/jumbo v0, "volumeUuid"

    #@f7
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    #@f9
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fc
    .line 2667
    :cond_a
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    #@fe
    if-eqz v0, :cond_b

    #@100
    .line 2668
    const-string/jumbo v0, "parentPackageName"

    #@103
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    #@105
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@108
    .line 2671
    :cond_b
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    #@10a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@10d
    .line 2673
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    #@10f
    const-string/jumbo v1, "sigs"

    #@112
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    #@114
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@117
    .line 2675
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@11a
    move-result-object v0

    #@11b
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    #@11e
    move-result-object v0

    #@11f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    #@122
    .line 2678
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@124
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    #@127
    .line 2679
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@129
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    #@12c
    .line 2680
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    #@12e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    #@131
    .line 2681
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    #@133
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    #@136
    .line 2683
    const-string/jumbo v0, "package"

    #@139
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13c
    .line 2617
    return-void

    #@13d
    .line 2650
    :cond_c
    const-string/jumbo v0, "sharedUserId"

    #@140
    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@142
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@145
    move-result-object v1

    #@146
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@149
    goto/16 :goto_0
.end method

.method writePackageListLPr()V
    .locals 1

    #@0
    .prologue
    .line 2474
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    #@4
    .line 2473
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 23
    .param p1, "creatingUserId"    # I

    #@0
    .prologue
    .line 2479
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@3
    move-result-object v19

    #@4
    const/16 v20, 0x1

    #@6
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    #@9
    move-result-object v15

    #@a
    .line 2480
    .local v15, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@d
    move-result v19

    #@e
    move/from16 v0, v19

    #@10
    new-array v14, v0, [I

    #@12
    .line 2481
    .local v14, "userIds":[I
    const/4 v7, 0x0

    #@13
    .local v7, "i":I
    :goto_0
    array-length v0, v14

    #@14
    move/from16 v19, v0

    #@16
    move/from16 v0, v19

    #@18
    if-ge v7, v0, :cond_0

    #@1a
    .line 2482
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v19

    #@1e
    check-cast v19, Landroid/content/pm/UserInfo;

    #@20
    move-object/from16 v0, v19

    #@22
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@24
    move/from16 v19, v0

    #@26
    aput v19, v14, v7

    #@28
    .line 2481
    add-int/lit8 v7, v7, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2484
    :cond_0
    const/16 v19, -0x1

    #@2d
    move/from16 v0, p1

    #@2f
    move/from16 v1, v19

    #@31
    if-eq v0, v1, :cond_1

    #@33
    .line 2485
    move/from16 v0, p1

    #@35
    invoke-static {v14, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@38
    move-result-object v14

    #@39
    .line 2489
    :cond_1
    new-instance v13, Ljava/io/File;

    #@3b
    new-instance v19, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@44
    move-object/from16 v20, v0

    #@46
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@49
    move-result-object v20

    #@4a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v19

    #@4e
    const-string/jumbo v20, ".tmp"

    #@51
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v19

    #@55
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v19

    #@59
    move-object/from16 v0, v19

    #@5b
    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5e
    .line 2490
    .local v13, "tempFile":Ljava/io/File;
    new-instance v9, Lcom/android/internal/util/JournaledFile;

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    #@64
    move-object/from16 v19, v0

    #@66
    move-object/from16 v0, v19

    #@68
    invoke-direct {v9, v0, v13}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    #@6b
    .line 2492
    .local v9, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    #@6e
    move-result-object v16

    #@6f
    .line 2494
    .local v16, "writeTarget":Ljava/io/File;
    const/16 v17, 0x0

    #@71
    .line 2496
    .local v17, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    #@73
    move-object/from16 v0, v16

    #@75
    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@78
    .line 2497
    .local v5, "fstr":Ljava/io/FileOutputStream;
    new-instance v18, Ljava/io/BufferedWriter;

    #@7a
    new-instance v19, Ljava/io/OutputStreamWriter;

    #@7c
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@7f
    move-result-object v20

    #@80
    move-object/from16 v0, v19

    #@82
    move-object/from16 v1, v20

    #@84
    invoke-direct {v0, v5, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@87
    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@8a
    .line 2498
    .local v18, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@8d
    .end local v17    # "writer":Ljava/io/BufferedWriter;
    move-result-object v19

    #@8e
    const/16 v20, 0x1a0

    #@90
    const/16 v21, 0x3e8

    #@92
    const/16 v22, 0x408

    #@94
    invoke-static/range {v19 .. v22}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    #@97
    .line 2500
    new-instance v12, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    .line 2501
    .local v12, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@a0
    move-object/from16 v19, v0

    #@a2
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@a5
    move-result-object v19

    #@a6
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a9
    move-result-object v11

    #@aa
    .local v11, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@ad
    move-result v19

    #@ae
    if-eqz v19, :cond_9

    #@b0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b3
    move-result-object v10

    #@b4
    check-cast v10, Lcom/android/server/pm/PackageSetting;

    #@b6
    .line 2502
    .local v10, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@b8
    move-object/from16 v19, v0

    #@ba
    if-eqz v19, :cond_3

    #@bc
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@be
    move-object/from16 v19, v0

    #@c0
    move-object/from16 v0, v19

    #@c2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c4
    move-object/from16 v19, v0

    #@c6
    if-nez v19, :cond_4

    #@c8
    .line 2504
    :cond_3
    const-string/jumbo v19, "android"

    #@cb
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@cd
    move-object/from16 v20, v0

    #@cf
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v19

    #@d3
    if-nez v19, :cond_2

    #@d5
    .line 2505
    const-string/jumbo v19, "PackageSettings"

    #@d8
    new-instance v20, Ljava/lang/StringBuilder;

    #@da
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v21, "Skipping "

    #@e0
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v20

    #@e4
    move-object/from16 v0, v20

    #@e6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v20

    #@ea
    const-string/jumbo v21, " due to missing metadata"

    #@ed
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v20

    #@f1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v20

    #@f5
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@f8
    goto :goto_1

    #@f9
    .line 2560
    .end local v10    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "pkg$iterator":Ljava/util/Iterator;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    #@fa
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    #@fc
    .line 2561
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .end local v18    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    const-string/jumbo v19, "PackageSettings"

    #@ff
    const-string/jumbo v20, "Failed to write packages.list"

    #@102
    move-object/from16 v0, v19

    #@104
    move-object/from16 v1, v20

    #@106
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@109
    .line 2562
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@10c
    .line 2563
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->rollback()V

    #@10f
    .line 2477
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    #@110
    .line 2503
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v10    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    :try_start_2
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@112
    move-object/from16 v19, v0

    #@114
    move-object/from16 v0, v19

    #@116
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@118
    move-object/from16 v19, v0

    #@11a
    move-object/from16 v0, v19

    #@11c
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@11e
    move-object/from16 v19, v0

    #@120
    if-eqz v19, :cond_3

    #@122
    .line 2510
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@124
    move-object/from16 v19, v0

    #@126
    move-object/from16 v0, v19

    #@128
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12a
    .line 2511
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@12c
    .line 2512
    .local v3, "dataPath":Ljava/lang/String;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@12e
    move/from16 v19, v0

    #@130
    and-int/lit8 v19, v19, 0x2

    #@132
    if-eqz v19, :cond_5

    #@134
    const/4 v8, 0x1

    #@135
    .line 2513
    .local v8, "isDebug":Z
    :goto_4
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    #@138
    move-result-object v19

    #@139
    move-object/from16 v0, v19

    #@13b
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PermissionsState;->computeGids([I)[I

    #@13e
    move-result-object v6

    #@13f
    .line 2516
    .local v6, "gids":[I
    const/16 v19, 0x20

    #@141
    move/from16 v0, v19

    #@143
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@146
    move-result v19

    #@147
    if-gez v19, :cond_2

    #@149
    .line 2535
    const/16 v19, 0x0

    #@14b
    move/from16 v0, v19

    #@14d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@150
    .line 2536
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@152
    move-object/from16 v19, v0

    #@154
    move-object/from16 v0, v19

    #@156
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    .line 2537
    const-string/jumbo v19, " "

    #@15c
    move-object/from16 v0, v19

    #@15e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    .line 2538
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@163
    move/from16 v19, v0

    #@165
    move/from16 v0, v19

    #@167
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16a
    .line 2539
    if-eqz v8, :cond_6

    #@16c
    const-string/jumbo v19, " 1 "

    #@16f
    :goto_5
    move-object/from16 v0, v19

    #@171
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    .line 2540
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    .line 2541
    const-string/jumbo v19, " "

    #@17a
    move-object/from16 v0, v19

    #@17c
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    .line 2542
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    #@181
    move-object/from16 v19, v0

    #@183
    move-object/from16 v0, v19

    #@185
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    .line 2543
    const-string/jumbo v19, " "

    #@18b
    move-object/from16 v0, v19

    #@18d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    .line 2544
    if-eqz v6, :cond_7

    #@192
    array-length v0, v6

    #@193
    move/from16 v19, v0

    #@195
    if-lez v19, :cond_7

    #@197
    .line 2545
    const/16 v19, 0x0

    #@199
    aget v19, v6, v19

    #@19b
    move/from16 v0, v19

    #@19d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a0
    .line 2546
    const/4 v7, 0x1

    #@1a1
    :goto_6
    array-length v0, v6

    #@1a2
    move/from16 v19, v0

    #@1a4
    move/from16 v0, v19

    #@1a6
    if-ge v7, v0, :cond_8

    #@1a8
    .line 2547
    const-string/jumbo v19, ","

    #@1ab
    move-object/from16 v0, v19

    #@1ad
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    .line 2548
    aget v19, v6, v7

    #@1b2
    move/from16 v0, v19

    #@1b4
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b7
    .line 2546
    add-int/lit8 v7, v7, 0x1

    #@1b9
    goto :goto_6

    #@1ba
    .line 2512
    .end local v6    # "gids":[I
    .end local v8    # "isDebug":Z
    :cond_5
    const/4 v8, 0x0

    #@1bb
    .restart local v8    # "isDebug":Z
    goto/16 :goto_4

    #@1bd
    .line 2539
    .restart local v6    # "gids":[I
    :cond_6
    const-string/jumbo v19, " 0 "

    #@1c0
    goto :goto_5

    #@1c1
    .line 2551
    :cond_7
    const-string/jumbo v19, "none"

    #@1c4
    move-object/from16 v0, v19

    #@1c6
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    .line 2553
    :cond_8
    const-string/jumbo v19, "\n"

    #@1cc
    move-object/from16 v0, v19

    #@1ce
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    .line 2554
    move-object/from16 v0, v18

    #@1d3
    invoke-virtual {v0, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@1d6
    goto/16 :goto_1

    #@1d8
    .line 2556
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "dataPath":Ljava/lang/String;
    .end local v6    # "gids":[I
    .end local v8    # "isDebug":Z
    .end local v10    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->flush()V

    #@1db
    .line 2557
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1de
    .line 2558
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->close()V

    #@1e1
    .line 2559
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@1e4
    move-object/from16 v17, v18

    #@1e6
    .end local v18    # "writer":Ljava/io/BufferedWriter;
    .local v17, "writer":Ljava/io/BufferedWriter;
    goto/16 :goto_3

    #@1e8
    .line 2560
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "pkg$iterator":Ljava/util/Iterator;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .local v17, "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    #@1e9
    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 18
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1925
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    #@3
    move-result-object v11

    #@4
    .line 1926
    .local v11, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 1927
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
    .line 1928
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@17
    move-result v13

    #@18
    if-eqz v13, :cond_1

    #@1a
    .line 1933
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@1d
    move-result v13

    #@1e
    if-nez v13, :cond_0

    #@20
    .line 1934
    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@23
    move-result v13

    #@24
    if-nez v13, :cond_1

    #@26
    .line 1935
    const-string/jumbo v13, "PackageManager"

    #@29
    .line 1936
    const-string/jumbo v14, "Unable to backup user packages state file, current changes will be lost at reboot"

    #@2c
    .line 1935
    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1938
    return-void

    #@30
    .line 1941
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    #@33
    .line 1942
    const-string/jumbo v13, "PackageManager"

    #@36
    const-string/jumbo v14, "Preserving older stopped packages backup"

    #@39
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1947
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    #@3e
    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@41
    .line 1948
    .local v4, "fstr":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/BufferedOutputStream;

    #@43
    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@46
    .line 1950
    .local v10, "str":Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    #@48
    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@4b
    .line 1951
    .local v9, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4d
    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@50
    move-result-object v13

    #@51
    invoke-interface {v9, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@54
    .line 1952
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
    .line 1953
    const-string/jumbo v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@60
    const/4 v14, 0x1

    #@61
    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@64
    .line 1955
    const-string/jumbo v13, "package-restrictions"

    #@67
    const/4 v14, 0x0

    #@68
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6b
    .line 1957
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
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v13

    #@7b
    if-eqz v13, :cond_11

    #@7d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v7

    #@81
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    #@83
    .line 1958
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    #@85
    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@88
    move-result-object v12

    #@89
    .line 1961
    .local v12, "ustate":Landroid/content/pm/PackageUserState;
    const-string/jumbo v13, "pkg"

    #@8c
    const/4 v14, 0x0

    #@8d
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@90
    .line 1962
    const-string/jumbo v13, "name"

    #@93
    iget-object v14, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@95
    const/4 v15, 0x0

    #@96
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@99
    .line 1963
    iget-wide v14, v12, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@9b
    const-wide/16 v16, 0x0

    #@9d
    cmp-long v13, v14, v16

    #@9f
    if-eqz v13, :cond_2

    #@a1
    .line 1964
    const-string/jumbo v13, "ceDataInode"

    #@a4
    iget-wide v14, v12, Landroid/content/pm/PackageUserState;->ceDataInode:J

    #@a6
    invoke-static {v9, v13, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@a9
    .line 1966
    :cond_2
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    #@ab
    if-nez v13, :cond_3

    #@ad
    .line 1967
    const-string/jumbo v13, "inst"

    #@b0
    const-string/jumbo v14, "false"

    #@b3
    const/4 v15, 0x0

    #@b4
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b7
    .line 1969
    :cond_3
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    #@b9
    if-eqz v13, :cond_4

    #@bb
    .line 1970
    const-string/jumbo v13, "stopped"

    #@be
    const-string/jumbo v14, "true"

    #@c1
    const/4 v15, 0x0

    #@c2
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c5
    .line 1972
    :cond_4
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    #@c7
    if-eqz v13, :cond_5

    #@c9
    .line 1973
    const-string/jumbo v13, "nl"

    #@cc
    const-string/jumbo v14, "true"

    #@cf
    const/4 v15, 0x0

    #@d0
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d3
    .line 1975
    :cond_5
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->hidden:Z

    #@d5
    if-eqz v13, :cond_6

    #@d7
    .line 1976
    const-string/jumbo v13, "hidden"

    #@da
    const-string/jumbo v14, "true"

    #@dd
    const/4 v15, 0x0

    #@de
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e1
    .line 1978
    :cond_6
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->suspended:Z

    #@e3
    if-eqz v13, :cond_7

    #@e5
    .line 1979
    const-string/jumbo v13, "suspended"

    #@e8
    const-string/jumbo v14, "true"

    #@eb
    const/4 v15, 0x0

    #@ec
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ef
    .line 1981
    :cond_7
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    #@f1
    if-eqz v13, :cond_8

    #@f3
    .line 1982
    const-string/jumbo v13, "blockUninstall"

    #@f6
    const-string/jumbo v14, "true"

    #@f9
    const/4 v15, 0x0

    #@fa
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fd
    .line 1984
    :cond_8
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    #@ff
    if-eqz v13, :cond_9

    #@101
    .line 1985
    const-string/jumbo v13, "enabled"

    #@104
    .line 1986
    iget v14, v12, Landroid/content/pm/PackageUserState;->enabled:I

    #@106
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@109
    move-result-object v14

    #@10a
    .line 1985
    const/4 v15, 0x0

    #@10b
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10e
    .line 1987
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@110
    if-eqz v13, :cond_9

    #@112
    .line 1988
    const-string/jumbo v13, "enabledCaller"

    #@115
    .line 1989
    iget-object v14, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    #@117
    .line 1988
    const/4 v15, 0x0

    #@118
    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11b
    .line 1992
    :cond_9
    iget v13, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@11d
    if-eqz v13, :cond_a

    #@11f
    .line 1994
    const-string/jumbo v13, "domainVerificationStatus"

    #@122
    .line 1995
    iget v14, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    #@124
    .line 1994
    invoke-static {v9, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@127
    .line 1997
    :cond_a
    iget v13, v12, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@129
    if-eqz v13, :cond_b

    #@12b
    .line 1998
    const-string/jumbo v13, "app-link-generation"

    #@12e
    .line 1999
    iget v14, v12, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    #@130
    .line 1998
    invoke-static {v9, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@133
    .line 2001
    :cond_b
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@135
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    #@138
    move-result v13

    #@139
    if-nez v13, :cond_e

    #@13b
    .line 2002
    const-string/jumbo v13, "enabled-components"

    #@13e
    const/4 v14, 0x0

    #@13f
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@142
    .line 2003
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    #@144
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@147
    move-result-object v6

    #@148
    .local v6, "name$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@14b
    move-result v13

    #@14c
    if-eqz v13, :cond_d

    #@14e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@151
    move-result-object v5

    #@152
    check-cast v5, Ljava/lang/String;

    #@154
    .line 2004
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v13, "item"

    #@157
    const/4 v14, 0x0

    #@158
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15b
    .line 2005
    const-string/jumbo v13, "name"

    #@15e
    const/4 v14, 0x0

    #@15f
    invoke-interface {v9, v14, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@162
    .line 2006
    const-string/jumbo v13, "item"

    #@165
    const/4 v14, 0x0

    #@166
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@169
    goto :goto_1

    #@16a
    .line 2046
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
    .line 2047
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v13, "PackageManager"

    #@16e
    .line 2048
    const-string/jumbo v14, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    #@171
    .line 2047
    invoke-static {v13, v14, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@174
    .line 2053
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@177
    move-result v13

    #@178
    if-eqz v13, :cond_c

    #@17a
    .line 2054
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    #@17d
    move-result v13

    #@17e
    if-nez v13, :cond_c

    #@180
    .line 2055
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
    .line 2056
    move-object/from16 v0, p0

    #@191
    iget-object v15, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    #@193
    .line 2055
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
    .line 1919
    :cond_c
    return-void

    #@19f
    .line 2008
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "name$iterator":Ljava/util/Iterator;
    .restart local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_d
    :try_start_1
    const-string/jumbo v13, "enabled-components"

    #@1a2
    const/4 v14, 0x0

    #@1a3
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a6
    .line 2010
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_e
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1a8
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    #@1ab
    move-result v13

    #@1ac
    if-nez v13, :cond_10

    #@1ae
    .line 2011
    const-string/jumbo v13, "disabled-components"

    #@1b1
    const/4 v14, 0x0

    #@1b2
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b5
    .line 2012
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    #@1b7
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ba
    move-result-object v6

    #@1bb
    .restart local v6    # "name$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1be
    move-result v13

    #@1bf
    if-eqz v13, :cond_f

    #@1c1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c4
    move-result-object v5

    #@1c5
    check-cast v5, Ljava/lang/String;

    #@1c7
    .line 2013
    .restart local v5    # "name":Ljava/lang/String;
    const-string/jumbo v13, "item"

    #@1ca
    const/4 v14, 0x0

    #@1cb
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1ce
    .line 2014
    const-string/jumbo v13, "name"

    #@1d1
    const/4 v14, 0x0

    #@1d2
    invoke-interface {v9, v14, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d5
    .line 2015
    const-string/jumbo v13, "item"

    #@1d8
    const/4 v14, 0x0

    #@1d9
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1dc
    goto :goto_2

    #@1dd
    .line 2017
    .end local v5    # "name":Ljava/lang/String;
    :cond_f
    const-string/jumbo v13, "disabled-components"

    #@1e0
    const/4 v14, 0x0

    #@1e1
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e4
    .line 2020
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_10
    const-string/jumbo v13, "pkg"

    #@1e7
    const/4 v14, 0x0

    #@1e8
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1eb
    goto/16 :goto_0

    #@1ed
    .line 2023
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_11
    const/4 v13, 0x1

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    move/from16 v1, p1

    #@1f2
    invoke-virtual {v0, v9, v1, v13}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    #@1f5
    .line 2024
    move-object/from16 v0, p0

    #@1f7
    move/from16 v1, p1

    #@1f9
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    #@1fc
    .line 2025
    move-object/from16 v0, p0

    #@1fe
    move/from16 v1, p1

    #@200
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    #@203
    .line 2026
    move-object/from16 v0, p0

    #@205
    move/from16 v1, p1

    #@207
    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    #@20a
    .line 2028
    const-string/jumbo v13, "package-restrictions"

    #@20d
    const/4 v14, 0x0

    #@20e
    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@211
    .line 2030
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@214
    .line 2032
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    #@217
    .line 2033
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@21a
    .line 2034
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    #@21d
    .line 2038
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@220
    .line 2039
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    #@223
    move-result-object v13

    #@224
    .line 2040
    const/16 v14, 0x1b0

    #@226
    .line 2042
    const/4 v15, -0x1

    #@227
    const/16 v16, -0x1

    #@229
    .line 2039
    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@22c
    .line 2045
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
    .line 2718
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_3

    #@5
    .line 2719
    const-string/jumbo v1, "item"

    #@8
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 2720
    const-string/jumbo v1, "name"

    #@e
    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@10
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13
    .line 2721
    const-string/jumbo v1, "package"

    #@16
    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    #@18
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2722
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 2723
    const-string/jumbo v1, "protection"

    #@22
    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    #@24
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 2728
    :cond_0
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    #@2d
    const/4 v2, 0x2

    #@2e
    if-ne v1, v2, :cond_2

    #@30
    .line 2729
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@32
    if-eqz v1, :cond_4

    #@34
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    #@36
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    #@38
    .line 2730
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_2

    #@3a
    .line 2731
    const-string/jumbo v1, "type"

    #@3d
    const-string/jumbo v2, "dynamic"

    #@40
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 2732
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 2733
    const-string/jumbo v1, "icon"

    #@4a
    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    #@4c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@53
    .line 2735
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@55
    if-eqz v1, :cond_2

    #@57
    .line 2736
    const-string/jumbo v1, "label"

    #@5a
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@5c
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 2740
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    const-string/jumbo v1, "item"

    #@66
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 2717
    :cond_3
    return-void

    #@6a
    .line 2729
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    #@6c
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
    .line 2120
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 2121
    return-void

    #@8
    .line 2124
    :cond_0
    const-string/jumbo v2, "perms"

    #@b
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e
    .line 2126
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
    .line 2127
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    #@21
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 2128
    const-string/jumbo v2, "name"

    #@27
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2e
    .line 2129
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
    .line 2130
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
    .line 2131
    const-string/jumbo v2, "item"

    #@4d
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    goto :goto_0

    #@51
    .line 2134
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    const-string/jumbo v2, "perms"

    #@54
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 2119
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
    .line 1797
    const-string/jumbo v3, "persistent-preferred-activities"

    #@4
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1798
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    #@f
    .line 1799
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    #@11
    .line 1800
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
    .line 1801
    .local v0, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v3, "item"

    #@28
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1802
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@2e
    .line 1803
    const-string/jumbo v3, "item"

    #@31
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    goto :goto_0

    #@35
    .line 1806
    .end local v0    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    .end local v1    # "ppa$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "persistent-preferred-activities"

    #@38
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1796
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
    .line 1783
    const-string/jumbo v3, "preferred-activities"

    #@4
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1784
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    #@f
    .line 1785
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    #@11
    .line 1786
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
    .line 1787
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v3, "item"

    #@28
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 1788
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@2e
    .line 1789
    const-string/jumbo v3, "item"

    #@31
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@34
    goto :goto_0

    #@35
    .line 1792
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v1    # "pa$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "preferred-activities"

    #@38
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3b
    .line 1782
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 4896
    if-eqz p2, :cond_0

    #@2
    .line 4897
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    #@7
    .line 4895
    :goto_0
    return-void

    #@8
    .line 4899
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
    .line 2688
    const-string/jumbo v0, "proper-signing-keyset"

    #@4
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2689
    const-string/jumbo v0, "identifier"

    #@a
    .line 2690
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 2689
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 2691
    const-string/jumbo v0, "proper-signing-keyset"

    #@18
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2687
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
    .line 2696
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    #@4
    move-result-wide v2

    #@5
    .line 2697
    .local v2, "properSigning":J
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 2698
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
    .line 2699
    .local v0, "id":J
    const-string/jumbo v7, "upgrade-keyset"

    #@18
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2700
    const-string/jumbo v7, "identifier"

    #@1e
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 2701
    const-string/jumbo v7, "upgrade-keyset"

    #@28
    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 2698
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2695
    .end local v0    # "id":J
    :cond_0
    return-void
.end method
