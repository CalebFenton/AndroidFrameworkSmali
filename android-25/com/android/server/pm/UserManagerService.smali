.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$1;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MAX_USER_ID:I = 0x53e2

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x6

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private mGlobalRestrictionOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get7()Landroid/os/IBinder;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "system"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "users"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    #@1f
    .line 219
    new-instance v0, Landroid/os/Binder;

    #@21
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@24
    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    #@26
    .line 128
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packagesLock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 415
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;)V

    #@7
    .line 414
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packagesLock"    # Ljava/lang/Object;
    .param p4, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 418
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    #@4
    .line 211
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@b
    .line 212
    new-instance v1, Ljava/lang/Object;

    #@d
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@12
    .line 249
    new-instance v1, Landroid/util/SparseArray;

    #@14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@19
    .line 263
    new-instance v1, Landroid/util/SparseArray;

    #@1b
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@20
    .line 278
    new-instance v1, Landroid/util/SparseArray;

    #@22
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@27
    .line 287
    new-instance v1, Landroid/util/SparseArray;

    #@29
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@2c
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    #@2e
    .line 300
    const/16 v1, -0x2710

    #@30
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@32
    .line 307
    new-instance v1, Landroid/util/SparseArray;

    #@34
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@37
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@39
    .line 310
    new-instance v1, Landroid/os/Bundle;

    #@3b
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@3e
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@40
    .line 317
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@42
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@45
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@47
    .line 323
    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@49
    .line 333
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@4b
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@4e
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    #@50
    .line 337
    new-instance v1, Ljava/util/ArrayList;

    #@52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@55
    .line 336
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    #@57
    .line 342
    const-string/jumbo v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    #@5a
    .line 341
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    #@5c
    .line 344
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    #@5e
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@61
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    #@63
    .line 369
    new-instance v1, Landroid/util/SparseIntArray;

    #@65
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@68
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@6a
    .line 420
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@6c
    .line 421
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@6e
    .line 422
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@70
    .line 423
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    #@72
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@75
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@77
    .line 424
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@79
    monitor-enter v2

    #@7a
    .line 425
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@7c
    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    #@7e
    invoke-direct {v1, p4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@81
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@83
    .line 426
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@85
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@88
    .line 428
    new-instance v0, Ljava/io/File;

    #@8a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@8c
    const/4 v3, 0x0

    #@8d
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@94
    .line 429
    .local v0, "userZeroDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@97
    .line 430
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@99
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    .line 431
    const/16 v3, 0x1fd

    #@9f
    .line 432
    const/4 v4, -0x1

    #@a0
    const/4 v5, -0x1

    #@a1
    .line 430
    invoke-static {v1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@a4
    .line 433
    new-instance v1, Ljava/io/File;

    #@a6
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@a8
    const-string/jumbo v4, "userlist.xml"

    #@ab
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@ae
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@b0
    .line 434
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    #@b3
    .line 435
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    #@b6
    .line 436
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b8
    monitor-exit v2

    #@b9
    .line 438
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    #@bb
    const/4 v2, 0x0

    #@bc
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V

    #@bf
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    #@c1
    .line 439
    const-class v1, Landroid/os/UserManagerInternal;

    #@c3
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    #@c5
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@c8
    .line 440
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    #@ca
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@cc
    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@cf
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@d1
    .line 441
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@d3
    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@d6
    .line 419
    return-void

    #@d7
    .line 424
    .end local v0    # "userZeroDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    #@d8
    monitor-exit v2

    #@d9
    throw v1
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 406
    new-instance v0, Ljava/lang/Object;

    #@3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@6
    invoke-direct {p0, v1, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;)V

    #@9
    .line 405
    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .locals 3
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    #@0
    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 707
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    #@7
    .line 708
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@d
    .line 712
    :goto_0
    const-string/jumbo v1, "android.intent.extra.QUIET_MODE"

    #@10
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@13
    .line 713
    const-string/jumbo v1, "android.intent.extra.USER"

    #@16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@19
    .line 714
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@1c
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@23
    .line 715
    const/high16 v1, 0x40000000    # 2.0f

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@28
    .line 716
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2d
    .line 705
    return-void

    #@2e
    .line 710
    :cond_0
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    #@31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@34
    goto :goto_0
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .locals 3
    .param p0, "creationFlags"    # I

    #@0
    .prologue
    .line 1534
    and-int/lit16 v0, p0, -0x32d

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1535
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1536
    new-instance v0, Ljava/lang/SecurityException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1539
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_1

    #@2a
    .line 1540
    new-instance v0, Ljava/lang/SecurityException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "You need MANAGE_USERS permission to create an user  with flags: "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 1533
    :cond_1
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1521
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1522
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1522
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1520
    :cond_0
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 1481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1482
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@8
    if-eq v0, v1, :cond_0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1484
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    #@f
    .line 1483
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1487
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@18
    .line 1486
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 1489
    new-instance v1, Ljava/lang/SecurityException;

    #@20
    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 1489
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 1480
    :cond_0
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1505
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1506
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1504
    :cond_0
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1584
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1585
    new-instance v1, Ljava/lang/SecurityException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Only system may: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 1582
    :cond_0
    return-void
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2162
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2163
    :try_start_0
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 2164
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 2165
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 2166
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v3

    #@1a
    .line 2161
    return-void

    #@1b
    .line 2162
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    #@0
    .prologue
    .line 1156
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Landroid/os/Bundle;

    #@8
    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    .line 1157
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@e
    .line 1158
    .local v2, "global":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/os/Bundle;

    #@16
    .line 1160
    .local v3, "local":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 1162
    return-object v0

    #@23
    .line 1164
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@26
    move-result-object v1

    #@27
    .line 1165
    .local v1, "effective":Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@2a
    .line 1166
    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@2d
    .line 1168
    return-object v1
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    #@0
    .prologue
    .line 2184
    const-string/jumbo v0, "no_add_user"

    #@3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2185
    const-string/jumbo v0, "UserManagerService"

    #@10
    const-string/jumbo v1, "Cannot add user. DISALLOW_ADD_USER is enabled."

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 2186
    const/4 v0, 0x0

    #@17
    return-object v0

    #@18
    .line 2188
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 28
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    #@0
    .prologue
    .line 2192
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v22

    #@4
    if-eqz v22, :cond_0

    #@6
    .line 2193
    const/16 v22, 0x0

    #@8
    return-object v22

    #@9
    .line 2195
    :cond_0
    and-int/lit8 v22, p2, 0x4

    #@b
    if-eqz v22, :cond_1

    #@d
    const/4 v11, 0x1

    #@e
    .line 2196
    .local v11, "isGuest":Z
    :goto_0
    and-int/lit8 v22, p2, 0x20

    #@10
    if-eqz v22, :cond_2

    #@12
    const/4 v12, 0x1

    #@13
    .line 2197
    .local v12, "isManagedProfile":Z
    :goto_1
    and-int/lit8 v22, p2, 0x8

    #@15
    if-eqz v22, :cond_3

    #@17
    const/4 v13, 0x1

    #@18
    .line 2198
    .local v13, "isRestricted":Z
    :goto_2
    move/from16 v0, p2

    #@1a
    and-int/lit16 v0, v0, 0x200

    #@1c
    move/from16 v22, v0

    #@1e
    if-eqz v22, :cond_4

    #@20
    const/4 v10, 0x1

    #@21
    .line 2199
    .local v10, "isDemo":Z
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v8

    #@25
    .line 2204
    .local v8, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@29
    move-object/from16 v23, v0

    #@2b
    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@2c
    .line 2205
    const/16 v16, 0x0

    #@2e
    .line 2206
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v22, -0x2710

    #@30
    move/from16 v0, p3

    #@32
    move/from16 v1, v22

    #@34
    if-eq v0, v1, :cond_5

    #@36
    .line 2207
    :try_start_1
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@3a
    move-object/from16 v22, v0

    #@3c
    monitor-enter v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3d
    .line 2208
    :try_start_2
    move-object/from16 v0, p0

    #@3f
    move/from16 v1, p3

    #@41
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    move-result-object v16

    #@45
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@46
    .line 2210
    if-nez v16, :cond_5

    #@48
    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@49
    const/16 v22, 0x0

    #@4b
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 2210
    return-object v22

    #@4f
    .line 2195
    .end local v8    # "ident":J
    .end local v10    # "isDemo":Z
    .end local v11    # "isGuest":Z
    .end local v12    # "isManagedProfile":Z
    .end local v13    # "isRestricted":Z
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    const/4 v11, 0x0

    #@50
    .restart local v11    # "isGuest":Z
    goto :goto_0

    #@51
    .line 2196
    :cond_2
    const/4 v12, 0x0

    #@52
    .restart local v12    # "isManagedProfile":Z
    goto :goto_1

    #@53
    .line 2197
    :cond_3
    const/4 v13, 0x0

    #@54
    .restart local v13    # "isRestricted":Z
    goto :goto_2

    #@55
    .line 2198
    :cond_4
    const/4 v10, 0x0

    #@56
    .restart local v10    # "isDemo":Z
    goto :goto_3

    #@57
    .line 2207
    .restart local v8    # "ident":J
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v24

    #@58
    :try_start_5
    monitor-exit v22

    #@59
    throw v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5a
    .line 2204
    .end local v16    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v22

    #@5b
    :try_start_6
    monitor-exit v23

    #@5c
    throw v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@5d
    .line 2326
    :catchall_2
    move-exception v22

    #@5e
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 2326
    throw v22

    #@62
    .line 2212
    :cond_5
    if-eqz v12, :cond_6

    #@64
    const/16 v22, 0x0

    #@66
    :try_start_7
    move-object/from16 v0, p0

    #@68
    move/from16 v1, p3

    #@6a
    move/from16 v2, v22

    #@6c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    #@6f
    move-result v22

    #@70
    if-eqz v22, :cond_8

    #@72
    .line 2216
    :cond_6
    if-nez v11, :cond_7

    #@74
    if-eqz v12, :cond_9

    #@76
    .line 2222
    :cond_7
    if-eqz v11, :cond_a

    #@78
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@7b
    move-result-object v22

    #@7c
    if-eqz v22, :cond_a

    #@7e
    :try_start_8
    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@7f
    .line 2223
    const/16 v22, 0x0

    #@81
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 2223
    return-object v22

    #@85
    .line 2213
    :cond_8
    :try_start_9
    const-string/jumbo v22, "UserManagerService"

    #@88
    new-instance v24, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v25, "Cannot add more managed profiles for user "

    #@90
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v24

    #@94
    move-object/from16 v0, v24

    #@96
    move/from16 v1, p3

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v24

    #@9c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v24

    #@a0
    move-object/from16 v0, v22

    #@a2
    move-object/from16 v1, v24

    #@a4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@a7
    :try_start_a
    monitor-exit v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@a8
    .line 2214
    const/16 v22, 0x0

    #@aa
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ad
    .line 2214
    return-object v22

    #@ae
    .line 2216
    :cond_9
    if-nez v10, :cond_7

    #@b0
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@b3
    move-result v22

    #@b4
    if-eqz v22, :cond_7

    #@b6
    :try_start_c
    monitor-exit v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@b7
    .line 2219
    const/16 v22, 0x0

    #@b9
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@bc
    .line 2219
    return-object v22

    #@bd
    .line 2226
    :cond_a
    if-eqz v13, :cond_b

    #@bf
    :try_start_d
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@c2
    move-result v22

    #@c3
    if-eqz v22, :cond_c

    #@c5
    .line 2231
    :cond_b
    if-eqz v13, :cond_e

    #@c7
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@ca
    move-result v22

    #@cb
    if-eqz v22, :cond_e

    #@cd
    .line 2232
    if-nez v16, :cond_d

    #@cf
    .line 2233
    const-string/jumbo v22, "UserManagerService"

    #@d2
    const-string/jumbo v24, "Cannot add restricted profile - parent user must be specified"

    #@d5
    move-object/from16 v0, v22

    #@d7
    move-object/from16 v1, v24

    #@d9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@dc
    :try_start_e
    monitor-exit v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@dd
    .line 2235
    const/16 v22, 0x0

    #@df
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e2
    .line 2235
    return-object v22

    #@e3
    .line 2227
    :cond_c
    if-eqz p3, :cond_b

    #@e5
    .line 2228
    :try_start_f
    const-string/jumbo v22, "UserManagerService"

    #@e8
    const-string/jumbo v24, "Cannot add restricted profile - parent user must be owner"

    #@eb
    move-object/from16 v0, v22

    #@ed
    move-object/from16 v1, v24

    #@ef
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@f2
    :try_start_10
    monitor-exit v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@f3
    .line 2229
    const/16 v22, 0x0

    #@f5
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f8
    .line 2229
    return-object v22

    #@f9
    .line 2237
    :cond_d
    :try_start_11
    move-object/from16 v0, v16

    #@fb
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@fd
    move-object/from16 v22, v0

    #@ff
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    #@102
    move-result v22

    #@103
    if-nez v22, :cond_e

    #@105
    .line 2238
    const-string/jumbo v22, "UserManagerService"

    #@108
    new-instance v24, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v25, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    #@110
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v24

    #@114
    move-object/from16 v0, v24

    #@116
    move/from16 v1, p3

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v24

    #@11c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v24

    #@120
    move-object/from16 v0, v22

    #@122
    move-object/from16 v1, v24

    #@124
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@127
    :try_start_12
    monitor-exit v23
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    #@128
    .line 2240
    const/16 v22, 0x0

    #@12a
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12d
    .line 2240
    return-object v22

    #@12e
    .line 2243
    :cond_e
    :try_start_13
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@131
    move-result v22

    #@132
    if-nez v22, :cond_f

    #@134
    move/from16 v0, p2

    #@136
    and-int/lit16 v0, v0, 0x100

    #@138
    move/from16 v22, v0

    #@13a
    if-eqz v22, :cond_f

    #@13c
    .line 2244
    move/from16 v0, p2

    #@13e
    and-int/lit16 v0, v0, 0x200

    #@140
    move/from16 v22, v0

    #@142
    if-nez v22, :cond_f

    #@144
    .line 2245
    const-string/jumbo v22, "UserManagerService"

    #@147
    .line 2246
    const-string/jumbo v24, "Ephemeral users are supported on split-system-user systems only."

    #@14a
    .line 2245
    move-object/from16 v0, v22

    #@14c
    move-object/from16 v1, v24

    #@14e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@151
    :try_start_14
    monitor-exit v23
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    #@152
    .line 2247
    const/16 v22, 0x0

    #@154
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@157
    .line 2247
    return-object v22

    #@158
    .line 2251
    :cond_f
    :try_start_15
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@15b
    move-result v22

    #@15c
    if-eqz v22, :cond_10

    #@15e
    .line 2252
    if-eqz v11, :cond_17

    #@160
    .line 2261
    :cond_10
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    #@163
    move-result v20

    #@164
    .line 2262
    .local v20, "userId":I
    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@167
    move-result-object v22

    #@168
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    #@16b
    .line 2263
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@16e
    move-result-object v22

    #@16f
    .line 2264
    const v24, 0x11200ac

    #@172
    .line 2263
    move-object/from16 v0, v22

    #@174
    move/from16 v1, v24

    #@176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@179
    move-result v7

    #@17a
    .line 2266
    .local v7, "ephemeralGuests":Z
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@17e
    move-object/from16 v24, v0

    #@180
    monitor-enter v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    #@181
    .line 2268
    if-eqz v11, :cond_11

    #@183
    if-nez v7, :cond_12

    #@185
    :cond_11
    :try_start_16
    move-object/from16 v0, p0

    #@187
    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    #@189
    move/from16 v22, v0

    #@18b
    if-nez v22, :cond_12

    #@18d
    .line 2269
    if-eqz v16, :cond_13

    #@18f
    move-object/from16 v0, v16

    #@191
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@193
    move-object/from16 v22, v0

    #@195
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@198
    move-result v22

    #@199
    .line 2268
    if-eqz v22, :cond_13

    #@19b
    .line 2270
    :cond_12
    move/from16 v0, p2

    #@19d
    or-int/lit16 v0, v0, 0x100

    #@19f
    move/from16 p2, v0

    #@1a1
    .line 2273
    :cond_13
    new-instance v21, Landroid/content/pm/UserInfo;

    #@1a3
    const/16 v22, 0x0

    #@1a5
    move-object/from16 v0, v21

    #@1a7
    move/from16 v1, v20

    #@1a9
    move-object/from16 v2, p1

    #@1ab
    move-object/from16 v3, v22

    #@1ad
    move/from16 v4, p2

    #@1af
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@1b2
    .line 2274
    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    #@1b4
    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@1b6
    move/from16 v22, v0

    #@1b8
    add-int/lit8 v25, v22, 0x1

    #@1ba
    move/from16 v0, v25

    #@1bc
    move-object/from16 v1, p0

    #@1be
    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@1c0
    move/from16 v0, v22

    #@1c2
    move-object/from16 v1, v21

    #@1c4
    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@1c6
    .line 2275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c9
    move-result-wide v14

    #@1ca
    .line 2276
    .local v14, "now":J
    const-wide v26, 0xdc46c32800L

    #@1cf
    cmp-long v22, v14, v26

    #@1d1
    if-lez v22, :cond_19

    #@1d3
    .end local v14    # "now":J
    :goto_5
    move-object/from16 v0, v21

    #@1d5
    iput-wide v14, v0, Landroid/content/pm/UserInfo;->creationTime:J

    #@1d7
    .line 2277
    const/16 v22, 0x1

    #@1d9
    move/from16 v0, v22

    #@1db
    move-object/from16 v1, v21

    #@1dd
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@1df
    .line 2278
    sget-object v22, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@1e1
    move-object/from16 v0, v22

    #@1e3
    move-object/from16 v1, v21

    #@1e5
    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@1e7
    .line 2279
    new-instance v19, Lcom/android/server/pm/UserManagerService$UserData;

    #@1e9
    const/16 v22, 0x0

    #@1eb
    move-object/from16 v0, v19

    #@1ed
    move-object/from16 v1, v22

    #@1ef
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@1f2
    .line 2280
    .local v19, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v21

    #@1f4
    move-object/from16 v1, v19

    #@1f6
    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1f8
    .line 2281
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1fc
    move-object/from16 v22, v0

    #@1fe
    move-object/from16 v0, v22

    #@200
    move/from16 v1, v20

    #@202
    move-object/from16 v2, v19

    #@204
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    #@207
    :try_start_17
    monitor-exit v24

    #@208
    .line 2283
    move-object/from16 v0, p0

    #@20a
    move-object/from16 v1, v19

    #@20c
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@20f
    .line 2284
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    #@212
    .line 2285
    if-eqz v16, :cond_15

    #@214
    .line 2286
    if-eqz v12, :cond_1a

    #@216
    .line 2287
    move-object/from16 v0, v16

    #@218
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@21a
    move-object/from16 v22, v0

    #@21c
    move-object/from16 v0, v22

    #@21e
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@220
    move/from16 v22, v0

    #@222
    const/16 v24, -0x2710

    #@224
    move/from16 v0, v22

    #@226
    move/from16 v1, v24

    #@228
    if-ne v0, v1, :cond_14

    #@22a
    .line 2288
    move-object/from16 v0, v16

    #@22c
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@22e
    move-object/from16 v22, v0

    #@230
    move-object/from16 v0, v16

    #@232
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@234
    move-object/from16 v24, v0

    #@236
    move-object/from16 v0, v24

    #@238
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@23a
    move/from16 v24, v0

    #@23c
    move/from16 v0, v24

    #@23e
    move-object/from16 v1, v22

    #@240
    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@242
    .line 2289
    move-object/from16 v0, p0

    #@244
    move-object/from16 v1, v16

    #@246
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@249
    .line 2291
    :cond_14
    move-object/from16 v0, v16

    #@24b
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@24d
    move-object/from16 v22, v0

    #@24f
    move-object/from16 v0, v22

    #@251
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@253
    move/from16 v22, v0

    #@255
    move/from16 v0, v22

    #@257
    move-object/from16 v1, v21

    #@259
    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@25b
    :cond_15
    :goto_6
    :try_start_18
    monitor-exit v23

    #@25c
    .line 2301
    move-object/from16 v0, p0

    #@25e
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@260
    move-object/from16 v22, v0

    #@262
    const-class v23, Landroid/os/storage/StorageManager;

    #@264
    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@267
    move-result-object v18

    #@268
    check-cast v18, Landroid/os/storage/StorageManager;

    #@26a
    .line 2302
    .local v18, "storage":Landroid/os/storage/StorageManager;
    move-object/from16 v0, v21

    #@26c
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@26e
    move/from16 v22, v0

    #@270
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@273
    move-result v23

    #@274
    move-object/from16 v0, v18

    #@276
    move/from16 v1, v20

    #@278
    move/from16 v2, v22

    #@27a
    move/from16 v3, v23

    #@27c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    #@27f
    .line 2303
    move-object/from16 v0, p0

    #@281
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@283
    move-object/from16 v22, v0

    #@285
    move-object/from16 v0, v21

    #@287
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@289
    move/from16 v23, v0

    #@28b
    .line 2304
    const/16 v24, 0x3

    #@28d
    .line 2303
    move-object/from16 v0, v22

    #@28f
    move/from16 v1, v20

    #@291
    move/from16 v2, v23

    #@293
    move/from16 v3, v24

    #@295
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    #@298
    .line 2305
    move-object/from16 v0, p0

    #@29a
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@29c
    move-object/from16 v22, v0

    #@29e
    move-object/from16 v0, v22

    #@2a0
    move/from16 v1, v20

    #@2a2
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I)V

    #@2a5
    .line 2306
    const/16 v22, 0x0

    #@2a7
    move/from16 v0, v22

    #@2a9
    move-object/from16 v1, v21

    #@2ab
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@2ad
    .line 2307
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2b1
    move-object/from16 v22, v0

    #@2b3
    monitor-enter v22
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    #@2b4
    .line 2308
    :try_start_19
    move-object/from16 v0, p0

    #@2b6
    move-object/from16 v1, v19

    #@2b8
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    #@2bb
    :try_start_1a
    monitor-exit v22

    #@2bc
    .line 2310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    #@2bf
    .line 2311
    new-instance v17, Landroid/os/Bundle;

    #@2c1
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@2c4
    .line 2312
    .local v17, "restrictions":Landroid/os/Bundle;
    if-eqz v11, :cond_16

    #@2c6
    .line 2313
    move-object/from16 v0, p0

    #@2c8
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@2ca
    move-object/from16 v23, v0

    #@2cc
    monitor-enter v23
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    #@2cd
    .line 2314
    :try_start_1b
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@2d1
    move-object/from16 v22, v0

    #@2d3
    move-object/from16 v0, v17

    #@2d5
    move-object/from16 v1, v22

    #@2d7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    #@2da
    :try_start_1c
    monitor-exit v23

    #@2db
    .line 2317
    :cond_16
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@2df
    move-object/from16 v23, v0

    #@2e1
    monitor-enter v23
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    #@2e2
    .line 2318
    :try_start_1d
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@2e6
    move-object/from16 v22, v0

    #@2e8
    move-object/from16 v0, v22

    #@2ea
    move/from16 v1, v20

    #@2ec
    move-object/from16 v2, v17

    #@2ee
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    #@2f1
    :try_start_1e
    monitor-exit v23

    #@2f2
    .line 2320
    move-object/from16 v0, p0

    #@2f4
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2f6
    move-object/from16 v22, v0

    #@2f8
    move-object/from16 v0, v22

    #@2fa
    move/from16 v1, v20

    #@2fc
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    #@2ff
    .line 2321
    new-instance v6, Landroid/content/Intent;

    #@301
    const-string/jumbo v22, "android.intent.action.USER_ADDED"

    #@304
    move-object/from16 v0, v22

    #@306
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@309
    .line 2322
    .local v6, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v22, "android.intent.extra.user_handle"

    #@30c
    move-object/from16 v0, v22

    #@30e
    move/from16 v1, v20

    #@310
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@313
    .line 2323
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@317
    move-object/from16 v22, v0

    #@319
    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@31b
    .line 2324
    const-string/jumbo v24, "android.permission.MANAGE_USERS"

    #@31e
    .line 2323
    move-object/from16 v0, v22

    #@320
    move-object/from16 v1, v23

    #@322
    move-object/from16 v2, v24

    #@324
    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@327
    .line 2325
    move-object/from16 v0, p0

    #@329
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@32b
    move-object/from16 v23, v0

    #@32d
    if-eqz v11, :cond_1c

    #@32f
    const-string/jumbo v22, "users_guest_created"

    #@332
    :goto_7
    const/16 v24, 0x1

    #@334
    move-object/from16 v0, v23

    #@336
    move-object/from16 v1, v22

    #@338
    move/from16 v2, v24

    #@33a
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    #@33d
    .line 2327
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@340
    .line 2329
    return-object v21

    #@341
    .line 2252
    .end local v6    # "addedIntent":Landroid/content/Intent;
    .end local v7    # "ephemeralGuests":Z
    .end local v17    # "restrictions":Landroid/os/Bundle;
    .end local v18    # "storage":Landroid/os/storage/StorageManager;
    .end local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v20    # "userId":I
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_17
    if-nez v12, :cond_10

    #@343
    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    #@346
    move-result-object v22

    #@347
    if-nez v22, :cond_10

    #@349
    .line 2253
    or-int/lit8 p2, p2, 0x1

    #@34b
    .line 2254
    move-object/from16 v0, p0

    #@34d
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@34f
    move-object/from16 v22, v0

    #@351
    monitor-enter v22
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    #@352
    .line 2255
    :try_start_20
    move-object/from16 v0, p0

    #@354
    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    #@356
    move/from16 v24, v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    #@358
    if-nez v24, :cond_18

    #@35a
    .line 2256
    or-int/lit8 p2, p2, 0x2

    #@35c
    :cond_18
    :try_start_21
    monitor-exit v22

    #@35d
    goto/16 :goto_4

    #@35f
    .line 2254
    :catchall_3
    move-exception v24

    #@360
    monitor-exit v22

    #@361
    throw v24

    #@362
    .line 2276
    .restart local v7    # "ephemeralGuests":Z
    .restart local v14    # "now":J
    .restart local v20    # "userId":I
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_19
    const-wide/16 v14, 0x0

    #@364
    goto/16 :goto_5

    #@366
    .line 2266
    .end local v14    # "now":J
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v22

    #@367
    monitor-exit v24

    #@368
    throw v22

    #@369
    .line 2292
    .restart local v19    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1a
    if-eqz v13, :cond_15

    #@36b
    .line 2293
    move-object/from16 v0, v16

    #@36d
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@36f
    move-object/from16 v22, v0

    #@371
    move-object/from16 v0, v22

    #@373
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@375
    move/from16 v22, v0

    #@377
    const/16 v24, -0x2710

    #@379
    move/from16 v0, v22

    #@37b
    move/from16 v1, v24

    #@37d
    if-ne v0, v1, :cond_1b

    #@37f
    .line 2294
    move-object/from16 v0, v16

    #@381
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@383
    move-object/from16 v22, v0

    #@385
    move-object/from16 v0, v16

    #@387
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@389
    move-object/from16 v24, v0

    #@38b
    move-object/from16 v0, v24

    #@38d
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@38f
    move/from16 v24, v0

    #@391
    move/from16 v0, v24

    #@393
    move-object/from16 v1, v22

    #@395
    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@397
    .line 2295
    move-object/from16 v0, p0

    #@399
    move-object/from16 v1, v16

    #@39b
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@39e
    .line 2297
    :cond_1b
    move-object/from16 v0, v16

    #@3a0
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@3a2
    move-object/from16 v22, v0

    #@3a4
    move-object/from16 v0, v22

    #@3a6
    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@3a8
    move/from16 v22, v0

    #@3aa
    move/from16 v0, v22

    #@3ac
    move-object/from16 v1, v21

    #@3ae
    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    #@3b0
    goto/16 :goto_6

    #@3b2
    .line 2307
    .restart local v18    # "storage":Landroid/os/storage/StorageManager;
    :catchall_5
    move-exception v23

    #@3b3
    :try_start_22
    monitor-exit v22

    #@3b4
    throw v23

    #@3b5
    .line 2313
    .restart local v17    # "restrictions":Landroid/os/Bundle;
    :catchall_6
    move-exception v22

    #@3b6
    monitor-exit v23

    #@3b7
    throw v22

    #@3b8
    .line 2317
    :catchall_7
    move-exception v22

    #@3b9
    monitor-exit v23

    #@3ba
    throw v22

    #@3bb
    .line 2325
    .restart local v6    # "addedIntent":Landroid/content/Intent;
    :cond_1c
    const-string/jumbo v22, "users_user_created"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    #@3be
    goto/16 :goto_7
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3526
    const-string/jumbo v0, "UserManagerService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 3527
    const-string/jumbo v2, ""

    #@f
    .line 3526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3525
    return-void
.end method

.method public static enforceSerialNumber(Ljava/io/File;I)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2980
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2984
    const-string/jumbo v2, "UserManagerService"

    #@9
    const-string/jumbo v3, "Device is emulating FBE; assuming current serial number is valid"

    #@c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 2985
    return-void

    #@10
    .line 2988
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getSerialNumber(Ljava/io/File;)I

    #@13
    move-result v1

    #@14
    .line 2989
    .local v1, "foundSerial":I
    const-string/jumbo v2, "UserManagerService"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Found "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, " with serial number "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 2991
    const/4 v2, -0x1

    #@3a
    if-ne v1, v2, :cond_2

    #@3c
    .line 2992
    const-string/jumbo v2, "UserManagerService"

    #@3f
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Serial number missing on "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, "; assuming current is valid"

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 2994
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->setSerialNumber(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 2979
    :cond_1
    :goto_0
    return-void

    #@61
    .line 2995
    :catch_0
    move-exception v0

    #@62
    .line 2996
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UserManagerService"

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "Failed to set serial number on "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    goto :goto_0

    #@7d
    .line 2999
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eq v1, p1, :cond_1

    #@7f
    .line 3000
    new-instance v2, Ljava/io/IOException;

    #@81
    new-instance v3, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v4, "Found serial number "

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    .line 3001
    const-string/jumbo v4, " doesn\'t match expected "

    #@94
    .line 3000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v2
.end method

.method private fallbackToSingleUserLP()V
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1786
    const/16 v2, 0x10

    #@4
    .line 1789
    .local v2, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@7
    move-result v8

    #@8
    if-nez v8, :cond_0

    #@a
    .line 1790
    const/16 v2, 0x13

    #@c
    .line 1793
    :cond_0
    new-instance v4, Landroid/content/pm/UserInfo;

    #@e
    invoke-direct {v4, v7, v9, v9, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@11
    .line 1794
    .local v4, "system":Landroid/content/pm/UserInfo;
    new-instance v5, Lcom/android/server/pm/UserManagerService$UserData;

    #@13
    invoke-direct {v5, v9}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@16
    .line 1795
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@18
    .line 1796
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@1a
    monitor-enter v8

    #@1b
    .line 1797
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1d
    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    #@1f
    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v8

    #@23
    .line 1799
    const/16 v8, 0xa

    #@25
    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@27
    .line 1800
    const/4 v8, 0x6

    #@28
    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@2a
    .line 1802
    new-instance v3, Landroid/os/Bundle;

    #@2c
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@2f
    .line 1804
    .local v3, "restrictions":Landroid/os/Bundle;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@31
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object v8

    #@35
    .line 1805
    const v9, 0x107004b

    #@38
    .line 1804
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 1806
    .local v0, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v8, v0

    #@3d
    :goto_0
    if-ge v7, v8, :cond_2

    #@3f
    aget-object v6, v0, v7

    #@41
    .line 1807
    .local v6, "userRestriction":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_1

    #@47
    .line 1808
    const/4 v9, 0x1

    #@48
    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@4b
    .line 1806
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 1796
    .end local v0    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    .end local v3    # "restrictions":Landroid/os/Bundle;
    .end local v6    # "userRestriction":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@4f
    monitor-exit v8

    #@50
    throw v7

    #@51
    .line 1811
    .restart local v3    # "restrictions":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@52
    .line 1812
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "UserManagerService"

    #@55
    const-string/jumbo v8, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    #@58
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 1815
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@5d
    monitor-enter v8

    #@5e
    .line 1816
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@60
    const/4 v9, 0x0

    #@61
    invoke-virtual {v7, v9, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@64
    monitor-exit v8

    #@65
    .line 1819
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    #@68
    .line 1820
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    #@6b
    .line 1822
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@6e
    .line 1823
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    #@71
    .line 1785
    return-void

    #@72
    .line 1815
    :catchall_1
    move-exception v7

    #@73
    monitor-exit v8

    #@74
    throw v7
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .locals 6

    #@0
    .prologue
    .line 2362
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 2363
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v1

    #@9
    .line 2364
    .local v1, "size":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@c
    .line 2365
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    #@14
    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@16
    .line 2366
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 2364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2366
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@25
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    #@27
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_0

    #@2d
    monitor-exit v4

    #@2e
    .line 2367
    return-object v2

    #@2f
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v4

    #@30
    .line 2371
    const/4 v3, 0x0

    #@31
    return-object v3

    #@32
    .line 2362
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v3

    #@33
    monitor-exit v4

    #@34
    throw v3
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .locals 6

    #@0
    .prologue
    .line 1458
    const/4 v0, 0x0

    #@1
    .line 1459
    .local v0, "aliveUserCount":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    .line 1461
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@a
    .line 1462
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    #@12
    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@14
    .line 1463
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@16
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    #@18
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 1464
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 1461
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1464
    :cond_1
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@29
    if-nez v4, :cond_0

    #@2b
    .line 1465
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 1468
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1180
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/Bundle;

    #@b
    .line 1182
    .local v0, "restrictions":Landroid/os/Bundle;
    if-nez v0, :cond_0

    #@d
    .line 1183
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    #@10
    move-result-object v0

    #@11
    .line 1184
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v2

    #@17
    .line 1186
    return-object v0

    #@18
    .line 1180
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    #@0
    .prologue
    .line 374
    const-class v0, Lcom/android/server/pm/UserManagerService;

    #@2
    monitor-enter v0

    #@3
    .line 375
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 374
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private getNextAvailableId()I
    .locals 3

    #@0
    .prologue
    .line 2955
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2956
    const/16 v0, 0xa

    #@5
    .line 2957
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x53e2

    #@7
    if-ge v0, v1, :cond_2

    #@9
    .line 2958
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@e
    move-result v1

    #@f
    if-gez v1, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 2961
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    :cond_1
    monitor-exit v2

    #@1d
    .line 2959
    return v0

    #@1e
    :cond_2
    monitor-exit v2

    #@1f
    .line 2964
    new-instance v1, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v2, "No user id available!"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 2955
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    const v1, 0x1040535

    #@9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    #@0
    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v3

    #@4
    .line 613
    .local v3, "user":Landroid/content/pm/UserInfo;
    new-instance v2, Landroid/util/IntArray;

    #@6
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v5

    #@c
    invoke-direct {v2, v5}, Landroid/util/IntArray;-><init>(I)V

    #@f
    .line 614
    .local v2, "result":Landroid/util/IntArray;
    if-nez v3, :cond_0

    #@11
    .line 616
    return-object v2

    #@12
    .line 618
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@17
    move-result v4

    #@18
    .line 619
    .local v4, "userSize":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    #@1b
    .line 620
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    #@23
    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@25
    .line 621
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_2

    #@2b
    .line 619
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 624
    :cond_2
    if-eqz p2, :cond_3

    #@30
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 627
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@38
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    #@3a
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@3d
    move-result v5

    #@3e
    if-nez v5, :cond_1

    #@40
    .line 630
    iget-boolean v5, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@42
    if-nez v5, :cond_1

    #@44
    .line 633
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@46
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    #@49
    goto :goto_1

    #@4a
    .line 635
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_4
    return-object v2
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 686
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@4
    move-result-object v1

    #@5
    .line 687
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    #@7
    .line 688
    return-object v3

    #@8
    .line 690
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@a
    .line 691
    .local v0, "parentUserId":I
    const/16 v2, -0x2710

    #@c
    if-ne v0, v2, :cond_1

    #@e
    .line 692
    return-object v3

    #@f
    .line 694
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@12
    move-result-object v2

    #@13
    return-object v2
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .param p3, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 590
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    #@4
    move-result-object v2

    #@5
    .line 591
    .local v2, "profileIds":Landroid/util/IntArray;
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    #@a
    move-result v6

    #@b
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 592
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    #@12
    move-result v6

    #@13
    if-ge v0, v6, :cond_1

    #@15
    .line 593
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    #@18
    move-result v1

    #@19
    .line 594
    .local v1, "profileId":I
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1b
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    #@21
    iget-object v3, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@23
    .line 596
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_0

    #@25
    .line 597
    new-instance v4, Landroid/content/pm/UserInfo;

    #@27
    invoke-direct {v4, v3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    #@2a
    .line 598
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iput-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@2c
    .line 599
    iput-object v7, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@2e
    move-object v3, v4

    #@2f
    .line 603
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 592
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 601
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    #@38
    move-result-object v3

    #@39
    goto :goto_1

    #@3a
    .line 605
    .end local v1    # "profileId":I
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return-object v5
.end method

.method private static getSerialNumber(Ljava/io/File;)I
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3027
    const/16 v5, 0x100

    #@2
    :try_start_0
    new-array v0, v5, [B

    #@4
    .line 3028
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    const-string/jumbo v6, "user.serial"

    #@b
    invoke-static {v5, v6, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    #@e
    move-result v3

    #@f
    .line 3029
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    #@11
    const/4 v5, 0x0

    #@12
    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    .line 3031
    .local v4, "serial":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    move-result v5

    #@19
    return v5

    #@1a
    .line 3032
    :catch_0
    move-exception v2

    #@1b
    .line 3033
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    #@1d
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v7, "Bad serial number: "

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v5
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    #@35
    .line 3035
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "serial":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@36
    .line 3036
    .local v1, "e":Landroid/system/ErrnoException;
    iget v5, v1, Landroid/system/ErrnoException;->errno:I

    #@38
    sget v6, Landroid/system/OsConstants;->ENODATA:I

    #@3a
    if-ne v5, v6, :cond_0

    #@3c
    .line 3037
    const/4 v5, -0x1

    #@3d
    return v5

    #@3e
    .line 3039
    :cond_0
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@41
    move-result-object v5

    #@42
    throw v5
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 2637
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v3

    #@a
    .line 2638
    const/16 v4, 0x2000

    #@c
    .line 2637
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@f
    move-result-object v3

    #@10
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 2642
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 2637
    return v3

    #@16
    .line 2639
    :catch_0
    move-exception v2

    #@17
    .line 2640
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    #@18
    .line 2642
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 2640
    return v3

    #@1c
    .line 2641
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    #@1d
    .line 2642
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 2641
    throw v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 928
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    #@9
    .line 930
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    #@b
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@d
    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 933
    :cond_0
    return-object v0

    #@1a
    .line 931
    :cond_1
    return-object v2
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 952
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 918
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    #@9
    .line 920
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    #@b
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@d
    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    #@f
    if-eqz v2, :cond_0

    #@11
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@13
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 924
    :cond_0
    if-eqz v0, :cond_1

    #@1b
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1d
    :cond_1
    return-object v1

    #@1e
    .line 921
    :cond_2
    const-string/jumbo v2, "UserManagerService"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "getUserInfo: unknown user #"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 922
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 941
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 942
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    #@c
    .line 943
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_0

    #@e
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 941
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v0

    #@7
    .line 1565
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    #@9
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1566
    if-nez v0, :cond_1

    #@11
    .line 1565
    :cond_0
    :goto_0
    return v1

    #@12
    .line 1568
    :cond_1
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    #@15
    .line 1567
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 1571
    const-string/jumbo v3, "android.permission.CREATE_USERS"

    #@1e
    .line 1570
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    move v1, v2

    #@25
    goto :goto_0
.end method

.method private static final hasManageUsersPermission()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1551
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    #@8
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 1552
    if-nez v0, :cond_1

    #@10
    .line 1551
    :cond_0
    :goto_0
    return v1

    #@11
    .line 1554
    :cond_1
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    #@14
    .line 1555
    const/4 v4, -0x1

    #@15
    .line 1553
    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    move v1, v2

    #@1c
    goto :goto_0
.end method

.method private initDefaultGuestRestrictions()V
    .locals 4

    #@0
    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@2
    monitor-enter v1

    #@3
    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@5
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1063
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@d
    const-string/jumbo v2, "no_config_wifi"

    #@10
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@14
    .line 1064
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@16
    const-string/jumbo v2, "no_install_unknown_sources"

    #@19
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1d
    .line 1065
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@1f
    const-string/jumbo v2, "no_outgoing_calls"

    #@22
    const/4 v3, 0x1

    #@23
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@26
    .line 1066
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@28
    const-string/jumbo v2, "no_sms"

    #@2b
    const/4 v3, 0x1

    #@2c
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_0
    monitor-exit v1

    #@30
    .line 1060
    return-void

    #@31
    .line 1061
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@5
    .line 1172
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 699
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    #@4
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 700
    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@a
    const/16 v3, -0x2710

    #@c
    if-eq v2, v3, :cond_2

    #@e
    .line 701
    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@10
    iget v3, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 699
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 701
    goto :goto_0

    #@17
    :cond_2
    move v0, v1

    #@18
    .line 700
    goto :goto_0
.end method

.method private isSameProfileGroupLP(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    #@0
    .prologue
    const/16 v5, -0x2710

    #@2
    const/4 v2, 0x0

    #@3
    .line 663
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 664
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v1

    #@a
    .line 665
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@c
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-ne v4, v5, :cond_1

    #@10
    :cond_0
    monitor-exit v3

    #@11
    .line 666
    return v2

    #@12
    .line 668
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@15
    move-result-object v0

    #@16
    .line 669
    .local v0, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2

    #@18
    .line 670
    iget v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    if-ne v4, v5, :cond_3

    #@1c
    :cond_2
    monitor-exit v3

    #@1d
    .line 671
    return v2

    #@1e
    .line 673
    :cond_3
    :try_start_2
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@20
    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    if-ne v4, v5, :cond_4

    #@24
    const/4 v2, 0x1

    #@25
    :cond_4
    monitor-exit v3

    #@26
    return v2

    #@27
    .line 663
    .end local v0    # "otherUserInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method private isUserLimitReached()Z
    .locals 3

    #@0
    .prologue
    .line 1422
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1423
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .local v0, "count":I
    monitor-exit v1

    #@8
    .line 1425
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@b
    move-result v1

    #@c
    if-lt v0, v1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :goto_0
    return v1

    #@10
    .line 1422
    .end local v0    # "count":I
    :catchall_0
    move-exception v2

    #@11
    monitor-exit v1

    #@12
    throw v2

    #@13
    .line 1425
    .restart local v0    # "count":I
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method private maybeInitializeDemoMode(I)V
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2927
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    if-eqz p1, :cond_0

    #@a
    .line 2929
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v2

    #@10
    .line 2930
    const v3, 0x1040072

    #@13
    .line 2929
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    .line 2931
    .local v7, "demoLauncher":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    .line 2932
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@20
    move-result-object v6

    #@21
    .line 2933
    .local v6, "componentToEnable":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 2935
    .local v1, "demoLauncherPkg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@28
    move-result-object v0

    #@29
    .line 2937
    .local v0, "iPm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x1

    #@2a
    const/4 v3, 0x0

    #@2b
    .line 2936
    invoke-interface {v0, v6, v2, v3, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    #@2e
    .line 2940
    const/4 v2, 0x1

    #@2f
    const/4 v3, 0x0

    #@30
    .line 2941
    const/4 v5, 0x0

    #@31
    move v4, p1

    #@32
    .line 2939
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 2926
    .end local v0    # "iPm":Landroid/content/pm/IPackageManager;
    .end local v1    # "demoLauncherPkg":Ljava/lang/String;
    .end local v6    # "componentToEnable":Landroid/content/ComponentName;
    .end local v7    # "demoLauncher":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@36
    .line 2942
    .restart local v1    # "demoLauncherPkg":Ljava/lang/String;
    .restart local v6    # "componentToEnable":Landroid/content/ComponentName;
    .restart local v7    # "demoLauncher":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@37
    .local v8, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2968
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "res_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ".xml"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1350
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1351
    return-void

    #@7
    .line 1354
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    .line 1355
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    #@e
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@11
    .line 1357
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@13
    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    #@15
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@18
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1b
    .line 1345
    return-void
.end method

.method static readApplicationRestrictionsLP(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    #@0
    .prologue
    .line 2655
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2656
    .local v3, "restrictions":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 2657
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_0

    #@14
    .line 2658
    return-object v3

    #@15
    .line 2661
    :cond_0
    const/4 v1, 0x0

    #@16
    .line 2663
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@19
    move-result-object v1

    #@1a
    .line 2664
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1d
    move-result-object v2

    #@1e
    .line 2665
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@20
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@27
    .line 2666
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2a
    .line 2667
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@2d
    move-result v5

    #@2e
    const/4 v6, 0x2

    #@2f
    if-eq v5, v6, :cond_1

    #@31
    .line 2668
    const-string/jumbo v5, "UserManagerService"

    #@34
    new-instance v6, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v7, "Unable to read restrictions file "

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    .line 2669
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@43
    move-result-object v7

    #@44
    .line 2668
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 2678
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@52
    .line 2670
    return-object v3

    #@53
    .line 2672
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@56
    move-result v5

    #@57
    const/4 v6, 0x1

    #@58
    if-eq v5, v6, :cond_2

    #@5a
    .line 2673
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 2675
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    #@5f
    .line 2676
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "UserManagerService"

    #@62
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, "Error parsing "

    #@6a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    .line 2678
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@80
    .line 2680
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    #@81
    .line 2678
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@84
    goto :goto_1

    #@85
    .line 2677
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    #@86
    .line 2678
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@89
    .line 2677
    throw v5
.end method

.method private readApplicationRestrictionsLP(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2648
    new-instance v0, Landroid/util/AtomicFile;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 2649
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 2648
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    .line 2650
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLP(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
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
    .line 2729
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2730
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8
    move-result v1

    #@9
    .line 2731
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 2732
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    #@12
    goto :goto_0

    #@13
    .line 2734
    :cond_0
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2685
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v6

    #@4
    .line 2686
    .local v6, "type":I
    const/4 v10, 0x2

    #@5
    if-ne v6, v10, :cond_2

    #@7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a
    move-result-object v10

    #@b
    const-string/jumbo v11, "entry"

    #@e
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_2

    #@14
    .line 2687
    const-string/jumbo v10, "key"

    #@17
    const/4 v11, 0x0

    #@18
    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 2688
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v10, "type"

    #@1f
    const/4 v11, 0x0

    #@20
    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    .line 2689
    .local v7, "valType":Ljava/lang/String;
    const-string/jumbo v10, "m"

    #@27
    const/4 v11, 0x0

    #@28
    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 2690
    .local v4, "multiple":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@2e
    .line 2691
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@31
    .line 2692
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@34
    move-result v2

    #@35
    .line 2693
    .local v2, "count":I
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    #@37
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3a
    move-result v6

    #@3b
    const/4 v10, 0x1

    #@3c
    if-eq v6, v10, :cond_1

    #@3e
    .line 2694
    const/4 v10, 0x2

    #@3f
    if-ne v6, v10, :cond_0

    #@41
    .line 2695
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@44
    move-result-object v10

    #@45
    const-string/jumbo v11, "value"

    #@48
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v10

    #@4c
    .line 2694
    if-eqz v10, :cond_0

    #@4e
    .line 2696
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 2697
    add-int/lit8 v2, v2, -0x1

    #@5b
    goto :goto_0

    #@5c
    .line 2700
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v10

    #@60
    new-array v9, v10, [Ljava/lang/String;

    #@62
    .line 2701
    .local v9, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@65
    .line 2702
    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@68
    .line 2684
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "multiple":Ljava/lang/String;
    .end local v7    # "valType":Ljava/lang/String;
    .end local v9    # "valueStrings":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    #@69
    .line 2703
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "multiple":Ljava/lang/String;
    .restart local v7    # "valType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "B"

    #@6c
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v10

    #@70
    if-eqz v10, :cond_4

    #@72
    .line 2704
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@79
    goto :goto_1

    #@7a
    .line 2705
    :cond_4
    const-string/jumbo v10, "BA"

    #@7d
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v10

    #@81
    if-eqz v10, :cond_6

    #@83
    .line 2706
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@86
    move-result v5

    #@87
    .line 2707
    .local v5, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    #@89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8c
    .line 2708
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_2
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@8f
    move-result v10

    #@90
    if-eqz v10, :cond_5

    #@92
    .line 2709
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    #@95
    move-result-object v1

    #@96
    .line 2710
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@99
    goto :goto_2

    #@9a
    .line 2713
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9d
    move-result v10

    #@9e
    new-array v10, v10, [Landroid/os/Bundle;

    #@a0
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a3
    move-result-object v10

    #@a4
    check-cast v10, [Landroid/os/Parcelable;

    #@a6
    .line 2712
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@a9
    goto :goto_1

    #@aa
    .line 2715
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5    # "outerDepth":I
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    #@ad
    move-result-object v10

    #@ae
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b1
    move-result-object v8

    #@b2
    .line 2716
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v10, "b"

    #@b5
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v10

    #@b9
    if-eqz v10, :cond_7

    #@bb
    .line 2717
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@be
    move-result v10

    #@bf
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c2
    goto :goto_1

    #@c3
    .line 2718
    :cond_7
    const-string/jumbo v10, "i"

    #@c6
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v10

    #@ca
    if-eqz v10, :cond_8

    #@cc
    .line 2719
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@cf
    move-result v10

    #@d0
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@d3
    goto :goto_1

    #@d4
    .line 2721
    :cond_8
    invoke-virtual {p0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d7
    goto :goto_1
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2139
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 2140
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    return p3

    #@8
    .line 2142
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 2143
    :catch_0
    move-exception v0

    #@e
    .line 2144
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2149
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 2150
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    return-wide p3

    #@8
    .line 2152
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 2153
    :catch_0
    move-exception v0

    #@e
    .line 2154
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 43
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2003
    const/4 v12, 0x0

    #@1
    .line 2004
    .local v12, "flags":I
    move/from16 v31, p1

    #@3
    .line 2005
    .local v31, "serialNumber":I
    const/16 v20, 0x0

    #@5
    .line 2006
    .local v20, "name":Ljava/lang/String;
    const/4 v6, 0x0

    #@6
    .line 2007
    .local v6, "account":Ljava/lang/String;
    const/4 v14, 0x0

    #@7
    .line 2008
    .local v14, "iconPath":Ljava/lang/String;
    const-wide/16 v8, 0x0

    #@9
    .line 2009
    .local v8, "creationTime":J
    const-wide/16 v18, 0x0

    #@b
    .line 2010
    .local v18, "lastLoggedInTime":J
    const/16 v16, 0x0

    #@d
    .line 2011
    .local v16, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v26, -0x2710

    #@f
    .line 2012
    .local v26, "profileGroupId":I
    const/16 v27, -0x2710

    #@11
    .line 2013
    .local v27, "restrictedProfileParentId":I
    const/16 v23, 0x0

    #@13
    .line 2014
    .local v23, "partial":Z
    const/4 v13, 0x0

    #@14
    .line 2015
    .local v13, "guestToRemove":Z
    const/16 v25, 0x0

    #@16
    .line 2016
    .local v25, "persistSeedData":Z
    const/16 v28, 0x0

    #@18
    .line 2017
    .local v28, "seedAccountName":Ljava/lang/String;
    const/16 v30, 0x0

    #@1a
    .line 2018
    .local v30, "seedAccountType":Ljava/lang/String;
    const/16 v29, 0x0

    #@1c
    .line 2019
    .local v29, "seedAccountOptions":Landroid/os/PersistableBundle;
    new-instance v7, Landroid/os/Bundle;

    #@1e
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    #@21
    .line 2020
    .local v7, "baseRestrictions":Landroid/os/Bundle;
    new-instance v17, Landroid/os/Bundle;

    #@23
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@26
    .line 2022
    .local v17, "localRestrictions":Landroid/os/Bundle;
    const/4 v11, 0x0

    #@27
    .line 2025
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v36, Landroid/util/AtomicFile;

    #@29
    new-instance v39, Ljava/io/File;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@2f
    move-object/from16 v40, v0

    #@31
    new-instance v41, Ljava/lang/StringBuilder;

    #@33
    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@39
    move-result-object v42

    #@3a
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v41

    #@3e
    const-string/jumbo v42, ".xml"

    #@41
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v41

    #@45
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v41

    #@49
    invoke-direct/range {v39 .. v41}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4c
    move-object/from16 v0, v36

    #@4e
    move-object/from16 v1, v39

    #@50
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@53
    .line 2026
    .local v36, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v36 .. v36}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@56
    move-result-object v11

    #@57
    .line 2027
    .local v11, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@5a
    move-result-object v22

    #@5b
    .line 2028
    .local v22, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v39, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@5d
    invoke-virtual/range {v39 .. v39}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@60
    move-result-object v39

    #@61
    move-object/from16 v0, v22

    #@63
    move-object/from16 v1, v39

    #@65
    invoke-interface {v0, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@68
    .line 2030
    :cond_0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6b
    move-result v34

    #@6c
    .local v34, "type":I
    const/16 v39, 0x2

    #@6e
    move/from16 v0, v34

    #@70
    move/from16 v1, v39

    #@72
    if-eq v0, v1, :cond_1

    #@74
    .line 2031
    const/16 v39, 0x1

    #@76
    move/from16 v0, v34

    #@78
    move/from16 v1, v39

    #@7a
    if-ne v0, v1, :cond_0

    #@7c
    .line 2035
    :cond_1
    const/16 v39, 0x2

    #@7e
    move/from16 v0, v34

    #@80
    move/from16 v1, v39

    #@82
    if-eq v0, v1, :cond_3

    #@84
    .line 2036
    const-string/jumbo v39, "UserManagerService"

    #@87
    new-instance v40, Ljava/lang/StringBuilder;

    #@89
    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v41, "Unable to read user "

    #@8f
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v40

    #@93
    move-object/from16 v0, v40

    #@95
    move/from16 v1, p1

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v40

    #@9b
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v40

    #@9f
    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a2
    .line 2037
    const/16 v39, 0x0

    #@a4
    .line 2128
    if-eqz v11, :cond_2

    #@a6
    .line 2130
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a9
    .line 2037
    :cond_2
    :goto_0
    return-object v39

    #@aa
    .line 2131
    :catch_0
    move-exception v10

    #@ab
    .local v10, "e":Ljava/io/IOException;
    goto :goto_0

    #@ac
    .line 2040
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v39, 0x2

    #@ae
    move/from16 v0, v34

    #@b0
    move/from16 v1, v39

    #@b2
    if-ne v0, v1, :cond_11

    #@b4
    :try_start_2
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b7
    move-result-object v39

    #@b8
    const-string/jumbo v40, "user"

    #@bb
    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v39

    #@bf
    if-eqz v39, :cond_11

    #@c1
    .line 2041
    const-string/jumbo v39, "id"

    #@c4
    const/16 v40, -0x1

    #@c6
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v22

    #@ca
    move-object/from16 v2, v39

    #@cc
    move/from16 v3, v40

    #@ce
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@d1
    move-result v32

    #@d2
    .line 2042
    .local v32, "storedId":I
    move/from16 v0, v32

    #@d4
    move/from16 v1, p1

    #@d6
    if-eq v0, v1, :cond_5

    #@d8
    .line 2043
    const-string/jumbo v39, "UserManagerService"

    #@db
    const-string/jumbo v40, "User id does not match the file name"

    #@de
    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@e1
    .line 2044
    const/16 v39, 0x0

    #@e3
    .line 2128
    if-eqz v11, :cond_4

    #@e5
    .line 2130
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@e8
    .line 2044
    :cond_4
    :goto_1
    return-object v39

    #@e9
    .line 2131
    :catch_1
    move-exception v10

    #@ea
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_1

    #@eb
    .line 2046
    .end local v10    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    const-string/jumbo v39, "serialNumber"

    #@ee
    move-object/from16 v0, p0

    #@f0
    move-object/from16 v1, v22

    #@f2
    move-object/from16 v2, v39

    #@f4
    move/from16 v3, p1

    #@f6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@f9
    move-result v31

    #@fa
    .line 2047
    const-string/jumbo v39, "flags"

    #@fd
    const/16 v40, 0x0

    #@ff
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, v22

    #@103
    move-object/from16 v2, v39

    #@105
    move/from16 v3, v40

    #@107
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@10a
    move-result v12

    #@10b
    .line 2048
    const-string/jumbo v39, "icon"

    #@10e
    const/16 v40, 0x0

    #@110
    move-object/from16 v0, v22

    #@112
    move-object/from16 v1, v40

    #@114
    move-object/from16 v2, v39

    #@116
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@119
    move-result-object v14

    #@11a
    .line 2049
    .local v14, "iconPath":Ljava/lang/String;
    const-string/jumbo v39, "created"

    #@11d
    const-wide/16 v40, 0x0

    #@11f
    move-object/from16 v0, p0

    #@121
    move-object/from16 v1, v22

    #@123
    move-object/from16 v2, v39

    #@125
    move-wide/from16 v3, v40

    #@127
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@12a
    move-result-wide v8

    #@12b
    .line 2050
    const-string/jumbo v39, "lastLoggedIn"

    #@12e
    const-wide/16 v40, 0x0

    #@130
    move-object/from16 v0, p0

    #@132
    move-object/from16 v1, v22

    #@134
    move-object/from16 v2, v39

    #@136
    move-wide/from16 v3, v40

    #@138
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@13b
    move-result-wide v18

    #@13c
    .line 2052
    const-string/jumbo v39, "lastLoggedInFingerprint"

    #@13f
    .line 2051
    const/16 v40, 0x0

    #@141
    move-object/from16 v0, v22

    #@143
    move-object/from16 v1, v40

    #@145
    move-object/from16 v2, v39

    #@147
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14a
    move-result-object v16

    #@14b
    .line 2053
    .local v16, "lastLoggedInFingerprint":Ljava/lang/String;
    const-string/jumbo v39, "profileGroupId"

    #@14e
    .line 2054
    const/16 v40, -0x2710

    #@150
    .line 2053
    move-object/from16 v0, p0

    #@152
    move-object/from16 v1, v22

    #@154
    move-object/from16 v2, v39

    #@156
    move/from16 v3, v40

    #@158
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@15b
    move-result v26

    #@15c
    .line 2056
    const-string/jumbo v39, "restrictedProfileParentId"

    #@15f
    const/16 v40, -0x2710

    #@161
    .line 2055
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v22

    #@165
    move-object/from16 v2, v39

    #@167
    move/from16 v3, v40

    #@169
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@16c
    move-result v27

    #@16d
    .line 2057
    const-string/jumbo v39, "partial"

    #@170
    const/16 v40, 0x0

    #@172
    move-object/from16 v0, v22

    #@174
    move-object/from16 v1, v40

    #@176
    move-object/from16 v2, v39

    #@178
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17b
    move-result-object v38

    #@17c
    .line 2058
    .local v38, "valueString":Ljava/lang/String;
    const-string/jumbo v39, "true"

    #@17f
    move-object/from16 v0, v39

    #@181
    move-object/from16 v1, v38

    #@183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@186
    move-result v39

    #@187
    if-eqz v39, :cond_6

    #@189
    .line 2059
    const/16 v23, 0x1

    #@18b
    .line 2061
    :cond_6
    const-string/jumbo v39, "guestToRemove"

    #@18e
    const/16 v40, 0x0

    #@190
    move-object/from16 v0, v22

    #@192
    move-object/from16 v1, v40

    #@194
    move-object/from16 v2, v39

    #@196
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@199
    move-result-object v38

    #@19a
    .line 2062
    const-string/jumbo v39, "true"

    #@19d
    move-object/from16 v0, v39

    #@19f
    move-object/from16 v1, v38

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a4
    move-result v39

    #@1a5
    if-eqz v39, :cond_7

    #@1a7
    .line 2063
    const/4 v13, 0x1

    #@1a8
    .line 2066
    :cond_7
    const-string/jumbo v39, "seedAccountName"

    #@1ab
    const/16 v40, 0x0

    #@1ad
    move-object/from16 v0, v22

    #@1af
    move-object/from16 v1, v40

    #@1b1
    move-object/from16 v2, v39

    #@1b3
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b6
    move-result-object v28

    #@1b7
    .line 2067
    .local v28, "seedAccountName":Ljava/lang/String;
    const-string/jumbo v39, "seedAccountType"

    #@1ba
    const/16 v40, 0x0

    #@1bc
    move-object/from16 v0, v22

    #@1be
    move-object/from16 v1, v40

    #@1c0
    move-object/from16 v2, v39

    #@1c2
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c5
    move-result-object v30

    #@1c6
    .line 2068
    .local v30, "seedAccountType":Ljava/lang/String;
    if-nez v28, :cond_8

    #@1c8
    if-eqz v30, :cond_9

    #@1ca
    .line 2069
    :cond_8
    const/16 v25, 0x1

    #@1cc
    .line 2072
    :cond_9
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1cf
    move-result v21

    #@1d0
    .line 2073
    .end local v6    # "account":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v29    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v21, "outerDepth":I
    :cond_a
    :goto_2
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1d3
    move-result v34

    #@1d4
    const/16 v39, 0x1

    #@1d6
    move/from16 v0, v34

    #@1d8
    move/from16 v1, v39

    #@1da
    if-eq v0, v1, :cond_11

    #@1dc
    .line 2074
    const/16 v39, 0x3

    #@1de
    move/from16 v0, v34

    #@1e0
    move/from16 v1, v39

    #@1e2
    if-ne v0, v1, :cond_b

    #@1e4
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1e7
    move-result v39

    #@1e8
    move/from16 v0, v39

    #@1ea
    move/from16 v1, v21

    #@1ec
    if-le v0, v1, :cond_11

    #@1ee
    .line 2075
    :cond_b
    const/16 v39, 0x3

    #@1f0
    move/from16 v0, v34

    #@1f2
    move/from16 v1, v39

    #@1f4
    if-eq v0, v1, :cond_a

    #@1f6
    const/16 v39, 0x4

    #@1f8
    move/from16 v0, v34

    #@1fa
    move/from16 v1, v39

    #@1fc
    if-eq v0, v1, :cond_a

    #@1fe
    .line 2078
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@201
    move-result-object v33

    #@202
    .line 2079
    .local v33, "tag":Ljava/lang/String;
    const-string/jumbo v39, "name"

    #@205
    move-object/from16 v0, v39

    #@207
    move-object/from16 v1, v33

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20c
    move-result v39

    #@20d
    if-eqz v39, :cond_c

    #@20f
    .line 2080
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@212
    move-result v34

    #@213
    .line 2081
    const/16 v39, 0x4

    #@215
    move/from16 v0, v34

    #@217
    move/from16 v1, v39

    #@219
    if-ne v0, v1, :cond_a

    #@21b
    .line 2082
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@21e
    move-result-object v20

    #@21f
    .local v20, "name":Ljava/lang/String;
    goto :goto_2

    #@220
    .line 2084
    .end local v20    # "name":Ljava/lang/String;
    :cond_c
    const-string/jumbo v39, "restrictions"

    #@223
    move-object/from16 v0, v39

    #@225
    move-object/from16 v1, v33

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22a
    move-result v39

    #@22b
    if-eqz v39, :cond_e

    #@22d
    .line 2085
    move-object/from16 v0, v22

    #@22f
    invoke-static {v0, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@232
    goto :goto_2

    #@233
    .line 2125
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "iconPath":Ljava/lang/String;
    .end local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "seedAccountName":Ljava/lang/String;
    .end local v30    # "seedAccountType":Ljava/lang/String;
    .end local v32    # "storedId":I
    .end local v33    # "tag":Ljava/lang/String;
    .end local v34    # "type":I
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v38    # "valueString":Ljava/lang/String;
    :catch_2
    move-exception v15

    #@234
    .line 2128
    .local v15, "ioe":Ljava/io/IOException;
    if-eqz v11, :cond_d

    #@236
    .line 2130
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    #@239
    .line 2135
    .end local v15    # "ioe":Ljava/io/IOException;
    :cond_d
    :goto_3
    const/16 v39, 0x0

    #@23b
    return-object v39

    #@23c
    .line 2086
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "iconPath":Ljava/lang/String;
    .restart local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "seedAccountName":Ljava/lang/String;
    .restart local v30    # "seedAccountType":Ljava/lang/String;
    .restart local v32    # "storedId":I
    .restart local v33    # "tag":Ljava/lang/String;
    .restart local v34    # "type":I
    .restart local v36    # "userFile":Landroid/util/AtomicFile;
    .restart local v38    # "valueString":Ljava/lang/String;
    :cond_e
    :try_start_6
    const-string/jumbo v39, "device_policy_restrictions"

    #@23f
    move-object/from16 v0, v39

    #@241
    move-object/from16 v1, v33

    #@243
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@246
    move-result v39

    #@247
    if-eqz v39, :cond_f

    #@249
    .line 2087
    move-object/from16 v0, v22

    #@24b
    move-object/from16 v1, v17

    #@24d
    invoke-static {v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@250
    goto :goto_2

    #@251
    .line 2126
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "iconPath":Ljava/lang/String;
    .end local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "seedAccountName":Ljava/lang/String;
    .end local v30    # "seedAccountType":Ljava/lang/String;
    .end local v32    # "storedId":I
    .end local v33    # "tag":Ljava/lang/String;
    .end local v34    # "type":I
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v38    # "valueString":Ljava/lang/String;
    :catch_3
    move-exception v24

    #@252
    .line 2128
    .local v24, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v11, :cond_d

    #@254
    .line 2130
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@257
    goto :goto_3

    #@258
    .line 2131
    :catch_4
    move-exception v10

    #@259
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_3

    #@25a
    .line 2088
    .end local v10    # "e":Ljava/io/IOException;
    .end local v24    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "iconPath":Ljava/lang/String;
    .restart local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "seedAccountName":Ljava/lang/String;
    .restart local v30    # "seedAccountType":Ljava/lang/String;
    .restart local v32    # "storedId":I
    .restart local v33    # "tag":Ljava/lang/String;
    .restart local v34    # "type":I
    .restart local v36    # "userFile":Landroid/util/AtomicFile;
    .restart local v38    # "valueString":Ljava/lang/String;
    :cond_f
    :try_start_8
    const-string/jumbo v39, "account"

    #@25d
    move-object/from16 v0, v39

    #@25f
    move-object/from16 v1, v33

    #@261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@264
    move-result v39

    #@265
    if-eqz v39, :cond_10

    #@267
    .line 2089
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@26a
    move-result v34

    #@26b
    .line 2090
    const/16 v39, 0x4

    #@26d
    move/from16 v0, v34

    #@26f
    move/from16 v1, v39

    #@271
    if-ne v0, v1, :cond_a

    #@273
    .line 2091
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@276
    move-result-object v6

    #@277
    .local v6, "account":Ljava/lang/String;
    goto/16 :goto_2

    #@279
    .line 2093
    .end local v6    # "account":Ljava/lang/String;
    :cond_10
    const-string/jumbo v39, "seedAccountOptions"

    #@27c
    move-object/from16 v0, v39

    #@27e
    move-object/from16 v1, v33

    #@280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@283
    move-result v39

    #@284
    if-eqz v39, :cond_a

    #@286
    .line 2094
    invoke-static/range {v22 .. v22}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    #@289
    move-result-object v29

    #@28a
    .line 2095
    .local v29, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v25, 0x1

    #@28c
    goto/16 :goto_2

    #@28e
    .line 2101
    .end local v14    # "iconPath":Ljava/lang/String;
    .end local v16    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v28    # "seedAccountName":Ljava/lang/String;
    .end local v29    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v30    # "seedAccountType":Ljava/lang/String;
    .end local v32    # "storedId":I
    .end local v33    # "tag":Ljava/lang/String;
    .end local v38    # "valueString":Ljava/lang/String;
    :cond_11
    new-instance v37, Landroid/content/pm/UserInfo;

    #@290
    move-object/from16 v0, v37

    #@292
    move/from16 v1, p1

    #@294
    move-object/from16 v2, v20

    #@296
    invoke-direct {v0, v1, v2, v14, v12}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@299
    .line 2102
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v31

    #@29b
    move-object/from16 v1, v37

    #@29d
    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@29f
    .line 2103
    move-object/from16 v0, v37

    #@2a1
    iput-wide v8, v0, Landroid/content/pm/UserInfo;->creationTime:J

    #@2a3
    .line 2104
    move-wide/from16 v0, v18

    #@2a5
    move-object/from16 v2, v37

    #@2a7
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@2a9
    .line 2105
    move-object/from16 v0, v16

    #@2ab
    move-object/from16 v1, v37

    #@2ad
    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@2af
    .line 2106
    move/from16 v0, v23

    #@2b1
    move-object/from16 v1, v37

    #@2b3
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@2b5
    .line 2107
    move-object/from16 v0, v37

    #@2b7
    iput-boolean v13, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@2b9
    .line 2108
    move/from16 v0, v26

    #@2bb
    move-object/from16 v1, v37

    #@2bd
    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2bf
    .line 2109
    move/from16 v0, v27

    #@2c1
    move-object/from16 v1, v37

    #@2c3
    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@2c5
    .line 2112
    new-instance v35, Lcom/android/server/pm/UserManagerService$UserData;

    #@2c7
    const/16 v39, 0x0

    #@2c9
    move-object/from16 v0, v35

    #@2cb
    move-object/from16 v1, v39

    #@2cd
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@2d0
    .line 2113
    .local v35, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move-object/from16 v0, v37

    #@2d2
    move-object/from16 v1, v35

    #@2d4
    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@2d6
    .line 2114
    move-object/from16 v0, v35

    #@2d8
    iput-object v6, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    #@2da
    .line 2115
    move-object/from16 v0, v28

    #@2dc
    move-object/from16 v1, v35

    #@2de
    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@2e0
    .line 2116
    move-object/from16 v0, v30

    #@2e2
    move-object/from16 v1, v35

    #@2e4
    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@2e6
    .line 2117
    move/from16 v0, v25

    #@2e8
    move-object/from16 v1, v35

    #@2ea
    iput-boolean v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    #@2ec
    .line 2118
    move-object/from16 v0, v29

    #@2ee
    move-object/from16 v1, v35

    #@2f0
    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    #@2f2
    .line 2120
    move-object/from16 v0, p0

    #@2f4
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@2f6
    move-object/from16 v40, v0

    #@2f8
    monitor-enter v40
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@2f9
    .line 2121
    :try_start_9
    move-object/from16 v0, p0

    #@2fb
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@2fd
    move-object/from16 v39, v0

    #@2ff
    move-object/from16 v0, v39

    #@301
    move/from16 v1, p1

    #@303
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@306
    .line 2122
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@30a
    move-object/from16 v39, v0

    #@30c
    move-object/from16 v0, v39

    #@30e
    move/from16 v1, p1

    #@310
    move-object/from16 v2, v17

    #@312
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@315
    :try_start_a
    monitor-exit v40
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@316
    .line 2128
    if-eqz v11, :cond_12

    #@318
    .line 2130
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    #@31b
    .line 2124
    :cond_12
    :goto_4
    return-object v35

    #@31c
    .line 2120
    :catchall_0
    move-exception v39

    #@31d
    :try_start_c
    monitor-exit v40

    #@31e
    throw v39
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@31f
    .line 2127
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "type":I
    .end local v35    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v39

    #@320
    .line 2128
    if-eqz v11, :cond_13

    #@322
    .line 2130
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    #@325
    .line 2127
    :cond_13
    :goto_5
    throw v39

    #@326
    .line 2131
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v34    # "type":I
    .restart local v35    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v36    # "userFile":Landroid/util/AtomicFile;
    .restart local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_5
    move-exception v10

    #@327
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_4

    #@328
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "type":I
    .end local v35    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v36    # "userFile":Landroid/util/AtomicFile;
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v10

    #@329
    .restart local v10    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    #@32b
    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v10

    #@32c
    .restart local v10    # "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method private readUserListLP()V
    .locals 15

    #@0
    .prologue
    .line 1629
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@5
    move-result v12

    #@6
    if-nez v12, :cond_0

    #@8
    .line 1630
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    #@b
    .line 1631
    return-void

    #@c
    .line 1633
    :cond_0
    const/4 v1, 0x0

    #@d
    .line 1634
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v10, Landroid/util/AtomicFile;

    #@f
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@11
    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@14
    .line 1636
    .local v10, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@17
    move-result-object v1

    #@18
    .line 1637
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v7

    #@1c
    .line 1638
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1e
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@21
    move-result-object v12

    #@22
    invoke-interface {v7, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@25
    .line 1640
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@28
    move-result v8

    #@29
    .local v8, "type":I
    const/4 v12, 0x2

    #@2a
    if-eq v8, v12, :cond_2

    #@2c
    .line 1641
    const/4 v12, 0x1

    #@2d
    if-ne v8, v12, :cond_1

    #@2f
    .line 1645
    :cond_2
    const/4 v12, 0x2

    #@30
    if-eq v8, v12, :cond_3

    #@32
    .line 1646
    const-string/jumbo v12, "UserManagerService"

    #@35
    const-string/jumbo v13, "Unable to read user list"

    #@38
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1647
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    .line 1715
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@41
    .line 1648
    return-void

    #@42
    .line 1651
    :cond_3
    const/4 v12, -0x1

    #@43
    :try_start_1
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@45
    .line 1652
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@48
    move-result-object v12

    #@49
    const-string/jumbo v13, "users"

    #@4c
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v12

    #@50
    if-eqz v12, :cond_5

    #@52
    .line 1653
    const-string/jumbo v12, "nextSerialNumber"

    #@55
    const/4 v13, 0x0

    #@56
    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 1654
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_4

    #@5c
    .line 1655
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5f
    move-result v12

    #@60
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@62
    .line 1657
    :cond_4
    const-string/jumbo v12, "version"

    #@65
    const/4 v13, 0x0

    #@66
    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@69
    move-result-object v11

    #@6a
    .line 1658
    .local v11, "versionNumber":Ljava/lang/String;
    if-eqz v11, :cond_5

    #@6c
    .line 1659
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6f
    move-result v12

    #@70
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@72
    .line 1663
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v11    # "versionNumber":Ljava/lang/String;
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    #@74
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@77
    .line 1665
    .local v5, "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_6
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7a
    move-result v8

    #@7b
    const/4 v12, 0x1

    #@7c
    if-eq v8, v12, :cond_d

    #@7e
    .line 1666
    const/4 v12, 0x2

    #@7f
    if-ne v8, v12, :cond_6

    #@81
    .line 1667
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    .line 1668
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v12, "user"

    #@88
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v12

    #@8c
    if-eqz v12, :cond_9

    #@8e
    .line 1669
    const-string/jumbo v12, "id"

    #@91
    const/4 v13, 0x0

    #@92
    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    .line 1671
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@99
    move-result v12

    #@9a
    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@9d
    move-result-object v9

    #@9e
    .line 1673
    .local v9, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v9, :cond_6

    #@a0
    .line 1674
    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@a2
    monitor-enter v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a3
    .line 1675
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@a5
    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@a7
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    #@a9
    invoke-virtual {v12, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@ac
    .line 1676
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@ae
    if-ltz v12, :cond_7

    #@b0
    .line 1677
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@b2
    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@b4
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    #@b6
    if-gt v12, v14, :cond_8

    #@b8
    .line 1678
    :cond_7
    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@ba
    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    #@bc
    add-int/lit8 v12, v12, 0x1

    #@be
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c0
    :cond_8
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c1
    goto :goto_0

    #@c2
    .line 1712
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catch_0
    move-exception v0

    #@c3
    .line 1713
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c6
    .line 1715
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c9
    .line 1628
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    #@ca
    .line 1674
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v12

    #@cb
    :try_start_5
    monitor-exit v13

    #@cc
    throw v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@cd
    .line 1714
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v12

    #@ce
    .line 1715
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d1
    .line 1714
    throw v12

    #@d2
    .line 1682
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "newDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_9
    :try_start_6
    const-string/jumbo v12, "guestRestrictions"

    #@d5
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v12

    #@d9
    if-eqz v12, :cond_c

    #@db
    .line 1683
    :cond_a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@de
    move-result v8

    #@df
    const/4 v12, 0x1

    #@e0
    if-eq v8, v12, :cond_6

    #@e2
    .line 1684
    const/4 v12, 0x3

    #@e3
    if-eq v8, v12, :cond_6

    #@e5
    .line 1685
    const/4 v12, 0x2

    #@e6
    if-ne v8, v12, :cond_a

    #@e8
    .line 1686
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@eb
    move-result-object v12

    #@ec
    const-string/jumbo v13, "restrictions"

    #@ef
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f2
    move-result v12

    #@f3
    if-eqz v12, :cond_b

    #@f5
    .line 1687
    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@f7
    monitor-enter v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@f8
    .line 1689
    :try_start_7
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@fa
    .line 1688
    invoke-static {v7, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@fd
    :try_start_8
    monitor-exit v13

    #@fe
    goto/16 :goto_0

    #@100
    .line 1687
    :catchall_2
    move-exception v12

    #@101
    monitor-exit v13

    #@102
    throw v12

    #@103
    .line 1691
    :cond_b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@106
    move-result-object v12

    #@107
    const-string/jumbo v13, "device_policy_restrictions"

    #@10a
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v12

    #@10e
    if-eqz v12, :cond_6

    #@110
    .line 1693
    invoke-static {v7, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    #@113
    goto/16 :goto_0

    #@115
    .line 1699
    :cond_c
    const-string/jumbo v12, "globalRestrictionOwnerUserId"

    #@118
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11b
    move-result v12

    #@11c
    if-eqz v12, :cond_6

    #@11e
    .line 1700
    const-string/jumbo v12, "id"

    #@121
    const/4 v13, 0x0

    #@122
    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@125
    move-result-object v6

    #@126
    .line 1701
    .local v6, "ownerUserId":Ljava/lang/String;
    if-eqz v6, :cond_6

    #@128
    .line 1702
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12b
    move-result v12

    #@12c
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@12e
    goto/16 :goto_0

    #@130
    .line 1707
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "ownerUserId":Ljava/lang/String;
    :cond_d
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@132
    monitor-enter v12
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@133
    .line 1708
    :try_start_9
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@135
    :try_start_a
    monitor-exit v12

    #@136
    .line 1710
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    #@139
    .line 1711
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@13c
    .line 1715
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13f
    goto :goto_1

    #@140
    .line 1707
    :catchall_3
    move-exception v13

    #@141
    :try_start_b
    monitor-exit v12

    #@142
    throw v13
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method private removeNonSystemUsers()V
    .locals 7

    #@0
    .prologue
    .line 3492
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3493
    .local v4, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@7
    monitor-enter v6

    #@8
    .line 3494
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v3

    #@e
    .line 3495
    .local v3, "userSize":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@11
    .line 3496
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    #@19
    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1b
    .line 3497
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 3498
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 3495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    monitor-exit v6

    #@26
    .line 3502
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    .local v2, "ui$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/content/pm/UserInfo;

    #@36
    .line 3503
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@38
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    #@3b
    goto :goto_1

    #@3c
    .line 3493
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    .end local v3    # "userSize":I
    :catchall_0
    move-exception v5

    #@3d
    monitor-exit v6

    #@3e
    throw v5

    #@3f
    .line 3491
    .restart local v0    # "i":I
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    .restart local v3    # "userSize":I
    :cond_2
    return-void
.end method

.method private removeUserState(I)V
    .locals 8
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2537
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@2
    const-class v5, Landroid/os/storage/StorageManager;

    #@4
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Landroid/os/storage/StorageManager;

    #@a
    invoke-virtual {v4, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2546
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    #@10
    move-result-object v2

    #@11
    .line 2547
    .local v2, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v2, :cond_0

    #@13
    .line 2548
    invoke-interface {v2, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@16
    .line 2555
    .end local v2    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@18
    invoke-virtual {v4, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    #@1b
    .line 2558
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@1d
    .line 2559
    const/4 v5, 0x3

    #@1e
    .line 2558
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/PackageManagerService;->destroyUserData(II)V

    #@21
    .line 2562
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@23
    monitor-enter v5

    #@24
    .line 2563
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@29
    .line 2564
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    #@2b
    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    monitor-exit v5

    #@2f
    .line 2566
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@31
    monitor-enter v5

    #@32
    .line 2567
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@34
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@37
    monitor-exit v5

    #@38
    .line 2569
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@3a
    monitor-enter v5

    #@3b
    .line 2570
    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@3d
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@40
    .line 2571
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@45
    .line 2572
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@47
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@4a
    .line 2573
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@4c
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@4f
    monitor-exit v5

    #@50
    .line 2576
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@52
    monitor-enter v4

    #@53
    .line 2577
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@56
    monitor-exit v4

    #@57
    .line 2580
    new-instance v3, Landroid/util/AtomicFile;

    #@59
    new-instance v4, Ljava/io/File;

    #@5b
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@5d
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    const-string/jumbo v7, ".xml"

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@74
    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@77
    .line 2581
    .local v3, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    #@7a
    .line 2582
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    #@7d
    .line 2535
    return-void

    #@7e
    .line 2538
    .end local v3    # "userFile":Landroid/util/AtomicFile;
    :catch_0
    move-exception v0

    #@7f
    .line 2540
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "UserManagerService"

    #@82
    .line 2541
    new-instance v5, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v6, "Destroying key for user "

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    const-string/jumbo v6, " failed, continuing anyway"

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    .line 2540
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a0
    goto/16 :goto_0

    #@a2
    .line 2550
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    #@a3
    .line 2551
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "UserManagerService"

    #@a6
    const-string/jumbo v5, "unable to clear GK secure user id"

    #@a9
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    goto/16 :goto_1

    #@ae
    .line 2562
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@af
    monitor-exit v5

    #@b0
    throw v4

    #@b1
    .line 2566
    :catchall_1
    move-exception v4

    #@b2
    monitor-exit v5

    #@b3
    throw v4

    #@b4
    .line 2569
    :catchall_2
    move-exception v4

    #@b5
    monitor-exit v5

    #@b6
    throw v4

    #@b7
    .line 2576
    :catchall_3
    move-exception v5

    #@b8
    monitor-exit v4

    #@b9
    throw v5
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3153
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v0

    #@5
    .line 3154
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    .line 3155
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v3, :cond_0

    #@b
    .line 3156
    const-string/jumbo v4, "Error: couldn\'t get users"

    #@e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 3157
    const/4 v4, 0x1

    #@12
    return v4

    #@13
    .line 3159
    :cond_0
    const-string/jumbo v4, "Users:"

    #@16
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 3160
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1d
    move-result v4

    #@1e
    if-ge v1, v4, :cond_2

    #@20
    .line 3161
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Landroid/content/pm/UserInfo;

    #@26
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    #@28
    invoke-interface {v0, v4, v6}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    const-string/jumbo v2, " running"

    #@31
    .line 3162
    .local v2, "running":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "\t"

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, Landroid/content/pm/UserInfo;

    #@43
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56
    .line 3160
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_0

    #@59
    .line 3161
    .end local v2    # "running":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    #@5c
    .restart local v2    # "running":Ljava/lang/String;
    goto :goto_1

    #@5d
    .line 3164
    .end local v2    # "running":Ljava/lang/String;
    :cond_2
    return v6
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 4
    .param p1, "UserData"    # Lcom/android/server/pm/UserManagerService$UserData;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1836
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1837
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 1838
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@11
    const-wide/16 v2, 0x7d0

    #@13
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@16
    .line 1830
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    #@0
    .prologue
    .line 2586
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2587
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2589
    const-string/jumbo v1, "android.intent.extra.USER"

    #@10
    new-instance v2, Landroid/os/UserHandle;

    #@12
    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@18
    .line 2590
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@1b
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1e
    .line 2591
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@20
    new-instance v2, Landroid/os/UserHandle;

    #@22
    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@25
    const/4 v3, 0x0

    #@26
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@29
    .line 2585
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 996
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 997
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 998
    const/high16 v1, 0x40000000    # 2.0f

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 999
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@15
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1a
    .line 995
    return-void
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3013
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v0

    #@a
    .line 3014
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "user.serial"

    #@11
    sget v4, Landroid/system/OsConstants;->XATTR_CREATE:I

    #@13
    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 3011
    return-void

    #@17
    .line 3015
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    #@18
    .line 3016
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@1b
    move-result-object v2

    #@1c
    throw v2
.end method

.method private updateUserIds()V
    .locals 8

    #@0
    .prologue
    .line 2859
    const/4 v4, 0x0

    #@1
    .line 2860
    .local v4, "num":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 2861
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v5

    #@a
    .line 2862
    .local v5, "userSize":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@d
    .line 2863
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    #@15
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@17
    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    #@19
    if-nez v6, :cond_0

    #@1b
    .line 2864
    add-int/lit8 v4, v4, 0x1

    #@1d
    .line 2862
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2867
    :cond_1
    new-array v3, v4, [I

    #@22
    .line 2868
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    #@23
    .line 2869
    .local v1, "n":I
    const/4 v0, 0x0

    #@24
    move v2, v1

    #@25
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_1
    if-ge v0, v5, :cond_2

    #@27
    .line 2870
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    #@2f
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@31
    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    #@33
    if-nez v6, :cond_3

    #@35
    .line 2871
    add-int/lit8 v1, v2, 0x1

    #@37
    .end local v2    # "n":I
    .restart local v1    # "n":I
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@3c
    move-result v6

    #@3d
    aput v6, v3, v2

    #@3f
    .line 2869
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@41
    move v2, v1

    #@42
    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_1

    #@43
    .line 2874
    :cond_2
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v7

    #@46
    .line 2858
    return-void

    #@47
    .line 2860
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "newUsers":[I
    .end local v5    # "userSize":I
    :catchall_0
    move-exception v6

    #@48
    monitor-exit v7

    #@49
    throw v6

    #@4a
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "newUsers":[I
    .restart local v5    # "userSize":I
    :cond_3
    move v1, v2

    #@4b
    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_2
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "newRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1299
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/os/Bundle;

    #@a
    .line 1298
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@d
    move-result-object v1

    #@e
    .line 1302
    .local v1, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    #@10
    .line 1304
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/os/Bundle;

    #@18
    .line 1306
    .local v2, "prevBaseRestrictions":Landroid/os/Bundle;
    if-eq v2, p1, :cond_2

    #@1a
    move v3, v4

    #@1b
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@1e
    .line 1307
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    if-eq v3, p1, :cond_3

    #@26
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@29
    .line 1310
    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    .line 1311
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@34
    .line 1312
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@37
    move-result-object v3

    #@38
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@3b
    .line 1316
    .end local v2    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    #@3e
    move-result-object v0

    #@3f
    .line 1318
    .local v0, "effective":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@44
    .line 1326
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@46
    if-eqz v3, :cond_1

    #@48
    .line 1327
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@4a
    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    #@4c
    invoke-direct {v4, p0, v0, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    #@4f
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@52
    .line 1339
    :cond_1
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    #@55
    .line 1341
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    #@57
    new-instance v4, Landroid/os/Bundle;

    #@59
    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@5c
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5f
    .line 1296
    return-void

    #@60
    .end local v0    # "effective":Landroid/os/Bundle;
    .restart local v2    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_2
    move v3, v5

    #@61
    .line 1306
    goto :goto_0

    #@62
    :cond_3
    move v4, v5

    #@63
    .line 1307
    goto :goto_1
.end method

.method private upgradeIfNecessaryLP()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x6

    #@1
    const/4 v8, 0x0

    #@2
    .line 1723
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@4
    .line 1724
    .local v1, "originalVersion":I
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@6
    .line 1725
    .local v4, "userVersion":I
    const/4 v5, 0x1

    #@7
    if-ge v4, v5, :cond_1

    #@9
    .line 1727
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@c
    move-result-object v3

    #@d
    .line 1728
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string/jumbo v5, "Primary"

    #@10
    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@12
    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 1729
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1c
    .line 1730
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v6

    #@22
    const v7, 0x1040535

    #@25
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    .line 1729
    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@2b
    .line 1731
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@2e
    .line 1733
    :cond_0
    const/4 v4, 0x1

    #@2f
    .line 1736
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    const/4 v5, 0x2

    #@30
    if-ge v4, v5, :cond_3

    #@32
    .line 1738
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@35
    move-result-object v3

    #@36
    .line 1739
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@38
    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    #@3a
    and-int/lit8 v5, v5, 0x10

    #@3c
    if-nez v5, :cond_2

    #@3e
    .line 1740
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@40
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    #@42
    or-int/lit8 v6, v6, 0x10

    #@44
    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    #@46
    .line 1741
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@49
    .line 1743
    :cond_2
    const/4 v4, 0x2

    #@4a
    .line 1747
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    const/4 v5, 0x4

    #@4b
    if-ge v4, v5, :cond_4

    #@4d
    .line 1748
    const/4 v4, 0x4

    #@4e
    .line 1751
    :cond_4
    const/4 v5, 0x5

    #@4f
    if-ge v4, v5, :cond_5

    #@51
    .line 1752
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    #@54
    .line 1753
    const/4 v4, 0x5

    #@55
    .line 1756
    :cond_5
    if-ge v4, v9, :cond_8

    #@57
    .line 1757
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@5a
    move-result v2

    #@5b
    .line 1758
    .local v2, "splitSystemUser":Z
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@5d
    monitor-enter v6

    #@5e
    .line 1759
    const/4 v0, 0x0

    #@5f
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@61
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@64
    move-result v5

    #@65
    if-ge v0, v5, :cond_7

    #@67
    .line 1760
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@69
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v3

    #@6d
    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    #@6f
    .line 1762
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_6

    #@71
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@73
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    #@76
    move-result v5

    #@77
    if-eqz v5, :cond_6

    #@79
    .line 1763
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@7b
    iget v5, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@7d
    .line 1764
    const/16 v7, -0x2710

    #@7f
    .line 1763
    if-ne v5, v7, :cond_6

    #@81
    .line 1765
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@83
    const/4 v7, 0x0

    #@84
    iput v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@86
    .line 1766
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@89
    .line 1759
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@8b
    goto :goto_0

    #@8c
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_7
    monitor-exit v6

    #@8d
    .line 1770
    const/4 v4, 0x6

    #@8e
    .line 1773
    .end local v0    # "i":I
    .end local v2    # "splitSystemUser":Z
    :cond_8
    if-ge v4, v9, :cond_a

    #@90
    .line 1774
    const-string/jumbo v5, "UserManagerService"

    #@93
    new-instance v6, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v7, "User version "

    #@9b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@a1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    const-string/jumbo v7, " didn\'t upgrade as expected to "

    #@a8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v6

    #@ac
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v6

    #@b0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 1722
    :cond_9
    :goto_1
    return-void

    #@b8
    .line 1758
    .restart local v0    # "i":I
    .restart local v2    # "splitSystemUser":Z
    :catchall_0
    move-exception v5

    #@b9
    monitor-exit v6

    #@ba
    throw v5

    #@bb
    .line 1777
    .end local v0    # "i":I
    .end local v2    # "splitSystemUser":Z
    :cond_a
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@bd
    .line 1779
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@bf
    if-ge v1, v5, :cond_9

    #@c1
    .line 1780
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    #@c4
    goto :goto_1
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    .line 851
    if-eqz p1, :cond_0

    #@2
    iget-object v1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@4
    if-nez v1, :cond_0

    #@6
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    #@8
    if-nez v1, :cond_0

    #@a
    .line 852
    new-instance v0, Landroid/content/pm/UserInfo;

    #@c
    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    #@f
    .line 853
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@15
    .line 854
    return-object v0

    #@16
    .line 856
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_0
    return-object p1
.end method

.method static writeApplicationRestrictionsLP(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    #@0
    .prologue
    .line 2747
    const/4 v2, 0x0

    #@1
    .line 2749
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@4
    move-result-object v2

    #@5
    .line 2750
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@7
    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 2752
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@c
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@f
    .line 2753
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@18
    .line 2754
    const/4 v4, 0x1

    #@19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v4

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@21
    .line 2755
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@24
    const/4 v5, 0x1

    #@25
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@28
    .line 2757
    const-string/jumbo v4, "restrictions"

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 2758
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@32
    .line 2759
    const-string/jumbo v4, "restrictions"

    #@35
    const/4 v5, 0x0

    #@36
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 2761
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@3c
    .line 2762
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 2746
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    #@40
    .line 2763
    :catch_0
    move-exception v1

    #@41
    .line 2764
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@44
    .line 2765
    const-string/jumbo v4, "UserManagerService"

    #@47
    const-string/jumbo v5, "Error writing application restrictions list"

    #@4a
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    goto :goto_0
.end method

.method private writeApplicationRestrictionsLP(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2739
    new-instance v0, Landroid/util/AtomicFile;

    #@2
    .line 2740
    new-instance v1, Ljava/io/File;

    #@4
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 2741
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 2740
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    .line 2739
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    .line 2742
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p2, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLP(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    #@15
    .line 2738
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1591
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@4
    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    #@6
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v7

    #@a
    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 1592
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@f
    const-string/jumbo v6, "photo.png"

    #@12
    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    .line 1593
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    #@17
    const-string/jumbo v6, "photo.png.tmp"

    #@1a
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    .line 1594
    .local v5, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_0

    #@23
    .line 1595
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@26
    .line 1597
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 1598
    const/16 v7, 0x1f9

    #@2c
    .line 1599
    const/4 v8, -0x1

    #@2d
    const/4 v9, -0x1

    #@2e
    .line 1596
    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@31
    .line 1602
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@33
    new-instance v4, Ljava/io/FileOutputStream;

    #@35
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@38
    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v7, 0x64

    #@3a
    invoke-virtual {p2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_1

    #@40
    .line 1603
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@43
    move-result v6

    #@44
    .line 1602
    if-eqz v6, :cond_1

    #@46
    .line 1603
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@49
    move-result v6

    #@4a
    .line 1602
    if-eqz v6, :cond_1

    #@4c
    .line 1604
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@52
    .line 1607
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    .line 1611
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@58
    .line 1589
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :goto_1
    return-void

    #@59
    .line 1608
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v3

    #@5a
    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_0

    #@5b
    .line 1612
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :catch_1
    move-exception v1

    #@5c
    .line 1613
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "UserManagerService"

    #@5f
    const-string/jumbo v7, "Error setting photo for user "

    #@62
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    goto :goto_1
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 13
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    .line 2771
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@5
    move-result-object v7

    #@6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_a

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 2772
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    .line 2773
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v7, "entry"

    #@1d
    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20
    .line 2774
    const-string/jumbo v7, "key"

    #@23
    invoke-interface {p1, v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26
    .line 2776
    instance-of v7, v5, Ljava/lang/Boolean;

    #@28
    if-eqz v7, :cond_1

    #@2a
    .line 2777
    const-string/jumbo v7, "type"

    #@2d
    const-string/jumbo v9, "b"

    #@30
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 2778
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a
    .line 2810
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string/jumbo v7, "entry"

    #@3d
    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@40
    goto :goto_0

    #@41
    .line 2779
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v5, Ljava/lang/Integer;

    #@43
    if-eqz v7, :cond_2

    #@45
    .line 2780
    const-string/jumbo v7, "type"

    #@48
    const-string/jumbo v9, "i"

    #@4b
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 2781
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@55
    goto :goto_1

    #@56
    .line 2782
    :cond_2
    if-eqz v5, :cond_3

    #@58
    instance-of v7, v5, Ljava/lang/String;

    #@5a
    if-eqz v7, :cond_5

    #@5c
    .line 2783
    :cond_3
    const-string/jumbo v7, "type"

    #@5f
    const-string/jumbo v9, "s"

    #@62
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 2784
    if-eqz v5, :cond_4

    #@67
    check-cast v5, Ljava/lang/String;

    #@69
    .end local v5    # "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    goto :goto_1

    #@6d
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v5, ""

    #@70
    goto :goto_2

    #@71
    .line 2785
    :cond_5
    instance-of v7, v5, Landroid/os/Bundle;

    #@73
    if-eqz v7, :cond_6

    #@75
    .line 2786
    const-string/jumbo v7, "type"

    #@78
    const-string/jumbo v9, "B"

    #@7b
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 2787
    check-cast v5, Landroid/os/Bundle;

    #@80
    .end local v5    # "value":Ljava/lang/Object;
    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@83
    goto :goto_1

    #@84
    .line 2788
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v7, v5, [Landroid/os/Parcelable;

    #@86
    if-eqz v7, :cond_8

    #@88
    .line 2789
    const-string/jumbo v7, "type"

    #@8b
    const-string/jumbo v9, "BA"

    #@8e
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@91
    move-object v0, v5

    #@92
    .line 2790
    check-cast v0, [Landroid/os/Parcelable;

    #@94
    .line 2791
    .local v0, "array":[Landroid/os/Parcelable;
    array-length v9, v0

    #@95
    move v7, v8

    #@96
    :goto_3
    if-ge v7, v9, :cond_0

    #@98
    aget-object v4, v0, v7

    #@9a
    .line 2792
    .local v4, "parcelable":Landroid/os/Parcelable;
    instance-of v10, v4, Landroid/os/Bundle;

    #@9c
    if-nez v10, :cond_7

    #@9e
    .line 2793
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v8, "bundle-array can only hold Bundles"

    #@a3
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v7

    #@a7
    .line 2795
    :cond_7
    const-string/jumbo v10, "entry"

    #@aa
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ad
    .line 2796
    const-string/jumbo v10, "type"

    #@b0
    const-string/jumbo v11, "B"

    #@b3
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b6
    .line 2797
    check-cast v4, Landroid/os/Bundle;

    #@b8
    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@bb
    .line 2798
    const-string/jumbo v10, "entry"

    #@be
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c1
    .line 2791
    add-int/lit8 v7, v7, 0x1

    #@c3
    goto :goto_3

    #@c4
    .line 2801
    .end local v0    # "array":[Landroid/os/Parcelable;
    :cond_8
    const-string/jumbo v7, "type"

    #@c7
    const-string/jumbo v9, "sa"

    #@ca
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cd
    move-object v6, v5

    #@ce
    .line 2802
    check-cast v6, [Ljava/lang/String;

    #@d0
    .line 2803
    .local v6, "values":[Ljava/lang/String;
    const-string/jumbo v7, "m"

    #@d3
    array-length v9, v6

    #@d4
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d7
    move-result-object v9

    #@d8
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@db
    .line 2804
    array-length v9, v6

    #@dc
    move v7, v8

    #@dd
    :goto_4
    if-ge v7, v9, :cond_0

    #@df
    aget-object v1, v6, v7

    #@e1
    .line 2805
    .local v1, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    #@e4
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e7
    .line 2806
    if-eqz v1, :cond_9

    #@e9
    .end local v1    # "choice":Ljava/lang/String;
    :goto_5
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ec
    .line 2807
    const-string/jumbo v10, "value"

    #@ef
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f2
    .line 2804
    add-int/lit8 v7, v7, 0x1

    #@f4
    goto :goto_4

    #@f5
    .line 2806
    .restart local v1    # "choice":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, ""

    #@f8
    goto :goto_5

    #@f9
    .line 2770
    .end local v1    # "choice":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 11
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    #@0
    .prologue
    const/16 v10, -0x2710

    #@2
    .line 1853
    const/4 v1, 0x0

    #@3
    .line 1854
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    #@5
    new-instance v6, Ljava/io/File;

    #@7
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@9
    new-instance v8, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    iget-object v9, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@10
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    const-string/jumbo v9, ".xml"

    #@19
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@24
    invoke-direct {v4, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@27
    .line 1856
    .local v4, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@2a
    move-result-object v1

    #@2b
    .line 1857
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@2d
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@30
    .line 1860
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@32
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@35
    .line 1861
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@37
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@3e
    .line 1862
    const/4 v6, 0x1

    #@3f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@42
    move-result-object v6

    #@43
    const/4 v7, 0x0

    #@44
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@47
    .line 1863
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@4a
    const/4 v7, 0x1

    #@4b
    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@4e
    .line 1865
    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@50
    .line 1866
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v6, "user"

    #@53
    const/4 v7, 0x0

    #@54
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 1867
    const-string/jumbo v6, "id"

    #@5a
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    #@5c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    const/4 v8, 0x0

    #@61
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@64
    .line 1868
    const-string/jumbo v6, "serialNumber"

    #@67
    iget v7, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    #@69
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    const/4 v8, 0x0

    #@6e
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@71
    .line 1869
    const-string/jumbo v6, "flags"

    #@74
    iget v7, v5, Landroid/content/pm/UserInfo;->flags:I

    #@76
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    const/4 v8, 0x0

    #@7b
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 1870
    const-string/jumbo v6, "created"

    #@81
    iget-wide v8, v5, Landroid/content/pm/UserInfo;->creationTime:J

    #@83
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    const/4 v8, 0x0

    #@88
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8b
    .line 1871
    const-string/jumbo v6, "lastLoggedIn"

    #@8e
    .line 1872
    iget-wide v8, v5, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@90
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@93
    move-result-object v7

    #@94
    .line 1871
    const/4 v8, 0x0

    #@95
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@98
    .line 1873
    iget-object v6, v5, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@9a
    if-eqz v6, :cond_0

    #@9c
    .line 1874
    const-string/jumbo v6, "lastLoggedInFingerprint"

    #@9f
    .line 1875
    iget-object v7, v5, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@a1
    .line 1874
    const/4 v8, 0x0

    #@a2
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    .line 1877
    :cond_0
    iget-object v6, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@a7
    if-eqz v6, :cond_1

    #@a9
    .line 1878
    const-string/jumbo v6, "icon"

    #@ac
    iget-object v7, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@ae
    const/4 v8, 0x0

    #@af
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b2
    .line 1880
    :cond_1
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    #@b4
    if-eqz v6, :cond_2

    #@b6
    .line 1881
    const-string/jumbo v6, "partial"

    #@b9
    const-string/jumbo v7, "true"

    #@bc
    const/4 v8, 0x0

    #@bd
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c0
    .line 1883
    :cond_2
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@c2
    if-eqz v6, :cond_3

    #@c4
    .line 1884
    const-string/jumbo v6, "guestToRemove"

    #@c7
    const-string/jumbo v7, "true"

    #@ca
    const/4 v8, 0x0

    #@cb
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ce
    .line 1886
    :cond_3
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@d0
    if-eq v6, v10, :cond_4

    #@d2
    .line 1887
    const-string/jumbo v6, "profileGroupId"

    #@d5
    .line 1888
    iget v7, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@d7
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@da
    move-result-object v7

    #@db
    .line 1887
    const/4 v8, 0x0

    #@dc
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@df
    .line 1890
    :cond_4
    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@e1
    if-eq v6, v10, :cond_5

    #@e3
    .line 1891
    const-string/jumbo v6, "restrictedProfileParentId"

    #@e6
    .line 1892
    iget v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    #@e8
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@eb
    move-result-object v7

    #@ec
    .line 1891
    const/4 v8, 0x0

    #@ed
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f0
    .line 1895
    :cond_5
    iget-boolean v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    #@f2
    if-eqz v6, :cond_7

    #@f4
    .line 1896
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@f6
    if-eqz v6, :cond_6

    #@f8
    .line 1897
    const-string/jumbo v6, "seedAccountName"

    #@fb
    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@fd
    const/4 v8, 0x0

    #@fe
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@101
    .line 1899
    :cond_6
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@103
    if-eqz v6, :cond_7

    #@105
    .line 1900
    const-string/jumbo v6, "seedAccountType"

    #@108
    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@10a
    const/4 v8, 0x0

    #@10b
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10e
    .line 1903
    :cond_7
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@110
    if-eqz v6, :cond_8

    #@112
    .line 1904
    const-string/jumbo v6, "name"

    #@115
    const/4 v7, 0x0

    #@116
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 1905
    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@11b
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11e
    .line 1906
    const-string/jumbo v6, "name"

    #@121
    const/4 v7, 0x0

    #@122
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@125
    .line 1908
    :cond_8
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@127
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@128
    .line 1910
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@12a
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    #@12c
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12f
    move-result-object v6

    #@130
    check-cast v6, Landroid/os/Bundle;

    #@132
    const-string/jumbo v8, "restrictions"

    #@135
    .line 1909
    invoke-static {v3, v6, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@138
    .line 1912
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@13a
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    #@13c
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13f
    move-result-object v6

    #@140
    check-cast v6, Landroid/os/Bundle;

    #@142
    .line 1913
    const-string/jumbo v8, "device_policy_restrictions"

    #@145
    .line 1911
    invoke-static {v3, v6, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@148
    :try_start_2
    monitor-exit v7

    #@149
    .line 1916
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    #@14b
    if-eqz v6, :cond_9

    #@14d
    .line 1917
    const-string/jumbo v6, "account"

    #@150
    const/4 v7, 0x0

    #@151
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@154
    .line 1918
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    #@156
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@159
    .line 1919
    const-string/jumbo v6, "account"

    #@15c
    const/4 v7, 0x0

    #@15d
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@160
    .line 1922
    :cond_9
    iget-boolean v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    #@162
    if-eqz v6, :cond_a

    #@164
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    #@166
    if-eqz v6, :cond_a

    #@168
    .line 1923
    const-string/jumbo v6, "seedAccountOptions"

    #@16b
    const/4 v7, 0x0

    #@16c
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16f
    .line 1924
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    #@171
    invoke-virtual {v6, v3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@174
    .line 1925
    const-string/jumbo v6, "seedAccountOptions"

    #@177
    const/4 v7, 0x0

    #@178
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17b
    .line 1927
    :cond_a
    const-string/jumbo v6, "user"

    #@17e
    const/4 v7, 0x0

    #@17f
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@182
    .line 1929
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@185
    .line 1930
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@188
    .line 1849
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return-void

    #@189
    .line 1908
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    #@18a
    monitor-exit v7

    #@18b
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@18c
    .line 1931
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v2

    #@18d
    .line 1932
    .local v2, "ioe":Ljava/lang/Exception;
    const-string/jumbo v6, "UserManagerService"

    #@190
    new-instance v7, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v8, "Error writing user info "

    #@198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v7

    #@19c
    iget-object v8, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@19e
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    #@1a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v7

    #@1a4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v7

    #@1a8
    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1ab
    .line 1933
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@1ae
    goto :goto_0
.end method

.method private writeUserListLP()V
    .locals 14

    #@0
    .prologue
    .line 1949
    const/4 v2, 0x0

    #@1
    .line 1950
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Landroid/util/AtomicFile;

    #@3
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@5
    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@8
    .line 1952
    .local v8, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@b
    move-result-object v2

    #@c
    .line 1953
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@e
    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@11
    .line 1956
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    #@13
    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@16
    .line 1957
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@18
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1f
    .line 1958
    const/4 v9, 0x1

    #@20
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object v9

    #@24
    const/4 v10, 0x0

    #@25
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@28
    .line 1959
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@2b
    const/4 v10, 0x1

    #@2c
    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@2f
    .line 1961
    const-string/jumbo v9, "users"

    #@32
    const/4 v10, 0x0

    #@33
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 1962
    const-string/jumbo v9, "nextSerialNumber"

    #@39
    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@3b
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e
    move-result-object v10

    #@3f
    const/4 v11, 0x0

    #@40
    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 1963
    const-string/jumbo v9, "version"

    #@46
    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@48
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    const/4 v11, 0x0

    #@4d
    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 1965
    const-string/jumbo v9, "guestRestrictions"

    #@53
    const/4 v10, 0x0

    #@54
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 1966
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@59
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 1968
    :try_start_1
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@5c
    const-string/jumbo v11, "restrictions"

    #@5f
    .line 1967
    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    :try_start_2
    monitor-exit v10

    #@63
    .line 1970
    const-string/jumbo v9, "guestRestrictions"

    #@66
    const/4 v10, 0x0

    #@67
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6a
    .line 1971
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@6c
    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@6d
    .line 1973
    :try_start_3
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@6f
    const-string/jumbo v11, "device_policy_restrictions"

    #@72
    .line 1972
    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@75
    :try_start_4
    monitor-exit v10

    #@76
    .line 1975
    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    #@79
    const/4 v10, 0x0

    #@7a
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7d
    .line 1976
    const-string/jumbo v9, "id"

    #@80
    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@82
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@85
    move-result-object v10

    #@86
    const/4 v11, 0x0

    #@87
    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8a
    .line 1977
    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    #@8d
    const/4 v10, 0x0

    #@8e
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@91
    .line 1979
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@93
    monitor-enter v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@94
    .line 1980
    :try_start_5
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@96
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@99
    move-result v9

    #@9a
    new-array v7, v9, [I

    #@9c
    .line 1981
    .local v7, "userIdsToWrite":[I
    const/4 v3, 0x0

    #@9d
    .local v3, "i":I
    :goto_0
    array-length v9, v7

    #@9e
    if-ge v3, v9, :cond_0

    #@a0
    .line 1982
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@a2
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@a5
    move-result-object v9

    #@a6
    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    #@a8
    iget-object v6, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@aa
    .line 1983
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    #@ac
    aput v9, v7, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@ae
    .line 1981
    add-int/lit8 v3, v3, 0x1

    #@b0
    goto :goto_0

    #@b1
    .line 1966
    .end local v3    # "i":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userIdsToWrite":[I
    :catchall_0
    move-exception v9

    #@b2
    :try_start_6
    monitor-exit v10

    #@b3
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@b4
    .line 1996
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    #@b5
    .line 1997
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@b8
    .line 1998
    const-string/jumbo v9, "UserManagerService"

    #@bb
    const-string/jumbo v10, "Error writing user list"

    #@be
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 1945
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    #@c2
    .line 1971
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v9

    #@c3
    :try_start_7
    monitor-exit v10

    #@c4
    throw v9

    #@c5
    .restart local v3    # "i":I
    .restart local v7    # "userIdsToWrite":[I
    :cond_0
    monitor-exit v10

    #@c6
    .line 1986
    const/4 v9, 0x0

    #@c7
    array-length v10, v7

    #@c8
    :goto_2
    if-ge v9, v10, :cond_1

    #@ca
    aget v4, v7, v9

    #@cc
    .line 1987
    .local v4, "id":I
    const-string/jumbo v11, "user"

    #@cf
    const/4 v12, 0x0

    #@d0
    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d3
    .line 1988
    const-string/jumbo v11, "id"

    #@d6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d9
    move-result-object v12

    #@da
    const/4 v13, 0x0

    #@db
    invoke-interface {v5, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@de
    .line 1989
    const-string/jumbo v11, "user"

    #@e1
    const/4 v12, 0x0

    #@e2
    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e5
    .line 1986
    add-int/lit8 v9, v9, 0x1

    #@e7
    goto :goto_2

    #@e8
    .line 1979
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v7    # "userIdsToWrite":[I
    :catchall_2
    move-exception v9

    #@e9
    monitor-exit v10

    #@ea
    throw v9

    #@eb
    .line 1992
    .restart local v3    # "i":I
    .restart local v7    # "userIdsToWrite":[I
    :cond_1
    const-string/jumbo v9, "users"

    #@ee
    const/4 v10, 0x0

    #@ef
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f2
    .line 1994
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@f5
    .line 1995
    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    #@f8
    goto :goto_1
.end method


# virtual methods
.method applyUserRestrictionsForAllUsersLR()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    #@0
    .prologue
    .line 1388
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 1392
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@a
    .line 1414
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 1383
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1378
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    #@4
    .line 1377
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1430
    const-string/jumbo v6, "check if more managed profiles can be added."

    #@5
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@8
    .line 1431
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1432
    return v5

    #@f
    .line 1434
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v6

    #@15
    .line 1435
    const-string/jumbo v7, "android.software.managed_users"

    #@18
    .line 1434
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 1436
    return v5

    #@1f
    .line 1439
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    #@22
    move-result-object v6

    #@23
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@26
    move-result v6

    #@27
    add-int/lit8 v0, v6, -0x1

    #@29
    .line 1440
    .local v0, "managedProfilesCount":I
    if-lez v0, :cond_2

    #@2b
    if-eqz p2, :cond_2

    #@2d
    move v1, v4

    #@2e
    .line 1441
    .local v1, "profilesRemovedCount":I
    :goto_0
    sub-int v6, v0, v1

    #@30
    if-lt v6, v4, :cond_3

    #@32
    .line 1442
    return v5

    #@33
    .end local v1    # "profilesRemovedCount":I
    :cond_2
    move v1, v5

    #@34
    .line 1440
    goto :goto_0

    #@35
    .line 1444
    .restart local v1    # "profilesRemovedCount":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@37
    monitor-enter v6

    #@38
    .line 1445
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@3b
    move-result-object v2

    #@3c
    .line 1446
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v7

    #@40
    if-nez v7, :cond_4

    #@42
    monitor-exit v6

    #@43
    .line 1447
    return v5

    #@44
    .line 1449
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    #@47
    move-result v7

    #@48
    sub-int v3, v7, v1

    #@4a
    .line 1452
    .local v3, "usersCountAfterRemoving":I
    if-eq v3, v4, :cond_5

    #@4c
    .line 1453
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    move-result v7

    #@50
    if-ge v3, v7, :cond_6

    #@52
    :cond_5
    :goto_1
    monitor-exit v6

    #@53
    .line 1452
    return v4

    #@54
    :cond_6
    move v4, v5

    #@55
    .line 1453
    goto :goto_1

    #@56
    .line 1444
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "usersCountAfterRemoving":I
    :catchall_0
    move-exception v4

    #@57
    monitor-exit v6

    #@58
    throw v4
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 900
    const-string/jumbo v2, "canHaveRestrictedProfile"

    #@4
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@7
    .line 901
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 902
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v0

    #@e
    .line 903
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 906
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_1

    #@1c
    monitor-exit v2

    #@1d
    .line 907
    return v1

    #@1e
    :cond_0
    monitor-exit v2

    #@1f
    .line 904
    return v1

    #@20
    .line 910
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    #@22
    if-nez v3, :cond_2

    #@24
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    #@26
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    :cond_2
    :goto_0
    monitor-exit v2

    #@2d
    return v1

    #@2e
    :cond_3
    const/4 v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 901
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method cleanupPartialUsers()V
    .locals 9

    #@0
    .prologue
    .line 468
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 469
    .local v1, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@7
    monitor-enter v6

    #@8
    .line 470
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v4

    #@e
    .line 471
    .local v4, "userSize":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@11
    .line 472
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    #@19
    iget-object v3, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1b
    .line 473
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@1d
    if-nez v5, :cond_0

    #@1f
    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@21
    if-nez v5, :cond_0

    #@23
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    :cond_0
    if-eqz v0, :cond_1

    #@2b
    .line 474
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 475
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@30
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@32
    const/4 v8, 0x1

    #@33
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@36
    .line 476
    const/4 v5, 0x1

    #@37
    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 471
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v6

    #@3d
    .line 480
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v2

    #@41
    .line 481
    .local v2, "partialsSize":I
    const/4 v0, 0x0

    #@42
    :goto_1
    if-ge v0, v2, :cond_3

    #@44
    .line 482
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Landroid/content/pm/UserInfo;

    #@4a
    .line 483
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string/jumbo v5, "UserManagerService"

    #@4d
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v7, "Removing partially created user "

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 484
    const-string/jumbo v7, " (name="

    #@62
    .line 483
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    .line 484
    iget-object v7, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@68
    .line 483
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    .line 484
    const-string/jumbo v7, ")"

    #@6f
    .line 483
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 485
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    #@7c
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    #@7f
    .line 481
    add-int/lit8 v0, v0, 0x1

    #@81
    goto :goto_1

    #@82
    .line 469
    .end local v0    # "i":I
    .end local v2    # "partialsSize":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "userSize":I
    :catchall_0
    move-exception v5

    #@83
    monitor-exit v6

    #@84
    throw v5

    #@85
    .line 466
    .restart local v0    # "i":I
    .restart local v2    # "partialsSize":I
    .restart local v4    # "userSize":I
    :cond_3
    return-void
.end method

.method public clearSeedAccountData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3096
    const-string/jumbo v1, "Cannot clear seed account information"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3097
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 3099
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@b
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 3100
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v1

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result-object v0

    #@14
    .line 3101
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_0

    #@16
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    monitor-exit v2

    #@18
    return-void

    #@19
    .line 3102
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    :try_start_4
    monitor-exit v3

    #@1d
    .line 3104
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@20
    monitor-exit v2

    #@21
    .line 3095
    return-void

    #@22
    .line 3099
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@23
    :try_start_5
    monitor-exit v3

    #@24
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@25
    .line 3097
    :catchall_1
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2173
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    #@3
    .line 2174
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2337
    const-string/jumbo v3, "setupRestrictedProfile"

    #@4
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@7
    .line 2338
    const/16 v3, 0x8

    #@9
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@c
    move-result-object v2

    #@d
    .line 2339
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_0

    #@f
    .line 2340
    return-object v4

    #@10
    .line 2342
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@13
    move-result-wide v0

    #@14
    .line 2344
    .local v0, "identity":J
    :try_start_0
    const-string/jumbo v3, "no_modify_accounts"

    #@17
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@19
    const/4 v5, 0x1

    #@1a
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    #@1d
    .line 2347
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@22
    move-result-object v3

    #@23
    .line 2348
    const-string/jumbo v4, "location_mode"

    #@26
    .line 2349
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    #@28
    const/4 v6, 0x0

    #@29
    .line 2347
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@2c
    .line 2350
    const-string/jumbo v3, "no_share_location"

    #@2f
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@31
    const/4 v5, 0x1

    #@32
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 2352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 2354
    return-object v2

    #@39
    .line 2351
    :catchall_0
    move-exception v3

    #@3a
    .line 2352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 2351
    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2179
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    #@3
    .line 2180
    const/16 v0, -0x2710

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3170
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v10, "android.permission.DUMP"

    #@7
    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v9

    #@b
    if-eqz v9, :cond_0

    #@d
    .line 3172
    new-instance v9, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v10, "Permission Denial: can\'t dump UserManager from from pid="

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    .line 3173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v10

    #@1d
    .line 3172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    .line 3174
    const-string/jumbo v10, ", uid="

    #@24
    .line 3172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    .line 3174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v10

    #@2c
    .line 3172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    .line 3175
    const-string/jumbo v10, " without permission "

    #@33
    .line 3172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    .line 3176
    const-string/jumbo v10, "android.permission.DUMP"

    #@3a
    .line 3172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    .line 3177
    return-void

    #@48
    .line 3180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4b
    move-result-wide v4

    #@4c
    .line 3181
    .local v4, "now":J
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    .line 3182
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@53
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@55
    monitor-enter v10

    #@56
    .line 3183
    :try_start_0
    move-object/from16 v0, p0

    #@58
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@5a
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5b
    .line 3184
    :try_start_1
    const-string/jumbo v9, "Users:"

    #@5e
    move-object/from16 v0, p2

    #@60
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 3185
    const/4 v2, 0x0

    #@64
    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@66
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@68
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@6b
    move-result v9

    #@6c
    if-ge v2, v9, :cond_9

    #@6e
    .line 3186
    move-object/from16 v0, p0

    #@70
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@72
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@75
    move-result-object v6

    #@76
    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    #@78
    .line 3187
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_2

    #@7a
    .line 3185
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 3190
    :cond_2
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@7f
    .line 3191
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    #@81
    .line 3192
    .local v7, "userId":I
    const-string/jumbo v9, "  "

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@8e
    .line 3193
    const-string/jumbo v9, " serialNo="

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    iget v9, v8, Landroid/content/pm/UserInfo;->serialNumber:I

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    #@9d
    .line 3194
    move-object/from16 v0, p0

    #@9f
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@a1
    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@a4
    move-result v9

    #@a5
    if-eqz v9, :cond_3

    #@a7
    .line 3195
    const-string/jumbo v9, " <removing> "

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    .line 3197
    :cond_3
    iget-boolean v9, v8, Landroid/content/pm/UserInfo;->partial:Z

    #@b1
    if-eqz v9, :cond_4

    #@b3
    .line 3198
    const-string/jumbo v9, " <partial>"

    #@b6
    move-object/from16 v0, p2

    #@b8
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bb
    .line 3200
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@be
    .line 3201
    const-string/jumbo v9, "    Created: "

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c6
    .line 3202
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->creationTime:J

    #@c8
    const-wide/16 v14, 0x0

    #@ca
    cmp-long v9, v12, v14

    #@cc
    if-nez v9, :cond_7

    #@ce
    .line 3203
    const-string/jumbo v9, "<unknown>"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d6
    .line 3210
    :goto_2
    const-string/jumbo v9, "    Last logged in: "

    #@d9
    move-object/from16 v0, p2

    #@db
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    .line 3211
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@e0
    const-wide/16 v14, 0x0

    #@e2
    cmp-long v9, v12, v14

    #@e4
    if-nez v9, :cond_8

    #@e6
    .line 3212
    const-string/jumbo v9, "<unknown>"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 3219
    :goto_3
    const-string/jumbo v9, "    Last logged in fingerprint: "

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 3220
    iget-object v9, v8, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@f8
    move-object/from16 v0, p2

    #@fa
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fd
    .line 3221
    const-string/jumbo v9, "    Has profile owner: "

    #@100
    move-object/from16 v0, p2

    #@102
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@105
    .line 3222
    move-object/from16 v0, p0

    #@107
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    #@109
    invoke-virtual {v9, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@10c
    move-result v9

    #@10d
    move-object/from16 v0, p2

    #@10f
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Z)V

    #@112
    .line 3223
    const-string/jumbo v9, "    Restrictions:"

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11a
    .line 3224
    move-object/from16 v0, p0

    #@11c
    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@11e
    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11f
    .line 3226
    :try_start_2
    const-string/jumbo v13, "      "

    #@122
    move-object/from16 v0, p0

    #@124
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@126
    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    #@128
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12b
    move-result-object v9

    #@12c
    check-cast v9, Landroid/os/Bundle;

    #@12e
    .line 3225
    move-object/from16 v0, p2

    #@130
    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    #@133
    .line 3227
    const-string/jumbo v9, "    Device policy local restrictions:"

    #@136
    move-object/from16 v0, p2

    #@138
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13b
    .line 3229
    const-string/jumbo v13, "      "

    #@13e
    move-object/from16 v0, p0

    #@140
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@142
    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    #@144
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@147
    move-result-object v9

    #@148
    check-cast v9, Landroid/os/Bundle;

    #@14a
    .line 3228
    move-object/from16 v0, p2

    #@14c
    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    #@14f
    .line 3230
    const-string/jumbo v9, "    Effective restrictions:"

    #@152
    move-object/from16 v0, p2

    #@154
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@157
    .line 3232
    const-string/jumbo v13, "      "

    #@15a
    move-object/from16 v0, p0

    #@15c
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    #@15e
    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    #@160
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@163
    move-result-object v9

    #@164
    check-cast v9, Landroid/os/Bundle;

    #@166
    .line 3231
    move-object/from16 v0, p2

    #@168
    invoke-static {v0, v13, v9}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@16b
    :try_start_3
    monitor-exit v12

    #@16c
    .line 3235
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    #@16e
    if-eqz v9, :cond_5

    #@170
    .line 3236
    new-instance v9, Ljava/lang/StringBuilder;

    #@172
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v12, "    Account name: "

    #@178
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v9

    #@17c
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    #@17e
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v9

    #@182
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v9

    #@186
    move-object/from16 v0, p2

    #@188
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18b
    .line 3237
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@18e
    .line 3240
    :cond_5
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@190
    if-eqz v9, :cond_1

    #@192
    .line 3241
    new-instance v9, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v12, "    Seed account name: "

    #@19a
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v9

    #@19e
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@1a0
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v9

    #@1a4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v9

    #@1a8
    move-object/from16 v0, p2

    #@1aa
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ad
    .line 3242
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1b0
    .line 3243
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@1b2
    if-eqz v9, :cond_6

    #@1b4
    .line 3244
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1b9
    const-string/jumbo v12, "         account type: "

    #@1bc
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v9

    #@1c0
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@1c2
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v9

    #@1c6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v9

    #@1ca
    move-object/from16 v0, p2

    #@1cc
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cf
    .line 3245
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1d2
    .line 3247
    :cond_6
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    #@1d4
    if-eqz v9, :cond_1

    #@1d6
    .line 3248
    const-string/jumbo v9, "         account options exist"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1de
    .line 3249
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e1
    goto/16 :goto_1

    #@1e3
    .line 3183
    .end local v2    # "i":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v9

    #@1e4
    :try_start_4
    monitor-exit v11

    #@1e5
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1e6
    .line 3182
    :catchall_1
    move-exception v9

    #@1e7
    monitor-exit v10

    #@1e8
    throw v9

    #@1e9
    .line 3205
    .restart local v2    # "i":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userId":I
    .restart local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    const/4 v9, 0x0

    #@1ea
    :try_start_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1ed
    .line 3206
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->creationTime:J

    #@1ef
    sub-long v12, v4, v12

    #@1f1
    invoke-static {v12, v13, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@1f4
    .line 3207
    const-string/jumbo v9, " ago"

    #@1f7
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    .line 3208
    move-object/from16 v0, p2

    #@1fc
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ff
    goto/16 :goto_2

    #@201
    .line 3214
    :cond_8
    const/4 v9, 0x0

    #@202
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    #@205
    .line 3215
    iget-wide v12, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@207
    sub-long v12, v4, v12

    #@209
    invoke-static {v12, v13, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@20c
    .line 3216
    const-string/jumbo v9, " ago"

    #@20f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    .line 3217
    move-object/from16 v0, p2

    #@214
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@217
    goto/16 :goto_3

    #@219
    .line 3224
    :catchall_2
    move-exception v9

    #@21a
    monitor-exit v12

    #@21b
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@21c
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    :try_start_6
    monitor-exit v11

    #@21d
    .line 3254
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@220
    .line 3255
    const-string/jumbo v9, "  Device policy global restrictions:"

    #@223
    move-object/from16 v0, p2

    #@225
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@228
    .line 3256
    move-object/from16 v0, p0

    #@22a
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@22c
    monitor-enter v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@22d
    .line 3258
    :try_start_7
    const-string/jumbo v9, "    "

    #@230
    move-object/from16 v0, p0

    #@232
    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@234
    .line 3257
    move-object/from16 v0, p2

    #@236
    invoke-static {v0, v9, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@239
    :try_start_8
    monitor-exit v11

    #@23a
    .line 3260
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@23d
    .line 3261
    new-instance v9, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v11, "  Global restrictions owner id:"

    #@245
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v9

    #@249
    move-object/from16 v0, p0

    #@24b
    iget v11, v0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@24d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@250
    move-result-object v9

    #@251
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@254
    move-result-object v9

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25a
    .line 3262
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@25d
    .line 3263
    const-string/jumbo v9, "  Guest restrictions:"

    #@260
    move-object/from16 v0, p2

    #@262
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@265
    .line 3264
    move-object/from16 v0, p0

    #@267
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@269
    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@26a
    .line 3265
    :try_start_9
    const-string/jumbo v9, "    "

    #@26d
    move-object/from16 v0, p0

    #@26f
    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@271
    move-object/from16 v0, p2

    #@273
    invoke-static {v0, v9, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@276
    :try_start_a
    monitor-exit v11

    #@277
    .line 3267
    move-object/from16 v0, p0

    #@279
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@27b
    monitor-enter v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@27c
    .line 3268
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@27f
    .line 3269
    new-instance v9, Ljava/lang/StringBuilder;

    #@281
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v12, "  Device managed: "

    #@287
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v9

    #@28b
    move-object/from16 v0, p0

    #@28d
    iget-boolean v12, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    #@28f
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@292
    move-result-object v9

    #@293
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@296
    move-result-object v9

    #@297
    move-object/from16 v0, p2

    #@299
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@29c
    :try_start_c
    monitor-exit v11

    #@29d
    .line 3271
    move-object/from16 v0, p0

    #@29f
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@2a1
    monitor-enter v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@2a2
    .line 3272
    :try_start_d
    new-instance v9, Ljava/lang/StringBuilder;

    #@2a4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2a7
    const-string/jumbo v12, "  Started users state: "

    #@2aa
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v9

    #@2ae
    move-object/from16 v0, p0

    #@2b0
    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    #@2b2
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v9

    #@2b6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v9

    #@2ba
    move-object/from16 v0, p2

    #@2bc
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    #@2bf
    :try_start_e
    monitor-exit v11

    #@2c0
    .line 3275
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2c3
    .line 3276
    new-instance v9, Ljava/lang/StringBuilder;

    #@2c5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2c8
    const-string/jumbo v11, "  Max users: "

    #@2cb
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v9

    #@2cf
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@2d2
    move-result v11

    #@2d3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v9

    #@2d7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v9

    #@2db
    move-object/from16 v0, p2

    #@2dd
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e0
    .line 3277
    new-instance v9, Ljava/lang/StringBuilder;

    #@2e2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2e5
    const-string/jumbo v11, "  Supports switchable users: "

    #@2e8
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v9

    #@2ec
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    #@2ef
    move-result v11

    #@2f0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v9

    #@2f4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f7
    move-result-object v9

    #@2f8
    move-object/from16 v0, p2

    #@2fa
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fd
    .line 3278
    new-instance v9, Ljava/lang/StringBuilder;

    #@2ff
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@302
    const-string/jumbo v11, "  All guests ephemeral: "

    #@305
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@308
    move-result-object v9

    #@309
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@30c
    move-result-object v11

    #@30d
    .line 3279
    const v12, 0x11200ac

    #@310
    .line 3278
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@313
    move-result v11

    #@314
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@317
    move-result-object v9

    #@318
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31b
    move-result-object v9

    #@31c
    move-object/from16 v0, p2

    #@31e
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@321
    monitor-exit v10

    #@322
    .line 3169
    return-void

    #@323
    .line 3256
    :catchall_3
    move-exception v9

    #@324
    :try_start_f
    monitor-exit v11

    #@325
    throw v9

    #@326
    .line 3264
    :catchall_4
    move-exception v9

    #@327
    monitor-exit v11

    #@328
    throw v9

    #@329
    .line 3267
    :catchall_5
    move-exception v9

    #@32a
    monitor-exit v11

    #@32b
    throw v9

    #@32c
    .line 3271
    :catchall_6
    move-exception v9

    #@32d
    monitor-exit v11

    #@32e
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
.end method

.method public exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method finishRemoveUser(I)V
    .locals 12
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v10

    #@4
    .line 2504
    .local v10, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@6
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@9
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 2505
    .local v1, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@f
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12
    .line 2506
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@14
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@16
    .line 2507
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    #@19
    .line 2509
    new-instance v4, Lcom/android/server/pm/UserManagerService$6;

    #@1b
    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    #@1e
    .line 2529
    const/4 v5, 0x0

    #@1f
    const/4 v6, -0x1

    #@20
    const/4 v7, 0x0

    #@21
    const/4 v8, 0x0

    #@22
    .line 2506
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 2531
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 2498
    return-void

    #@29
    .line 2530
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    #@2a
    .line 2531
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 2530
    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2601
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    if-ne v0, p2, :cond_0

    #@6
    .line 2602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 2605
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@16
    monitor-enter v0

    #@17
    .line 2607
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLP(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    monitor-exit v0

    #@1c
    return-object v1

    #@1d
    .line 2603
    :cond_0
    const-string/jumbo v0, "get application restrictions for other users/apps"

    #@20
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 2605
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v0

    #@26
    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 640
    const-string/jumbo v1, "get the credential owner"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 641
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 642
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@10
    monitor-enter v2

    #@11
    .line 643
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    #@14
    move-result-object v0

    #@15
    .line 644
    .local v0, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@17
    .line 645
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    return v1

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 650
    .end local v0    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1
    return p1

    #@1d
    .line 642
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 1073
    const-string/jumbo v0, "getDefaultGuestRestrictions"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1074
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@8
    monitor-enter v1

    #@9
    .line 1075
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@d
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 1074
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    #@0
    .prologue
    .line 523
    const-string/jumbo v3, "query users"

    #@3
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 524
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 525
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v2

    #@f
    .line 526
    .local v2, "userSize":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@12
    .line 527
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    #@1a
    iget-object v1, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1c
    .line 528
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@24
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@26
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    :cond_1
    monitor-exit v4

    #@30
    .line 529
    return-object v1

    #@31
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v4

    #@32
    .line 533
    const/4 v3, 0x0

    #@33
    return-object v3

    #@34
    .line 524
    .end local v0    # "i":I
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3
.end method

.method public getProfileIds(IZ)[I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    #@0
    .prologue
    .line 575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    if-eq p1, v2, :cond_0

    #@6
    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "getting profiles related to user "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@1d
    .line 578
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 580
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@23
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@24
    .line 581
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-object v2

    #@2c
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2d
    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 581
    return-object v2

    #@31
    .line 580
    :catchall_0
    move-exception v2

    #@32
    :try_start_3
    monitor-exit v3

    #@33
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@34
    .line 583
    :catchall_1
    move-exception v2

    #@35
    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 583
    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 679
    const-string/jumbo v0, "get the profile parent"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 680
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v0

    #@9
    .line 681
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    monitor-exit v0

    #@e
    return-object v1

    #@f
    .line 680
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v0

    #@11
    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 557
    const/4 v2, 0x1

    #@1
    .line 558
    .local v2, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v3

    #@5
    if-eq p1, v3, :cond_0

    #@7
    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "getting profiles related to user "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@1e
    .line 563
    .end local v2    # "returnFullInfo":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@21
    move-result-wide v0

    #@22
    .line 565
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@24
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@25
    .line 566
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-object v4

    #@29
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    .line 569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 566
    return-object v4

    #@2e
    .line 561
    .end local v0    # "ident":J
    .restart local v2    # "returnFullInfo":Z
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    #@31
    move-result v2

    #@32
    .local v2, "returnFullInfo":Z
    goto :goto_0

    #@33
    .line 565
    .end local v2    # "returnFullInfo":Z
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v4

    #@34
    :try_start_3
    monitor-exit v3

    #@35
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@36
    .line 568
    :catchall_1
    move-exception v3

    #@37
    .line 569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 568
    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3069
    const-string/jumbo v1, "Cannot get seed account information"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3070
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 3071
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@c
    move-result v1

    #@d
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@10
    move-result-object v0

    #@11
    .line 3072
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    .line 3070
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3087
    const-string/jumbo v1, "Cannot get seed account information"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3088
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 3089
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@c
    move-result v1

    #@d
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@10
    move-result-object v0

    #@11
    .line 3090
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    .line 3088
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3078
    const-string/jumbo v1, "Cannot get seed account information"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3079
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 3080
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@c
    move-result v1

    #@d
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@10
    move-result-object v0

    #@11
    .line 3081
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    .line 3079
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 491
    const-string/jumbo v0, "get user account"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    #@6
    .line 492
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    #@11
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 492
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public getUserCreationTime(I)J
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2836
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 2837
    .local v0, "callingUserId":I
    const/4 v2, 0x0

    #@5
    .line 2838
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 2839
    if-ne v0, p1, :cond_1

    #@a
    .line 2840
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v2

    #@e
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    monitor-exit v4

    #@f
    .line 2848
    if-nez v2, :cond_2

    #@11
    .line 2849
    new-instance v3, Ljava/lang/SecurityException;

    #@13
    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 2842
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 2843
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@20
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    #@22
    if-ne v3, v0, :cond_0

    #@24
    .line 2844
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-object v2

    #@28
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    #@29
    .line 2838
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit v4

    #@2b
    throw v3

    #@2c
    .line 2852
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    #@2e
    return-wide v4
.end method

.method public getUserHandle(I)I
    .locals 7
    .param p1, "userSerialNumber"    # I

    #@0
    .prologue
    .line 2824
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2825
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@5
    const/4 v2, 0x0

    #@6
    array-length v5, v4

    #@7
    :goto_0
    if-ge v2, v5, :cond_1

    #@9
    aget v1, v4, v2

    #@b
    .line 2826
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@e
    move-result-object v0

    #@f
    .line 2827
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@11
    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-ne v6, p1, :cond_0

    #@15
    monitor-exit v3

    #@16
    return v1

    #@17
    .line 2825
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2830
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    :cond_1
    const/4 v2, -0x1

    #@1b
    monitor-exit v3

    #@1c
    return v2

    #@1d
    .line 2824
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "targetUserId"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1005
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@3
    monitor-enter v8

    #@4
    .line 1006
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v6

    #@8
    .line 1007
    .local v6, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_0

    #@a
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 1008
    :cond_0
    const-string/jumbo v7, "UserManagerService"

    #@11
    new-instance v9, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v10, "getUserIcon: unknown user #"

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v8

    #@29
    .line 1009
    return-object v11

    #@2a
    .line 1012
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@2d
    move-result v1

    #@2e
    .line 1013
    .local v1, "callingUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    #@31
    move-result-object v7

    #@32
    iget v0, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@34
    .line 1014
    .local v0, "callingGroupId":I
    iget v5, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@36
    .line 1015
    .local v5, "targetGroupId":I
    const/16 v7, -0x2710

    #@38
    if-eq v0, v7, :cond_4

    #@3a
    .line 1016
    if-ne v0, v5, :cond_3

    #@3c
    const/4 v4, 0x1

    #@3d
    .line 1017
    .local v4, "sameGroup":Z
    :goto_0
    if-eq v1, p1, :cond_2

    #@3f
    if-eqz v4, :cond_5

    #@41
    .line 1021
    :cond_2
    :goto_1
    iget-object v7, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    if-nez v7, :cond_6

    #@45
    monitor-exit v8

    #@46
    .line 1022
    return-object v11

    #@47
    .line 1016
    .end local v4    # "sameGroup":Z
    :cond_3
    const/4 v4, 0x0

    #@48
    .restart local v4    # "sameGroup":Z
    goto :goto_0

    #@49
    .line 1015
    .end local v4    # "sameGroup":Z
    :cond_4
    const/4 v4, 0x0

    #@4a
    .restart local v4    # "sameGroup":Z
    goto :goto_0

    #@4b
    .line 1018
    :cond_5
    :try_start_2
    const-string/jumbo v7, "get the icon of a user who is not related"

    #@4e
    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 1005
    .end local v0    # "callingGroupId":I
    .end local v1    # "callingUserId":I
    .end local v4    # "sameGroup":Z
    .end local v5    # "targetGroupId":I
    .end local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v7

    #@53
    monitor-exit v8

    #@54
    throw v7

    #@55
    .line 1024
    .restart local v0    # "callingGroupId":I
    .restart local v1    # "callingUserId":I
    .restart local v4    # "sameGroup":Z
    .restart local v5    # "targetGroupId":I
    .restart local v6    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_6
    :try_start_3
    iget-object v3, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    .local v3, "iconPath":Ljava/lang/String;
    monitor-exit v8

    #@58
    .line 1029
    :try_start_4
    new-instance v7, Ljava/io/File;

    #@5a
    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5d
    const/high16 v8, 0x10000000

    #@5f
    .line 1028
    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    #@62
    move-result-object v7

    #@63
    return-object v7

    #@64
    .line 1030
    :catch_0
    move-exception v2

    #@65
    .line 1031
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "UserManagerService"

    #@68
    const-string/jumbo v8, "Couldn\'t find icon file"

    #@6b
    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    .line 1033
    return-object v11
.end method

.method public getUserIds()[I
    .locals 2

    #@0
    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 1623
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 840
    const-string/jumbo v0, "query user"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@6
    .line 841
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 842
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 841
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1215
    const-string/jumbo v2, "getUserRestrictionSource"

    #@3
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1216
    const/4 v1, 0x0

    #@7
    .line 1219
    .local v1, "result":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1220
    return v1

    #@e
    .line 1223
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1224
    const/4 v1, 0x1

    #@15
    .line 1227
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@17
    monitor-enter v3

    #@18
    .line 1228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/os/Bundle;

    #@20
    .line 1229
    .local v0, "localRestrictions":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_2

    #@26
    .line 1230
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@29
    move-result v2

    #@2a
    .line 1229
    if-eqz v2, :cond_2

    #@2c
    .line 1233
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@2e
    if-ne v2, p2, :cond_4

    #@30
    .line 1234
    or-int/lit8 v1, v1, 0x2

    #@32
    .line 1239
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@34
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_3

    #@3a
    .line 1240
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@3c
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v2

    #@40
    .line 1239
    if-eqz v2, :cond_3

    #@42
    .line 1241
    or-int/lit8 v1, v1, 0x2

    #@44
    :cond_3
    monitor-exit v3

    #@45
    .line 1245
    return v1

    #@46
    .line 1236
    :cond_4
    or-int/lit8 v1, v1, 0x4

    #@48
    goto :goto_0

    #@49
    .line 1227
    .end local v0    # "localRestrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2816
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2817
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, -0x1

    #@a
    monitor-exit v1

    #@b
    return v0

    #@c
    .line 2818
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@f
    move-result-object v0

    #@10
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 2816
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 7
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 538
    const-string/jumbo v4, "query users"

    #@3
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@6
    .line 539
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v5

    #@9
    .line 540
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    #@b
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@10
    move-result v4

    #@11
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 541
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@19
    move-result v2

    #@1a
    .line 542
    .local v2, "userSize":I
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@1d
    .line 543
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    #@25
    iget-object v1, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@27
    .line 544
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v4, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 542
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 547
    :cond_1
    if-eqz p1, :cond_2

    #@30
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@32
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    #@34
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_0

    #@3a
    .line 548
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 539
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    #@43
    monitor-exit v5

    #@44
    throw v4

    #@45
    .restart local v0    # "i":I
    .restart local v2    # "userSize":I
    .restart local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3
    monitor-exit v5

    #@46
    .line 551
    return-object v3
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1259
    const-string/jumbo v2, "hasBaseUserRestriction"

    #@4
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@7
    .line 1260
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1261
    return v1

    #@e
    .line 1263
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@10
    monitor-enter v2

    #@11
    .line 1264
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/os/Bundle;

    #@19
    .line 1265
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v1

    #@20
    :cond_1
    monitor-exit v2

    #@21
    return v1

    #@22
    .line 1263
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1193
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1194
    return v1

    #@8
    .line 1196
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    .line 1197
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    :cond_1
    return v1
.end method

.method public isDemoUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 880
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 881
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_0

    #@6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 885
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 886
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@12
    move-result-object v1

    #@13
    .line 887
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    #@15
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDemo()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    :goto_0
    monitor-exit v3

    #@1a
    return v2

    #@1b
    .line 882
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "You need MANAGE_USERS permission to query if u="

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 883
    const-string/jumbo v4, " is a demo user"

    #@30
    .line 882
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 887
    .restart local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v2, 0x0

    #@3d
    goto :goto_0

    #@3e
    .line 885
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2
.end method

.method isInitialized(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3306
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@4
    move-result-object v1

    #@5
    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    #@7
    and-int/lit8 v1, v1, 0x10

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isManagedProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 862
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 863
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_0

    #@6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 872
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 873
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@12
    move-result-object v1

    #@13
    .line 874
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    #@15
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    move-result v2

    #@19
    :goto_1
    monitor-exit v3

    #@1a
    return v2

    #@1b
    .line 864
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@1d
    monitor-enter v3

    #@1e
    .line 865
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupLP(II)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 866
    new-instance v2, Ljava/lang/SecurityException;

    #@26
    .line 867
    const-string/jumbo v4, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    #@29
    .line 866
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 864
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2

    #@30
    :cond_2
    monitor-exit v3

    #@31
    goto :goto_0

    #@32
    .line 874
    .restart local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v2, 0x0

    #@33
    goto :goto_1

    #@34
    .line 872
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v2

    #@35
    monitor-exit v3

    #@36
    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 762
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@5
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 765
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    move-result-object v0

    #@a
    .local v0, "info":Landroid/content/pm/UserInfo;
    :try_start_2
    monitor-exit v1

    #@b
    .line 767
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 770
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    move-result v1

    #@17
    monitor-exit v2

    #@18
    return v1

    #@19
    .line 764
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@1a
    :try_start_3
    monitor-exit v1

    #@1b
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    .line 762
    :catchall_1
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1

    #@1f
    .line 768
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v1, 0x0

    #@20
    monitor-exit v2

    #@21
    return v1
.end method

.method public isRestricted()Z
    .locals 2

    #@0
    .prologue
    .line 893
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 894
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 893
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public isSameProfileGroup(II)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    #@0
    .prologue
    .line 655
    if-ne p1, p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 656
    :cond_0
    const-string/jumbo v0, "check if in the same profile group"

    #@7
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@a
    .line 657
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@c
    monitor-enter v0

    #@d
    .line 658
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupLP(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    monitor-exit v0

    #@12
    return v1

    #@13
    .line 657
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v0

    #@15
    throw v1
.end method

.method public makeInitialized(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1037
    const-string/jumbo v2, "makeInitialized"

    #@3
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1038
    const/4 v0, 0x0

    #@7
    .line 1040
    .local v0, "scheduleWriteUser":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 1041
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    #@12
    .line 1042
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    #@14
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@16
    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1043
    :cond_0
    const-string/jumbo v2, "UserManagerService"

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "makeInitialized: unknown user #"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v3

    #@35
    .line 1044
    return-void

    #@36
    .line 1046
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@38
    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    #@3a
    and-int/lit8 v2, v2, 0x10

    #@3c
    if-nez v2, :cond_2

    #@3e
    .line 1047
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@40
    iget v4, v2, Landroid/content/pm/UserInfo;->flags:I

    #@42
    or-int/lit8 v4, v4, 0x10

    #@44
    iput v4, v2, Landroid/content/pm/UserInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 1048
    const/4 v0, 0x1

    #@47
    :cond_2
    monitor-exit v3

    #@48
    .line 1051
    if-eqz v0, :cond_3

    #@4a
    .line 1052
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@4d
    .line 1036
    :cond_3
    return-void

    #@4e
    .line 1040
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .locals 8
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2382
    const-string/jumbo v3, "Only the system can remove users"

    #@5
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@8
    .line 2383
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@f
    move-result-object v3

    #@10
    .line 2384
    const-string/jumbo v4, "no_remove_user"

    #@13
    .line 2383
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 2385
    const-string/jumbo v3, "UserManagerService"

    #@1c
    const-string/jumbo v4, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2386
    return v6

    #@23
    .line 2389
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v0

    #@27
    .line 2392
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@29
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@2a
    .line 2393
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@2c
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2d
    .line 2394
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    .line 2395
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_1

    #@37
    if-nez v2, :cond_2

    #@39
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@3b
    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3e
    .line 2396
    return v6

    #@3f
    .line 2395
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@41
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_1

    #@47
    :try_start_6
    monitor-exit v5

    #@48
    .line 2399
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@4a
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_3

    #@50
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@51
    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 2400
    return v6

    #@55
    .line 2393
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    #@56
    :try_start_8
    monitor-exit v5

    #@57
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@58
    .line 2392
    :catchall_1
    move-exception v3

    #@59
    :try_start_9
    monitor-exit v4

    #@5a
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@5b
    .line 2413
    :catchall_2
    move-exception v3

    #@5c
    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 2413
    throw v3

    #@60
    .line 2407
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3
    :try_start_a
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@62
    const/4 v5, 0x1

    #@63
    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@65
    .line 2410
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@67
    iget v5, v3, Landroid/content/pm/UserInfo;->flags:I

    #@69
    or-int/lit8 v5, v5, 0x40

    #@6b
    iput v5, v3, Landroid/content/pm/UserInfo;->flags:I

    #@6d
    .line 2411
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@70
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@71
    .line 2414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@74
    .line 2416
    return v7
.end method

.method public onBeforeStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2883
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSerialNumber(I)I

    #@4
    move-result v0

    #@5
    .line 2884
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@7
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    #@a
    .line 2885
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@c
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(II)V

    #@f
    .line 2887
    if-eqz p1, :cond_0

    #@11
    .line 2888
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 2889
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 2893
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->maybeInitializeDemoMode(I)V

    #@1b
    .line 2882
    return-void

    #@1c
    .line 2888
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v1

    #@1e
    throw v2
.end method

.method public onBeforeUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 2901
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSerialNumber(I)I

    #@4
    move-result v0

    #@5
    .line 2902
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@7
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->prepareUserData(III)V

    #@a
    .line 2903
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@c
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(II)V

    #@f
    .line 2900
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .locals 4
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3136
    if-nez p2, :cond_0

    #@2
    .line 3137
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    return v2

    #@7
    .line 3140
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v1

    #@b
    .line 3142
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v2, "list"

    #@e
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 3144
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 3146
    :catch_0
    move-exception v0

    #@1a
    .line 3147
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Remote exception: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 3149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, -0x1

    #@32
    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 3132
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell;)V

    #@6
    move-object v1, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    move-object v4, p3

    #@a
    move-object v5, p4

    #@b
    move-object v6, p5

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@f
    .line 3131
    return-void
.end method

.method public onUserLoggedIn(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2912
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@3
    move-result-object v2

    #@4
    .line 2913
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_0

    #@6
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@8
    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 2914
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "userForeground: unknown user #"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 2915
    return-void

    #@27
    .line 2918
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2a
    move-result-wide v0

    #@2b
    .line 2919
    .local v0, "now":J
    const-wide v4, 0xdc46c32800L

    #@30
    cmp-long v3, v0, v4

    #@32
    if-lez v3, :cond_2

    #@34
    .line 2920
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@36
    iput-wide v0, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@38
    .line 2922
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@3a
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@3c
    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    #@3e
    .line 2923
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@41
    .line 2911
    return-void
.end method

.method public removeUser(I)Z
    .locals 12
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2426
    const-string/jumbo v8, "Only the system can remove users"

    #@5
    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    #@8
    .line 2427
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v8

    #@c
    invoke-virtual {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@f
    move-result-object v8

    #@10
    .line 2428
    const-string/jumbo v9, "no_remove_user"

    #@13
    .line 2427
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_0

    #@19
    .line 2429
    const-string/jumbo v6, "UserManagerService"

    #@1c
    const-string/jumbo v8, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    #@1f
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2430
    return v7

    #@23
    .line 2433
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v2

    #@27
    .line 2436
    .local v2, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@2a
    move-result v0

    #@2b
    .line 2437
    .local v0, "currentUser":I
    if-ne v0, p1, :cond_1

    #@2d
    .line 2438
    const-string/jumbo v6, "UserManagerService"

    #@30
    const-string/jumbo v8, "Current user cannot be removed"

    #@33
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@36
    .line 2494
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 2439
    return v7

    #@3a
    .line 2441
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@3c
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@3d
    .line 2442
    :try_start_2
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@3f
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@40
    .line 2443
    :try_start_3
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .line 2444
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_2

    #@4a
    if-nez v5, :cond_3

    #@4c
    :cond_2
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4d
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@4e
    .line 2494
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 2445
    return v7

    #@52
    .line 2444
    :cond_3
    :try_start_6
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@54
    invoke-virtual {v10, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@57
    move-result v10

    #@58
    if-nez v10, :cond_2

    #@5a
    .line 2451
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@5c
    const/4 v11, 0x1

    #@5d
    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@60
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@61
    .line 2455
    :try_start_8
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@63
    invoke-interface {v9, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@66
    .line 2462
    :goto_0
    :try_start_9
    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@68
    const/4 v10, 0x1

    #@69
    iput-boolean v10, v9, Landroid/content/pm/UserInfo;->partial:Z

    #@6b
    .line 2465
    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@6d
    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    #@6f
    or-int/lit8 v10, v10, 0x40

    #@71
    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    #@73
    .line 2466
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@76
    :try_start_a
    monitor-exit v8

    #@77
    .line 2469
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@79
    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@7b
    const/16 v9, -0x2710

    #@7d
    if-eq v8, v9, :cond_4

    #@7f
    .line 2470
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@81
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@84
    move-result v8

    #@85
    .line 2469
    if-eqz v8, :cond_4

    #@87
    .line 2473
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@89
    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@8b
    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@8d
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    #@8f
    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@92
    .line 2479
    :cond_4
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@95
    move-result-object v8

    #@96
    .line 2480
    new-instance v9, Lcom/android/server/pm/UserManagerService$5;

    #@98
    invoke-direct {v9, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@9b
    .line 2479
    const/4 v10, 0x1

    #@9c
    invoke-interface {v8, p1, v10, v9}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@9f
    move-result v4

    #@a0
    .line 2492
    .local v4, "res":I
    if-nez v4, :cond_5

    #@a2
    .line 2494
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a5
    .line 2492
    return v6

    #@a6
    .line 2442
    .end local v4    # "res":I
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v6

    #@a7
    :try_start_c
    monitor-exit v9

    #@a8
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@a9
    .line 2441
    :catchall_1
    move-exception v6

    #@aa
    :try_start_d
    monitor-exit v8

    #@ab
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@ac
    .line 2493
    .end local v0    # "currentUser":I
    :catchall_2
    move-exception v6

    #@ad
    .line 2494
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b0
    .line 2493
    throw v6

    #@b1
    .line 2456
    .restart local v0    # "currentUser":I
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catch_0
    move-exception v1

    #@b2
    .line 2457
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v9, "UserManagerService"

    #@b5
    const-string/jumbo v10, "Unable to notify AppOpsService of removing user"

    #@b8
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@bb
    goto :goto_0

    #@bc
    .line 2489
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@bd
    .line 2494
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c0
    .line 2490
    return v7

    #@c1
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "res":I
    :cond_5
    move v6, v7

    #@c2
    .line 2492
    goto :goto_1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2614
    const-string/jumbo v1, "set application restrictions"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    #@6
    .line 2615
    if-eqz p2, :cond_0

    #@8
    .line 2616
    const/4 v1, 0x1

    #@9
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    #@c
    .line 2618
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 2619
    if-eqz p2, :cond_1

    #@11
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 2620
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :goto_0
    monitor-exit v2

    #@1b
    .line 2628
    new-instance v0, Landroid/content/Intent;

    #@1d
    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    #@20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@23
    .line 2629
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@26
    .line 2630
    const/high16 v1, 0x40000000    # 2.0f

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2b
    .line 2631
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@2d
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@34
    .line 2613
    return-void

    #@35
    .line 2623
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLP(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 2618
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1081
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1082
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@8
    monitor-enter v1

    #@9
    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@b
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@e
    .line 1084
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 1086
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@16
    monitor-enter v0

    #@17
    .line 1087
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1a
    monitor-exit v0

    #@1b
    .line 1080
    return-void

    #@1c
    .line 1082
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0

    #@1f
    .line 1086
    :catchall_1
    move-exception v1

    #@20
    monitor-exit v0

    #@21
    throw v1
.end method

.method setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "local"    # Landroid/os/Bundle;
    .param p3, "global"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1096
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1097
    const/4 v0, 0x0

    #@4
    .line 1099
    .local v0, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@6
    monitor-enter v4

    #@7
    .line 1100
    if-eqz p3, :cond_7

    #@9
    .line 1103
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@b
    .line 1102
    invoke-static {v3, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_6

    #@11
    const/4 v0, 0x0

    #@12
    .line 1104
    :goto_0
    if-eqz v0, :cond_0

    #@14
    .line 1105
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/os/Bundle;

    #@16
    .line 1109
    :cond_0
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@18
    .line 1121
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/os/Bundle;

    #@20
    .line 1122
    .local v2, "prev":Landroid/os/Bundle;
    invoke-static {v2, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_8

    #@26
    const/4 v1, 0x0

    #@27
    .line 1123
    .local v1, "localChanged":Z
    :goto_2
    if-eqz v1, :cond_2

    #@29
    .line 1124
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_2
    monitor-exit v4

    #@2f
    .line 1135
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@31
    monitor-enter v4

    #@32
    .line 1136
    if-eqz v1, :cond_3

    #@34
    .line 1137
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@37
    move-result-object v3

    #@38
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    #@3b
    .line 1139
    :cond_3
    if-eqz v0, :cond_4

    #@3d
    .line 1140
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@40
    :cond_4
    monitor-exit v4

    #@41
    .line 1144
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@43
    monitor-enter v4

    #@44
    .line 1145
    if-eqz v0, :cond_9

    #@46
    .line 1146
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@49
    :cond_5
    :goto_3
    monitor-exit v4

    #@4a
    .line 1095
    return-void

    #@4b
    .line 1102
    .end local v1    # "localChanged":Z
    .end local v2    # "prev":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1111
    :cond_7
    :try_start_3
    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I

    #@4f
    if-ne v3, p1, :cond_1

    #@51
    .line 1116
    const/16 v3, -0x2710

    #@53
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mGlobalRestrictionOwnerUserId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    goto :goto_1

    #@56
    .line 1099
    :catchall_0
    move-exception v3

    #@57
    monitor-exit v4

    #@58
    throw v3

    #@59
    .line 1122
    .restart local v2    # "prev":Landroid/os/Bundle;
    :cond_8
    const/4 v1, 0x1

    #@5a
    goto :goto_2

    #@5b
    .line 1135
    .restart local v1    # "localChanged":Z
    :catchall_1
    move-exception v3

    #@5c
    monitor-exit v4

    #@5d
    throw v3

    #@5e
    .line 1147
    :cond_9
    if-eqz v1, :cond_5

    #@60
    .line 1148
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@63
    goto :goto_3

    #@64
    .line 1144
    :catchall_2
    move-exception v3

    #@65
    monitor-exit v4

    #@66
    throw v3
.end method

.method public setQuietModeEnabled(IZ)V
    .locals 10
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z

    #@0
    .prologue
    .line 721
    const-string/jumbo v6, "silence profile"

    #@3
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 722
    const/4 v0, 0x0

    #@7
    .line 724
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@9
    monitor-enter v7

    #@a
    .line 725
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@c
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 726
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    #@10
    move-result-object v5

    #@11
    .line 727
    .local v5, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-object v4

    #@15
    .local v4, "parent":Landroid/content/pm/UserInfo;
    :try_start_2
    monitor-exit v8

    #@16
    .line 730
    if-eqz v5, :cond_2

    #@18
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_2

    #@1e
    .line 733
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    #@21
    move-result v6

    #@22
    if-eq v6, p2, :cond_0

    #@24
    .line 734
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    #@26
    xor-int/lit16 v6, v6, 0x80

    #@28
    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    #@2a
    .line 735
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    #@2c
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@2f
    move-result-object v6

    #@30
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33
    .line 736
    const/4 v0, 0x1

    #@34
    :cond_0
    monitor-exit v7

    #@35
    .line 739
    if-eqz v0, :cond_1

    #@37
    .line 740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v2

    #@3b
    .line 742
    .local v2, "identity":J
    if-eqz p2, :cond_3

    #@3d
    .line 743
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@40
    move-result-object v6

    #@41
    const/4 v7, 0x1

    #@42
    const/4 v8, 0x0

    #@43
    invoke-interface {v6, p1, v7, v8}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    #@46
    .line 744
    const-class v6, Landroid/app/ActivityManagerInternal;

    #@48
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4b
    move-result-object v6

    #@4c
    check-cast v6, Landroid/app/ActivityManagerInternal;

    #@4e
    invoke-virtual {v6, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@51
    .line 752
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 755
    :goto_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@5b
    move-result-object v7

    #@5c
    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    #@5f
    .line 720
    .end local v2    # "identity":J
    :cond_1
    return-void

    #@60
    .line 725
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    #@61
    :try_start_4
    monitor-exit v8

    #@62
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    .line 724
    :catchall_1
    move-exception v6

    #@64
    monitor-exit v7

    #@65
    throw v6

    #@66
    .line 731
    .restart local v4    # "parent":Landroid/content/pm/UserInfo;
    .restart local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@68
    new-instance v8, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v9, "User "

    #@70
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    const-string/jumbo v9, " is not a profile"

    #@7b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v8

    #@7f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@87
    .line 747
    .restart local v2    # "identity":J
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8a
    move-result-object v6

    #@8b
    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@8e
    goto :goto_0

    #@8f
    .line 749
    :catch_0
    move-exception v1

    #@90
    .line 750
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v6, "UserManagerService"

    #@93
    const-string/jumbo v7, "fail to start/stop user for quiet mode"

    #@96
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@99
    .line 752
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9c
    goto :goto_1

    #@9d
    .line 751
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v6

    #@9e
    .line 752
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a1
    .line 751
    throw v6
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    #@0
    .prologue
    .line 3047
    const-string/jumbo v1, "Require MANAGE_USERS permission to set user seed data"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3048
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 3050
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@b
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 3051
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@f
    move-result-object v0

    #@10
    .line 3052
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_0

    #@12
    .line 3053
    const-string/jumbo v1, "UserManagerService"

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "No such user for settings seed data u="

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2d
    monitor-exit v2

    #@2e
    .line 3054
    return-void

    #@2f
    .line 3056
    :cond_0
    :try_start_3
    iput-object p2, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@31
    .line 3057
    iput-object p3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@33
    .line 3058
    iput-object p4, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    #@35
    .line 3059
    iput-boolean p5, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    :try_start_4
    monitor-exit v3

    #@38
    .line 3061
    if-eqz p5, :cond_1

    #@3a
    .line 3062
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    :cond_1
    monitor-exit v2

    #@3e
    .line 3046
    return-void

    #@3f
    .line 3050
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    #@40
    :try_start_5
    monitor-exit v3

    #@41
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@42
    .line 3048
    :catchall_1
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 499
    const-string/jumbo v3, "set user account"

    #@3
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    #@6
    .line 500
    const/4 v2, 0x0

    #@7
    .line 501
    .local v2, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@9
    monitor-enter v4

    #@a
    .line 502
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@c
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 503
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    #@15
    .line 504
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v1, :cond_0

    #@17
    .line 505
    const-string/jumbo v3, "UserManagerService"

    #@1a
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v7, "User not found for setting user account: u"

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    monitor-exit v4

    #@33
    .line 506
    return-void

    #@34
    .line 508
    :cond_0
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    #@36
    .line 509
    .local v0, "currentAccount":Ljava/lang/String;
    invoke-static {v0, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_1

    #@3c
    .line 510
    iput-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    .line 511
    move-object v2, v1

    #@3f
    .end local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    :try_start_4
    monitor-exit v5

    #@40
    .line 515
    if-eqz v2, :cond_2

    #@42
    .line 516
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@45
    :cond_2
    monitor-exit v4

    #@46
    .line 498
    return-void

    #@47
    .line 502
    .end local v0    # "currentAccount":Ljava/lang/String;
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    #@48
    :try_start_5
    monitor-exit v5

    #@49
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4a
    .line 501
    .end local v2    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v3

    #@4b
    monitor-exit v4

    #@4c
    throw v3
.end method

.method public setUserEnabled(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 825
    const-string/jumbo v1, "enable user"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 826
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@b
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 829
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result-object v0

    #@10
    .local v0, "info":Landroid/content/pm/UserInfo;
    :try_start_2
    monitor-exit v1

    #@11
    .line 831
    if-eqz v0, :cond_0

    #@13
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    :cond_0
    :goto_0
    monitor-exit v2

    #@1a
    .line 824
    return-void

    #@1b
    .line 828
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@1c
    :try_start_3
    monitor-exit v1

    #@1d
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 826
    :catchall_1
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1

    #@21
    .line 832
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_4
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@23
    xor-int/lit8 v1, v1, 0x40

    #@25
    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@27
    .line 833
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    #@29
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@30
    goto :goto_0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 985
    const-string/jumbo v0, "update users"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 986
    const-string/jumbo v0, "no_set_user_icon"

    #@9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 987
    const-string/jumbo v0, "UserManagerService"

    #@12
    const-string/jumbo v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 988
    return-void

    #@19
    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    #@1b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    #@1e
    .line 984
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 964
    const-string/jumbo v2, "rename users"

    #@3
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 965
    const/4 v0, 0x0

    #@7
    .line 966
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 967
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    #@d
    move-result-object v1

    #@e
    .line 968
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    #@10
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@12
    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 969
    :cond_0
    const-string/jumbo v2, "UserManagerService"

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "setUserName: unknown user #"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v3

    #@31
    .line 970
    return-void

    #@32
    .line 972
    :cond_1
    if-eqz p2, :cond_2

    #@34
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@36
    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@38
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_4

    #@3e
    :cond_2
    :goto_0
    monitor-exit v3

    #@3f
    .line 978
    if-eqz v0, :cond_3

    #@41
    .line 979
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    #@44
    .line 963
    :cond_3
    return-void

    #@45
    .line 973
    :cond_4
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@47
    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@49
    .line 974
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    .line 975
    const/4 v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 966
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1271
    const-string/jumbo v1, "setUserRestriction"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1272
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1273
    return-void

    #@d
    .line 1275
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@f
    monitor-enter v2

    #@10
    .line 1279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/os/Bundle;

    #@18
    .line 1278
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@1b
    move-result-object v0

    #@1c
    .line 1280
    .local v0, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1f
    .line 1282
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v2

    #@23
    .line 1270
    return-void

    #@24
    .line 1275
    .end local v0    # "newRestrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3111
    const-string/jumbo v3, "Cannot check seed account information"

    #@3
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 3112
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 3113
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v2

    #@f
    .line 3114
    .local v2, "userSize":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@12
    .line 3115
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    #@1a
    .line 3116
    .local v0, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    #@1c
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 3114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3117
    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@27
    if-eqz v3, :cond_0

    #@29
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 3120
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@33
    if-eqz v3, :cond_0

    #@35
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    #@37
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_0

    #@3d
    .line 3123
    const/4 v3, 0x1

    #@3e
    monitor-exit v4

    #@3f
    return v3

    #@40
    .end local v0    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2
    monitor-exit v4

    #@41
    .line 3126
    const/4 v3, 0x0

    #@42
    return v3

    #@43
    .line 3112
    .end local v1    # "i":I
    .end local v2    # "userSize":I
    :catchall_0
    move-exception v3

    #@44
    monitor-exit v4

    #@45
    throw v3
.end method

.method systemReady()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 446
    const-string/jumbo v1, "appops"

    #@4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v1

    #@8
    .line 445
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@e
    .line 448
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 449
    const/4 v2, 0x0

    #@12
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 452
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    #@19
    move-result-object v0

    #@1a
    .line 453
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@1c
    .line 454
    const-string/jumbo v1, "no_config_wifi"

    #@1f
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@21
    .line 453
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 461
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@29
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    #@2b
    .line 462
    new-instance v3, Landroid/content/IntentFilter;

    #@2d
    const-string/jumbo v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    #@30
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@33
    .line 463
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@35
    .line 461
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@38
    .line 444
    return-void

    #@39
    .line 448
    .end local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v1

    #@3b
    throw v2

    #@3c
    .line 458
    .restart local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :cond_1
    const-string/jumbo v1, "no_config_wifi"

    #@3f
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@41
    const/4 v3, 0x1

    #@42
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    #@45
    goto :goto_0
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .locals 10
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 776
    const-string/jumbo v6, "silence profile"

    #@4
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@7
    .line 777
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    #@a
    move-result v6

    #@b
    if-nez v6, :cond_0

    #@d
    .line 778
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@f
    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v2

    #@19
    .line 787
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@1b
    .line 788
    const-string/jumbo v7, "keyguard"

    #@1e
    .line 787
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/app/KeyguardManager;

    #@24
    .line 792
    .local v1, "km":Landroid/app/KeyguardManager;
    const/4 v6, 0x0

    #@25
    const/4 v7, 0x0

    #@26
    invoke-virtual {v1, v6, v7, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v5

    #@2a
    .line 794
    .local v5, "unlockIntent":Landroid/content/Intent;
    if-nez v5, :cond_1

    #@2c
    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 795
    return v9

    #@30
    .line 780
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v2    # "identity":J
    .end local v5    # "unlockIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZ)V

    #@33
    .line 781
    const/4 v6, 0x1

    #@34
    return v6

    #@35
    .line 797
    .restart local v1    # "km":Landroid/app/KeyguardManager;
    .restart local v2    # "identity":J
    .restart local v5    # "unlockIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    #@37
    .line 798
    const-string/jumbo v6, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    #@3a
    .line 797
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3d
    .line 799
    .local v0, "callBackIntent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    #@3f
    .line 800
    const-string/jumbo v6, "android.intent.extra.INTENT"

    #@42
    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@45
    .line 802
    :cond_2
    const-string/jumbo v6, "android.intent.extra.USER_ID"

    #@48
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4b
    .line 803
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@54
    .line 804
    const/high16 v6, 0x10000000

    #@56
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@59
    .line 806
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@5b
    .line 807
    const/4 v7, 0x0

    #@5c
    .line 809
    const/high16 v8, 0x54000000

    #@5e
    .line 805
    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@61
    move-result-object v4

    #@62
    .line 814
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v6, "android.intent.extra.INTENT"

    #@65
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@6c
    .line 815
    const/high16 v6, 0x10800000

    #@6e
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@71
    .line 816
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@73
    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@79
    .line 820
    return v9

    #@7a
    .line 817
    .end local v0    # "callBackIntent":Landroid/content/Intent;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "unlockIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    #@7b
    .line 818
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7e
    .line 817
    throw v6
.end method
