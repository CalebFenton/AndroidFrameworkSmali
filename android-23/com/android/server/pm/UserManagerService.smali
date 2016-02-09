.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$MainHandler;
    }
.end annotation


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final CONFIG_PROFILES_SHARE_CREDENTIAL:Z = true

.field private static final DBG:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x5

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mContext:Landroid/content/Context;

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 120
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
    .line 144
    const/4 v0, 0x1

    #@20
    new-array v0, v0, [Ljava/lang/String;

    #@22
    .line 145
    const-string/jumbo v1, "no_record_audio"

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v1, v0, v2

    #@28
    .line 144
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lcom/android/server/pm/UserManagerService;->SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    #@2e
    .line 85
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 202
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v5

    #@4
    .line 203
    new-instance v6, Ljava/io/File;

    #@6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "user"

    #@d
    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move-object v3, p3

    #@14
    move-object v4, p4

    #@15
    .line 201
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    #@18
    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    #@3
    .line 162
    new-instance v1, Landroid/util/SparseArray;

    #@5
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@a
    .line 163
    new-instance v1, Landroid/util/SparseArray;

    #@c
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@11
    .line 164
    new-instance v1, Landroid/os/Bundle;

    #@13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@18
    .line 171
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@1a
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@1f
    .line 175
    const/4 v1, 0x0

    #@20
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@22
    .line 212
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@24
    .line 213
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@26
    .line 214
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    #@28
    .line 215
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2a
    .line 216
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    #@2c
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@2f
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@31
    .line 217
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    #@33
    monitor-enter v2

    #@34
    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@36
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@37
    .line 219
    :try_start_1
    new-instance v1, Ljava/io/File;

    #@39
    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    #@3b
    invoke-direct {v1, p5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3e
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@40
    .line 220
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@42
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    #@45
    .line 222
    new-instance v0, Ljava/io/File;

    #@47
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@49
    const-string/jumbo v4, "0"

    #@4c
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4f
    .line 223
    .local v0, "userZeroDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@52
    .line 224
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@54
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 225
    const/16 v4, 0x1fd

    #@5a
    .line 227
    const/4 v5, -0x1

    #@5b
    const/4 v6, -0x1

    #@5c
    .line 224
    invoke-static {v1, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@5f
    .line 228
    new-instance v1, Ljava/io/File;

    #@61
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@63
    const-string/jumbo v5, "userlist.xml"

    #@66
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@69
    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@6b
    .line 229
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    #@6e
    .line 230
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    #@71
    .line 231
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@74
    monitor-exit v2

    #@75
    .line 211
    return-void

    #@76
    .line 218
    .end local v0    # "userZeroDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    #@77
    :try_start_3
    monitor-exit v3

    #@78
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@79
    .line 217
    :catchall_1
    move-exception v1

    #@7a
    monitor-exit v2

    #@7b
    throw v1
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    new-instance v3, Ljava/lang/Object;

    #@3
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@6
    new-instance v4, Ljava/lang/Object;

    #@8
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    #@b
    move-object v0, p0

    #@c
    move-object v2, v1

    #@d
    move-object v5, p1

    #@e
    move-object v6, p2

    #@f
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    #@12
    .line 190
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 658
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 660
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    #@d
    .line 661
    const/4 v2, -0x1

    #@e
    const/4 v3, 0x1

    #@f
    .line 659
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 662
    new-instance v1, Ljava/lang/SecurityException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "You need MANAGE_USERS permission to: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 656
    :cond_0
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 668
    .local v0, "uid":I
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 669
    new-instance v1, Ljava/lang/SecurityException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Only system may call: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 666
    :cond_0
    return-void
.end method

.method private cleanAppRestrictions(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1187
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 1188
    :try_start_0
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 1189
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v2

    #@b
    .line 1190
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@d
    monitor-exit v5

    #@e
    return-void

    #@f
    .line 1191
    :cond_0
    const/4 v4, 0x0

    #@10
    :try_start_1
    array-length v6, v2

    #@11
    :goto_0
    if-ge v4, v6, :cond_2

    #@13
    aget-object v1, v2, v4

    #@15
    .line 1192
    .local v1, "fileName":Ljava/lang/String;
    const-string/jumbo v7, "res_"

    #@18
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 1193
    new-instance v3, Ljava/io/File;

    #@20
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    .line 1194
    .local v3, "resFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_1

    #@29
    .line 1195
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 1191
    .end local v3    # "resFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_0

    #@2f
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    #@30
    .line 1186
    return-void

    #@31
    .line 1187
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@32
    monitor-exit v5

    #@33
    throw v4
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1206
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1207
    :try_start_0
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 1208
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 1209
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 1210
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v3

    #@1a
    .line 1205
    return-void

    #@1b
    .line 1206
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 30
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    #@0
    .prologue
    .line 1232
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v24

    #@4
    move-object/from16 v0, p0

    #@6
    move/from16 v1, v24

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@b
    move-result-object v24

    #@c
    .line 1233
    const-string/jumbo v25, "no_add_user"

    #@f
    const/16 v26, 0x0

    #@11
    .line 1232
    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@14
    move-result v24

    #@15
    if-eqz v24, :cond_0

    #@17
    .line 1234
    const-string/jumbo v24, "UserManagerService"

    #@1a
    const-string/jumbo v25, "Cannot add user. DISALLOW_ADD_USER is enabled."

    #@1d
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1235
    const/16 v24, 0x0

    #@22
    return-object v24

    #@23
    .line 1237
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@26
    move-result v24

    #@27
    if-eqz v24, :cond_1

    #@29
    .line 1238
    const/16 v24, 0x0

    #@2b
    return-object v24

    #@2c
    .line 1240
    :cond_1
    and-int/lit8 v24, p2, 0x4

    #@2e
    if-eqz v24, :cond_2

    #@30
    const/4 v10, 0x1

    #@31
    .line 1241
    .local v10, "isGuest":Z
    :goto_0
    and-int/lit8 v24, p2, 0x20

    #@33
    if-eqz v24, :cond_3

    #@35
    const/4 v11, 0x1

    #@36
    .line 1242
    .local v11, "isManagedProfile":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@39
    move-result-wide v8

    #@3a
    .line 1243
    .local v8, "ident":J
    const/16 v19, 0x0

    #@3c
    .line 1246
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    #@40
    move-object/from16 v25, v0

    #@42
    monitor-enter v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@43
    .line 1247
    :try_start_1
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@47
    move-object/from16 v26, v0

    #@49
    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4a
    .line 1248
    const/4 v14, 0x0

    #@4b
    .line 1249
    .local v14, "parent":Landroid/content/pm/UserInfo;
    const/16 v24, -0x2710

    #@4d
    move/from16 v0, p3

    #@4f
    move/from16 v1, v24

    #@51
    if-eq v0, v1, :cond_4

    #@53
    .line 1250
    :try_start_2
    move-object/from16 v0, p0

    #@55
    move/from16 v1, p3

    #@57
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    #@5a
    move-result-object v14

    #@5b
    .line 1251
    .local v14, "parent":Landroid/content/pm/UserInfo;
    if-nez v14, :cond_4

    #@5d
    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5e
    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@5f
    const/16 v24, 0x0

    #@61
    .line 1309
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 1251
    return-object v24

    #@65
    .line 1240
    .end local v8    # "ident":J
    .end local v10    # "isGuest":Z
    .end local v11    # "isManagedProfile":Z
    .end local v14    # "parent":Landroid/content/pm/UserInfo;
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v10, 0x0

    #@66
    .restart local v10    # "isGuest":Z
    goto :goto_0

    #@67
    .line 1241
    :cond_3
    const/4 v11, 0x0

    #@68
    .restart local v11    # "isManagedProfile":Z
    goto :goto_1

    #@69
    .line 1253
    .restart local v8    # "ident":J
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    if-eqz v11, :cond_5

    #@6b
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles()Z

    #@6e
    move-result v24

    #@6f
    if-eqz v24, :cond_7

    #@71
    .line 1256
    :cond_5
    if-nez v10, :cond_6

    #@73
    if-eqz v11, :cond_8

    #@75
    .line 1262
    :cond_6
    if-eqz v10, :cond_9

    #@77
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@7a
    move-result-object v24

    #@7b
    if-eqz v24, :cond_9

    #@7d
    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@7e
    :try_start_7
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@7f
    .line 1263
    const/16 v24, 0x0

    #@81
    .line 1309
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 1263
    return-object v24

    #@85
    :cond_7
    :try_start_8
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@86
    :try_start_9
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@87
    .line 1254
    const/16 v24, 0x0

    #@89
    .line 1309
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8c
    .line 1254
    return-object v24

    #@8d
    .line 1256
    :cond_8
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReachedLocked()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@90
    move-result v24

    #@91
    if-eqz v24, :cond_6

    #@93
    :try_start_b
    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@94
    :try_start_c
    monitor-exit v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@95
    .line 1259
    const/16 v24, 0x0

    #@97
    .line 1309
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@9a
    .line 1259
    return-object v24

    #@9b
    .line 1265
    :cond_9
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableIdLocked()I

    #@9e
    move-result v18

    #@9f
    .line 1266
    .local v18, "userId":I
    new-instance v20, Landroid/content/pm/UserInfo;

    #@a1
    const/16 v24, 0x0

    #@a3
    move-object/from16 v0, v20

    #@a5
    move/from16 v1, v18

    #@a7
    move-object/from16 v2, p1

    #@a9
    move-object/from16 v3, v24

    #@ab
    move/from16 v4, p2

    #@ad
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    #@b0
    .line 1267
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .local v20, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_e
    move-object/from16 v0, p0

    #@b2
    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@b4
    move/from16 v24, v0

    #@b6
    add-int/lit8 v27, v24, 0x1

    #@b8
    move/from16 v0, v27

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@be
    move/from16 v0, v24

    #@c0
    move-object/from16 v1, v20

    #@c2
    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@c4
    .line 1268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c7
    move-result-wide v12

    #@c8
    .line 1269
    .local v12, "now":J
    const-wide v28, 0xdc46c32800L

    #@cd
    cmp-long v24, v12, v28

    #@cf
    if-lez v24, :cond_c

    #@d1
    .end local v12    # "now":J
    :goto_2
    move-object/from16 v0, v20

    #@d3
    iput-wide v12, v0, Landroid/content/pm/UserInfo;->creationTime:J

    #@d5
    .line 1270
    const/16 v24, 0x1

    #@d7
    move/from16 v0, v24

    #@d9
    move-object/from16 v1, v20

    #@db
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@dd
    .line 1271
    move-object/from16 v0, v20

    #@df
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@e1
    move/from16 v24, v0

    #@e3
    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@e6
    move-result-object v24

    #@e7
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    #@ea
    .line 1272
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@ee
    move-object/from16 v24, v0

    #@f0
    move-object/from16 v0, v24

    #@f2
    move/from16 v1, v18

    #@f4
    move-object/from16 v2, v20

    #@f6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@f9
    .line 1273
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    #@fc
    .line 1274
    if-eqz v14, :cond_b

    #@fe
    .line 1275
    iget v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@100
    move/from16 v24, v0

    #@102
    const/16 v27, -0x1

    #@104
    move/from16 v0, v24

    #@106
    move/from16 v1, v27

    #@108
    if-ne v0, v1, :cond_a

    #@10a
    .line 1276
    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    #@10c
    move/from16 v24, v0

    #@10e
    move/from16 v0, v24

    #@110
    iput v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@112
    .line 1277
    move-object/from16 v0, p0

    #@114
    invoke-direct {v0, v14}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    #@117
    .line 1279
    :cond_a
    iget v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@119
    move/from16 v24, v0

    #@11b
    move/from16 v0, v24

    #@11d
    move-object/from16 v1, v20

    #@11f
    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@121
    .line 1281
    :cond_b
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@125
    move-object/from16 v24, v0

    #@127
    const-class v27, Landroid/os/storage/StorageManager;

    #@129
    move-object/from16 v0, v24

    #@12b
    move-object/from16 v1, v27

    #@12d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@130
    move-result-object v16

    #@131
    check-cast v16, Landroid/os/storage/StorageManager;

    #@133
    .line 1282
    .local v16, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    #@136
    move-result-object v24

    #@137
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13a
    move-result-object v22

    #@13b
    .local v22, "vol$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@13e
    move-result v24

    #@13f
    if-eqz v24, :cond_d

    #@141
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@144
    move-result-object v21

    #@145
    check-cast v21, Landroid/os/storage/VolumeInfo;

    #@147
    .line 1283
    .local v21, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@14a
    move-result-object v23

    #@14b
    .line 1285
    .local v23, "volumeUuid":Ljava/lang/String;
    :try_start_f
    move-object/from16 v0, v23

    #@14d
    move/from16 v1, v18

    #@14f
    invoke-static {v0, v1}, Landroid/os/Environment;->getDataUserDirectory(Ljava/lang/String;I)Ljava/io/File;

    #@152
    move-result-object v17

    #@153
    .line 1287
    .local v17, "userDir":Ljava/io/File;
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/UserManagerService;->prepareUserDirectory(Ljava/io/File;)V

    #@156
    .line 1288
    move-object/from16 v0, v20

    #@158
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    #@15a
    move/from16 v24, v0

    #@15c
    move-object/from16 v0, v17

    #@15e
    move/from16 v1, v24

    #@160
    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->enforceSerialNumber(Ljava/io/File;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@163
    goto :goto_3

    #@164
    .line 1289
    .end local v17    # "userDir":Ljava/io/File;
    :catch_0
    move-exception v7

    #@165
    .line 1290
    .local v7, "e":Ljava/io/IOException;
    :try_start_10
    const-string/jumbo v24, "UserManagerService"

    #@168
    new-instance v27, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v28, "Failed to create user directory on "

    #@170
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v27

    #@174
    move-object/from16 v0, v27

    #@176
    move-object/from16 v1, v23

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v27

    #@17c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v27

    #@180
    move-object/from16 v0, v24

    #@182
    move-object/from16 v1, v27

    #@184
    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@187
    goto :goto_3

    #@188
    .line 1247
    .end local v7    # "e":Ljava/io/IOException;
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v22    # "vol$iterator":Ljava/util/Iterator;
    .end local v23    # "volumeUuid":Ljava/lang/String;
    :catchall_0
    move-exception v24

    #@189
    move-object/from16 v19, v20

    #@18b
    .end local v18    # "userId":I
    .end local v20    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_4
    :try_start_11
    monitor-exit v26

    #@18c
    throw v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@18d
    .line 1246
    :catchall_1
    move-exception v24

    #@18e
    :goto_5
    :try_start_12
    monitor-exit v25

    #@18f
    throw v24
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    #@190
    .line 1308
    :catchall_2
    move-exception v24

    #@191
    .line 1309
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@194
    .line 1308
    throw v24

    #@195
    .line 1269
    .restart local v12    # "now":J
    .restart local v18    # "userId":I
    .restart local v20    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_c
    const-wide/16 v12, 0x0

    #@197
    goto/16 :goto_2

    #@199
    .line 1293
    .end local v12    # "now":J
    .restart local v16    # "storage":Landroid/os/storage/StorageManager;
    .restart local v22    # "vol$iterator":Ljava/util/Iterator;
    :cond_d
    :try_start_13
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@19d
    move-object/from16 v24, v0

    #@19f
    move-object/from16 v0, v24

    #@1a1
    move/from16 v1, v18

    #@1a3
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(I)V

    #@1a6
    .line 1294
    const/16 v24, 0x0

    #@1a8
    move/from16 v0, v24

    #@1aa
    move-object/from16 v1, v20

    #@1ac
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@1ae
    .line 1295
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, v20

    #@1b2
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    #@1b5
    .line 1296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    #@1b8
    .line 1297
    new-instance v15, Landroid/os/Bundle;

    #@1ba
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    #@1bd
    .line 1298
    .local v15, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@1c1
    move-object/from16 v24, v0

    #@1c3
    move-object/from16 v0, v24

    #@1c5
    move/from16 v1, v18

    #@1c7
    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@1ca
    :try_start_14
    monitor-exit v26
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    #@1cb
    :try_start_15
    monitor-exit v25

    #@1cc
    .line 1301
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@1d0
    move-object/from16 v24, v0

    #@1d2
    move-object/from16 v0, v24

    #@1d4
    move/from16 v1, v18

    #@1d6
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->newUserCreated(I)V

    #@1d9
    .line 1302
    if-eqz v20, :cond_e

    #@1db
    .line 1303
    new-instance v6, Landroid/content/Intent;

    #@1dd
    const-string/jumbo v24, "android.intent.action.USER_ADDED"

    #@1e0
    move-object/from16 v0, v24

    #@1e2
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e5
    .line 1304
    .local v6, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v24, "android.intent.extra.user_handle"

    #@1e8
    move-object/from16 v0, v20

    #@1ea
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    #@1ec
    move/from16 v25, v0

    #@1ee
    move-object/from16 v0, v24

    #@1f0
    move/from16 v1, v25

    #@1f2
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1f5
    .line 1305
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@1f9
    move-object/from16 v24, v0

    #@1fb
    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1fd
    .line 1306
    const-string/jumbo v26, "android.permission.MANAGE_USERS"

    #@200
    .line 1305
    move-object/from16 v0, v24

    #@202
    move-object/from16 v1, v25

    #@204
    move-object/from16 v2, v26

    #@206
    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    #@209
    .line 1309
    .end local v6    # "addedIntent":Landroid/content/Intent;
    :cond_e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20c
    .line 1311
    return-object v20

    #@20d
    .line 1308
    :catchall_3
    move-exception v24

    #@20e
    move-object/from16 v19, v20

    #@210
    .end local v20    # "userInfo":Landroid/content/pm/UserInfo;
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_6

    #@211
    .line 1246
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v20    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v24

    #@212
    move-object/from16 v19, v20

    #@214
    .end local v20    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    goto/16 :goto_5

    #@216
    .line 1247
    .end local v15    # "restrictions":Landroid/os/Bundle;
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v18    # "userId":I
    .end local v22    # "vol$iterator":Ljava/util/Iterator;
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_5
    move-exception v24

    #@217
    goto/16 :goto_4
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
    .line 1922
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getSerialNumber(Ljava/io/File;)I

    #@3
    move-result v1

    #@4
    .line 1923
    .local v1, "foundSerial":I
    const-string/jumbo v2, "UserManagerService"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Found "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, " with serial number "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1925
    const/4 v2, -0x1

    #@2a
    if-ne v1, v2, :cond_1

    #@2c
    .line 1926
    const-string/jumbo v2, "UserManagerService"

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Serial number missing on "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    const-string/jumbo v4, "; assuming current is valid"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1928
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->setSerialNumber(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 1921
    :cond_0
    :goto_0
    return-void

    #@51
    .line 1929
    :catch_0
    move-exception v0

    #@52
    .line 1930
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UserManagerService"

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "Failed to set serial number on "

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    goto :goto_0

    #@6d
    .line 1933
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eq v1, p1, :cond_0

    #@6f
    .line 1934
    new-instance v2, Ljava/io/IOException;

    #@71
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v4, "Found serial number "

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    .line 1935
    const-string/jumbo v4, " doesn\'t match expected "

    #@84
    .line 1934
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@93
    throw v2
.end method

.method private fallbackToSingleUserLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 839
    new-instance v0, Landroid/content/pm/UserInfo;

    #@3
    .line 840
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v2

    #@9
    const v3, 0x10404eb

    #@c
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    .line 841
    const/16 v4, 0x13

    #@13
    .line 839
    invoke-direct {v0, v5, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@16
    .line 842
    .local v0, "primary":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    .line 843
    const/16 v2, 0xa

    #@1d
    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@1f
    .line 844
    const/4 v2, 0x5

    #@20
    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@22
    .line 846
    new-instance v1, Landroid/os/Bundle;

    #@24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@27
    .line 847
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@2c
    .line 849
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    #@2f
    .line 850
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    #@32
    .line 852
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    #@35
    .line 853
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    #@38
    .line 837
    return-void
.end method

.method private findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    .locals 5

    #@0
    .prologue
    .line 1334
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    .line 1335
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@9
    .line 1336
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/pm/UserInfo;

    #@11
    .line 1337
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 1335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1337
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@20
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@22
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_0

    #@28
    .line 1338
    return-object v2

    #@29
    .line 1341
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v3, 0x0

    #@2a
    return-object v3
.end method

.method private getAliveUsersExcludingGuestsCountLocked()I
    .locals 6

    #@0
    .prologue
    .line 635
    const/4 v0, 0x0

    #@1
    .line 636
    .local v0, "aliveUserCount":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    .line 638
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@a
    .line 639
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/content/pm/UserInfo;

    #@12
    .line 640
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@14
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    #@16
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 641
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 638
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 641
    :cond_1
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@27
    if-nez v4, :cond_0

    #@29
    .line 642
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 645
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    #@0
    .prologue
    .line 182
    const-class v0, Lcom/android/server/pm/UserManagerService;

    #@2
    monitor-enter v0

    #@3
    .line 183
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 182
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private getNextAvailableIdLocked()I
    .locals 3

    #@0
    .prologue
    .line 1881
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1882
    const/16 v0, 0xa

    #@5
    .line 1883
    .local v0, "i":I
    :goto_0
    const v1, 0x7fffffff

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 1884
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@f
    move-result v1

    #@10
    if-gez v1, :cond_0

    #@12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@14
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1887
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    :cond_1
    monitor-exit v2

    #@1e
    .line 1889
    return v0

    #@1f
    .line 1881
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method private getProfileParentLocked(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    #@4
    move-result-object v1

    #@5
    .line 349
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    #@7
    .line 350
    return-object v3

    #@8
    .line 352
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@a
    .line 353
    .local v0, "parentUserId":I
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 354
    return-object v3

    #@e
    .line 356
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    #@11
    move-result-object v2

    #@12
    return-object v2
.end method

.method private getProfilesLocked(IZ)Ljava/util/List;
    .locals 6
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
    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v2

    #@4
    .line 303
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/util/ArrayList;

    #@6
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v4

    #@c
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 304
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    #@11
    .line 306
    return-object v3

    #@12
    .line 308
    :cond_0
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v4

    #@19
    if-ge v0, v4, :cond_4

    #@1b
    .line 309
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/UserInfo;

    #@23
    .line 310
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_2

    #@29
    .line 308
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 313
    :cond_2
    if-eqz p2, :cond_3

    #@2e
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_1

    #@34
    .line 316
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@36
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@38
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_1

    #@3e
    .line 319
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_1

    #@42
    .line 321
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_4
    return-object v3
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
    .line 1961
    const/16 v5, 0x100

    #@2
    :try_start_0
    new-array v0, v5, [B

    #@4
    .line 1962
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
    .line 1963
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    #@11
    const/4 v5, 0x0

    #@12
    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    .line 1965
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
    .line 1966
    :catch_0
    move-exception v2

    #@1b
    .line 1967
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
    .line 1969
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "serial":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@36
    .line 1970
    .local v1, "e":Landroid/system/ErrnoException;
    iget v5, v1, Landroid/system/ErrnoException;->errno:I

    #@38
    sget v6, Landroid/system/OsConstants;->ENODATA:I

    #@3a
    if-ne v5, v6, :cond_0

    #@3c
    .line 1971
    const/4 v5, -0x1

    #@3d
    return v5

    #@3e
    .line 1973
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
    .line 1613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1615
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v3

    #@a
    .line 1616
    const/16 v4, 0x2000

    #@c
    .line 1615
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@f
    move-result-object v3

    #@10
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1615
    return v3

    #@16
    .line 1617
    :catch_0
    move-exception v2

    #@17
    .line 1618
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    #@18
    .line 1620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1618
    return v3

    #@1c
    .line 1619
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    #@1d
    .line 1620
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1619
    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 397
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/pm/UserInfo;

    #@9
    .line 399
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@b
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 403
    :cond_0
    return-object v0

    #@18
    .line 400
    :cond_1
    const-string/jumbo v1, "UserManagerService"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "getUserInfo: unknown user #"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 401
    return-object v4
.end method

.method private initDefaultGuestRestrictions()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 508
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@3
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 509
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@b
    const-string/jumbo v1, "no_outgoing_calls"

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@11
    .line 510
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@13
    const-string/jumbo v1, "no_sms"

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@19
    .line 507
    :cond_0
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1173
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@3
    .line 1174
    const/16 v2, 0x2000

    #@5
    .line 1173
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@8
    move-result-object v0

    #@9
    .line 1176
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@d
    const/high16 v2, 0x800000

    #@f
    and-int/2addr v1, v2

    #@10
    if-nez v1, :cond_1

    #@12
    .line 1177
    :cond_0
    return v3

    #@13
    .line 1179
    :cond_1
    const/4 v1, 0x1

    #@14
    return v1
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 361
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    #@4
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 362
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@a
    const/4 v3, -0x1

    #@b
    if-eq v2, v3, :cond_2

    #@d
    .line 363
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@f
    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 361
    :cond_0
    :goto_0
    return v0

    #@14
    :cond_1
    move v0, v1

    #@15
    .line 363
    goto :goto_0

    #@16
    :cond_2
    move v0, v1

    #@17
    .line 362
    goto :goto_0
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    #@0
    .prologue
    .line 609
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLocked()I

    #@3
    move-result v0

    #@4
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@7
    move-result v1

    #@8
    if-lt v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private numberOfUsersOfTypeLocked(IZ)I
    .locals 5
    .param p1, "flags"    # I
    .param p2, "excludeDying"    # Z

    #@0
    .prologue
    .line 1315
    const/4 v0, 0x0

    #@1
    .line 1316
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 1317
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/content/pm/UserInfo;

    #@13
    .line 1318
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p2, :cond_1

    #@15
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@17
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@19
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 1316
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 1319
    :cond_1
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    #@24
    and-int/2addr v3, p1

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 1320
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1324
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1894
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

.method public static prepareUserDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x3e8

    #@2
    .line 1902
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1903
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1904
    new-instance v0, Ljava/io/IOException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Failed to create "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1907
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    const/16 v1, 0x1f9

    #@2e
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 1909
    new-instance v0, Ljava/io/IOException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Failed to prepare "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 1901
    :cond_1
    return-void
.end method

.method static readApplicationRestrictionsLocked(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    #@0
    .prologue
    .line 1634
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1635
    .local v3, "restrictions":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1636
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
    .line 1637
    return-object v3

    #@15
    .line 1640
    :cond_0
    const/4 v1, 0x0

    #@16
    .line 1642
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@19
    move-result-object v1

    #@1a
    .line 1643
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1d
    move-result-object v2

    #@1e
    .line 1644
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@20
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@27
    .line 1645
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2a
    .line 1646
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@2d
    move-result v5

    #@2e
    const/4 v6, 0x2

    #@2f
    if-eq v5, v6, :cond_1

    #@31
    .line 1647
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
    .line 1648
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@43
    move-result-object v7

    #@44
    .line 1647
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
    .line 1657
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@52
    .line 1649
    return-object v3

    #@53
    .line 1651
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
    .line 1652
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 1654
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    #@5f
    .line 1655
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
    .line 1657
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@80
    .line 1659
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    #@81
    .line 1657
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@84
    goto :goto_1

    #@85
    .line 1656
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    #@86
    .line 1657
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@89
    .line 1656
    throw v5
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1627
    new-instance v0, Landroid/util/AtomicFile;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 1628
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1627
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    .line 1629
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1138
    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1139
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 1140
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@e
    .line 1137
    :cond_0
    return-void
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
    .line 1708
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1709
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8
    move-result v1

    #@9
    .line 1710
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1711
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    #@12
    goto :goto_0

    #@13
    .line 1713
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
    .line 1664
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v6

    #@4
    .line 1665
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
    .line 1666
    const-string/jumbo v10, "key"

    #@17
    const/4 v11, 0x0

    #@18
    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 1667
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v10, "type"

    #@1f
    const/4 v11, 0x0

    #@20
    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    .line 1668
    .local v7, "valType":Ljava/lang/String;
    const-string/jumbo v10, "m"

    #@27
    const/4 v11, 0x0

    #@28
    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 1669
    .local v4, "multiple":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@2e
    .line 1670
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@31
    .line 1671
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@34
    move-result v2

    #@35
    .line 1672
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
    .line 1673
    const/4 v10, 0x2

    #@3f
    if-ne v6, v10, :cond_0

    #@41
    .line 1674
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
    .line 1673
    if-eqz v10, :cond_0

    #@4e
    .line 1675
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
    .line 1676
    add-int/lit8 v2, v2, -0x1

    #@5b
    goto :goto_0

    #@5c
    .line 1679
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v10

    #@60
    new-array v9, v10, [Ljava/lang/String;

    #@62
    .line 1680
    .local v9, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@65
    .line 1681
    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@68
    .line 1663
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "multiple":Ljava/lang/String;
    .end local v7    # "valType":Ljava/lang/String;
    .end local v9    # "valueStrings":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    #@69
    .line 1682
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
    .line 1683
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@79
    goto :goto_1

    #@7a
    .line 1684
    :cond_4
    const-string/jumbo v10, "BA"

    #@7d
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v10

    #@81
    if-eqz v10, :cond_6

    #@83
    .line 1685
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@86
    move-result v5

    #@87
    .line 1686
    .local v5, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    #@89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8c
    .line 1687
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_2
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@8f
    move-result v10

    #@90
    if-eqz v10, :cond_5

    #@92
    .line 1688
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    #@95
    move-result-object v1

    #@96
    .line 1689
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@99
    goto :goto_2

    #@9a
    .line 1692
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
    .line 1691
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@a9
    goto :goto_1

    #@aa
    .line 1694
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
    .line 1695
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v10, "b"

    #@b5
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v10

    #@b9
    if-eqz v10, :cond_7

    #@bb
    .line 1696
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@be
    move-result v10

    #@bf
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c2
    goto :goto_1

    #@c3
    .line 1697
    :cond_7
    const-string/jumbo v10, "i"

    #@c6
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v10

    #@ca
    if-eqz v10, :cond_8

    #@cc
    .line 1698
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@cf
    move-result v10

    #@d0
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@d3
    goto :goto_1

    #@d4
    .line 1700
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
    .line 1153
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1154
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    return p3

    #@8
    .line 1156
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
    .line 1157
    :catch_0
    move-exception v0

    #@e
    .line 1158
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
    .line 1163
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1164
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    return-wide p3

    #@8
    .line 1166
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
    .line 1167
    :catch_0
    move-exception v0

    #@e
    .line 1168
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1100
    const-string/jumbo v0, "no_config_wifi"

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@6
    .line 1101
    const-string/jumbo v0, "no_modify_accounts"

    #@9
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@c
    .line 1102
    const-string/jumbo v0, "no_install_apps"

    #@f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@12
    .line 1103
    const-string/jumbo v0, "no_uninstall_apps"

    #@15
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@18
    .line 1104
    const-string/jumbo v0, "no_share_location"

    #@1b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@1e
    .line 1106
    const-string/jumbo v0, "no_install_unknown_sources"

    #@21
    .line 1105
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@24
    .line 1107
    const-string/jumbo v0, "no_config_bluetooth"

    #@27
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@2a
    .line 1108
    const-string/jumbo v0, "no_usb_file_transfer"

    #@2d
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@30
    .line 1109
    const-string/jumbo v0, "no_config_credentials"

    #@33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@36
    .line 1110
    const-string/jumbo v0, "no_remove_user"

    #@39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@3c
    .line 1111
    const-string/jumbo v0, "no_debugging_features"

    #@3f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@42
    .line 1112
    const-string/jumbo v0, "no_config_vpn"

    #@45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@48
    .line 1113
    const-string/jumbo v0, "no_config_tethering"

    #@4b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@4e
    .line 1114
    const-string/jumbo v0, "no_network_reset"

    #@51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@54
    .line 1115
    const-string/jumbo v0, "no_factory_reset"

    #@57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@5a
    .line 1116
    const-string/jumbo v0, "no_add_user"

    #@5d
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@60
    .line 1117
    const-string/jumbo v0, "ensure_verify_apps"

    #@63
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@66
    .line 1118
    const-string/jumbo v0, "no_config_cell_broadcasts"

    #@69
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@6c
    .line 1119
    const-string/jumbo v0, "no_config_mobile_networks"

    #@6f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@72
    .line 1120
    const-string/jumbo v0, "no_control_apps"

    #@75
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@78
    .line 1122
    const-string/jumbo v0, "no_physical_media"

    #@7b
    .line 1121
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@7e
    .line 1123
    const-string/jumbo v0, "no_unmute_microphone"

    #@81
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@84
    .line 1124
    const-string/jumbo v0, "no_adjust_volume"

    #@87
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@8a
    .line 1125
    const-string/jumbo v0, "no_outgoing_calls"

    #@8d
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@90
    .line 1126
    const-string/jumbo v0, "no_sms"

    #@93
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@96
    .line 1127
    const-string/jumbo v0, "no_fun"

    #@99
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@9c
    .line 1128
    const-string/jumbo v0, "no_create_windows"

    #@9f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@a2
    .line 1129
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    #@a5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@a8
    .line 1130
    const-string/jumbo v0, "no_outgoing_beam"

    #@ab
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@ae
    .line 1131
    const-string/jumbo v0, "no_wallpaper"

    #@b1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@b4
    .line 1132
    const-string/jumbo v0, "no_safe_boot"

    #@b7
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@ba
    .line 1133
    const-string/jumbo v0, "allow_parent_profile_app_linking"

    #@bd
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    #@c0
    .line 1099
    return-void
.end method

.method private readUserListLocked()V
    .locals 14

    #@0
    .prologue
    .line 717
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    #@5
    move-result v12

    #@6
    if-nez v12, :cond_0

    #@8
    .line 718
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V

    #@b
    .line 719
    return-void

    #@c
    .line 721
    :cond_0
    const/4 v1, 0x0

    #@d
    .line 722
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v10, Landroid/util/AtomicFile;

    #@f
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@11
    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@14
    .line 724
    .local v10, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@17
    move-result-object v1

    #@18
    .line 725
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1b
    move-result-object v6

    #@1c
    .line 726
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1e
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@21
    move-result-object v12

    #@22
    invoke-interface {v6, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@25
    .line 728
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@28
    move-result v8

    #@29
    .local v8, "type":I
    const/4 v12, 0x2

    #@2a
    if-eq v8, v12, :cond_2

    #@2c
    .line 729
    const/4 v12, 0x1

    #@2d
    if-ne v8, v12, :cond_1

    #@2f
    .line 733
    :cond_2
    const/4 v12, 0x2

    #@30
    if-eq v8, v12, :cond_4

    #@32
    .line 734
    const-string/jumbo v12, "UserManagerService"

    #@35
    const-string/jumbo v13, "Unable to read user list"

    #@38
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 735
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 784
    if-eqz v1, :cond_3

    #@40
    .line 786
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@43
    .line 736
    :cond_3
    :goto_0
    return-void

    #@44
    .line 787
    :catch_0
    move-exception v0

    #@45
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@46
    .line 739
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v12, -0x1

    #@47
    :try_start_2
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@49
    .line 740
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v12

    #@4d
    const-string/jumbo v13, "users"

    #@50
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v12

    #@54
    if-eqz v12, :cond_6

    #@56
    .line 741
    const-string/jumbo v12, "nextSerialNumber"

    #@59
    const/4 v13, 0x0

    #@5a
    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 742
    .local v4, "lastSerialNumber":Ljava/lang/String;
    if-eqz v4, :cond_5

    #@60
    .line 743
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@63
    move-result v12

    #@64
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@66
    .line 745
    :cond_5
    const-string/jumbo v12, "version"

    #@69
    const/4 v13, 0x0

    #@6a
    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v11

    #@6e
    .line 746
    .local v11, "versionNumber":Ljava/lang/String;
    if-eqz v11, :cond_6

    #@70
    .line 747
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@73
    move-result v12

    #@74
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@76
    .line 751
    .end local v4    # "lastSerialNumber":Ljava/lang/String;
    .end local v11    # "versionNumber":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@79
    move-result v8

    #@7a
    const/4 v12, 0x1

    #@7b
    if-eq v8, v12, :cond_b

    #@7d
    .line 752
    const/4 v12, 0x2

    #@7e
    if-ne v8, v12, :cond_6

    #@80
    .line 753
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    .line 754
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v12, "user"

    #@87
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v12

    #@8b
    if-eqz v12, :cond_9

    #@8d
    .line 755
    const-string/jumbo v12, "id"

    #@90
    const/4 v13, 0x0

    #@91
    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    .line 756
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@98
    move-result v12

    #@99
    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->readUserLocked(I)Landroid/content/pm/UserInfo;

    #@9c
    move-result-object v9

    #@9d
    .line 758
    .local v9, "user":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_6

    #@9f
    .line 759
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@a1
    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    #@a3
    invoke-virtual {v12, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a6
    .line 760
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@a8
    if-ltz v12, :cond_7

    #@aa
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@ac
    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    #@ae
    if-gt v12, v13, :cond_6

    #@b0
    .line 761
    :cond_7
    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    #@b2
    add-int/lit8 v12, v12, 0x1

    #@b4
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b6
    goto :goto_1

    #@b7
    .line 779
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v3

    #@b8
    .line 780
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bb
    .line 784
    if-eqz v1, :cond_8

    #@bd
    .line 786
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    #@c0
    .line 716
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_8
    :goto_2
    return-void

    #@c1
    .line 764
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_9
    :try_start_5
    const-string/jumbo v12, "guestRestrictions"

    #@c4
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v12

    #@c8
    if-eqz v12, :cond_6

    #@ca
    .line 765
    :cond_a
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@cd
    move-result v8

    #@ce
    const/4 v12, 0x1

    #@cf
    if-eq v8, v12, :cond_6

    #@d1
    .line 766
    const/4 v12, 0x3

    #@d2
    if-eq v8, v12, :cond_6

    #@d4
    .line 767
    const/4 v12, 0x2

    #@d5
    if-ne v8, v12, :cond_a

    #@d7
    .line 768
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@da
    move-result-object v12

    #@db
    const-string/jumbo v13, "restrictions"

    #@de
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result v12

    #@e2
    if-eqz v12, :cond_6

    #@e4
    .line 769
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@e6
    invoke-direct {p0, v6, v12}, Lcom/android/server/pm/UserManagerService;->readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e9
    goto :goto_1

    #@ea
    .line 781
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_2
    move-exception v7

    #@eb
    .line 782
    .local v7, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ee
    .line 784
    if-eqz v1, :cond_8

    #@f0
    .line 786
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@f3
    goto :goto_2

    #@f4
    .line 787
    :catch_3
    move-exception v0

    #@f5
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    #@f6
    .line 777
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_b
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    #@f9
    .line 778
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLocked()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@fc
    .line 784
    if-eqz v1, :cond_8

    #@fe
    .line 786
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@101
    goto :goto_2

    #@102
    .line 787
    :catch_4
    move-exception v0

    #@103
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    #@104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v3    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v0

    #@105
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    #@106
    .line 783
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    #@107
    .line 784
    if-eqz v1, :cond_c

    #@109
    .line 786
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@10c
    .line 783
    :cond_c
    :goto_3
    throw v12

    #@10d
    .line 787
    :catch_6
    move-exception v0

    #@10e
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .locals 34
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1006
    const/4 v10, 0x0

    #@1
    .line 1007
    .local v10, "flags":I
    move/from16 v23, p1

    #@3
    .line 1008
    .local v23, "serialNumber":I
    const/16 v16, 0x0

    #@5
    .line 1009
    .local v16, "name":Ljava/lang/String;
    const/4 v12, 0x0

    #@6
    .line 1010
    .local v12, "iconPath":Ljava/lang/String;
    const-wide/16 v6, 0x0

    #@8
    .line 1011
    .local v6, "creationTime":J
    const-wide/16 v14, 0x0

    #@a
    .line 1012
    .local v14, "lastLoggedInTime":J
    const/16 v21, -0x1

    #@c
    .line 1013
    .local v21, "profileGroupId":I
    const/16 v19, 0x0

    #@e
    .line 1014
    .local v19, "partial":Z
    const/4 v11, 0x0

    #@f
    .line 1015
    .local v11, "guestToRemove":Z
    new-instance v22, Landroid/os/Bundle;

    #@11
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    #@14
    .line 1017
    .local v22, "restrictions":Landroid/os/Bundle;
    const/4 v9, 0x0

    #@15
    .line 1020
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v27, Landroid/util/AtomicFile;

    #@17
    new-instance v30, Ljava/io/File;

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@1d
    move-object/from16 v31, v0

    #@1f
    new-instance v32, Ljava/lang/StringBuilder;

    #@21
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v33

    #@28
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v32

    #@2c
    const-string/jumbo v33, ".xml"

    #@2f
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v32

    #@33
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v32

    #@37
    invoke-direct/range {v30 .. v32}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3a
    move-object/from16 v0, v27

    #@3c
    move-object/from16 v1, v30

    #@3e
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@41
    .line 1021
    .local v27, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v27 .. v27}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@44
    move-result-object v9

    #@45
    .line 1022
    .local v9, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@48
    move-result-object v18

    #@49
    .line 1023
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v30, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@4b
    invoke-virtual/range {v30 .. v30}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@4e
    move-result-object v30

    #@4f
    move-object/from16 v0, v18

    #@51
    move-object/from16 v1, v30

    #@53
    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@56
    .line 1025
    :cond_0
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@59
    move-result v26

    #@5a
    .local v26, "type":I
    const/16 v30, 0x2

    #@5c
    move/from16 v0, v26

    #@5e
    move/from16 v1, v30

    #@60
    if-eq v0, v1, :cond_1

    #@62
    .line 1026
    const/16 v30, 0x1

    #@64
    move/from16 v0, v26

    #@66
    move/from16 v1, v30

    #@68
    if-ne v0, v1, :cond_0

    #@6a
    .line 1030
    :cond_1
    const/16 v30, 0x2

    #@6c
    move/from16 v0, v26

    #@6e
    move/from16 v1, v30

    #@70
    if-eq v0, v1, :cond_3

    #@72
    .line 1031
    const-string/jumbo v30, "UserManagerService"

    #@75
    new-instance v31, Ljava/lang/StringBuilder;

    #@77
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v32, "Unable to read user "

    #@7d
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v31

    #@81
    move-object/from16 v0, v31

    #@83
    move/from16 v1, p1

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v31

    #@89
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v31

    #@8d
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 1032
    const/16 v30, 0x0

    #@92
    .line 1088
    if-eqz v9, :cond_2

    #@94
    .line 1090
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@97
    .line 1032
    :cond_2
    :goto_0
    return-object v30

    #@98
    .line 1091
    :catch_0
    move-exception v8

    #@99
    .local v8, "e":Ljava/io/IOException;
    goto :goto_0

    #@9a
    .line 1035
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v30, 0x2

    #@9c
    move/from16 v0, v26

    #@9e
    move/from16 v1, v30

    #@a0
    if-ne v0, v1, :cond_c

    #@a2
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@a5
    move-result-object v30

    #@a6
    const-string/jumbo v31, "user"

    #@a9
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v30

    #@ad
    if-eqz v30, :cond_c

    #@af
    .line 1036
    const-string/jumbo v30, "id"

    #@b2
    const/16 v31, -0x1

    #@b4
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v18

    #@b8
    move-object/from16 v2, v30

    #@ba
    move/from16 v3, v31

    #@bc
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@bf
    move-result v24

    #@c0
    .line 1037
    .local v24, "storedId":I
    move/from16 v0, v24

    #@c2
    move/from16 v1, p1

    #@c4
    if-eq v0, v1, :cond_5

    #@c6
    .line 1038
    const-string/jumbo v30, "UserManagerService"

    #@c9
    const-string/jumbo v31, "User id does not match the file name"

    #@cc
    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cf
    .line 1039
    const/16 v30, 0x0

    #@d1
    .line 1088
    if-eqz v9, :cond_4

    #@d3
    .line 1090
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@d6
    .line 1039
    :cond_4
    :goto_1
    return-object v30

    #@d7
    .line 1091
    :catch_1
    move-exception v8

    #@d8
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_1

    #@d9
    .line 1041
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    const-string/jumbo v30, "serialNumber"

    #@dc
    move-object/from16 v0, p0

    #@de
    move-object/from16 v1, v18

    #@e0
    move-object/from16 v2, v30

    #@e2
    move/from16 v3, p1

    #@e4
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@e7
    move-result v23

    #@e8
    .line 1042
    const-string/jumbo v30, "flags"

    #@eb
    const/16 v31, 0x0

    #@ed
    move-object/from16 v0, p0

    #@ef
    move-object/from16 v1, v18

    #@f1
    move-object/from16 v2, v30

    #@f3
    move/from16 v3, v31

    #@f5
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@f8
    move-result v10

    #@f9
    .line 1043
    const-string/jumbo v30, "icon"

    #@fc
    const/16 v31, 0x0

    #@fe
    move-object/from16 v0, v18

    #@100
    move-object/from16 v1, v31

    #@102
    move-object/from16 v2, v30

    #@104
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@107
    move-result-object v12

    #@108
    .line 1044
    .local v12, "iconPath":Ljava/lang/String;
    const-string/jumbo v30, "created"

    #@10b
    const-wide/16 v32, 0x0

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v18

    #@111
    move-object/from16 v2, v30

    #@113
    move-wide/from16 v3, v32

    #@115
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@118
    move-result-wide v6

    #@119
    .line 1045
    const-string/jumbo v30, "lastLoggedIn"

    #@11c
    const-wide/16 v32, 0x0

    #@11e
    move-object/from16 v0, p0

    #@120
    move-object/from16 v1, v18

    #@122
    move-object/from16 v2, v30

    #@124
    move-wide/from16 v3, v32

    #@126
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@129
    move-result-wide v14

    #@12a
    .line 1046
    const-string/jumbo v30, "profileGroupId"

    #@12d
    .line 1047
    const/16 v31, -0x1

    #@12f
    .line 1046
    move-object/from16 v0, p0

    #@131
    move-object/from16 v1, v18

    #@133
    move-object/from16 v2, v30

    #@135
    move/from16 v3, v31

    #@137
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@13a
    move-result v21

    #@13b
    .line 1048
    const-string/jumbo v30, "partial"

    #@13e
    const/16 v31, 0x0

    #@140
    move-object/from16 v0, v18

    #@142
    move-object/from16 v1, v31

    #@144
    move-object/from16 v2, v30

    #@146
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@149
    move-result-object v29

    #@14a
    .line 1049
    .local v29, "valueString":Ljava/lang/String;
    const-string/jumbo v30, "true"

    #@14d
    move-object/from16 v0, v30

    #@14f
    move-object/from16 v1, v29

    #@151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v30

    #@155
    if-eqz v30, :cond_6

    #@157
    .line 1050
    const/16 v19, 0x1

    #@159
    .line 1052
    :cond_6
    const-string/jumbo v30, "guestToRemove"

    #@15c
    const/16 v31, 0x0

    #@15e
    move-object/from16 v0, v18

    #@160
    move-object/from16 v1, v31

    #@162
    move-object/from16 v2, v30

    #@164
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@167
    move-result-object v29

    #@168
    .line 1053
    const-string/jumbo v30, "true"

    #@16b
    move-object/from16 v0, v30

    #@16d
    move-object/from16 v1, v29

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v30

    #@173
    if-eqz v30, :cond_7

    #@175
    .line 1054
    const/4 v11, 0x1

    #@176
    .line 1057
    :cond_7
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@179
    move-result v17

    #@17a
    .line 1058
    .end local v16    # "name":Ljava/lang/String;
    .local v17, "outerDepth":I
    :cond_8
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@17d
    move-result v26

    #@17e
    const/16 v30, 0x1

    #@180
    move/from16 v0, v26

    #@182
    move/from16 v1, v30

    #@184
    if-eq v0, v1, :cond_c

    #@186
    .line 1059
    const/16 v30, 0x3

    #@188
    move/from16 v0, v26

    #@18a
    move/from16 v1, v30

    #@18c
    if-ne v0, v1, :cond_9

    #@18e
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@191
    move-result v30

    #@192
    move/from16 v0, v30

    #@194
    move/from16 v1, v17

    #@196
    if-le v0, v1, :cond_c

    #@198
    .line 1060
    :cond_9
    const/16 v30, 0x3

    #@19a
    move/from16 v0, v26

    #@19c
    move/from16 v1, v30

    #@19e
    if-eq v0, v1, :cond_8

    #@1a0
    const/16 v30, 0x4

    #@1a2
    move/from16 v0, v26

    #@1a4
    move/from16 v1, v30

    #@1a6
    if-eq v0, v1, :cond_8

    #@1a8
    .line 1063
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1ab
    move-result-object v25

    #@1ac
    .line 1064
    .local v25, "tag":Ljava/lang/String;
    const-string/jumbo v30, "name"

    #@1af
    move-object/from16 v0, v30

    #@1b1
    move-object/from16 v1, v25

    #@1b3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v30

    #@1b7
    if-eqz v30, :cond_a

    #@1b9
    .line 1065
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1bc
    move-result v26

    #@1bd
    .line 1066
    const/16 v30, 0x4

    #@1bf
    move/from16 v0, v26

    #@1c1
    move/from16 v1, v30

    #@1c3
    if-ne v0, v1, :cond_8

    #@1c5
    .line 1067
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@1c8
    move-result-object v16

    #@1c9
    .local v16, "name":Ljava/lang/String;
    goto :goto_2

    #@1ca
    .line 1069
    .end local v16    # "name":Ljava/lang/String;
    :cond_a
    const-string/jumbo v30, "restrictions"

    #@1cd
    move-object/from16 v0, v30

    #@1cf
    move-object/from16 v1, v25

    #@1d1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d4
    move-result v30

    #@1d5
    if-eqz v30, :cond_8

    #@1d7
    .line 1070
    move-object/from16 v0, p0

    #@1d9
    move-object/from16 v1, v18

    #@1db
    move-object/from16 v2, v22

    #@1dd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1e0
    goto :goto_2

    #@1e1
    .line 1085
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "iconPath":Ljava/lang/String;
    .end local v17    # "outerDepth":I
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "storedId":I
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "type":I
    .end local v27    # "userFile":Landroid/util/AtomicFile;
    .end local v29    # "valueString":Ljava/lang/String;
    :catch_2
    move-exception v13

    #@1e2
    .line 1088
    .local v13, "ioe":Ljava/io/IOException;
    if-eqz v9, :cond_b

    #@1e4
    .line 1090
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    #@1e7
    .line 1095
    .end local v13    # "ioe":Ljava/io/IOException;
    :cond_b
    :goto_3
    const/16 v30, 0x0

    #@1e9
    return-object v30

    #@1ea
    .line 1075
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "type":I
    .restart local v27    # "userFile":Landroid/util/AtomicFile;
    :cond_c
    :try_start_6
    new-instance v28, Landroid/content/pm/UserInfo;

    #@1ec
    move-object/from16 v0, v28

    #@1ee
    move/from16 v1, p1

    #@1f0
    move-object/from16 v2, v16

    #@1f2
    invoke-direct {v0, v1, v2, v12, v10}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@1f5
    .line 1076
    .local v28, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v23

    #@1f7
    move-object/from16 v1, v28

    #@1f9
    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@1fb
    .line 1077
    move-object/from16 v0, v28

    #@1fd
    iput-wide v6, v0, Landroid/content/pm/UserInfo;->creationTime:J

    #@1ff
    .line 1078
    move-object/from16 v0, v28

    #@201
    iput-wide v14, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@203
    .line 1079
    move/from16 v0, v19

    #@205
    move-object/from16 v1, v28

    #@207
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@209
    .line 1080
    move-object/from16 v0, v28

    #@20b
    iput-boolean v11, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@20d
    .line 1081
    move/from16 v0, v21

    #@20f
    move-object/from16 v1, v28

    #@211
    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@213
    .line 1082
    move-object/from16 v0, p0

    #@215
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@217
    move-object/from16 v30, v0

    #@219
    move-object/from16 v0, v30

    #@21b
    move/from16 v1, p1

    #@21d
    move-object/from16 v2, v22

    #@21f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@222
    .line 1088
    if-eqz v9, :cond_d

    #@224
    .line 1090
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@227
    .line 1083
    :cond_d
    :goto_4
    return-object v28

    #@228
    .line 1091
    :catch_3
    move-exception v8

    #@229
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_4

    #@22a
    .line 1086
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "type":I
    .end local v27    # "userFile":Landroid/util/AtomicFile;
    .end local v28    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_4
    move-exception v20

    #@22b
    .line 1088
    .local v20, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v9, :cond_b

    #@22d
    .line 1090
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@230
    goto :goto_3

    #@231
    .line 1091
    :catch_5
    move-exception v8

    #@232
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_3

    #@233
    .end local v8    # "e":Ljava/io/IOException;
    .end local v20    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v8

    #@234
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_3

    #@235
    .line 1087
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v30

    #@236
    .line 1088
    if-eqz v9, :cond_e

    #@238
    .line 1090
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    #@23b
    .line 1087
    :cond_e
    :goto_5
    throw v30

    #@23c
    .line 1091
    :catch_7
    move-exception v8

    #@23d
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5
    .param p1, "parent"    # Ljava/io/File;

    #@0
    .prologue
    .line 1510
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1511
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 1512
    .local v2, "files":[Ljava/lang/String;
    const/4 v3, 0x0

    #@b
    array-length v4, v2

    #@c
    :goto_0
    if-ge v3, v4, :cond_0

    #@e
    aget-object v1, v2, v3

    #@10
    .line 1513
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    .line 1514
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    #@18
    .line 1512
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1517
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@1e
    .line 1509
    return-void
.end method

.method private removeRestrictionsForUser(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "unhideApps"    # Z

    #@0
    .prologue
    .line 1578
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1580
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestrictions(Landroid/os/Bundle;I)V

    #@b
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 1584
    if-eqz p2, :cond_0

    #@11
    .line 1585
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->unhideAllInstalledAppsForUser(I)V

    #@14
    .line 1577
    :cond_0
    return-void

    #@15
    .line 1578
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private removeUserStateLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(Lcom/android/server/pm/UserManagerService;I)V

    #@5
    .line 1499
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@a
    .line 1501
    new-instance v0, Landroid/util/AtomicFile;

    #@c
    new-instance v1, Ljava/io/File;

    #@e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    const-string/jumbo v4, ".xml"

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2a
    .line 1502
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    #@2d
    .line 1504
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    #@30
    .line 1505
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    #@33
    .line 1506
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@36
    move-result-object v1

    #@37
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    #@3a
    .line 1494
    return-void
.end method

.method private scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 857
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 858
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 859
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@11
    const-wide/16 v2, 0x7d0

    #@13
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@16
    .line 856
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
    .line 1521
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1522
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1524
    const-string/jumbo v1, "android.intent.extra.USER"

    #@10
    new-instance v2, Landroid/os/UserHandle;

    #@12
    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@18
    .line 1525
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@1a
    new-instance v2, Landroid/os/UserHandle;

    #@1c
    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@23
    .line 1520
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 455
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 456
    const/high16 v1, 0x40000000    # 2.0f

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 457
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@15
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1a
    .line 453
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
    .line 1947
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
    .line 1948
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
    .line 1945
    return-void

    #@17
    .line 1949
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    #@18
    .line 1950
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@1b
    move-result-object v2

    #@1c
    throw v2
.end method

.method private setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 591
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/os/Bundle;

    #@8
    .line 592
    .local v1, "userRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    #@b
    .line 593
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@e
    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v2

    #@12
    .line 596
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@14
    invoke-interface {v4, v1, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 602
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Landroid/content/pm/UserInfo;

    #@22
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    #@25
    .line 590
    return-void

    #@26
    .line 597
    :catch_0
    move-exception v0

    #@27
    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "UserManagerService"

    #@2a
    const-string/jumbo v5, "Unable to notify AppOpsService of UserRestrictions"

    #@2d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    goto :goto_0

    #@34
    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@35
    .line 600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 599
    throw v4
.end method

.method private unhideAllInstalledAppsForUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/pm/UserManagerService$3;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 1589
    return-void
.end method

.method private updateUserIdsLocked()V
    .locals 6

    #@0
    .prologue
    .line 1839
    const/4 v4, 0x0

    #@1
    .line 1840
    .local v4, "num":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v5

    #@8
    if-ge v0, v5, :cond_1

    #@a
    .line 1841
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Landroid/content/pm/UserInfo;

    #@12
    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    #@14
    if-nez v5, :cond_0

    #@16
    .line 1842
    add-int/lit8 v4, v4, 0x1

    #@18
    .line 1840
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1845
    :cond_1
    new-array v3, v4, [I

    #@1d
    .line 1846
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    #@1e
    .line 1847
    .local v1, "n":I
    const/4 v0, 0x0

    #@1f
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@24
    move-result v5

    #@25
    if-ge v0, v5, :cond_3

    #@27
    .line 1848
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Landroid/content/pm/UserInfo;

    #@2f
    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    #@31
    if-nez v5, :cond_2

    #@33
    .line 1849
    add-int/lit8 v2, v1, 0x1

    #@35
    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@3a
    move-result v5

    #@3b
    aput v5, v3, v1

    #@3d
    move v1, v2

    #@3e
    .line 1847
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_1

    #@41
    .line 1852
    :cond_3
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@43
    .line 1838
    return-void
.end method

.method private upgradeIfNecessaryLocked()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x0

    #@2
    .line 797
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@4
    .line 798
    .local v1, "userVersion":I
    const/4 v2, 0x1

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 800
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/content/pm/UserInfo;

    #@f
    .line 801
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "Primary"

    #@12
    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 802
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v2

    #@20
    const v3, 0x10404eb

    #@23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@29
    .line 803
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    #@2c
    .line 805
    :cond_0
    const/4 v1, 0x1

    #@2d
    .line 808
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, 0x2

    #@2e
    if-ge v1, v2, :cond_3

    #@30
    .line 810
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/content/pm/UserInfo;

    #@38
    .line 811
    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    #@3a
    and-int/lit8 v2, v2, 0x10

    #@3c
    if-nez v2, :cond_2

    #@3e
    .line 812
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    #@40
    or-int/lit8 v2, v2, 0x10

    #@42
    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    #@44
    .line 813
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    #@47
    .line 815
    :cond_2
    const/4 v1, 0x2

    #@48
    .line 819
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v2, 0x4

    #@49
    if-ge v1, v2, :cond_4

    #@4b
    .line 820
    const/4 v1, 0x4

    #@4c
    .line 823
    :cond_4
    if-ge v1, v5, :cond_5

    #@4e
    .line 824
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    #@51
    .line 825
    const/4 v1, 0x5

    #@52
    .line 828
    :cond_5
    if-ge v1, v5, :cond_6

    #@54
    .line 829
    const-string/jumbo v2, "UserManagerService"

    #@57
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "User version "

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    const-string/jumbo v4, " didn\'t upgrade as expected to "

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 796
    :goto_0
    return-void

    #@7c
    .line 832
    :cond_6
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@7e
    .line 833
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    #@81
    goto :goto_0
.end method

.method static writeApplicationRestrictionsLocked(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    #@0
    .prologue
    .line 1727
    const/4 v2, 0x0

    #@1
    .line 1729
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@4
    move-result-object v2

    #@5
    .line 1730
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@7
    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 1732
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@c
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@f
    .line 1733
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@18
    .line 1734
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
    .line 1735
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@24
    const/4 v5, 0x1

    #@25
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@28
    .line 1737
    const-string/jumbo v4, "restrictions"

    #@2b
    const/4 v5, 0x0

    #@2c
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 1738
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@32
    .line 1739
    const-string/jumbo v4, "restrictions"

    #@35
    const/4 v5, 0x0

    #@36
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 1741
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@3c
    .line 1742
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 1726
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    #@40
    .line 1743
    :catch_0
    move-exception v1

    #@41
    .line 1744
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@44
    .line 1745
    const-string/jumbo v4, "UserManagerService"

    #@47
    const-string/jumbo v5, "Error writing application restrictions list"

    #@4a
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    goto :goto_0
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1718
    new-instance v0, Landroid/util/AtomicFile;

    #@2
    .line 1719
    new-instance v1, Ljava/io/File;

    #@4
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1719
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    .line 1718
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    .line 1721
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p2, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    #@15
    .line 1717
    return-void
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 675
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
    .line 676
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@f
    const-string/jumbo v6, "photo.png"

    #@12
    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    .line 677
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    #@17
    const-string/jumbo v6, "photo.png.tmp"

    #@1a
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    .line 678
    .local v5, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_0

    #@23
    .line 679
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@26
    .line 681
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 682
    const/16 v7, 0x1f9

    #@2c
    .line 683
    const/4 v8, -0x1

    #@2d
    const/4 v9, -0x1

    #@2e
    .line 680
    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@31
    .line 686
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
    .line 687
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@43
    move-result v6

    #@44
    .line 686
    if-eqz v6, :cond_1

    #@46
    .line 688
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@4c
    .line 691
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@4f
    .line 695
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@52
    .line 673
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :goto_1
    return-void

    #@53
    .line 692
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v3

    #@54
    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_0

    #@55
    .line 696
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :catch_1
    move-exception v1

    #@56
    .line 697
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "UserManagerService"

    #@59
    const-string/jumbo v7, "Error setting photo for user "

    #@5c
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    goto :goto_1
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1146
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1148
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1147
    const/4 v1, 0x0

    #@f
    invoke-interface {p1, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 1145
    :cond_0
    return-void
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
    .line 1751
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
    .line 1752
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    .line 1753
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v7, "entry"

    #@1d
    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20
    .line 1754
    const-string/jumbo v7, "key"

    #@23
    invoke-interface {p1, v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26
    .line 1756
    instance-of v7, v5, Ljava/lang/Boolean;

    #@28
    if-eqz v7, :cond_1

    #@2a
    .line 1757
    const-string/jumbo v7, "type"

    #@2d
    const-string/jumbo v9, "b"

    #@30
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 1758
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3a
    .line 1790
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string/jumbo v7, "entry"

    #@3d
    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@40
    goto :goto_0

    #@41
    .line 1759
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v5, Ljava/lang/Integer;

    #@43
    if-eqz v7, :cond_2

    #@45
    .line 1760
    const-string/jumbo v7, "type"

    #@48
    const-string/jumbo v9, "i"

    #@4b
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 1761
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@55
    goto :goto_1

    #@56
    .line 1762
    :cond_2
    if-eqz v5, :cond_3

    #@58
    instance-of v7, v5, Ljava/lang/String;

    #@5a
    if-eqz v7, :cond_5

    #@5c
    .line 1763
    :cond_3
    const-string/jumbo v7, "type"

    #@5f
    const-string/jumbo v9, "s"

    #@62
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@65
    .line 1764
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
    .line 1765
    :cond_5
    instance-of v7, v5, Landroid/os/Bundle;

    #@73
    if-eqz v7, :cond_6

    #@75
    .line 1766
    const-string/jumbo v7, "type"

    #@78
    const-string/jumbo v9, "B"

    #@7b
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 1767
    check-cast v5, Landroid/os/Bundle;

    #@80
    .end local v5    # "value":Ljava/lang/Object;
    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@83
    goto :goto_1

    #@84
    .line 1768
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v7, v5, [Landroid/os/Parcelable;

    #@86
    if-eqz v7, :cond_8

    #@88
    .line 1769
    const-string/jumbo v7, "type"

    #@8b
    const-string/jumbo v9, "BA"

    #@8e
    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@91
    move-object v0, v5

    #@92
    .line 1770
    check-cast v0, [Landroid/os/Parcelable;

    #@94
    .line 1771
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
    .line 1772
    .local v4, "parcelable":Landroid/os/Parcelable;
    instance-of v10, v4, Landroid/os/Bundle;

    #@9c
    if-nez v10, :cond_7

    #@9e
    .line 1773
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v8, "bundle-array can only hold Bundles"

    #@a3
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v7

    #@a7
    .line 1775
    :cond_7
    const-string/jumbo v10, "entry"

    #@aa
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ad
    .line 1776
    const-string/jumbo v10, "type"

    #@b0
    const-string/jumbo v11, "B"

    #@b3
    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b6
    .line 1777
    check-cast v4, Landroid/os/Bundle;

    #@b8
    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    #@bb
    .line 1778
    const-string/jumbo v10, "entry"

    #@be
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c1
    .line 1771
    add-int/lit8 v7, v7, 0x1

    #@c3
    goto :goto_3

    #@c4
    .line 1781
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
    .line 1782
    check-cast v6, [Ljava/lang/String;

    #@d0
    .line 1783
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
    .line 1784
    array-length v9, v6

    #@dc
    move v7, v8

    #@dd
    :goto_4
    if-ge v7, v9, :cond_0

    #@df
    aget-object v1, v6, v7

    #@e1
    .line 1785
    .local v1, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    #@e4
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e7
    .line 1786
    if-eqz v1, :cond_9

    #@e9
    .end local v1    # "choice":Ljava/lang/String;
    :goto_5
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ec
    .line 1787
    const-string/jumbo v10, "value"

    #@ef
    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f2
    .line 1784
    add-int/lit8 v7, v7, 0x1

    #@f4
    goto :goto_4

    #@f5
    .line 1786
    .restart local v1    # "choice":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, ""

    #@f8
    goto :goto_5

    #@f9
    .line 1750
    .end local v1    # "choice":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 968
    const-string/jumbo v0, "restrictions"

    #@4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 969
    const-string/jumbo v0, "no_config_wifi"

    #@a
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@d
    .line 970
    const-string/jumbo v0, "no_modify_accounts"

    #@10
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@13
    .line 971
    const-string/jumbo v0, "no_install_apps"

    #@16
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@19
    .line 972
    const-string/jumbo v0, "no_uninstall_apps"

    #@1c
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@1f
    .line 973
    const-string/jumbo v0, "no_share_location"

    #@22
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@25
    .line 975
    const-string/jumbo v0, "no_install_unknown_sources"

    #@28
    .line 974
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@2b
    .line 976
    const-string/jumbo v0, "no_config_bluetooth"

    #@2e
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@31
    .line 977
    const-string/jumbo v0, "no_usb_file_transfer"

    #@34
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@37
    .line 978
    const-string/jumbo v0, "no_config_credentials"

    #@3a
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@3d
    .line 979
    const-string/jumbo v0, "no_remove_user"

    #@40
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@43
    .line 980
    const-string/jumbo v0, "no_debugging_features"

    #@46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@49
    .line 981
    const-string/jumbo v0, "no_config_vpn"

    #@4c
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@4f
    .line 982
    const-string/jumbo v0, "no_config_tethering"

    #@52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@55
    .line 983
    const-string/jumbo v0, "no_network_reset"

    #@58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@5b
    .line 984
    const-string/jumbo v0, "no_factory_reset"

    #@5e
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@61
    .line 985
    const-string/jumbo v0, "no_add_user"

    #@64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@67
    .line 986
    const-string/jumbo v0, "ensure_verify_apps"

    #@6a
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@6d
    .line 987
    const-string/jumbo v0, "no_config_cell_broadcasts"

    #@70
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@73
    .line 988
    const-string/jumbo v0, "no_config_mobile_networks"

    #@76
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@79
    .line 989
    const-string/jumbo v0, "no_control_apps"

    #@7c
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@7f
    .line 990
    const-string/jumbo v0, "no_physical_media"

    #@82
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@85
    .line 991
    const-string/jumbo v0, "no_unmute_microphone"

    #@88
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@8b
    .line 992
    const-string/jumbo v0, "no_adjust_volume"

    #@8e
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@91
    .line 993
    const-string/jumbo v0, "no_outgoing_calls"

    #@94
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@97
    .line 994
    const-string/jumbo v0, "no_sms"

    #@9a
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@9d
    .line 995
    const-string/jumbo v0, "no_fun"

    #@a0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@a3
    .line 996
    const-string/jumbo v0, "no_create_windows"

    #@a6
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@a9
    .line 997
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    #@ac
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@af
    .line 998
    const-string/jumbo v0, "no_outgoing_beam"

    #@b2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@b5
    .line 999
    const-string/jumbo v0, "no_wallpaper"

    #@b8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@bb
    .line 1000
    const-string/jumbo v0, "no_safe_boot"

    #@be
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@c1
    .line 1001
    const-string/jumbo v0, "allow_parent_profile_app_linking"

    #@c4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    #@c7
    .line 1002
    const-string/jumbo v0, "restrictions"

    #@ca
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cd
    .line 967
    return-void
.end method

.method private writeUserListLocked()V
    .locals 10

    #@0
    .prologue
    .line 930
    const/4 v2, 0x0

    #@1
    .line 931
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/AtomicFile;

    #@3
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    #@5
    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@8
    .line 933
    .local v6, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@b
    move-result-object v2

    #@c
    .line 934
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@e
    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@11
    .line 937
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@13
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@16
    .line 938
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@18
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1f
    .line 939
    const/4 v7, 0x1

    #@20
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object v7

    #@24
    const/4 v8, 0x0

    #@25
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@28
    .line 940
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@2b
    const/4 v8, 0x1

    #@2c
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@2f
    .line 942
    const-string/jumbo v7, "users"

    #@32
    const/4 v8, 0x0

    #@33
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 943
    const-string/jumbo v7, "nextSerialNumber"

    #@39
    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    #@3b
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    const/4 v9, 0x0

    #@40
    invoke-interface {v4, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 944
    const-string/jumbo v7, "version"

    #@46
    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    #@48
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    const/4 v9, 0x0

    #@4d
    invoke-interface {v4, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 946
    const-string/jumbo v7, "guestRestrictions"

    #@53
    const/4 v8, 0x0

    #@54
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 947
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@59
    invoke-direct {p0, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    #@5c
    .line 948
    const-string/jumbo v7, "guestRestrictions"

    #@5f
    const/4 v8, 0x0

    #@60
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@63
    .line 949
    const/4 v3, 0x0

    #@64
    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@66
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@69
    move-result v7

    #@6a
    if-ge v3, v7, :cond_0

    #@6c
    .line 950
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@6e
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@71
    move-result-object v5

    #@72
    check-cast v5, Landroid/content/pm/UserInfo;

    #@74
    .line 951
    .local v5, "user":Landroid/content/pm/UserInfo;
    const-string/jumbo v7, "user"

    #@77
    const/4 v8, 0x0

    #@78
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7b
    .line 952
    const-string/jumbo v7, "id"

    #@7e
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    #@80
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    const/4 v9, 0x0

    #@85
    invoke-interface {v4, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 953
    const-string/jumbo v7, "user"

    #@8b
    const/4 v8, 0x0

    #@8c
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8f
    .line 949
    add-int/lit8 v3, v3, 0x1

    #@91
    goto :goto_0

    #@92
    .line 956
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    const-string/jumbo v7, "users"

    #@95
    const/4 v8, 0x0

    #@96
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@99
    .line 958
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@9c
    .line 959
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    .line 929
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    #@a0
    .line 960
    :catch_0
    move-exception v1

    #@a1
    .line 961
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@a4
    .line 962
    const-string/jumbo v7, "UserManagerService"

    #@a7
    const-string/jumbo v8, "Error writing user list"

    #@aa
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    goto :goto_1
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .locals 10
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    .line 871
    const/4 v1, 0x0

    #@1
    .line 872
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Landroid/util/AtomicFile;

    #@3
    new-instance v6, Ljava/io/File;

    #@5
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    #@7
    new-instance v8, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v8

    #@12
    const-string/jumbo v9, ".xml"

    #@15
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@23
    .line 874
    .local v5, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@26
    move-result-object v1

    #@27
    .line 875
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@29
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@2c
    .line 878
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@2e
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@31
    .line 879
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@33
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@3a
    .line 880
    const/4 v6, 0x1

    #@3b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v6

    #@3f
    const/4 v7, 0x0

    #@40
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@43
    .line 881
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@46
    const/4 v7, 0x1

    #@47
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@4a
    .line 883
    const-string/jumbo v6, "user"

    #@4d
    const/4 v7, 0x0

    #@4e
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 884
    const-string/jumbo v6, "id"

    #@54
    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    #@56
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    const/4 v8, 0x0

    #@5b
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5e
    .line 885
    const-string/jumbo v6, "serialNumber"

    #@61
    iget v7, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    #@63
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    const/4 v8, 0x0

    #@68
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6b
    .line 886
    const-string/jumbo v6, "flags"

    #@6e
    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    #@70
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    const/4 v8, 0x0

    #@75
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@78
    .line 887
    const-string/jumbo v6, "created"

    #@7b
    iget-wide v8, p1, Landroid/content/pm/UserInfo;->creationTime:J

    #@7d
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@80
    move-result-object v7

    #@81
    const/4 v8, 0x0

    #@82
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@85
    .line 888
    const-string/jumbo v6, "lastLoggedIn"

    #@88
    .line 889
    iget-wide v8, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@8a
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@8d
    move-result-object v7

    #@8e
    .line 888
    const/4 v8, 0x0

    #@8f
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@92
    .line 890
    iget-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@94
    if-eqz v6, :cond_0

    #@96
    .line 891
    const-string/jumbo v6, "icon"

    #@99
    iget-object v7, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    #@9b
    const/4 v8, 0x0

    #@9c
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9f
    .line 893
    :cond_0
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->partial:Z

    #@a1
    if-eqz v6, :cond_1

    #@a3
    .line 894
    const-string/jumbo v6, "partial"

    #@a6
    const-string/jumbo v7, "true"

    #@a9
    const/4 v8, 0x0

    #@aa
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ad
    .line 896
    :cond_1
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@af
    if-eqz v6, :cond_2

    #@b1
    .line 897
    const-string/jumbo v6, "guestToRemove"

    #@b4
    const-string/jumbo v7, "true"

    #@b7
    const/4 v8, 0x0

    #@b8
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bb
    .line 899
    :cond_2
    iget v6, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@bd
    const/4 v7, -0x1

    #@be
    if-eq v6, v7, :cond_3

    #@c0
    .line 900
    const-string/jumbo v6, "profileGroupId"

    #@c3
    .line 901
    iget v7, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@c5
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c8
    move-result-object v7

    #@c9
    .line 900
    const/4 v8, 0x0

    #@ca
    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cd
    .line 904
    :cond_3
    const-string/jumbo v6, "name"

    #@d0
    const/4 v7, 0x0

    #@d1
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d4
    .line 905
    iget-object v6, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@d6
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d9
    .line 906
    const-string/jumbo v6, "name"

    #@dc
    const/4 v7, 0x0

    #@dd
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e0
    .line 907
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@e2
    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    #@e4
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e7
    move-result-object v3

    #@e8
    check-cast v3, Landroid/os/Bundle;

    #@ea
    .line 908
    .local v3, "restrictions":Landroid/os/Bundle;
    if-eqz v3, :cond_4

    #@ec
    .line 909
    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/UserManagerService;->writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    #@ef
    .line 911
    :cond_4
    const-string/jumbo v6, "user"

    #@f2
    const/4 v7, 0x0

    #@f3
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f6
    .line 913
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@f9
    .line 914
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@fc
    .line 870
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "restrictions":Landroid/os/Bundle;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    #@fd
    .line 915
    :catch_0
    move-exception v2

    #@fe
    .line 916
    .local v2, "ioe":Ljava/lang/Exception;
    const-string/jumbo v6, "UserManagerService"

    #@101
    new-instance v7, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v8, "Error writing user info "

    #@109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v7

    #@10d
    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    #@10f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    const-string/jumbo v8, "\n"

    #@116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v7

    #@11e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v7

    #@122
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    .line 917
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@128
    goto :goto_0
.end method


# virtual methods
.method public canAddMoreManagedProfiles()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 614
    const-string/jumbo v3, "check if more managed profiles can be added."

    #@5
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@8
    .line 615
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 616
    return v2

    #@f
    .line 618
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v3

    #@15
    .line 619
    const-string/jumbo v4, "android.software.managed_users"

    #@18
    .line 618
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_1

    #@1e
    .line 620
    return v2

    #@1f
    .line 622
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@21
    monitor-enter v3

    #@22
    .line 624
    const/16 v4, 0x20

    #@24
    const/4 v5, 0x1

    #@25
    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->numberOfUsersOfTypeLocked(IZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v4

    #@29
    if-lt v4, v1, :cond_2

    #@2b
    monitor-exit v3

    #@2c
    .line 626
    return v2

    #@2d
    .line 628
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLocked()I

    #@30
    move-result v0

    #@31
    .line 630
    .local v0, "usersCount":I
    if-eq v0, v1, :cond_3

    #@33
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    move-result v4

    #@37
    if-ge v0, v4, :cond_4

    #@39
    :cond_3
    :goto_0
    monitor-exit v3

    #@3a
    return v1

    #@3b
    :cond_4
    move v1, v2

    #@3c
    goto :goto_0

    #@3d
    .line 622
    .end local v0    # "usersCount":I
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v3

    #@3f
    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1217
    const-string/jumbo v0, "Only the system can create users"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1218
    if-eqz p3, :cond_0

    #@8
    .line 1219
    const-string/jumbo v0, "UserManagerService"

    #@b
    const-string/jumbo v1, "Only user owner can have profiles"

    #@e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1220
    const/4 v0, 0x0

    #@12
    return-object v0

    #@13
    .line 1222
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1227
    const-string/jumbo v0, "Only the system can create users"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1228
    const/16 v0, -0x2710

    #@8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 1980
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v6, "android.permission.DUMP"

    #@7
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 1982
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Permission Denial: can\'t dump UserManager from from pid="

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    .line 1983
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1c
    move-result v6

    #@1d
    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    .line 1984
    const-string/jumbo v6, ", uid="

    #@24
    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    .line 1984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2b
    move-result v6

    #@2c
    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 1985
    const-string/jumbo v6, " without permission "

    #@33
    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 1986
    const-string/jumbo v6, "android.permission.DUMP"

    #@3a
    .line 1982
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 1987
    return-void

    #@46
    .line 1990
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@49
    move-result-wide v2

    #@4a
    .line 1991
    .local v2, "now":J
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    .line 1992
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@51
    monitor-enter v6

    #@52
    .line 1993
    :try_start_0
    const-string/jumbo v5, "Users:"

    #@55
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 1994
    const/4 v0, 0x0

    #@59
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@5b
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@5e
    move-result v5

    #@5f
    if-ge v0, v5, :cond_6

    #@61
    .line 1995
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@63
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@66
    move-result-object v4

    #@67
    check-cast v4, Landroid/content/pm/UserInfo;

    #@69
    .line 1996
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_1

    #@6b
    .line 1994
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 1997
    :cond_1
    const-string/jumbo v5, "  "

    #@71
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@74
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@77
    const-string/jumbo v5, " serialNo="

    #@7a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    #@7f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@82
    .line 1998
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@84
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@86
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@89
    move-result v7

    #@8a
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_2

    #@90
    const-string/jumbo v5, " <removing> "

    #@93
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    .line 1999
    :cond_2
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    #@98
    if-eqz v5, :cond_3

    #@9a
    const-string/jumbo v5, " <partial>"

    #@9d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    .line 2000
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@a3
    .line 2001
    const-string/jumbo v5, "    Created: "

    #@a6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    .line 2002
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    #@ab
    cmp-long v5, v8, v10

    #@ad
    if-nez v5, :cond_4

    #@af
    .line 2003
    const-string/jumbo v5, "<unknown>"

    #@b2
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 2010
    :goto_2
    const-string/jumbo v5, "    Last logged in: "

    #@b8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bb
    .line 2011
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@bd
    cmp-long v5, v8, v10

    #@bf
    if-nez v5, :cond_5

    #@c1
    .line 2012
    const-string/jumbo v5, "<unknown>"

    #@c4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c7
    goto :goto_1

    #@c8
    .line 1992
    .end local v0    # "i":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    #@c9
    monitor-exit v6

    #@ca
    throw v5

    #@cb
    .line 2005
    .restart local v0    # "i":I
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v5, 0x0

    #@cc
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@cf
    .line 2006
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    #@d1
    sub-long v8, v2, v8

    #@d3
    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@d6
    .line 2007
    const-string/jumbo v5, " ago"

    #@d9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 2008
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@df
    goto :goto_2

    #@e0
    .line 2014
    :cond_5
    const/4 v5, 0x0

    #@e1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@e4
    .line 2015
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@e6
    sub-long v8, v2, v8

    #@e8
    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@eb
    .line 2016
    const-string/jumbo v5, " ago"

    #@ee
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 2017
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f4
    goto/16 :goto_1

    #@f6
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit v6

    #@f7
    .line 1979
    return-void
.end method

.method public exists(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@5
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 407
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 12
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v10

    #@4
    .line 1463
    .local v10, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@6
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@9
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    .line 1464
    .local v1, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@f
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@12
    .line 1465
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@14
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@16
    .line 1466
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    #@19
    .line 1468
    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    #@1b
    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    #@1e
    .line 1488
    const/4 v5, 0x0

    #@1f
    const/4 v6, -0x1

    #@20
    const/4 v7, 0x0

    #@21
    const/4 v8, 0x0

    #@22
    .line 1465
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 1490
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 1457
    return-void

    #@29
    .line 1489
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    #@2a
    .line 1490
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1489
    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1530
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
    .line 1535
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    if-ne v0, p2, :cond_0

    #@6
    .line 1536
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
    .line 1539
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@16
    monitor-enter v0

    #@17
    .line 1541
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    monitor-exit v0

    #@1c
    return-object v1

    #@1d
    .line 1537
    :cond_0
    const-string/jumbo v0, "Only system can get restrictions for other users/apps"

    #@20
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 1539
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
    .line 326
    const-string/jumbo v1, "get the credential owner"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 328
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 329
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    #@c
    move-result-object v0

    #@d
    .line 330
    .local v0, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@f
    .line 331
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    return v1

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 336
    return p1

    #@15
    .line 328
    .end local v0    # "profileParent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 516
    const-string/jumbo v0, "getDefaultGuestRestrictions"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 517
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 518
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
    .line 517
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 341
    const-string/jumbo v0, "get the profile parent"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 342
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v0

    #@9
    .line 343
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLocked(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    monitor-exit v0

    #@e
    return-object v1

    #@f
    .line 342
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v0

    #@11
    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 4
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
    .line 287
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    if-eq p1, v2, :cond_0

    #@6
    .line 288
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
    .line 290
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 292
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@23
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@24
    .line 293
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfilesLocked(IZ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-object v3

    #@28
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 293
    return-object v3

    #@2d
    .line 292
    :catchall_0
    move-exception v3

    #@2e
    :try_start_3
    monitor-exit v2

    #@2f
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    .line 295
    :catchall_1
    move-exception v2

    #@31
    .line 296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 295
    throw v2
.end method

.method public getUserCreationTime(I)J
    .locals 6
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1816
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 1817
    .local v0, "callingUserId":I
    const/4 v2, 0x0

    #@5
    .line 1818
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 1819
    if-ne v0, p1, :cond_1

    #@a
    .line 1820
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
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
    .line 1828
    if-nez v2, :cond_2

    #@11
    .line 1829
    new-instance v3, Ljava/lang/SecurityException;

    #@13
    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 1822
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 1823
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@20
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    #@22
    if-ne v3, v0, :cond_0

    #@24
    .line 1824
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-object v2

    #@28
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    #@29
    .line 1818
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@2a
    monitor-exit v4

    #@2b
    throw v3

    #@2c
    .line 1832
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
    .line 1804
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1805
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
    .line 1806
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    #@e
    move-result-object v0

    #@f
    .line 1807
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
    .line 1805
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1810
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    :cond_1
    const/4 v2, -0x1

    #@1b
    monitor-exit v3

    #@1c
    return v2

    #@1d
    .line 1804
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 463
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 464
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Landroid/content/pm/UserInfo;

    #@c
    .line 465
    .local v3, "info":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_0

    #@e
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 466
    :cond_0
    const-string/jumbo v4, "UserManagerService"

    #@15
    new-instance v6, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v7, "getUserIcon: unknown user #"

    #@1d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v5

    #@2d
    .line 467
    return-object v8

    #@2e
    .line 469
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@30
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@33
    move-result v6

    #@34
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroid/content/pm/UserInfo;

    #@3a
    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@3c
    .line 470
    .local v0, "callingGroupId":I
    const/4 v4, -0x1

    #@3d
    if-eq v0, v4, :cond_2

    #@3f
    .line 471
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@41
    if-eq v0, v4, :cond_3

    #@43
    .line 472
    :cond_2
    const-string/jumbo v4, "get the icon of a user who is not related"

    #@46
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@49
    .line 474
    :cond_3
    iget-object v4, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    if-nez v4, :cond_4

    #@4d
    monitor-exit v5

    #@4e
    .line 475
    return-object v8

    #@4f
    .line 477
    :cond_4
    :try_start_2
    iget-object v2, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .local v2, "iconPath":Ljava/lang/String;
    monitor-exit v5

    #@52
    .line 482
    :try_start_3
    new-instance v4, Ljava/io/File;

    #@54
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@57
    const/high16 v5, 0x10000000

    #@59
    .line 481
    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    #@5c
    move-result-object v4

    #@5d
    return-object v4

    #@5e
    .line 463
    .end local v0    # "callingGroupId":I
    .end local v2    # "iconPath":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@5f
    monitor-exit v5

    #@60
    throw v4

    #@61
    .line 483
    .restart local v0    # "callingGroupId":I
    .restart local v2    # "iconPath":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@62
    .line 484
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "UserManagerService"

    #@65
    const-string/jumbo v5, "Couldn\'t find icon file"

    #@68
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 486
    return-object v8
.end method

.method public getUserIds()[I
    .locals 2

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 707
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getUserIdsLPr()[I
    .locals 1

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@2
    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 380
    const-string/jumbo v0, "query user"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 381
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v0

    #@9
    .line 382
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    monitor-exit v0

    #@e
    return-object v1

    #@f
    .line 381
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v0

    #@11
    throw v1
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 544
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/Bundle;

    #@b
    .line 546
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@d
    new-instance v1, Landroid/os/Bundle;

    #@f
    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :goto_0
    monitor-exit v2

    #@13
    return-object v1

    #@14
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    #@16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 544
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 1796
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1797
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
    .line 1798
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

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
    .line 1796
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 6
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
    .line 269
    const-string/jumbo v3, "query users"

    #@3
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 270
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 271
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #@b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@10
    move-result v3

    #@11
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@14
    .line 272
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@1a
    move-result v3

    #@1b
    if-ge v0, v3, :cond_3

    #@1d
    .line 273
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/content/pm/UserInfo;

    #@25
    .line 274
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 272
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 277
    :cond_1
    if-eqz p1, :cond_2

    #@2e
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@30
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    #@32
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_0

    #@38
    .line 278
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .line 270
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3

    #@3f
    .restart local v0    # "i":I
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3
    monitor-exit v4

    #@40
    .line 281
    return-object v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 534
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/Bundle;

    #@b
    .line 536
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    :goto_0
    monitor-exit v2

    #@12
    return v1

    #@13
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0

    #@15
    .line 534
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method isInitialized(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2046
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

.method public isRestricted()Z
    .locals 2

    #@0
    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 389
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

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
    .line 388
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public makeInitialized(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 490
    const-string/jumbo v1, "makeInitialized"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 491
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/content/pm/UserInfo;

    #@11
    .line 493
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@13
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 494
    :cond_0
    const-string/jumbo v1, "UserManagerService"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "makeInitialized: unknown user #"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 496
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@33
    and-int/lit8 v1, v1, 0x10

    #@35
    if-nez v1, :cond_2

    #@37
    .line 497
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@39
    or-int/lit8 v1, v1, 0x10

    #@3b
    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@3d
    .line 498
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    :cond_2
    monitor-exit v2

    #@41
    .line 489
    return-void

    #@42
    .line 491
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1
.end method

.method public markGuestForDeletion(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1351
    const-string/jumbo v3, "Only the system can remove users"

    #@5
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@8
    .line 1352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@f
    move-result-object v3

    #@10
    .line 1353
    const-string/jumbo v4, "no_remove_user"

    #@13
    .line 1352
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 1354
    const-string/jumbo v3, "UserManagerService"

    #@1c
    const-string/jumbo v4, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1355
    return v5

    #@23
    .line 1358
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v0

    #@27
    .line 1361
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@29
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 1362
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 1363
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    #@34
    if-nez v2, :cond_2

    #@36
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    .line 1381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1364
    return v5

    #@3b
    .line 1363
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@3d
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@40
    move-result v3

    #@41
    if-nez v3, :cond_1

    #@43
    .line 1366
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_3

    #@49
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4a
    .line 1381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1367
    return v5

    #@4e
    .line 1374
    :cond_3
    const/4 v3, 0x1

    #@4f
    :try_start_5
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@51
    .line 1377
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    #@53
    or-int/lit8 v3, v3, 0x40

    #@55
    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    #@57
    .line 1378
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5a
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@5b
    .line 1381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5e
    .line 1383
    return v6

    #@5f
    .line 1361
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@60
    :try_start_7
    monitor-exit v4

    #@61
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@62
    .line 1380
    :catchall_1
    move-exception v3

    #@63
    .line 1381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@66
    .line 1380
    throw v3
.end method

.method public onUserForeground(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1860
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 1861
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/content/pm/UserInfo;

    #@b
    .line 1862
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@e
    move-result-wide v0

    #@f
    .line 1863
    .local v0, "now":J
    if-eqz v2, :cond_0

    #@11
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 1864
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "userForeground: unknown user #"

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v4

    #@30
    .line 1865
    return-void

    #@31
    .line 1867
    :cond_1
    const-wide v6, 0xdc46c32800L

    #@36
    cmp-long v3, v0, v6

    #@38
    if-lez v3, :cond_2

    #@3a
    .line 1868
    :try_start_1
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    #@3c
    .line 1869
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    :cond_2
    monitor-exit v4

    #@40
    .line 1859
    return-void

    #@41
    .line 1860
    .end local v0    # "now":J
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3
.end method

.method public removeRestrictions()V
    .locals 2

    #@0
    .prologue
    .line 1572
    const-string/jumbo v1, "Only system can remove restrictions"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 1573
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@9
    move-result v0

    #@a
    .line 1574
    .local v0, "userHandle":I
    const/4 v1, 0x1

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->removeRestrictionsForUser(IZ)V

    #@e
    .line 1571
    return-void
.end method

.method public removeUser(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1392
    const-string/jumbo v7, "Only the system can remove users"

    #@5
    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@8
    .line 1393
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@b
    move-result v7

    #@c
    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@f
    move-result-object v7

    #@10
    .line 1394
    const-string/jumbo v8, "no_remove_user"

    #@13
    .line 1393
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_0

    #@19
    .line 1395
    const-string/jumbo v5, "UserManagerService"

    #@1c
    const-string/jumbo v7, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    #@1f
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1396
    return v6

    #@23
    .line 1399
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v2

    #@27
    .line 1402
    .local v2, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@29
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2a
    .line 1403
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 1404
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    #@34
    if-nez v4, :cond_2

    #@36
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@37
    .line 1453
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1405
    return v6

    #@3b
    .line 1404
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@3d
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@40
    move-result v8

    #@41
    if-nez v8, :cond_1

    #@43
    .line 1411
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    #@45
    const/4 v9, 0x1

    #@46
    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    .line 1414
    :try_start_4
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@4b
    invoke-interface {v8, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4e
    .line 1421
    :goto_0
    const/4 v8, 0x1

    #@4f
    :try_start_5
    iput-boolean v8, v4, Landroid/content/pm/UserInfo;->partial:Z

    #@51
    .line 1424
    iget v8, v4, Landroid/content/pm/UserInfo;->flags:I

    #@53
    or-int/lit8 v8, v8, 0x40

    #@55
    iput v8, v4, Landroid/content/pm/UserInfo;->flags:I

    #@57
    .line 1425
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5a
    :try_start_6
    monitor-exit v7

    #@5b
    .line 1428
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@5d
    const/4 v8, -0x1

    #@5e
    if-eq v7, v8, :cond_3

    #@60
    .line 1429
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@63
    move-result v7

    #@64
    .line 1428
    if-eqz v7, :cond_3

    #@66
    .line 1432
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@68
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    #@6a
    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6d
    .line 1438
    :cond_3
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@70
    move-result-object v7

    #@71
    .line 1439
    new-instance v8, Lcom/android/server/pm/UserManagerService$1;

    #@73
    invoke-direct {v8, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    #@76
    .line 1438
    invoke-interface {v7, p1, v8}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@79
    move-result v1

    #@7a
    .line 1451
    .local v1, "res":I
    if-nez v1, :cond_4

    #@7c
    .line 1453
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7f
    .line 1451
    return v5

    #@80
    .line 1415
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    #@81
    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v8, "UserManagerService"

    #@84
    const-string/jumbo v9, "Unable to notify AppOpsService of removing user"

    #@87
    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@8a
    goto :goto_0

    #@8b
    .line 1402
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    #@8c
    :try_start_9
    monitor-exit v7

    #@8d
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@8e
    .line 1452
    :catchall_1
    move-exception v5

    #@8f
    .line 1453
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@92
    .line 1452
    throw v5

    #@93
    .line 1448
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v0

    #@94
    .line 1453
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@97
    .line 1449
    return v6

    #@98
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_4
    move v5, v6

    #@99
    .line 1451
    goto :goto_1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1548
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v1

    #@4
    if-ne v1, p3, :cond_2

    #@6
    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v1

    #@a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    #@d
    move-result v2

    #@e
    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 1552
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@16
    monitor-enter v2

    #@17
    .line 1553
    if-eqz p2, :cond_0

    #@19
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 1554
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :goto_1
    monitor-exit v2

    #@23
    .line 1561
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 1563
    new-instance v0, Landroid/content/Intent;

    #@2b
    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    #@2e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@31
    .line 1564
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@34
    .line 1565
    const/high16 v1, 0x40000000    # 2.0f

    #@36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@39
    .line 1566
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    #@3b
    new-instance v2, Landroid/os/UserHandle;

    #@3d
    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    #@40
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@43
    .line 1547
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_1
    return-void

    #@44
    .line 1550
    :cond_2
    const-string/jumbo v1, "Only system can set restrictions for other users/apps"

    #@47
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@4a
    goto :goto_0

    #@4b
    .line 1557
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 1552
    :catchall_0
    move-exception v1

    #@50
    monitor-exit v2

    #@51
    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 524
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    #@3
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 525
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@b
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@e
    .line 527
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13
    .line 528
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 523
    return-void

    #@18
    .line 525
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setSystemControlledUserRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 564
    const-string/jumbo v1, "setSystemControlledUserRestriction"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    #@6
    .line 565
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 566
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    .line 567
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@10
    .line 568
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 563
    return-void

    #@15
    .line 565
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 368
    const-string/jumbo v1, "enable user"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 369
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 370
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    #@c
    move-result-object v0

    #@d
    .line 371
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    :cond_0
    :goto_0
    monitor-exit v2

    #@16
    .line 367
    return-void

    #@17
    .line 372
    :cond_1
    :try_start_1
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@19
    xor-int/lit8 v1, v1, 0x40

    #@1b
    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    #@1d
    .line 373
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 369
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 435
    const-string/jumbo v3, "update users"

    #@3
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 438
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@c
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 439
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/content/pm/UserInfo;

    #@15
    .line 440
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@17
    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 441
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    #@1e
    new-instance v5, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v6, "setUserIcon: unknown user #"

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@36
    .line 449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 442
    return-void

    #@3a
    .line 444
    :cond_1
    :try_start_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    #@3d
    .line 445
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    :try_start_4
    monitor-exit v4

    #@41
    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@44
    .line 449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47
    .line 434
    return-void

    #@48
    .line 438
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@49
    :try_start_5
    monitor-exit v4

    #@4a
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4b
    .line 448
    :catchall_1
    move-exception v3

    #@4c
    .line 449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 448
    throw v3
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 414
    const-string/jumbo v2, "rename users"

    #@3
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 415
    const/4 v0, 0x0

    #@7
    .line 416
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/content/pm/UserInfo;

    #@12
    .line 418
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@14
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 419
    :cond_0
    const-string/jumbo v2, "UserManagerService"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "setUserName: unknown user #"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v3

    #@33
    .line 420
    return-void

    #@34
    .line 422
    :cond_1
    if-eqz p2, :cond_2

    #@36
    :try_start_1
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

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
    .line 428
    if-eqz v0, :cond_3

    #@41
    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    #@44
    .line 413
    :cond_3
    return-void

    #@45
    .line 423
    :cond_4
    :try_start_2
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@47
    .line 424
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    .line 425
    const/4 v0, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 416
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    #@4d
    monitor-exit v3

    #@4e
    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 552
    const-string/jumbo v1, "setUserRestriction"

    #@3
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 553
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 554
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    #@b
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 555
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    #@14
    move-result-object v0

    #@15
    .line 556
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@18
    .line 557
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :cond_0
    monitor-exit v2

    #@1c
    .line 551
    return-void

    #@1d
    .line 553
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 574
    const-string/jumbo v3, "setUserRestrictions"

    #@3
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    #@6
    .line 575
    if-nez p1, :cond_0

    #@8
    return-void

    #@9
    .line 577
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 578
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/os/Bundle;

    #@14
    .line 580
    .local v2, "oldUserRestrictions":Landroid/os/Bundle;
    sget-object v3, Lcom/android/server/pm/UserManagerService;->SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    .line 581
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@29
    .line 582
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 583
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 577
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3

    #@3a
    .line 586
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    monitor-exit v4

    #@3e
    .line 573
    return-void
.end method

.method systemReady()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 237
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 238
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    #@6
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 240
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 241
    .local v2, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@12
    move-result v4

    #@13
    if-ge v1, v4, :cond_2

    #@15
    .line 242
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/content/pm/UserInfo;

    #@1d
    .line 243
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    #@1f
    if-nez v4, :cond_0

    #@21
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    #@23
    if-eqz v4, :cond_1

    #@25
    :cond_0
    if-eqz v1, :cond_1

    #@27
    .line 244
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 241
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 247
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v1, 0x0

    #@2e
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v4

    #@32
    if-ge v1, v4, :cond_3

    #@34
    .line 248
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/content/pm/UserInfo;

    #@3a
    .line 249
    .restart local v3    # "ui":Landroid/content/pm/UserInfo;
    const-string/jumbo v4, "UserManagerService"

    #@3d
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "Removing partially created user "

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    #@4b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    .line 250
    const-string/jumbo v8, " (name="

    #@52
    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    .line 250
    iget-object v8, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@58
    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    .line 250
    const-string/jumbo v8, ")"

    #@5f
    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 251
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    #@6c
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    .line 247
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_1

    #@72
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@73
    monitor-exit v5

    #@74
    .line 255
    invoke-virtual {p0, v9}, Lcom/android/server/pm/UserManagerService;->onUserForeground(I)V

    #@77
    .line 257
    const-string/jumbo v4, "appops"

    #@7a
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7d
    move-result-object v4

    #@7e
    .line 256
    invoke-static {v4}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@81
    move-result-object v4

    #@82
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@84
    .line 258
    const/4 v1, 0x0

    #@85
    :goto_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@87
    array-length v4, v4

    #@88
    if-ge v1, v4, :cond_4

    #@8a
    .line 260
    :try_start_3
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@8c
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    #@8e
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@90
    aget v6, v6, v1

    #@92
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v4

    #@96
    check-cast v4, Landroid/os/Bundle;

    #@98
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    #@9a
    aget v6, v6, v1

    #@9c
    invoke-interface {v5, v4, v6}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@9f
    .line 258
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@a1
    goto :goto_2

    #@a2
    .line 238
    .end local v1    # "i":I
    .end local v2    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    #@a3
    :try_start_4
    monitor-exit v6

    #@a4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a5
    .line 237
    :catchall_1
    move-exception v4

    #@a6
    monitor-exit v5

    #@a7
    throw v4

    #@a8
    .line 261
    .restart local v1    # "i":I
    .restart local v2    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    #@a9
    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "UserManagerService"

    #@ac
    const-string/jumbo v5, "Unable to notify AppOpsService of UserRestrictions"

    #@af
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    goto :goto_3

    #@b3
    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    return-void
.end method
