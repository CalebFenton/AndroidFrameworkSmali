.class public Ljava/util/prefs/FileSystemPreferences;
.super Ljava/util/prefs/AbstractPreferences;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/prefs/FileSystemPreferences$1;,
        Ljava/util/prefs/FileSystemPreferences$Change;,
        Ljava/util/prefs/FileSystemPreferences$NodeCreate;,
        Ljava/util/prefs/FileSystemPreferences$Put;,
        Ljava/util/prefs/FileSystemPreferences$Remove;
    }
.end annotation


# static fields
.field private static final EACCES:I = 0xd

.field private static final EAGAIN:I = 0xb

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final ERROR_CODE:I = 0x1

.field private static INIT_SLEEP_TIME:I = 0x0

.field private static final LOCK_HANDLE:I = 0x0

.field private static MAX_ATTEMPTS:I = 0x0

.field private static final USER_READ_WRITE:I = 0x180

.field private static final USER_RWX:I = 0x1c0

.field private static final USER_RWX_ALL_RX:I = 0x1ed

.field private static final USER_RW_ALL_READ:I = 0x1a4

.field private static isSystemRootModified:Z

.field private static isSystemRootWritable:Z

.field private static isUserRootModified:Z

.field private static isUserRootWritable:Z

.field static systemLockFile:Ljava/io/File;

.field static systemRoot:Ljava/util/prefs/Preferences;

.field private static systemRootDir:Ljava/io/File;

.field private static systemRootLockHandle:I

.field private static systemRootModFile:Ljava/io/File;

.field private static systemRootModTime:J

.field static userLockFile:Ljava/io/File;

.field static userRoot:Ljava/util/prefs/Preferences;

.field private static userRootDir:Ljava/io/File;

.field private static userRootLockHandle:I

.field private static userRootModFile:Ljava/io/File;

.field private static userRootModTime:J


# instance fields
.field final changeLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/prefs/FileSystemPreferences$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final dir:Ljava/io/File;

.field private final isUserNode:Z

.field private lastSyncTime:J

.field nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

.field private prefsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsFile:Ljava/io/File;

.field private final tmpFile:Ljava/io/File;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get10()Ljava/io/File;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get11()J
    .locals 2

    #@0
    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2()Z
    .locals 1

    #@0
    sget-boolean v0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get5()Ljava/io/File;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get6()Ljava/io/File;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get7()J
    .locals 2

    #@0
    sget-wide v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get9()Ljava/io/File;
    .locals 1

    #@0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    #@0
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    #@2
    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    #@0
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    #@2
    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    #@0
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    #@2
    return p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    #@0
    sput-boolean p0, Ljava/util/prefs/FileSystemPreferences;->isUserRootWritable:Z

    #@2
    return p0
.end method

.method static synthetic -set4(Ljava/io/File;)Ljava/io/File;
    .locals 0

    #@0
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    #@2
    return-object p0
.end method

.method static synthetic -set5(Ljava/io/File;)Ljava/io/File;
    .locals 0

    #@0
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    #@2
    return-object p0
.end method

.method static synthetic -set6(J)J
    .locals 0

    #@0
    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->systemRootModTime:J

    #@2
    return-wide p0
.end method

.method static synthetic -set7(Ljava/io/File;)Ljava/io/File;
    .locals 0

    #@0
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    #@2
    return-object p0
.end method

.method static synthetic -set8(Ljava/io/File;)Ljava/io/File;
    .locals 0

    #@0
    sput-object p0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    #@2
    return-object p0
.end method

