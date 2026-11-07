.class public Ljava/util/prefs/FileSystemPreferences;
.super Ljava/util/prefs/AbstractPreferences;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/FileSystemPreferences$Change;,
        Ljava/util/prefs/FileSystemPreferences$NodeCreate;,
        Ljava/util/prefs/FileSystemPreferences$Put;,
        Ljava/util/prefs/FileSystemPreferences$Remove;
    }
.end annotation


# static fields
.field private static final greylist-max-o EACCES:I = 0xd

.field private static final greylist-max-o EAGAIN:I = 0xb

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o ERROR_CODE:I = 0x1

.field private static greylist-max-o INIT_SLEEP_TIME:I = 0x0

.field private static final greylist-max-o LOCK_HANDLE:I = 0x0

.field private static greylist-max-o MAX_ATTEMPTS:I = 0x0

.field private static final greylist-max-o USER_READ_WRITE:I = 0x180

.field private static final greylist-max-o USER_RWX:I = 0x1c0

.field private static final greylist-max-o USER_RWX_ALL_RX:I = 0x1ed

.field private static final greylist-max-o USER_RW_ALL_READ:I = 0x1a4

.field private static greylist-max-o isSystemRootModified:Z

.field private static greylist-max-o isSystemRootWritable:Z

.field private static greylist-max-o isUserRootModified:Z

.field private static greylist-max-o isUserRootWritable:Z

.field static greylist-max-o systemLockFile:Ljava/io/File;

.field static greylist-max-o systemRoot:Ljava/util/prefs/Preferences;

.field private static greylist-max-o systemRootDir:Ljava/io/File;

.field private static greylist-max-o systemRootLockHandle:I

.field private static greylist-max-o systemRootModFile:Ljava/io/File;

.field private static greylist-max-o systemRootModTime:J

.field static greylist-max-o userLockFile:Ljava/io/File;

.field static greylist-max-o userRoot:Ljava/util/prefs/Preferences;

.field private static greylist-max-o userRootDir:Ljava/io/File;

.field private static greylist-max-o userRootLockHandle:I

.field private static greylist-max-o userRootModFile:Ljava/io/File;

.field private static greylist-max-o userRootModTime:J


# instance fields
.field final greylist-max-o changeLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/prefs/FileSystemPreferences$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o dir:Ljava/io/File;

.field private final greylist-max-o isUserNode:Z

.field private greylist-max-o lastSyncTime:J

.field greylist-max-o nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

.field private greylist-max-o prefsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o prefsFile:Ljava/io/File;

