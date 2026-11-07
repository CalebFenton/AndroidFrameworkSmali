.class public Lsun/misc/URLClassPath;
.super Ljava/lang/Object;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/URLClassPath$Loader;,
        Lsun/misc/URLClassPath$FileLoader;,
        Lsun/misc/URLClassPath$JarLoader;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o DEBUG_LOOKUP_CACHE:Z

.field private static final greylist-max-o DISABLE_ACC_CHECKING:Z

.field private static final greylist-max-o DISABLE_JAR_CHECKING:Z

.field static final greylist-max-o JAVA_VERSION:Ljava/lang/String;

.field static final greylist-max-o USER_AGENT_JAVA_VERSION:Ljava/lang/String; = "UA-Java-Version"

.field private static volatile greylist-max-o lookupCacheEnabled:Z


# instance fields
.field private final greylist-max-o acc:Ljava/security/AccessControlContext;

.field private greylist-max-o closed:Z

.field private greylist-max-o jarHandler:Ljava/net/URLStreamHandler;

.field greylist lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field greylist loaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o lookupCacheLoader:Ljava/lang/ClassLoader;

.field private greylist-max-o lookupCacheURLs:[Ljava/net/URL;

.field private greylist-max-o path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field greylist urls:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetacc(Lsun/misc/URLClassPath;)Ljava/security/AccessControlContext;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetjarHandler(Lsun/misc/URLClassPath;)Ljava/net/URLStreamHandler;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLookupCache(Lsun/misc/URLClassPath;Ljava/lang/String;)[I
    .registers 2

    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCache(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextLoader(Lsun/misc/URLClassPath;[II)Lsun/misc/URLClassPath$Loader;
    .registers 3

    invoke-direct {p0, p1, p2}, Lsun/misc/URLClassPath;->getNextLoader([II)Lsun/misc/URLClassPath$Loader;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDISABLE_JAR_CHECKING()Z
    .registers 1

    sget-boolean v0, Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 74
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.version"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    .line 76
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.misc.URLClassPath.debug"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    sput-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    .line 78
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v3, "sun.misc.URLClassPath.debugLookupCache"

    invoke-direct {v0, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    sput-boolean v0, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    .line 80
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v3, "sun.misc.URLClassPath.disableJarChecking"

    invoke-direct {v0, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "p":Ljava/lang/String;
    const-string v3, ""

    const-string v4, "true"

    if-eqz v0, :cond_56

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    :cond_54
    move v5, v1

    goto :goto_57

    :cond_56
    move v5, v2

    :goto_57
    sput-boolean v5, Lsun/misc/URLClassPath;->DISABLE_JAR_CHECKING:Z

    .line 84
    new-instance v5, Lsun/security/action/GetPropertyAction;

    const-string v6, "jdk.net.URLClassPath.disableRestrictedPermissions"

    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v0, :cond_76

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_75
    goto :goto_77

    :cond_76
    move v1, v2

    :goto_77
    sput-boolean v1, Lsun/misc/URLClassPath;->DISABLE_ACC_CHECKING:Z

    .line 343
    .end local v0    # "p":Ljava/lang/String;
    sput-boolean v2, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>([Ljava/net/URL;)V
    .registers 3
    .param p1, "urls"    # [Ljava/net/URL;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V

    .line 146
    return-void
.end method

.method public constructor blacklist <init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V
    .registers 7
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "factory"    # Ljava/net/URLStreamHandlerFactory;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    array-length v1, p1

    if-ge v0, v1, :cond_30

    .line 128
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 130
    .end local v0    # "i":I
    :cond_30
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V

    .line 131
    if-eqz p2, :cond_3d

    .line 132
    const-string v0, "jar"

    invoke-interface {p2, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath;->jarHandler:Ljava/net/URLStreamHandler;

    .line 134
    :cond_3d
    sget-boolean v0, Lsun/misc/URLClassPath;->DISABLE_ACC_CHECKING:Z

    if-eqz v0, :cond_45

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    goto :goto_47

    .line 137
    :cond_45
    iput-object p3, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    .line 138
    :goto_47
    return-void
.end method

.method public constructor blacklist <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .registers 4
    .param p1, "urls"    # [Ljava/net/URL;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/misc/URLClassPath;-><init>([Ljava/net/URL;Ljava/net/URLStreamHandlerFactory;Ljava/security/AccessControlContext;)V

    .line 150
    return-void
.end method

.method static greylist-max-o check(Ljava/net/URL;)V
    .registers 8
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 656
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_57

    .line 657
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 658
    .local v1, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v2

    .line 659
    .local v2, "perm":Ljava/security/Permission;
    if-eqz v2, :cond_57

    .line 661
    :try_start_10
    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 680
    goto :goto_57

    .line 662
    :catch_14
    move-exception v3

    .line 665
    .local v3, "se":Ljava/lang/SecurityException;
    instance-of v4, v2, Ljava/io/FilePermission;

    const/4 v5, -0x1

    if-eqz v4, :cond_2e

    .line 666
    invoke-virtual {v2}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string v6, "read"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_2e

    .line 667
    invoke-virtual {v2}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    goto :goto_57

    .line 668
    :cond_2e
    instance-of v4, v2, Ljava/net/SocketPermission;

    if-eqz v4, :cond_56

    .line 670
    invoke-virtual {v2}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v4

    const-string v6, "connect"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_56

    .line 671
    move-object v4, p0

    .line 672
    .local v4, "locUrl":Ljava/net/URL;
    instance-of v5, v1, Ljava/net/JarURLConnection;

    if-eqz v5, :cond_4a

    .line 673
    move-object v5, v1

    check-cast v5, Ljava/net/JarURLConnection;

    invoke-virtual {v5}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v4

    .line 675
    :cond_4a
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 676
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 675
    invoke-virtual {v0, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 677
    .end local v4    # "locUrl":Ljava/net/URL;
    goto :goto_57

    .line 678
    :cond_56
    throw v3

    .line 683
    .end local v1    # "urlConnection":Ljava/net/URLConnection;
    .end local v2    # "perm":Ljava/security/Permission;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :cond_57
    :goto_57
    return-void
.end method

.method static greylist-max-o disableAllLookupCaches()V
    .registers 1

    .line 360
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    .line 361
    return-void
.end method

.method private greylist-max-o ensureLoaderOpened(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 435
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_41

    .line 437
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 438
    return v1

    .line 440
    :cond_10
    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-nez v0, :cond_15

    .line 442
    return v1

    .line 444
    :cond_15
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v0, :cond_41

    .line 445
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanded loaders "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    :cond_41
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized greylist-max-o getLoader(I)Lsun/misc/URLClassPath$Loader;
    .registers 9
    .param p1, "index"    # I

    monitor-enter p0

    .line 513
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_ae

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 514
    monitor-exit p0

    return-object v1

    .line 518
    :cond_8
    :goto_8
    :try_start_8
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-ge v0, v2, :cond_88

    .line 521
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_ae

    .line 522
    :try_start_15
    iget-object v2, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_85

    if-eqz v2, :cond_22

    .line 523
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v1

    .line 527
    :catchall_20
    move-exception v1

    goto :goto_86

    .line 525
    :cond_22
    :try_start_22
    iget-object v2, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 527
    .local v2, "url":Ljava/net/URL;
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_85

    .line 531
    :try_start_2b
    invoke-static {v2}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "urlNoFragString":Ljava/lang/String;
    iget-object v3, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_ae

    if-eqz v3, :cond_38

    .line 533
    goto :goto_8

    .line 538
    :cond_38
    :try_start_38
    invoke-direct {p0, v2}, Lsun/misc/URLClassPath;->getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;

    move-result-object v3

    .line 541
    .local v3, "loader":Lsun/misc/URLClassPath$Loader;
    invoke-virtual {v3}, Lsun/misc/URLClassPath$Loader;->getClassPath()[Ljava/net/URL;

    move-result-object v4

    .line 542
    .local v4, "urls":[Ljava/net/URL;
    if-eqz v4, :cond_45

    .line 543
    invoke-direct {p0, v4}, Lsun/misc/URLClassPath;->push([Ljava/net/URL;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_45} :catch_83
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_45} :catch_5b
    .catchall {:try_start_38 .. :try_end_45} :catchall_ae

    .line 556
    .end local v4    # "urls":[Ljava/net/URL;
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_45
    nop

    .line 558
    :try_start_46
    iget-object v4, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v4, v0}, Lsun/misc/URLClassPath;->validateLookupCache(ILjava/lang/String;)V

    .line 559
    iget-object v4, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v4, p0, Lsun/misc/URLClassPath;->lmap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    nop

    .end local v0    # "urlNoFragString":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "loader":Lsun/misc/URLClassPath$Loader;
    goto :goto_8

    .line 548
    .restart local v0    # "urlNoFragString":Ljava/lang/String;
    .restart local v2    # "url":Ljava/net/URL;
    :catch_5b
    move-exception v3

    .line 552
    .local v3, "se":Ljava/lang/SecurityException;
    sget-boolean v4, Lsun/misc/URLClassPath;->DEBUG:Z

    if-eqz v4, :cond_82

    .line 553
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to access "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_46 .. :try_end_82} :catchall_ae

    .line 555
    :cond_82
    goto :goto_8

    .line 545
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catch_83
    move-exception v3

    .line 547
    .local v3, "e":Ljava/io/IOException;
    goto :goto_8

    .line 527
    .end local v0    # "urlNoFragString":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_85
    move-exception v1

    :goto_86
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v1

    .line 562
    :cond_88
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v0, :cond_a4

    .line 563
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOCACHE: Loading from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    :cond_a4
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$Loader;
    :try_end_ac
    .catchall {:try_start_87 .. :try_end_ac} :catchall_ae

    monitor-exit p0

    return-object v0

    .line 512
    .end local p1    # "index":I
    :catchall_ae
    move-exception p1

    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p1
.end method

.method private greylist-max-o getLoader(Ljava/net/URL;)Lsun/misc/URLClassPath$Loader;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    :try_start_0
    new-instance v0, Lsun/misc/URLClassPath$3;

    invoke-direct {v0, p0, p1}, Lsun/misc/URLClassPath$3;-><init>(Lsun/misc/URLClassPath;Ljava/net/URL;)V

    iget-object v1, p0, Lsun/misc/URLClassPath;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$Loader;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 588
    :catch_e
    move-exception v0

    .line 589
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private declared-synchronized greylist-max-o getLookupCache(Ljava/lang/String;)[I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-nez v0, :cond_b

    goto :goto_51

    .line 419
    :cond_b
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lsun/misc/URLClassPath;->getLookupCacheForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)[I

    move-result-object v0

    .line 420
    .local v0, "cache":[I
    if-eqz v0, :cond_4f

    array-length v2, v0

    if-lez v2, :cond_4f

    .line 421
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    .line 422
    .local v2, "maxindex":I
    invoke-direct {p0, v2}, Lsun/misc/URLClassPath;->ensureLoaderOpened(I)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 423
    sget-boolean v3, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v3, :cond_4d

    .line 424
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expanded loaders FAILED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for maxindex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_53

    .line 427
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_4d
    monitor-exit p0

    return-object v1

    .line 431
    .end local v2    # "maxindex":I
    :cond_4f
    monitor-exit p0

    return-object v0

    .line 416
    .end local v0    # "cache":[I
    :cond_51
    :goto_51
    monitor-exit p0

    return-object v1

    .line 414
    .end local p1    # "name":Ljava/lang/String;
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method private static greylist-max-o getLookupCacheForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)[I
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getLookupCacheURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized greylist-max-o getNextLoader([II)Lsun/misc/URLClassPath$Loader;
    .registers 7
    .param p1, "cache"    # [I
    .param p2, "index"    # I

    monitor-enter p0

    .line 488
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4d

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 489
    monitor-exit p0

    return-object v1

    .line 491
    :cond_8
    if-eqz p1, :cond_47

    .line 492
    :try_start_a
    array-length v0, p1

    if-ge p2, v0, :cond_45

    .line 493
    iget-object v0, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    aget v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/URLClassPath$Loader;

    .line 494
    .local v0, "loader":Lsun/misc/URLClassPath$Loader;
    sget-boolean v1, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v1, :cond_43

    .line 495
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HASCACHE: Loading from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    invoke-virtual {v0}, Lsun/misc/URLClassPath$Loader;->getBaseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_4d

    .line 498
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_43
    monitor-exit p0

    return-object v0

    .line 500
    .end local v0    # "loader":Lsun/misc/URLClassPath$Loader;
    :cond_45
    monitor-exit p0

    return-object v1

    .line 503
    :cond_47
    :try_start_47
    invoke-direct {p0, p2}, Lsun/misc/URLClassPath;->getLoader(I)Lsun/misc/URLClassPath$Loader;

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v0

    .line 487
    .end local p1    # "cache":[I
    .end local p2    # "index":I
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method private static greylist-max-o knownToNotExist0(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist pathToURLs(Ljava/lang/String;)[Ljava/net/URL;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 611
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    .line 613
    .local v1, "urls":[Ljava/net/URL;
    const/4 v2, 0x0

    .line 614
    .local v2, "count":I
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 615
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, "f":Ljava/io/File;
    :try_start_1d
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_28

    move-object v3, v4

    .line 620
    goto :goto_29

    .line 618
    :catch_28
    move-exception v4

    .line 622
    :goto_29
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    :try_start_2b
    invoke-static {v3}, Lsun/net/www/ParseUtil;->fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v5

    aput-object v5, v1, v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_33

    .line 623
    :catch_32
    move-exception v2

    :goto_33
    nop

    .line 624
    .end local v3    # "f":Ljava/io/File;
    move v2, v4

    goto :goto_e

    .line 626
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_36
    array-length v3, v1

    if-eq v3, v2, :cond_40

    .line 627
    new-array v3, v2, [Ljava/net/URL;

    .line 628
    .local v3, "tmp":[Ljava/net/URL;
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    move-object v1, v3

    .line 631
    .end local v3    # "tmp":[Ljava/net/URL;
    :cond_40
    return-object v1
.end method

.method private greylist-max-o push([Ljava/net/URL;)V
    .registers 6
    .param p1, "us"    # [Ljava/net/URL;

    .line 597
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v0

    .line 598
    :try_start_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 599
    iget-object v2, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 601
    .end local v1    # "i":I
    :cond_12
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private declared-synchronized greylist-max-o validateLookupCache(ILjava/lang/String;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "urlNoFragString"    # Ljava/lang/String;

    monitor-enter p0

    .line 461
    :try_start_1
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_41

    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-eqz v0, :cond_41

    .line 462
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    array-length v0, v0

    if-ge p1, v0, :cond_1e

    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    aget-object v0, v0, p1

    .line 464
    invoke-static {v0}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_43

    if-eqz v0, :cond_1e

    .line 465
    monitor-exit p0

    return-void

    .line 467
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_1e
    :try_start_1e
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    if-nez v0, :cond_26

    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG_LOOKUP_CACHE:Z

    if-eqz v0, :cond_3e

    .line 468
    :cond_26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: resource lookup cache invalidated for lookupCacheLoader at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    :cond_3e
    invoke-static {}, Lsun/misc/URLClassPath;->disableAllLookupCaches()V
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_43

    .line 473
    :cond_41
    monitor-exit p0

    return-void

    .line 460
    .end local p1    # "index":I
    .end local p2    # "urlNoFragString":Ljava/lang/String;
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addURL(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    monitor-enter p0

    .line 176
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-eqz v0, :cond_7

    .line 177
    monitor-exit p0

    return-void

    .line 178
    :cond_7
    :try_start_7
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_32

    .line 179
    if-eqz p1, :cond_2a

    :try_start_c
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2a

    .line 182
    :cond_15
    iget-object v1, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v1, :cond_27

    .line 188
    invoke-static {}, Lsun/misc/URLClassPath;->disableAllLookupCaches()V

    .line 190
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2d

    .line 191
    monitor-exit p0

    return-void

    .line 180
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    .line 190
    :catchall_2d
    move-exception v1

    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_30

    :try_start_2f
    throw v1

    .end local p0    # "this":Lsun/misc/URLClassPath;
    :catchall_30
    move-exception v1

    goto :goto_2e

    .line 175
    .end local p1    # "url":Ljava/net/URL;
    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist checkURL(Ljava/net/URL;)Ljava/net/URL;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;

    .line 641
    :try_start_0
    invoke-static {p1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 644
    nop

    .line 646
    return-object p1

    .line 642
    :catch_5
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized blacklist closeLoaders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_1
    iget-boolean v0, p0, Lsun/misc/URLClassPath;->closed:Z

    if-eqz v0, :cond_b

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_30

    monitor-exit p0

    return-object v0

    .line 156
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v1, p0, Lsun/misc/URLClassPath;->loaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/URLClassPath$Loader;
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_30

    .line 159
    .local v2, "loader":Lsun/misc/URLClassPath$Loader;
    :try_start_22
    invoke-virtual {v2}, Lsun/misc/URLClassPath$Loader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    .line 162
    goto :goto_2a

    .line 160
    :catch_26
    move-exception v3

    .line 161
    .local v3, "e":Ljava/io/IOException;
    :try_start_27
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2    # "loader":Lsun/misc/URLClassPath$Loader;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2a
    goto :goto_16

    .line 164
    :cond_2b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/misc/URLClassPath;->closed:Z
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_30

    .line 165
    monitor-exit p0

    return-object v0

    .line 152
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 213
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCache(Ljava/lang/String;)[I

    move-result-object v0

    .line 214
    .local v0, "cache":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-direct {p0, v0, v1}, Lsun/misc/URLClassPath;->getNextLoader([II)Lsun/misc/URLClassPath$Loader;

    move-result-object v2

    move-object v3, v2

    .local v3, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v2, :cond_16

    .line 215
    invoke-virtual {v3, p1, p2}, Lsun/misc/URLClassPath$Loader;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v2

    .line 216
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_13

    .line 217
    return-object v2

    .line 214
    .end local v2    # "url":Ljava/net/URL;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 220
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist findResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Lsun/misc/URLClassPath$1;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$1;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public blacklist getResource(Ljava/lang/String;)Lsun/misc/Resource;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 232
    sget-boolean v0, Lsun/misc/URLClassPath;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 233
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URLClassPath.getResource(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :cond_22
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCache(Ljava/lang/String;)[I

    move-result-object v0

    .line 238
    .local v0, "cache":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    invoke-direct {p0, v0, v1}, Lsun/misc/URLClassPath;->getNextLoader([II)Lsun/misc/URLClassPath$Loader;

    move-result-object v2

    move-object v3, v2

    .local v3, "loader":Lsun/misc/URLClassPath$Loader;
    if-eqz v2, :cond_38

    .line 239
    invoke-virtual {v3, p1, p2}, Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v2

    .line 240
    .local v2, "res":Lsun/misc/Resource;
    if-eqz v2, :cond_35

    .line 241
    return-object v2

    .line 238
    .end local v2    # "res":Lsun/misc/Resource;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 244
    .end local v1    # "i":I
    :cond_38
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Lsun/misc/Resource;",
            ">;"
        }
    .end annotation

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsun/misc/URLClassPath;->getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources(Ljava/lang/String;Z)Ljava/util/Enumeration;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Enumeration<",
            "Lsun/misc/Resource;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lsun/misc/URLClassPath$2;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/URLClassPath$2;-><init>(Lsun/misc/URLClassPath;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public blacklist getURLs()[Ljava/net/URL;
    .registers 4

    .line 197
    iget-object v0, p0, Lsun/misc/URLClassPath;->urls:Ljava/util/Stack;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    iget-object v2, p0, Lsun/misc/URLClassPath;->path:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/URL;

    monitor-exit v0

    return-object v1

    .line 199
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method declared-synchronized greylist-max-o initLookupCache(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    monitor-enter p0

    .line 351
    :try_start_1
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath;->getLookupCacheURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_c

    .line 352
    iput-object p1, p0, Lsun/misc/URLClassPath;->lookupCacheLoader:Ljava/lang/ClassLoader;

    goto :goto_f

    .line 355
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_c
    invoke-static {}, Lsun/misc/URLClassPath;->disableAllLookupCaches()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 357
    :goto_f
    monitor-exit p0

    return-void

    .line 350
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method declared-synchronized greylist-max-o knownToNotExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheURLs:[Ljava/net/URL;

    if-eqz v0, :cond_11

    sget-boolean v0, Lsun/misc/URLClassPath;->lookupCacheEnabled:Z

    if-eqz v0, :cond_11

    .line 388
    iget-object v0, p0, Lsun/misc/URLClassPath;->lookupCacheLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lsun/misc/URLClassPath;->knownToNotExist0(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    monitor-exit p0

    return v0

    .line 392
    .end local p0    # "this":Lsun/misc/URLClassPath;
    :cond_11
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 386
    .end local p1    # "className":Ljava/lang/String;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