.method static synthetic -set9(J)J
    .locals 0

    #@0
    sput-wide p0, Ljava/util/prefs/FileSystemPreferences;->userRootModTime:J

    #@2
    return-wide p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;I)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "permission"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/prefs/FileSystemPreferences;->chmod(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->nodeName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2()Lsun/util/logging/PlatformLogger;
    .locals 1

    #@0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3()V
    .locals 0

    #@0
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->syncWorld()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    const/4 v0, 0x0

    #@2
    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    #@4
    .line 240
    sput v2, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    #@6
    .line 247
    sput v2, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    #@8
    .line 283
    sput-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    #@a
    .line 300
    sput-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    #@c
    .line 423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@f
    move-result-object v0

    #@10
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$1;

    #@12
    invoke-direct {v1}, Ljava/util/prefs/FileSystemPreferences$1;-><init>()V

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    #@18
    .line 660
    new-array v0, v2, [Ljava/lang/String;

    #@1a
    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@1c
    .line 959
    const/16 v0, 0x32

    #@1e
    sput v0, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    #@20
    .line 964
    const/4 v0, 0x5

    #@21
    sput v0, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    #@23
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lockFile"    # Ljava/io/File;
    .param p3, "isUserNode"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 474
    const-string/jumbo v0, ""

    #@4
    invoke-direct {p0, v3, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    #@7
    .line 316
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@9
    .line 327
    const-wide/16 v0, 0x0

    #@b
    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@d
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@14
    .line 411
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@16
    .line 475
    iput-boolean p3, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    #@18
    .line 476
    new-instance v0, Ljava/io/File;

    #@1a
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1d
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@1f
    .line 477
    new-instance v0, Ljava/io/File;

    #@21
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@23
    const-string/jumbo v2, "prefs.xml"

    #@26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@29
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@2b
    .line 478
    new-instance v0, Ljava/io/File;

    #@2d
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@2f
    const-string/jumbo v2, "prefs.tmp"

    #@32
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@35
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    #@37
    .line 479
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_1

    #@3f
    const/4 v0, 0x0

    #@40
    :goto_0
    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    #@42
    .line 480
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 482
    new-instance v0, Ljava/util/TreeMap;

    #@48
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@4b
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@4d
    .line 483
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@4f
    invoke-direct {v0, p0, v3}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V

    #@52
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@54
    .line 484
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@56
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 487
    :cond_0
    if-eqz p3, :cond_2

    #@5d
    .line 488
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    #@5f
    .line 489
    new-instance v0, Ljava/io/File;

    #@61
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@64
    move-result-object v1

    #@65
    new-instance v2, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    const-string/jumbo v3, ".rootmod"

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@80
    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootModFile:Ljava/io/File;

    #@82
    .line 473
    :goto_1
    return-void

    #@83
    .line 479
    :cond_1
    const/4 v0, 0x1

    #@84
    goto :goto_0

    #@85
    .line 491
    :cond_2
    sput-object p2, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    #@87
    .line 492
    new-instance v0, Ljava/io/File;

    #@89
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@8c
    move-result-object v1

    #@8d
    new-instance v2, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    const-string/jumbo v3, ".rootmod"

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a8
    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootModFile:Ljava/io/File;

    #@aa
    goto :goto_1
.end method

.method private constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "parent"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 502
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    #@4
    .line 316
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@6
    .line 327
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@a
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@11
    .line 411
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@13
    .line 503
    iget-boolean v0, p1, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    #@15
    iput-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    #@17
    .line 504
    new-instance v0, Ljava/io/File;

    #@19
    iget-object v1, p1, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@1b
    invoke-static {p2}, Ljava/util/prefs/FileSystemPreferences;->dirName(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@24
    .line 505
    new-instance v0, Ljava/io/File;

    #@26
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@28
    const-string/jumbo v2, "prefs.xml"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2e
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@30
    .line 506
    new-instance v0, Ljava/io/File;

    #@32
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@34
    const-string/jumbo v2, "prefs.tmp"

    #@37
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3a
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    #@3c
    .line 507
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$4;

    #@3e
    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$4;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    #@41
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@44
    .line 513
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->newNode:Z

    #@46
    if-eqz v0, :cond_0

    #@48
    .line 515
    new-instance v0, Ljava/util/TreeMap;

    #@4a
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@4d
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@4f
    .line 516
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@51
    invoke-direct {v0, p0, v3}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$NodeCreate;)V

    #@54
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@56
    .line 517
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@58
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@5a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5d
    .line 501
    :cond_0
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "user"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 464
    const-string/jumbo v0, ""

    #@4
    invoke-direct {p0, v2, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    #@7
    .line 316
    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@9
    .line 327
    const-wide/16 v0, 0x0

    #@b
    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@d
    .line 352
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@14
    .line 411
    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->nodeCreate:Ljava/util/prefs/FileSystemPreferences$NodeCreate;

    #@16
    .line 465
    iput-boolean p1, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    #@18
    .line 466
    if-eqz p1, :cond_0

    #@1a
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRootDir:Ljava/io/File;

    #@1c
    :goto_0
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@1e
    .line 467
    new-instance v0, Ljava/io/File;

    #@20
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@22
    const-string/jumbo v2, "prefs.xml"

    #@25
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@2a
    .line 468
    new-instance v0, Ljava/io/File;

    #@2c
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@2e
    const-string/jumbo v2, "prefs.tmp"

    #@31
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@34
    iput-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->tmpFile:Ljava/io/File;

    #@36
    .line 463
    return-void

    #@37
    .line 466
    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRootDir:Ljava/io/File;

    #@39
    goto :goto_0
.end method

.method private static byteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 849
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 850
    .local v4, "len":I
    mul-int/lit8 v6, v4, 0x2

    #@6
    new-array v5, v6, [B

    #@8
    .line 851
    .local v5, "result":[B
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    const/4 v2, 0x0

    #@a
    .local v2, "j":I
    move v3, v2

    #@b
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v1, v4, :cond_0

    #@d
    .line 852
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 853
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "j":I
    .restart local v2    # "j":I
    shr-int/lit8 v6, v0, 0x8

    #@15
    int-to-byte v6, v6

    #@16
    aput-byte v6, v5, v3

    #@18
    .line 854
    add-int/lit8 v3, v2, 0x1

    #@1a
    .end local v2    # "j":I
    .restart local v3    # "j":I
    int-to-byte v6, v0

    #@1b
    aput-byte v6, v5, v2

    #@1d
    .line 851
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 856
    .end local v0    # "c":C
    :cond_0
    return-object v5
.end method

.method private checkLockFile0ErrorCode(I)V
    .locals 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 925
    const/16 v0, 0xd

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 926
    new-instance v1, Ljava/lang/SecurityException;

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Could not lock "

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 927
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    const-string/jumbo v0, "User prefs."

    #@1b
    .line 926
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 928
    const-string/jumbo v2, " Lock file access denied."

    #@22
    .line 926
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 927
    :cond_0
    const-string/jumbo v0, "System prefs."

    #@31
    goto :goto_0

    #@32
    .line 929
    :cond_1
    const/16 v0, 0xb

    #@34
    if-eq p1, v0, :cond_2

    #@36
    .line 930
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@39
    move-result-object v1

    #@3a
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Could not lock "

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 931
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_3

    #@4c
    const-string/jumbo v0, "User prefs. "

    #@4f
    .line 930
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 932
    const-string/jumbo v2, " Unix error code "

    #@56
    .line 930
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 932
    const-string/jumbo v2, "."

    #@61
    .line 930
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@6c
    .line 924
    :cond_2
    return-void

    #@6d
    .line 931
    :cond_3
    const-string/jumbo v0, "System prefs."

    #@70
    goto :goto_1
.end method

.method private static native chmod(Ljava/lang/String;I)I
.end method

.method private static dirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "nodeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 838
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 839
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/util/prefs/FileSystemPreferences;->isDirChar(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "_"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {p0}, Ljava/util/prefs/FileSystemPreferences;->byteArray(Ljava/lang/String;)[B

    #@20
    move-result-object v3

    #@21
    invoke-static {v3}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .line 838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 841
    :cond_1
    return-object p0
.end method

.method private static getLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "java.util.prefs"

    #@3
    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method static declared-synchronized getSystemRoot()Ljava/util/prefs/Preferences;
    .locals 3

    #@0
    .prologue
    const-class v1, Ljava/util/prefs/FileSystemPreferences;

    #@2
    monitor-enter v1

    #@3
    .line 150
    :try_start_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 151
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupSystemRoot()V

    #@a
    .line 152
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v0, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    #@10
    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;

    #@12
    .line 154
    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method static declared-synchronized getUserRoot()Ljava/util/prefs/Preferences;
    .locals 3

    #@0
    .prologue
    const-class v1, Ljava/util/prefs/FileSystemPreferences;

    #@2
    monitor-enter v1

    #@3
    .line 89
    :try_start_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 90
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->setupUserRoot()V

    #@a
    .line 91
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {v0, v2}, Ljava/util/prefs/FileSystemPreferences;-><init>(Z)V

    #@10
    sput-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    #@12
    .line 93
    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private initCacheIfNecessary()V
    .locals 2

    #@0
    .prologue
    .line 551
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 552
    return-void

    #@5
    .line 555
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 550
    :goto_0
    return-void

    #@9
    .line 556
    :catch_0
    move-exception v0

    #@a
    .line 558
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/TreeMap;

    #@c
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@f
    iput-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@11
    goto :goto_0
.end method

.method private static isDirChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 828
    const/16 v1, 0x1f

    #@3
    if-le p0, v1, :cond_0

    #@5
    const/16 v1, 0x7f

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/16 v1, 0x2f

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/16 v1, 0x2e

    #@f
    if-eq p0, v1, :cond_0

    #@11
    const/16 v1, 0x5f

    #@13
    if-eq p0, v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method

.method private loadCache()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 571
    new-instance v3, Ljava/util/TreeMap;

    #@3
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    #@6
    .line 572
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    #@8
    .line 574
    .local v4, "newLastSyncTime":J
    :try_start_0
    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@a
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v4

    #@e
    .line 575
    const/4 v1, 0x0

    #@f
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    #@11
    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@13
    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .line 576
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v2, v3}, Ljava/util/prefs/XmlSupport;->importMap(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@19
    .line 577
    if-eqz v2, :cond_0

    #@1b
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@1e
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    #@20
    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@21
    .line 578
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@22
    .line 579
    .local v0, "e":Ljava/lang/Exception;
    instance-of v6, v0, Ljava/util/prefs/InvalidPreferencesFormatException;

    #@24
    if-eqz v6, :cond_5

    #@26
    .line 580
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@29
    move-result-object v6

    #@2a
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v8, "Invalid preferences format in "

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    .line 581
    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@38
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    .line 580
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@47
    .line 582
    iget-object v6, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@49
    new-instance v7, Ljava/io/File;

    #@4b
    .line 583
    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@4d
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@50
    move-result-object v8

    #@51
    .line 584
    const-string/jumbo v9, "IncorrectFormatPrefs.xml"

    #@54
    .line 582
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@57
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@5a
    .line 585
    new-instance v3, Ljava/util/TreeMap;

    #@5c
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    #@5f
    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    iput-object v3, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@61
    .line 599
    iput-wide v4, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@63
    .line 570
    return-void

    #@64
    .line 577
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    #@65
    goto :goto_0

    #@66
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    #@67
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@68
    :catchall_0
    move-exception v7

    #@69
    move-object v10, v7

    #@6a
    move-object v7, v6

    #@6b
    move-object v6, v10

    #@6c
    :goto_3
    if-eqz v1, :cond_2

    #@6e
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@71
    :cond_2
    :goto_4
    if-eqz v7, :cond_4

    #@73
    :try_start_7
    throw v7

    #@74
    :catch_3
    move-exception v8

    #@75
    if-nez v7, :cond_3

    #@77
    move-object v7, v8

    #@78
    goto :goto_4

    #@79
    :cond_3
    if-eq v7, v8, :cond_2

    #@7b
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@7e
    goto :goto_4

    #@7f
    :cond_4
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    #@80
    .line 586
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    instance-of v6, v0, Ljava/io/FileNotFoundException;

    #@82
    if-eqz v6, :cond_6

    #@84
    .line 587
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@87
    move-result-object v6

    #@88
    new-instance v7, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v8, "Prefs file removed in background "

    #@90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    .line 588
    iget-object v8, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@96
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@a5
    goto :goto_1

    #@a6
    .line 592
    :cond_6
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@a9
    move-result-object v6

    #@aa
    new-instance v7, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v8, "Exception while reading cache: "

    #@b2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    .line 592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v7

    #@be
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@c5
    .line 594
    new-instance v6, Ljava/util/prefs/BackingStoreException;

    #@c7
    invoke-direct {v6, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    #@ca
    throw v6

    #@cb
    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    #@cc
    goto :goto_3

    #@cd
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    #@ce
    move-object v1, v2

    #@cf
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    #@d0
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    #@d1
    move-object v1, v2

    #@d2
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private lockFile(Z)Z
    .locals 14
    .param p1, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 884
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@5
    move-result v7

    #@6
    .line 886
    .local v7, "usernode":Z
    const/4 v2, 0x0

    #@7
    .line 887
    .local v2, "errorCode":I
    if-eqz v7, :cond_0

    #@9
    sget-object v4, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    #@b
    .line 888
    .local v4, "lockFile":Ljava/io/File;
    :goto_0
    sget v10, Ljava/util/prefs/FileSystemPreferences;->INIT_SLEEP_TIME:I

    #@d
    int-to-long v8, v10

    #@e
    .line 889
    .local v8, "sleepTime":J
    const/4 v3, 0x0

    #@f
    .local v3, "i":I
    :goto_1
    sget v10, Ljava/util/prefs/FileSystemPreferences;->MAX_ATTEMPTS:I

    #@11
    if-ge v3, v10, :cond_4

    #@13
    .line 891
    if-eqz v7, :cond_1

    #@15
    const/16 v5, 0x180

    #@17
    .line 892
    .local v5, "perm":I
    :goto_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@1a
    move-result-object v10

    #@1b
    invoke-static {v10, v5, p1}, Ljava/util/prefs/FileSystemPreferences;->lockFile0(Ljava/lang/String;IZ)[I

    #@1e
    move-result-object v6

    #@1f
    .line 894
    .local v6, "result":[I
    const/4 v10, 0x1

    #@20
    aget v2, v6, v10

    #@22
    .line 895
    const/4 v10, 0x0

    #@23
    aget v10, v6, v10

    #@25
    if-eqz v10, :cond_3

    #@27
    .line 896
    if-eqz v7, :cond_2

    #@29
    .line 897
    const/4 v10, 0x0

    #@2a
    aget v10, v6, v10

    #@2c
    sput v10, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 901
    :goto_3
    return v13

    #@2f
    .line 887
    .end local v3    # "i":I
    .end local v4    # "lockFile":Ljava/io/File;
    .end local v5    # "perm":I
    .end local v6    # "result":[I
    .end local v8    # "sleepTime":J
    :cond_0
    sget-object v4, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    #@31
    .restart local v4    # "lockFile":Ljava/io/File;
    goto :goto_0

    #@32
    .line 891
    .restart local v3    # "i":I
    .restart local v8    # "sleepTime":J
    :cond_1
    const/16 v5, 0x1a4

    #@34
    .restart local v5    # "perm":I
    goto :goto_2

    #@35
    .line 899
    .restart local v6    # "result":[I
    :cond_2
    const/4 v10, 0x0

    #@36
    :try_start_1
    aget v10, v6, v10

    #@38
    sput v10, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@3a
    goto :goto_3

    #@3b
    .line 903
    .end local v6    # "result":[I
    :catch_0
    move-exception v0

    #@3c
    .line 908
    :cond_3
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    #@3f
    .line 913
    const-wide/16 v10, 0x2

    #@41
    mul-long/2addr v8, v10

    #@42
    .line 889
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_1

    #@45
    .line 909
    :catch_1
    move-exception v1

    #@46
    .line 910
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v2}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    #@49
    .line 911
    return v12

    #@4a
    .line 915
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "perm":I
    :cond_4
    invoke-direct {p0, v2}, Ljava/util/prefs/FileSystemPreferences;->checkLockFile0ErrorCode(I)V

    #@4d
    .line 916
    return v12
.end method

.method private static native lockFile0(Ljava/lang/String;IZ)[I
.end method

.method private static nodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 864
    const/4 v6, 0x0

    #@1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v6

    #@5
    const/16 v7, 0x5f

    #@7
    if-eq v6, v7, :cond_0

    #@9
    .line 865
    return-object p0

    #@a
    .line 866
    :cond_0
    const/4 v6, 0x1

    #@b
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-static {v6}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    #@12
    move-result-object v0

    #@13
    .line 867
    .local v0, "a":[B
    new-instance v5, Ljava/lang/StringBuffer;

    #@15
    array-length v6, v0

    #@16
    div-int/lit8 v6, v6, 0x2

    #@18
    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1b
    .line 868
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    array-length v6, v0

    #@1d
    if-ge v2, v6, :cond_1

    #@1f
    .line 869
    add-int/lit8 v3, v2, 0x1

    #@21
    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v6, v0, v2

    #@23
    and-int/lit16 v1, v6, 0xff

    #@25
    .line 870
    .local v1, "highByte":I
    add-int/lit8 v2, v3, 0x1

    #@27
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v3

    #@29
    and-int/lit16 v4, v6, 0xff

    #@2b
    .line 871
    .local v4, "lowByte":I
    shl-int/lit8 v6, v1, 0x8

    #@2d
    or-int/2addr v6, v4

    #@2e
    int-to-char v6, v6

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@32
    goto :goto_0

    #@33
    .line 873
    .end local v1    # "highByte":I
    .end local v4    # "lowByte":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    return-object v6
.end method

.method private replayChanges()V
    .locals 3

    #@0
    .prologue
    .line 417
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 418
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@b
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/util/prefs/FileSystemPreferences$Change;

    #@11
    invoke-virtual {v2}, Ljava/util/prefs/FileSystemPreferences$Change;->replay()V

    #@14
    .line 417
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 416
    :cond_0
    return-void
.end method

.method private static setupSystemRoot()V
    .locals 1

    #@0
    .prologue
    .line 158
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$3;

    #@2
    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$3;-><init>()V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 157
    return-void
.end method

.method private static setupUserRoot()V
    .locals 1

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$2;

    #@2
    invoke-direct {v0}, Ljava/util/prefs/FileSystemPreferences$2;-><init>()V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 96
    return-void
.end method

.method private syncSpiPrivileged()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 770
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 771
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "Node has been removed"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 772
    :cond_0
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@11
    if-nez v2, :cond_1

    #@13
    .line 773
    return-void

    #@14
    .line 775
    :cond_1
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_5

    #@1a
    sget-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isUserRootModified:Z

    #@1c
    :goto_0
    if-eqz v2, :cond_6

    #@1e
    .line 776
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@20
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    #@23
    move-result-wide v0

    #@24
    .line 777
    .local v0, "lastModifiedTime":J
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@26
    cmp-long v2, v0, v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 780
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->loadCache()V

    #@2d
    .line 781
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    #@30
    .line 782
    iput-wide v0, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@32
    .line 790
    .end local v0    # "lastModifiedTime":J
    :cond_2
    :goto_1
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_4

    #@3a
    .line 791
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V

    #@3d
    .line 797
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@3f
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    #@42
    move-result-wide v0

    #@43
    .line 803
    .restart local v0    # "lastModifiedTime":J
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@45
    cmp-long v2, v2, v0

    #@47
    if-gtz v2, :cond_3

    #@49
    .line 804
    const-wide/16 v2, 0x3e8

    #@4b
    add-long/2addr v2, v0

    #@4c
    iput-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@4e
    .line 805
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsFile:Ljava/io/File;

    #@50
    iget-wide v4, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@52
    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    #@55
    .line 807
    :cond_3
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@57
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@5a
    .line 769
    .end local v0    # "lastModifiedTime":J
    :cond_4
    return-void

    #@5b
    .line 775
    :cond_5
    sget-boolean v2, Ljava/util/prefs/FileSystemPreferences;->isSystemRootModified:Z

    #@5d
    goto :goto_0

    #@5e
    .line 784
    :cond_6
    iget-wide v2, p0, Ljava/util/prefs/FileSystemPreferences;->lastSyncTime:J

    #@60
    const-wide/16 v4, 0x0

    #@62
    cmp-long v2, v2, v4

    #@64
    if-eqz v2, :cond_2

    #@66
    iget-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->dir:Ljava/io/File;

    #@68
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@6b
    move-result v2

    #@6c
    if-nez v2, :cond_2

    #@6e
    .line 787
    new-instance v2, Ljava/util/TreeMap;

    #@70
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    #@73
    iput-object v2, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@75
    .line 788
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->replayChanges()V

    #@78
    goto :goto_1
.end method

.method private static syncWorld()V
    .locals 6

    #@0
    .prologue
    .line 437
    const-class v4, Ljava/util/prefs/FileSystemPreferences;

    #@2
    monitor-enter v4

    #@3
    .line 438
    :try_start_0
    sget-object v2, Ljava/util/prefs/FileSystemPreferences;->userRoot:Ljava/util/prefs/Preferences;

    #@5
    .line 439
    .local v2, "userRt":Ljava/util/prefs/Preferences;
    sget-object v1, Ljava/util/prefs/FileSystemPreferences;->systemRoot:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .local v1, "systemRt":Ljava/util/prefs/Preferences;
    monitor-exit v4

    #@8
    .line 443
    if-eqz v2, :cond_0

    #@a
    .line 444
    :try_start_1
    invoke-virtual {v2}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_1
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_1 .. :try_end_1} :catch_0

    #@d
    .line 450
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@f
    .line 451
    :try_start_2
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_2
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_2 .. :try_end_2} :catch_1

    #@12
    .line 430
    :cond_1
    :goto_1
    return-void

    #@13
    .line 437
    .end local v1    # "systemRt":Ljava/util/prefs/Preferences;
    :catchall_0
    move-exception v3

    #@14
    monitor-exit v4

    #@15
    throw v3

    #@16
    .line 445
    .restart local v1    # "systemRt":Ljava/util/prefs/Preferences;
    :catch_0
    move-exception v0

    #@17
    .line 446
    .local v0, "e":Ljava/util/prefs/BackingStoreException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@1a
    move-result-object v3

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Couldn\'t flush user prefs: "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@32
    goto :goto_0

    #@33
    .line 452
    .end local v0    # "e":Ljava/util/prefs/BackingStoreException;
    :catch_1
    move-exception v0

    #@34
    .line 453
    .restart local v0    # "e":Ljava/util/prefs/BackingStoreException;
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@37
    move-result-object v3

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "Couldn\'t flush system prefs: "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@4f
    goto :goto_1
.end method

.method private unlockFile()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 972
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@4
    move-result v3

    #@5
    .line 973
    .local v3, "usernode":Z
    if-eqz v3, :cond_0

    #@7
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    #@9
    .line 974
    .local v0, "lockFile":Ljava/io/File;
    :goto_0
    if-eqz v3, :cond_1

    #@b
    sget v1, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    #@d
    .line 975
    .local v1, "lockHandle":I
    :goto_1
    if-nez v1, :cond_3

    #@f
    .line 976
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@12
    move-result-object v5

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Unlock: zero lockHandle for "

    #@1b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    .line 977
    if-eqz v3, :cond_2

    #@21
    const-string/jumbo v4, "user"

    #@24
    .line 976
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 977
    const-string/jumbo v6, " preferences.)"

    #@2b
    .line 976
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v5, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@36
    .line 978
    return-void

    #@37
    .line 973
    .end local v0    # "lockFile":Ljava/io/File;
    .end local v1    # "lockHandle":I
    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    #@39
    .restart local v0    # "lockFile":Ljava/io/File;
    goto :goto_0

    #@3a
    .line 974
    :cond_1
    sget v1, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    #@3c
    goto :goto_1

    #@3d
    .line 977
    .restart local v1    # "lockHandle":I
    :cond_2
    const-string/jumbo v4, "system"

    #@40
    goto :goto_2

    #@41
    .line 980
    :cond_3
    invoke-static {v1}, Ljava/util/prefs/FileSystemPreferences;->unlockFile0(I)I

    #@44
    move-result v2

    #@45
    .line 981
    .local v2, "result":I
    if-eqz v2, :cond_6

    #@47
    .line 982
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->getLogger()Lsun/util/logging/PlatformLogger;

    #@4a
    move-result-object v5

    #@4b
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "Could not drop file-lock on "

    #@53
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    .line 983
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_4

    #@5d
    const-string/jumbo v4, "user"

    #@60
    .line 982
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 983
    const-string/jumbo v6, " preferences."

    #@67
    .line 982
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 984
    const-string/jumbo v6, " Unix error code "

    #@6e
    .line 982
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 984
    const-string/jumbo v6, "."

    #@79
    .line 982
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v5, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    #@84
    .line 985
    const/16 v4, 0xd

    #@86
    if-ne v2, v4, :cond_6

    #@88
    .line 986
    new-instance v5, Ljava/lang/SecurityException;

    #@8a
    new-instance v4, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v6, "Could not unlock"

    #@92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    .line 987
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@99
    move-result v4

    #@9a
    if-eqz v4, :cond_5

    #@9c
    const-string/jumbo v4, "User prefs."

    #@9f
    .line 986
    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v4

    #@a3
    .line 988
    const-string/jumbo v6, " Lock file access denied."

    #@a6
    .line 986
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v5

    #@b2
    .line 983
    :cond_4
    const-string/jumbo v4, "system"

    #@b5
    goto :goto_3

    #@b6
    .line 987
    :cond_5
    const-string/jumbo v4, "System prefs."

    #@b9
    goto :goto_4

    #@ba
    .line 990
    :cond_6
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@bd
    move-result v4

    #@be
    if-eqz v4, :cond_7

    #@c0
    .line 991
    sput v7, Ljava/util/prefs/FileSystemPreferences;->userRootLockHandle:I

    #@c2
    .line 970
    :goto_5
    return-void

    #@c3
    .line 993
    :cond_7
    sput v7, Ljava/util/prefs/FileSystemPreferences;->systemRootLockHandle:I

    #@c5
    goto :goto_5
.end method

.method private static native unlockFile0(I)I
.end method

.method private writeBackCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    :try_start_0
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$5;

    #@2
    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$5;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    #@5
    .line 613
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 611
    return-void

    #@9
    .line 634
    :catch_0
    move-exception v0

    #@a
    .line 635
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/util/prefs/BackingStoreException;

    #@10
    throw v1
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 663
    new-instance v0, Ljava/util/prefs/FileSystemPreferences;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FileSystemPreferences;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 646
    new-instance v0, Ljava/util/prefs/FileSystemPreferences$6;

    #@2
    invoke-direct {v0, p0}, Ljava/util/prefs/FileSystemPreferences$6;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    #@5
    .line 645
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isRemoved()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 813
    return-void

    #@7
    .line 814
    :cond_0
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->sync()V

    #@a
    .line 811
    return-void
.end method

.method protected flushSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 817
    return-void
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 532
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    #@3
    .line 533
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public isUserNode()Z
    .locals 1

    #@0
    .prologue
    .line 522
    iget-boolean v0, p0, Ljava/util/prefs/FileSystemPreferences;->isUserNode:Z

    #@2
    return v0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 640
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    #@3
    .line 641
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@b
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@e
    move-result v1

    #@f
    new-array v1, v1, [Ljava/lang/String;

    #@11
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, [Ljava/lang/String;

    #@17
    return-object v0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 526
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    #@3
    .line 527
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@5
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Put;

    #@7
    invoke-direct {v1, p0, p1, p2}, Ljava/util/prefs/FileSystemPreferences$Put;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 528
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 525
    return-void
.end method

.method public removeNode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    #@8
    :goto_0
    monitor-enter v0

    #@9
    .line 669
    const/4 v1, 0x0

    #@a
    :try_start_0
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 670
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    #@12
    const-string/jumbo v2, "Couldn\'t get file lock."

    #@15
    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 667
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v0

    #@1b
    throw v1

    #@1c
    :cond_0
    sget-object v0, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;

    #@1e
    goto :goto_0

    #@1f
    .line 672
    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->removeNode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@22
    .line 674
    :try_start_2
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    monitor-exit v0

    #@26
    .line 666
    return-void

    #@27
    .line 673
    :catchall_1
    move-exception v1

    #@28
    .line 674
    :try_start_3
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    #@2b
    .line 673
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected removeNodeSpi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    :try_start_0
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$7;

    #@2
    invoke-direct {v1, p0}, Ljava/util/prefs/FileSystemPreferences$7;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    #@5
    .line 684
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 682
    return-void

    #@9
    .line 711
    :catch_0
    move-exception v0

    #@a
    .line 712
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/util/prefs/BackingStoreException;

    #@10
    throw v1
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 537
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->initCacheIfNecessary()V

    #@3
    .line 538
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->changeLog:Ljava/util/List;

    #@5
    new-instance v1, Ljava/util/prefs/FileSystemPreferences$Remove;

    #@7
    invoke-direct {v1, p0, p1}, Ljava/util/prefs/FileSystemPreferences$Remove;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/String;)V

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 539
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences;->prefsCache:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 536
    return-void
.end method

.method public declared-synchronized sync()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 717
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@4
    move-result v2

    #@5
    .line 720
    .local v2, "userNode":Z
    if-eqz v2, :cond_0

    #@7
    .line 721
    const/4 v1, 0x0

    #@8
    .line 727
    .local v1, "shared":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    sget-object v3, Ljava/util/prefs/FileSystemPreferences;->userLockFile:Ljava/io/File;

    #@10
    move-object v4, v3

    #@11
    :goto_1
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 728
    :try_start_1
    invoke-direct {p0, v1}, Ljava/util/prefs/FileSystemPreferences;->lockFile(Z)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_3

    #@18
    .line 729
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    #@1a
    const-string/jumbo v5, "Couldn\'t get file lock."

    #@1d
    invoke-direct {v3, v5}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@20
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .line 727
    :catchall_0
    move-exception v3

    #@22
    :try_start_2
    monitor-exit v4

    #@23
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .end local v1    # "shared":Z
    .end local v2    # "userNode":Z
    :catchall_1
    move-exception v3

    #@25
    monitor-exit p0

    #@26
    throw v3

    #@27
    .line 725
    .restart local v2    # "userNode":Z
    :cond_0
    :try_start_3
    sget-boolean v3, Ljava/util/prefs/FileSystemPreferences;->isSystemRootWritable:Z

    #@29
    if-eqz v3, :cond_1

    #@2b
    const/4 v1, 0x0

    #@2c
    .restart local v1    # "shared":Z
    goto :goto_0

    #@2d
    .end local v1    # "shared":Z
    :cond_1
    const/4 v1, 0x1

    #@2e
    .restart local v1    # "shared":Z
    goto :goto_0

    #@2f
    .line 727
    :cond_2
    sget-object v3, Ljava/util/prefs/FileSystemPreferences;->systemLockFile:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@31
    move-object v4, v3

    #@32
    goto :goto_1

    #@33
    .line 732
    :cond_3
    :try_start_4
    new-instance v3, Ljava/util/prefs/FileSystemPreferences$8;

    #@35
    invoke-direct {v3, p0}, Ljava/util/prefs/FileSystemPreferences$8;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    #@38
    .line 731
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    .line 746
    .local v0, "newModTime":Ljava/lang/Long;
    :try_start_5
    invoke-super {p0}, Ljava/util/prefs/AbstractPreferences;->sync()V

    #@41
    .line 747
    new-instance v3, Ljava/util/prefs/FileSystemPreferences$9;

    #@43
    invoke-direct {v3, p0, v0}, Ljava/util/prefs/FileSystemPreferences$9;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V

    #@46
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@49
    .line 760
    :try_start_6
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@4c
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@4d
    monitor-exit p0

    #@4e
    .line 716
    return-void

    #@4f
    .line 759
    :catchall_2
    move-exception v3

    #@50
    .line 760
    :try_start_8
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->unlockFile()V

    #@53
    .line 759
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 766
    invoke-direct {p0}, Ljava/util/prefs/FileSystemPreferences;->syncSpiPrivileged()V

    #@3
    .line 765
    return-void
.end method