.field private final greylist-max-o tmpFile:Ljava/io/File;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdir(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprefsCache(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprefsFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettmpFile(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_STRING_ARRAY()[Ljava/lang/String;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetisSystemRootWritable()Z
    .registers 1

    sget-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsystemRootDir()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsystemRootModFile()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsystemRootModTime()J
    .registers 2

    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetuserRootDir()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetuserRootModFile()Ljava/io/File;
    .registers 1

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetuserRootModTime()J
    .registers 2

    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputisSystemRootModified(Z)V
    .registers 1

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputisSystemRootWritable(Z)V
    .registers 1

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputisUserRootModified(Z)V
    .registers 1

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputisUserRootWritable(Z)V
    .registers 1

    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootWritable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsystemRootDir(Ljava/io/File;)V
    .registers 1

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsystemRootModFile(Ljava/io/File;)V
    .registers 1

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsystemRootModTime(J)V
    .registers 2

    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputuserRootDir(Ljava/io/File;)V
    .registers 1

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputuserRootModFile(Ljava/io/File;)V
    .registers 1

    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputuserRootModTime(J)V
    .registers 2

    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smchmod(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetLogger()Lsun/util/logging/PlatformLogger;
    .registers 1

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnodeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsyncWorld()V
    .registers 0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->syncWorld()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 86
    const/4 v0, 0x0

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    .line 240
    const/4 v0, 0x0

    sput v0, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    .line 247
    sput v0, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    .line 283
    sput-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    .line 300
    sput-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    .line 423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/util/prefs/FileSystemPreferences$3;

    invoke-direct {v2}, Ljava/util/prefs/FileSystemPreferences$3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 660
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 961
    const/16 v0, 0x32

    sput v0, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    .line 966
    const/4 v0, 0x5

    sput v0, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lockFile"    # Ljava/io/File;
    .param p3, "isUserNode"    # Z

    .line 474
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 316
    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 327
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    .line 411
    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 475
    iput-boolean p3, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    .line 476
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    .line 477
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string v3, "prefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 478
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string v3, "prefs.tmp"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    .line 479
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    .line 480
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    if-eqz v0, :cond_57

    .line 482
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 483
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-direct {v0, p0, v1}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 484
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_57
    const-string v0, ".rootmod"

    if-eqz p3, :cond_7e

    .line 488
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    .line 489
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    goto :goto_a0

    .line 491
    :cond_7e
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .line 492
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    .line 494
    :goto_a0
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
    .registers 7
    .param p1, "parent"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "name"    # Ljava/lang/String;

    .line 502
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 327
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    .line 411
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 503
    iget-boolean v1, p1, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    iput-boolean v1, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    .line 504
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-static {p2}, Ljava/util/prefs/FileSystemPreferences;->dirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    .line 505
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string v3, "prefs.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 506
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string v3, "prefs.tmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    .line 507
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$4;

    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$4;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 513
    iget-boolean v1, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    if-eqz v1, :cond_5b

    .line 515
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 516
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-direct {v1, p0, v0}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences-IA;)V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 517
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_5b
    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 6
    .param p1, "user"    # Z

    .line 464
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 316
    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 327
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    .line 411
    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    .line 465
    iput-boolean p1, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    .line 466
    if-eqz p1, :cond_1c

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    goto :goto_1e

    :cond_1c
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    :goto_1e
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    .line 467
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string v2, "prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 468
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    const-string v2, "prefs.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    .line 469
    return-void
.end method

.method private static greylist-max-o byteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 849
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 850
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 851
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_a
    if-ge v2, v0, :cond_1f

    .line 852
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 853
    .local v4, "c":C
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 854
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "j":I
    .restart local v3    # "j":I
    int-to-byte v6, v4

    aput-byte v6, v1, v5

    .line 851
    .end local v4    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 856
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1f
    return-object v1
.end method

.method private greylist-max-o checkLockFile0ErrorCode(I)V
    .registers 6
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 927
    const/16 v0, 0xd

    const-string v1, "System prefs."

    const-string v2, "Could not lock "

    if-ne p1, v0, :cond_2d

    .line 928
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 929
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v1, "User prefs."

    :cond_1b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Lock file access denied."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_2d
    const/16 v0, 0xb

    if-eq p1, v0, :cond_61

    .line 932
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 933
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v1, "User prefs. "

    :cond_46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Unix error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 935
    :cond_61
    return-void
.end method

.method private static native greylist-max-o chmod(Ljava/lang/String;I)I
.end method

.method private static greylist-max-o dirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "nodeName"    # Ljava/lang/String;

    .line 838
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "n":I
    :goto_5
    if-ge v0, v1, :cond_30

    .line 839
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->isDirChar(C)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->byteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 838
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 841
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_30
    return-object p0
.end method

.method private static greylist-max-o getLogger()Lsun/util/logging/PlatformLogger;
    .registers 1

    .line 60
    const-string v0, "java.util.prefs"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getSystemRoot()Ljava/util/prefs/Preferences;
    .registers 3

    const-class v0, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    if-nez v1, :cond_12

    .line 151
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V

    .line 152
    new-instance v1, Ljava/util/prefs/FileSystemPreferences;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    sput-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    .line 154
    :cond_12
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 149
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static declared-synchronized greylist-max-o getUserRoot()Ljava/util/prefs/Preferences;
    .registers 3

    const-class v0, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    if-nez v1, :cond_12

    .line 90
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V

    .line 91
    new-instance v1, Ljava/util/prefs/FileSystemPreferences;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    sput-object v1, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    .line 93
    :cond_12
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private greylist-max-o initCacheIfNecessary()V
    .registers 3

    .line 551
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 552
    return-void

    .line 555
    :cond_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 559
    goto :goto_11

    .line 556
    :catch_9
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method private static greylist-max-o isDirChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 828
    const/16 v0, 0x1f

    if-le p0, v0, :cond_16

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_16

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_16

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private greylist-max-o loadCache()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 572
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v1, 0x0

    .line 574
    .local v1, "newLastSyncTime":J
    :try_start_7
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    move-wide v1, v3

    .line 575
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_26

    .line 576
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_15
    invoke-static {v3, v0}, Ljava/util/prefs/XmlSupport;->importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1c

    .line 577
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_26

    .line 596
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_88

    .line 575
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1c
    move-exception v4

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v5

    :try_start_22
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "newLastSyncTime":J
    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :goto_25
    throw v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_26

    .line 578
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "newLastSyncTime":J
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :catch_26
    move-exception v3

    .line 579
    .local v3, "e":Ljava/lang/Exception;
    instance-of v4, v3, Ljava/util/prefs/InvalidPreferencesFormatException;

    if-eqz v4, :cond_64

    .line 580
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid preferences format in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 581
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 582
    iget-object v4, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 583
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const-string v7, "IncorrectFormatPrefs.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 585
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    move-object v0, v4

    goto :goto_88

    .line 586
    :cond_64
    instance-of v4, v3, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_8d

    .line 587
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefs file removed in background "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    .line 588
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 598
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_88
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 599
    iput-wide v1, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 600
    return-void

    .line 592
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_8d
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while reading cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 593
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 594
    new-instance v4, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v4, v3}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private greylist-max-o lockFile(Z)Z
    .registers 13
    .param p1, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    .line 886
    .local v0, "usernode":Z
    const/4 v1, 0x0

    .line 887
    .local v1, "errorCode":I
    if-eqz v0, :cond_a

    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    goto :goto_c

    :cond_a
    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .line 888
    .local v2, "lockFile":Ljava/io/File;
    :goto_c
    sget v3, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    int-to-long v3, v3

    .line 889
    .local v3, "sleepTime":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    sget v6, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_50

    .line 891
    if-eqz v0, :cond_1a

    const/16 v6, 0x180

    goto :goto_1c

    :cond_1a
    const/16 v6, 0x1a4

    .line 892
    .local v6, "perm":I
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, p1}, Ljava/util/prefs/FileSystemPreferences;->lockFile0(Ljava/lang/String;IZ)[I

    move-result-object v8

    .line 894
    .local v8, "result":[I
    const/4 v9, 0x1

    aget v10, v8, v9

    move v1, v10

    .line 895
    aget v10, v8, v7

    if-eqz v10, :cond_38

    .line 896
    if-eqz v0, :cond_33

    .line 897
    aget v10, v8, v7

    sput v10, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    goto :goto_37

    .line 899
    :cond_33
    aget v10, v8, v7

    sput v10, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_39

    .line 901
    :goto_37
    return v9

    .line 905
    .end local v6    # "perm":I
    :cond_38
    goto :goto_3a

    .line 903
    .end local v8    # "result":[I
    :catch_39
    move-exception v6

    .line 908
    :goto_3a
    :try_start_3a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_44

    .line 914
    nop

    .line 915
    const-wide/16 v6, 0x2

    mul-long/2addr v3, v6

    .line 889
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 909
    :catch_44
    move-exception v6

    .line 910
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    .line 912
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 913
    return v7

    .line 917
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_50
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    .line 918
    return v7
.end method

.method private static native greylist-max-o lockFile0(Ljava/lang/String;IZ)[I
.end method

.method private static greylist-max-o nodeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "dirName"    # Ljava/lang/String;

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_a

    .line 865
    return-object p0

    .line 866
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 867
    .local v0, "a":[B
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 868
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v0

    if-ge v2, v3, :cond_34

    .line 869
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 870
    .local v2, "highByte":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 871
    .local v3, "lowByte":I
    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v5, v3

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 872
    .end local v2    # "highByte":I
    .end local v3    # "lowByte":I
    move v2, v4

    goto :goto_1c

    .line 873
    .end local v4    # "i":I
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o replayChanges()V
    .registers 4

    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 418
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/FileSystemPreferences$Change;

    invoke-virtual {v2}, Ljava/util/prefs/FileSystemPreferences$Change;->replay()V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 419
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_17
    return-void
.end method

.method private static greylist-max-o setupSystemRoot()V
    .registers 1

    .line 158
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$2;

    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method private static greylist-max-o setupUserRoot()V
    .registers 1

    .line 97
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$1;

    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method private greylist-max-o syncSpiPrivileged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_72

    .line 772
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 773
    return-void

    .line 775
    :cond_b
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    if-eqz v0, :cond_2f

    goto :goto_1a

    :cond_16
    sget-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    if-eqz v0, :cond_2f

    .line 776
    :goto_1a
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 777
    .local v0, "lastModifiedTime":J
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_49

    .line 780
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V

    .line 781
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    .line 782
    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    goto :goto_49

    .line 784
    .end local v0    # "lastModifiedTime":J
    :cond_2f
    iget-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_49

    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_49

    .line 787
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    .line 788
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    .line 790
    :cond_49
    :goto_49
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 791
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V

    .line 797
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 803
    .restart local v0    # "lastModifiedTime":J
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_6c

    .line 804
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    .line 805
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    iget-wide v3, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 807
    :cond_6c
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 809
    .end local v0    # "lastModifiedTime":J
    :cond_71
    return-void

    .line 771
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Node has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o syncWorld()V
    .registers 6

    .line 437
    const-class v0, Ljava/util/prefs/FileSystemPreferences;

    monitor-enter v0

    .line 438
    :try_start_3
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    .line 439
    .local v1, "userRt":Ljava/util/prefs/Preferences;
    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    .line 440
    .local v2, "systemRt":Ljava/util/prefs/Preferences;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4f

    .line 443
    if-eqz v1, :cond_2a

    .line 444
    :try_start_a
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_d
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_2a

    .line 445
    :catch_e
    move-exception v0

    .line 446
    .local v0, "e":Ljava/util/prefs/BackingStoreException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t flush user prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_2b

    .line 447
    .end local v0    # "e":Ljava/util/prefs/BackingStoreException;
    :cond_2a
    :goto_2a
    nop

    .line 450
    :goto_2b
    if-eqz v2, :cond_4d

    .line 451
    :try_start_2d
    invoke-virtual {v2}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_30
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_4d

    .line 452
    :catch_31
    move-exception v0

    .line 453
    .restart local v0    # "e":Ljava/util/prefs/BackingStoreException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t flush system prefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_4e

    .line 454
    .end local v0    # "e":Ljava/util/prefs/BackingStoreException;
    :cond_4d
    :goto_4d
    nop

    .line 455
    :goto_4e
    return-void

    .line 440
    .end local v1    # "userRt":Ljava/util/prefs/Preferences;
    .end local v2    # "systemRt":Ljava/util/prefs/Preferences;
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private greylist-max-o unlockFile()V
    .registers 10

    .line 974
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    .line 975
    .local v0, "usernode":Z
    if-eqz v0, :cond_9

    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    goto :goto_b

    :cond_9
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    .line 976
    .local v1, "lockFile":Ljava/io/File;
    :goto_b
    if-eqz v0, :cond_10

    sget v2, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    goto :goto_12

    :cond_10
    sget v2, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    .line 977
    .local v2, "lockHandle":I
    :goto_12
    const-string v3, "user"

    const-string v4, "system"

    if-nez v2, :cond_3d

    .line 978
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unlock: zero lockHandle for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 979
    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v3, v4

    :goto_2b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preferences.)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 978
    invoke-virtual {v5, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 980
    return-void

    .line 982
    :cond_3d
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->unlockFile0(I)I

    move-result v5

    .line 983
    .local v5, "result":I
    if-eqz v5, :cond_a3

    .line 984
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not drop file-lock on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 985
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v8

    if-eqz v8, :cond_59

    goto :goto_5a

    :cond_59
    move-object v3, v4

    :goto_5a
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preferences. Unix error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 984
    invoke-virtual {v6, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 987
    const/16 v3, 0xd

    if-ne v5, v3, :cond_a3

    .line 988
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not unlock"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 989
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v6

    if-eqz v6, :cond_8f

    const-string v6, "User prefs."

    goto :goto_91

    :cond_8f
    const-string v6, "System prefs."

    :goto_91
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Lock file access denied."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 992
    :cond_a3
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ad

    .line 993
    sput v4, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    goto :goto_af

    .line 995
    :cond_ad
    sput v4, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    .line 997
    :goto_af
    return-void
.end method

.method private static native greylist-max-o unlockFile0(I)I
.end method

.method private greylist-max-o writeBackCache()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 613
    :try_start_0
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$5;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$5;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_8} :catch_a

    .line 636
    nop

    .line 637
    return-void

    .line 634
    :catch_a
    move-exception v0

    .line 635
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1
.end method


# virtual methods
.method protected whitelist test-api childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 663
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FileSystemPreferences;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    return-object v0
.end method

.method protected whitelist test-api childrenNamesSpi()[Ljava/lang/String;
    .registers 2

    .line 645
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$6;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$6;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 813
    return-void

    .line 814
    :cond_7
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->sync()V

    .line 815
    return-void
.end method

.method protected whitelist test-api flushSpi()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 819
    return-void
.end method

.method protected whitelist test-api getSpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 532
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 533
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api isUserNode()Z
    .registers 2

    .line 522
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    return v0
.end method

.method protected whitelist test-api keysSpi()[Ljava/lang/String;
    .registers 3

    .line 640
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 641
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist test-api putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 526
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 527
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Put;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/prefs/FileSystemPreferences$Put;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    return-void
.end method

.method public whitelist test-api removeNode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    goto :goto_b

    :cond_9
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    :goto_b
    monitor-enter v0

    .line 669
    const/4 v1, 0x0

    :try_start_d
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_2a

    if-eqz v1, :cond_22

    .line 672
    :try_start_13
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    .line 674
    :try_start_16
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    .line 675
    nop

    .line 676
    monitor-exit v0

    .line 677
    return-void

    .line 674
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    .line 675
    nop

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    throw v1

    .line 670
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :cond_22
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    const-string v2, "Couldn\'t get file lock."

    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    throw v1

    .line 676
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method protected whitelist test-api removeNodeSpi()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 684
    :try_start_0
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$7;

    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$7;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_8} :catch_a

    .line 713
    nop

    .line 714
    return-void

    .line 711
    :catch_a
    move-exception v0

    .line 712
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/BackingStoreException;

    throw v1
.end method

.method protected whitelist test-api removeSpi(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    .line 538
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Remove;

    invoke-direct {v1, p0, p1}, Ljava/util/prefs/FileSystemPreferences$Remove;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void
.end method

.method public declared-synchronized whitelist test-api sync()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 717
    :try_start_1
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    .line 720
    .local v0, "userNode":Z
    if-eqz v0, :cond_9

    .line 721
    const/4 v1, 0x0

    .local v1, "shared":Z
    goto :goto_d

    .line 725
    .end local v1    # "shared":Z
    :cond_9
    sget-boolean v1, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    xor-int/lit8 v1, v1, 0x1

    .line 727
    .restart local v1    # "shared":Z
    :goto_d
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    goto :goto_18

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :cond_16
    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    :goto_18
    monitor-enter v2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_4f

    .line 728
    :try_start_19
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 730
    new-instance v3, Ljava/util/prefs/FileSystemPreferences$8;

    invoke-direct {v3, p0}, Ljava/util/prefs/FileSystemPreferences$8;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    .line 731
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_4a

    .line 746
    .local v3, "newModTime":Ljava/lang/Long;
    :try_start_2a
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->sync()V

    .line 747
    new-instance v4, Ljava/util/prefs/FileSystemPreferences$9;

    invoke-direct {v4, p0, v3}, Ljava/util/prefs/FileSystemPreferences$9;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_3c

    .line 760
    :try_start_35
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    .line 761
    nop

    .line 762
    .end local v3    # "newModTime":Ljava/lang/Long;
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_4a

    .line 763
    monitor-exit p0

    return-void

    .line 760
    .restart local v3    # "newModTime":Ljava/lang/Long;
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    .line 761
    nop

    .end local v0    # "userNode":Z
    .end local v1    # "shared":Z
    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    throw v4

    .line 729
    .end local v3    # "newModTime":Ljava/lang/Long;
    .restart local v0    # "userNode":Z
    .restart local v1    # "shared":Z
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :cond_42
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    const-string v4, "Couldn\'t get file lock."

    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userNode":Z
    .end local v1    # "shared":Z
    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    throw v3
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_4a

    .line 762
    .restart local v0    # "userNode":Z
    .restart local v1    # "shared":Z
    .restart local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :catchall_4a
    move-exception v3

    :goto_4b
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4d

    :try_start_4c
    throw v3

    .end local p0    # "this":Ljava/util/prefs/FileSystemPreferences;
    :catchall_4d
    move-exception v3

    goto :goto_4b

    .line 716
    .end local v0    # "userNode":Z
    .end local v1    # "shared":Z
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_4f

    throw v0
.end method

.method protected whitelist test-api syncSpi()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 766
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->syncSpiPrivileged()V

    .line 767
    return-void
.end method
