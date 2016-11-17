.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field static final SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

.field private static volatile logStream:Ljava/io/PrintStream;

.field private static final logSync:Ljava/lang/Object;

.field private static volatile logWriter:Ljava/io/PrintWriter;

.field private static volatile loginTimeout:I

.field private static final registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/sql/DriverInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@6
    sput-object v0, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    .line 89
    const/4 v0, 0x0

    #@9
    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    #@b
    .line 90
    sput-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@d
    .line 91
    sput-object v1, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    #@f
    .line 93
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    sput-object v0, Ljava/sql/DriverManager;->logSync:Ljava/lang/Object;

    #@16
    .line 104
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    #@19
    .line 105
    const-string/jumbo v0, "JDBC DriverManager initialized"

    #@1c
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@1f
    .line 114
    new-instance v0, Ljava/sql/SQLPermission;

    #@21
    const-string/jumbo v1, "setLog"

    #@24
    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    #@27
    .line 113
    sput-object v0, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    #@29
    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized deregisterDriver(Ljava/sql/Driver;)V
    .locals 4
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    const-class v2, Ljava/sql/DriverManager;

    #@2
    monitor-enter v2

    #@3
    .line 321
    if-nez p0, :cond_0

    #@5
    monitor-exit v2

    #@6
    .line 322
    return-void

    #@7
    .line 325
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "DriverManager.deregisterDriver: "

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@1e
    .line 327
    new-instance v0, Ljava/sql/DriverInfo;

    #@20
    invoke-direct {v0, p0}, Ljava/sql/DriverInfo;-><init>(Ljava/sql/Driver;)V

    #@23
    .line 328
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    sget-object v1, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@25
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 329
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {p0, v1}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 330
    sget-object v1, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@37
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    :goto_0
    monitor-exit v2

    #@3b
    .line 320
    return-void

    #@3c
    .line 334
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    #@3e
    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    #@41
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 337
    .restart local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_2
    :try_start_2
    const-string/jumbo v1, "    couldn\'t find driver to unload"

    #@48
    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_0
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 236
    new-instance v0, Ljava/util/Properties;

    #@2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@5
    .line 237
    .local v0, "info":Ljava/util/Properties;
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v1

    #@9
    invoke-static {p0, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 210
    new-instance v0, Ljava/util/Properties;

    #@2
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@5
    .line 212
    .local v0, "info":Ljava/util/Properties;
    if-eqz p1, :cond_0

    #@7
    .line 213
    const-string/jumbo v1, "user"

    #@a
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 215
    :cond_0
    if-eqz p2, :cond_1

    #@f
    .line 216
    const-string/jumbo v1, "password"

    #@12
    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 219
    :cond_1
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@18
    move-result-object v1

    #@19
    invoke-static {p0, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)Ljava/sql/Connection;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .param p2, "callerCL"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    const-class v6, Ljava/sql/DriverManager;

    #@2
    monitor-enter v6

    #@3
    .line 548
    if-nez p2, :cond_0

    #@5
    .line 549
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object p2

    #@d
    :cond_0
    monitor-exit v6

    #@e
    .line 553
    if-nez p0, :cond_1

    #@10
    .line 554
    new-instance v5, Ljava/sql/SQLException;

    #@12
    const-string/jumbo v6, "The url cannot be null"

    #@15
    const-string/jumbo v7, "08001"

    #@18
    invoke-direct {v5, v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    throw v5

    #@1c
    .line 546
    :catchall_0
    move-exception v5

    #@1d
    monitor-exit v6

    #@1e
    throw v5

    #@1f
    .line 557
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "DriverManager.getConnection(\""

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    const-string/jumbo v6, "\")"

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@3d
    .line 561
    const/4 v4, 0x0

    #@3e
    .line 563
    .local v4, "reason":Ljava/sql/SQLException;
    sget-object v5, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@40
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v1

    #@44
    .end local v4    # "reason":Ljava/sql/SQLException;
    .local v1, "aDriver$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_4

    #@4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Ljava/sql/DriverInfo;

    #@50
    .line 566
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@52
    invoke-static {v5, p2}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_3

    #@58
    .line 568
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v6, "    trying "

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    iget-object v6, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@66
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@79
    .line 569
    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@7b
    invoke-interface {v5, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    #@7e
    move-result-object v2

    #@7f
    .line 570
    .local v2, "con":Ljava/sql/Connection;
    if-eqz v2, :cond_2

    #@81
    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v6, "getConnection returning "

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    iget-object v6, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@8f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v5

    #@9f
    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    #@a2
    .line 573
    return-object v2

    #@a3
    .line 575
    .end local v2    # "con":Ljava/sql/Connection;
    :catch_0
    move-exception v3

    #@a4
    .line 576
    .local v3, "ex":Ljava/sql/SQLException;
    if-nez v4, :cond_2

    #@a6
    .line 577
    move-object v4, v3

    #@a7
    .local v4, "reason":Ljava/sql/SQLException;
    goto :goto_0

    #@a8
    .line 582
    .end local v3    # "ex":Ljava/sql/SQLException;
    .end local v4    # "reason":Ljava/sql/SQLException;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v6, "    skipping: "

    #@b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b7
    move-result-object v6

    #@b8
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v5

    #@c4
    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 588
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_4
    if-eqz v4, :cond_5

    #@cb
    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v6, "getConnection failed: "

    #@d3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v5

    #@d7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v5

    #@db
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v5

    #@df
    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@e2
    .line 590
    throw v4

    #@e3
    .line 593
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v6, "getConnection: no suitable driver found for "

    #@eb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@fa
    .line 594
    new-instance v5, Ljava/sql/SQLException;

    #@fc
    new-instance v6, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v7, "No suitable driver found for "

    #@104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v6

    #@108
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v6

    #@10c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v6

    #@110
    const-string/jumbo v7, "08001"

    #@113
    invoke-direct {v5, v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@116
    throw v5
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "DriverManager.getDriver(\""

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    const-string/jumbo v5, "\")"

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@1e
    .line 257
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@21
    move-result-object v2

    #@22
    .line 261
    .local v2, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "aDriver$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/sql/DriverInfo;

    #@34
    .line 264
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@36
    invoke-static {v4, v2}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_1

    #@3c
    .line 266
    :try_start_0
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@3e
    invoke-interface {v4, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "getDriver returning "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@65
    .line 269
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    return-object v4

    #@68
    .line 276
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v5, "    skipping: "

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    iget-object v5, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@89
    goto :goto_0

    #@8a
    .line 281
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_2
    const-string/jumbo v4, "getDriver: no suitable driver"

    #@8d
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@90
    .line 282
    new-instance v4, Ljava/sql/SQLException;

    #@92
    const-string/jumbo v5, "No suitable driver"

    #@95
    const-string/jumbo v6, "08001"

    #@98
    invoke-direct {v4, v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9b
    throw v4

    #@9c
    .line 272
    .restart local v0    # "aDriver":Ljava/sql/DriverInfo;
    :catch_0
    move-exception v3

    #@9d
    .local v3, "sqe":Ljava/sql/SQLException;
    goto :goto_0
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 352
    new-instance v3, Ljava/util/Vector;

    #@2
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@5
    .line 354
    .local v3, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/sql/Driver;>;"
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v2

    #@9
    .line 357
    .local v2, "callerClassLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "aDriver$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/sql/DriverInfo;

    #@1b
    .line 360
    .local v0, "aDriver":Ljava/sql/DriverInfo;
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@1d
    invoke-static {v4, v2}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 361
    iget-object v4, v0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@25
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@28
    goto :goto_0

    #@29
    .line 363
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "    skipping: "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 366
    .end local v0    # "aDriver":Ljava/sql/DriverInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@4c
    move-result-object v4

    #@4d
    return-object v4
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 436
    sget-object v0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    #@2
    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    #@0
    .prologue
    .line 129
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@2
    return-object v0
.end method

.method public static getLoginTimeout()I
    .locals 1

    #@0
    .prologue
    .line 389
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    #@2
    return v0
.end method

.method private static isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z
    .locals 5
    .param p0, "driver"    # Ljava/sql/Driver;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 458
    const/4 v2, 0x0

    #@1
    .line 459
    .local v2, "result":Z
    if-eqz p0, :cond_0

    #@3
    .line 460
    const/4 v0, 0x0

    #@4
    .line 462
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    const/4 v4, 0x1

    #@d
    invoke-static {v3, v4, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v0

    #@11
    .line 467
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v3

    #@15
    if-ne v0, v3, :cond_1

    #@17
    const/4 v2, 0x1

    #@18
    .line 470
    :cond_0
    :goto_1
    return v2

    #@19
    .line 463
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@1a
    .line 464
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 467
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    #@1d
    goto :goto_1
.end method

.method private static loadInitialDrivers()V
    .locals 8

    #@0
    .prologue
    .line 476
    :try_start_0
    new-instance v4, Ljava/sql/DriverManager$1;

    #@2
    invoke-direct {v4}, Ljava/sql/DriverManager$1;-><init>()V

    #@5
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 489
    :goto_0
    new-instance v4, Ljava/sql/DriverManager$2;

    #@d
    invoke-direct {v4}, Ljava/sql/DriverManager$2;-><init>()V

    #@10
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "DriverManager.initialize: jdbc.drivers = "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@2a
    .line 520
    if-eqz v1, :cond_0

    #@2c
    const-string/jumbo v4, ""

    #@2f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 521
    :cond_0
    return-void

    #@36
    .line 481
    :catch_0
    move-exception v3

    #@37
    .line 482
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@38
    .local v1, "drivers":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 523
    .end local v1    # "drivers":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, ":"

    #@3c
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 524
    .local v2, "driversList":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "number of Drivers:"

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    array-length v5, v2

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@58
    .line 525
    const/4 v4, 0x0

    #@59
    array-length v5, v2

    #@5a
    :goto_1
    if-ge v4, v5, :cond_2

    #@5c
    aget-object v0, v2, v4

    #@5e
    .line 527
    .local v0, "aDriver":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "DriverManager.Initialize: loading "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-static {v6}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@75
    .line 529
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@78
    move-result-object v6

    #@79
    .line 528
    const/4 v7, 0x1

    #@7a
    invoke-static {v0, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@7d
    .line 525
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 530
    :catch_1
    move-exception v3

    #@81
    .line 531
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v7, "DriverManager.Initialize: load failed: "

    #@89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v6

    #@8d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    invoke-static {v6}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@98
    goto :goto_2

    #@99
    .line 473
    .end local v0    # "aDriver":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 445
    sget-object v1, Ljava/sql/DriverManager;->logSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 446
    :try_start_0
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 447
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@9
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 450
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 444
    return-void

    #@13
    .line 445
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public static declared-synchronized registerDriver(Ljava/sql/Driver;)V
    .locals 3
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Ljava/sql/DriverManager;

    #@2
    monitor-enter v1

    #@3
    .line 300
    if-eqz p0, :cond_0

    #@5
    .line 301
    :try_start_0
    sget-object v0, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    new-instance v2, Ljava/sql/DriverInfo;

    #@9
    invoke-direct {v2, p0}, Ljava/sql/DriverInfo;-><init>(Ljava/sql/Driver;)V

    #@c
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    #@f
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "registerDriver: "

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 297
    return-void

    #@28
    .line 304
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@2a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@2d
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .locals 3
    .param p0, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 414
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 415
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 416
    sget-object v1, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@c
    .line 419
    :cond_0
    sput-object p0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    #@e
    .line 420
    if-eqz p0, :cond_1

    #@10
    .line 421
    new-instance v1, Ljava/io/PrintWriter;

    #@12
    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@15
    sput-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@17
    .line 412
    :goto_0
    return-void

    #@18
    .line 423
    :cond_1
    sput-object v2, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@1a
    goto :goto_0
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .locals 3
    .param p0, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 164
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 165
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 166
    sget-object v1, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@c
    .line 168
    :cond_0
    sput-object v2, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    #@e
    .line 169
    sput-object p0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    #@10
    .line 162
    return-void
.end method

.method public static setLoginTimeout(I)V
    .locals 0
    .param p0, "seconds"    # I

    #@0
    .prologue
    .line 378
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    #@2
    .line 377
    return-void
.end method
