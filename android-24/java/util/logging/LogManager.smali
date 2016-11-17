.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/LogManager$1;,
        Ljava/util/logging/LogManager$Cleaner;,
        Ljava/util/logging/LogManager$LogNode;,
        Ljava/util/logging/LogManager$LoggerContext;,
        Ljava/util/logging/LogManager$LoggerWeakRef;,
        Ljava/util/logging/LogManager$RootLogger;,
        Ljava/util/logging/LogManager$SystemLoggerContext;
    }
.end annotation


# static fields
.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field private static final MAX_ITERATIONS:I = 0x190

.field private static final defaultLevel:Ljava/util/logging/Level;

.field private static loggingMXBean:Ljava/util/logging/LoggingMXBean;

.field private static manager:Ljava/util/logging/LogManager;


# instance fields
.field private changes:Ljava/beans/PropertyChangeSupport;

.field private final controlPermission:Ljava/security/Permission;

.field private deathImminent:Z

.field private initializedGlobalHandlers:Z

.field private final loggerRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Properties;

.field private volatile readPrimordialConfiguration:Z

.field private rootLogger:Ljava/util/logging/Logger;

.field private final systemContext:Ljava/util/logging/LogManager$LoggerContext;

.field private final userContext:Ljava/util/logging/LogManager$LoggerContext;


# direct methods
.method static synthetic -get0()Ljava/util/logging/Level;
    .locals 1

    #@0
    sget-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Ljava/util/logging/LogManager;
    .locals 1

    #@0
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager$LoggerContext;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/util/logging/LogManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/util/logging/LogManager;->deathImminent:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Ljava/util/logging/LogManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Ljava/util/logging/LogManager;)Ljava/util/logging/LogManager;
    .locals 0

    #@0
    sput-object p0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@2
    return-object p0
.end method

.method static synthetic -set3(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "cname"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 0
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 0
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "parent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Ljava/util/logging/LogManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/logging/LogManager;->initializeGlobalHandlers()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 155
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@2
    sput-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    #@4
    .line 173
    new-instance v0, Ljava/util/logging/LogManager$1;

    #@6
    invoke-direct {v0}, Ljava/util/logging/LogManager$1;-><init>()V

    #@9
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    .line 1458
    const/4 v0, 0x0

    #@d
    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    #@f
    .line 148
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 152
    new-instance v1, Ljava/util/Properties;

    #@6
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    #@9
    iput-object v1, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@b
    .line 154
    new-instance v1, Ljava/beans/PropertyChangeSupport;

    #@d
    const-class v2, Ljava/util/logging/LogManager;

    #@f
    invoke-direct {v1, v2}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    #@12
    .line 153
    iput-object v1, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    #@14
    .line 158
    new-instance v1, Ljava/util/logging/LogManager$SystemLoggerContext;

    #@16
    invoke-direct {v1}, Ljava/util/logging/LogManager$SystemLoggerContext;-><init>()V

    #@19
    iput-object v1, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    #@1b
    .line 159
    new-instance v1, Ljava/util/logging/LogManager$LoggerContext;

    #@1d
    invoke-direct {v1, v3}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager$LoggerContext;)V

    #@20
    iput-object v1, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    #@22
    .line 168
    const/4 v1, 0x1

    #@23
    iput-boolean v1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    #@25
    .line 804
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    #@27
    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@2a
    .line 803
    iput-object v1, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@2c
    .line 1344
    new-instance v1, Ljava/util/logging/LoggingPermission;

    #@2e
    const-string/jumbo v2, "control"

    #@31
    invoke-direct {v1, v2, v3}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@34
    iput-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    #@36
    .line 256
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@39
    move-result-object v1

    #@3a
    new-instance v2, Ljava/util/logging/LogManager$Cleaner;

    #@3c
    const/4 v3, 0x0

    #@3d
    invoke-direct {v2, p0, v3}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$Cleaner;)V

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 253
    :goto_0
    return-void

    #@44
    .line 257
    :catch_0
    move-exception v0

    #@45
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method private contexts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/LogManager$LoggerContext;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 351
    .local v0, "cxs":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/LogManager$LoggerContext;>;"
    iget-object v1, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 352
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 353
    return-object v0
.end method

.method private static doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 2
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 951
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 952
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_0

    #@6
    .line 954
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@9
    .line 955
    return-void

    #@a
    .line 959
    :cond_0
    new-instance v1, Ljava/util/logging/LogManager$5;

    #@c
    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$5;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    #@f
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@12
    .line 950
    return-void
.end method

.method private static doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .locals 2
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "parent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 969
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 970
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_0

    #@6
    .line 972
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    #@9
    .line 973
    return-void

    #@a
    .line 977
    :cond_0
    new-instance v1, Ljava/util/logging/LogManager$6;

    #@c
    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$6;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@f
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@12
    .line 968
    return-void
.end method

.method private static getClassInstance(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "cname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    const/4 v0, 0x0

    #@1
    .line 436
    .local v0, "clz":Ljava/lang/Class;
    if-eqz p0, :cond_0

    #@3
    .line 438
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 447
    .end local v0    # "clz":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object v0

    #@c
    .line 439
    .restart local v0    # "clz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@d
    .line 441
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    move-result-object v0

    #@19
    .local v0, "clz":Ljava/lang/Class;
    goto :goto_0

    #@1a
    .line 442
    .local v0, "clz":Ljava/lang/Class;
    :catch_1
    move-exception v2

    #@1b
    .line 443
    .local v2, "innerEx":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .locals 1

    #@0
    .prologue
    .line 267
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 268
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@6
    invoke-direct {v0}, Ljava/util/logging/LogManager;->readPrimordialConfiguration()V

    #@9
    .line 270
    :cond_0
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    #@b
    return-object v0
.end method

.method public static declared-synchronized getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/logging/LogManager;

    #@2
    monitor-enter v1

    #@3
    .line 1492
    :try_start_0
    sget-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1493
    new-instance v0, Ljava/util/logging/Logging;

    #@9
    invoke-direct {v0}, Ljava/util/logging/Logging;-><init>()V

    #@c
    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    #@e
    .line 1495
    :cond_0
    sget-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private getUserContext()Ljava/util/logging/LogManager$LoggerContext;
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    #@2
    return-object v0
.end method

.method private declared-synchronized initializeGlobalHandlers()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1329
    :try_start_0
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 1330
    return-void

    #@7
    .line 1333
    :cond_0
    const/4 v0, 0x1

    #@8
    :try_start_1
    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    #@a
    .line 1335
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->deathImminent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    if-eqz v0, :cond_1

    #@e
    monitor-exit p0

    #@f
    .line 1339
    return-void

    #@10
    .line 1341
    :cond_1
    :try_start_2
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    #@12
    const-string/jumbo v1, "handlers"

    #@15
    const/4 v2, 0x0

    #@16
    invoke-direct {p0, v0, v2, v1}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 1328
    return-void

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method private loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handlersPropertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 767
    new-instance v0, Ljava/util/logging/LogManager$4;

    #@2
    invoke-direct {v0, p0, p3, p1}, Ljava/util/logging/LogManager$4;-><init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 765
    return-void
.end method

.method private parseClassNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1146
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1147
    .local v1, "hands":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 1148
    new-array v5, v5, [Ljava/lang/String;

    #@9
    return-object v5

    #@a
    .line 1150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1151
    const/4 v2, 0x0

    #@f
    .line 1152
    .local v2, "ix":I
    new-instance v3, Ljava/util/Vector;

    #@11
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@14
    .line 1153
    .local v3, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    if-ge v2, v5, :cond_4

    #@1a
    .line 1154
    move v0, v2

    #@1b
    .line 1155
    .local v0, "end":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1e
    move-result v5

    #@1f
    if-ge v0, v5, :cond_2

    #@21
    .line 1156
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v5

    #@25
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 1164
    :cond_2
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 1165
    .local v4, "word":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    #@31
    .line 1166
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 1167
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 1170
    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 1159
    .end local v4    # "word":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v5

    #@43
    const/16 v6, 0x2c

    #@45
    if-eq v5, v6, :cond_2

    #@47
    .line 1162
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 1172
    .end local v0    # "end":I
    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@4d
    move-result v5

    #@4e
    new-array v5, v5, [Ljava/lang/String;

    #@50
    invoke-virtual {v3, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, [Ljava/lang/String;

    #@56
    return-object v5
.end method

.method private readPrimordialConfiguration()V
    .locals 2

    #@0
    .prologue
    .line 274
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    #@2
    if-nez v1, :cond_2

    #@4
    .line 275
    monitor-enter p0

    #@5
    .line 276
    :try_start_0
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    #@7
    if-nez v1, :cond_1

    #@9
    .line 280
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v1, :cond_0

    #@d
    monitor-exit p0

    #@e
    .line 281
    return-void

    #@f
    .line 283
    :cond_0
    const/4 v1, 0x1

    #@10
    :try_start_1
    iput-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 286
    :try_start_2
    new-instance v1, Ljava/util/logging/LogManager$2;

    #@14
    invoke-direct {v1, p0}, Ljava/util/logging/LogManager$2;-><init>(Ljava/util/logging/LogManager;)V

    #@17
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    :cond_1
    :goto_0
    monitor-exit p0

    #@1b
    .line 273
    :cond_2
    return-void

    #@1c
    .line 275
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1

    #@1f
    .line 295
    :catch_0
    move-exception v0

    #@20
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private resetLogger(Ljava/util/logging/Logger;)V
    .locals 7
    .param p1, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1125
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@4
    move-result-object v4

    #@5
    .line 1126
    .local v4, "targets":[Ljava/util/logging/Handler;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@7
    if-ge v2, v5, :cond_0

    #@9
    .line 1127
    aget-object v1, v4, v2

    #@b
    .line 1128
    .local v1, "h":Ljava/util/logging/Handler;
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    #@e
    .line 1130
    :try_start_0
    invoke-virtual {v1}, Ljava/util/logging/Handler;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1126
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1131
    :catch_0
    move-exception v0

    #@15
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_1

    #@16
    .line 1135
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "h":Ljava/util/logging/Handler;
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 1136
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@1c
    const-string/jumbo v5, ""

    #@1f
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 1138
    sget-object v5, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    #@27
    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@2a
    .line 1123
    :goto_2
    return-void

    #@2b
    .line 1140
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    #@2e
    goto :goto_2
.end method

.method private declared-synchronized setLevelsOnExistingLoggers()V
    .locals 11

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1433
    :try_start_0
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@3
    invoke-virtual {v8}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@6
    move-result-object v2

    #@7
    .line 1434
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_3

    #@d
    .line 1435
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Ljava/lang/String;

    #@13
    .line 1436
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, ".level"

    #@16
    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_0

    #@1c
    .line 1440
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1f
    move-result v8

    #@20
    add-int/lit8 v3, v8, -0x6

    #@22
    .line 1441
    .local v3, "ix":I
    const/4 v8, 0x0

    #@23
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    .line 1442
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    #@28
    invoke-virtual {p0, v4, v8}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@2b
    move-result-object v6

    #@2c
    .line 1443
    .local v6, "level":Ljava/util/logging/Level;
    if-nez v6, :cond_1

    #@2e
    .line 1444
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30
    new-instance v9, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v10, "Bad level value for property: "

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    goto :goto_0

    #@48
    .end local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "ix":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "level":Ljava/util/logging/Level;
    .end local v7    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@49
    monitor-exit p0

    #@4a
    throw v8

    #@4b
    .line 1447
    .restart local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v3    # "ix":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v6    # "level":Ljava/util/logging/Level;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    #@4e
    move-result-object v8

    #@4f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v1

    #@53
    .local v1, "cx$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v8

    #@57
    if-eqz v8, :cond_0

    #@59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Ljava/util/logging/LogManager$LoggerContext;

    #@5f
    .line 1448
    .local v0, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v0, v7}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@62
    move-result-object v5

    #@63
    .line 1449
    .local v5, "l":Ljava/util/logging/Logger;
    if-eqz v5, :cond_2

    #@65
    .line 1452
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    goto :goto_1

    #@69
    .end local v0    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    .end local v1    # "cx$iterator":Ljava/util/Iterator;
    .end local v3    # "ix":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "l":Ljava/util/logging/Logger;
    .end local v6    # "level":Ljava/util/logging/Level;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    #@6a
    .line 1432
    return-void
.end method


# virtual methods
.method public addLogger(Ljava/util/logging/Logger;)Z
    .locals 4
    .param p1, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 932
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 933
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 934
    new-instance v2, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v2

    #@c
    .line 936
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    #@f
    .line 937
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    #@12
    move-result-object v0

    #@13
    .line 938
    .local v0, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v0, p1, p0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Ljava/util/logging/LogManager;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, ".handlers"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {p0, p1, v1, v2}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 942
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 944
    :cond_1
    const/4 v2, 0x0

    #@33
    return v2
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    if-nez p1, :cond_0

    #@2
    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 319
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@b
    .line 320
    iget-object v0, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    #@d
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    #@10
    .line 315
    return-void
.end method

.method public checkAccess()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1363
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@3
    .line 1362
    return-void
.end method

.method checkPermission()V
    .locals 2

    #@0
    .prologue
    .line 1347
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1348
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1349
    iget-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 1346
    :cond_0
    return-void
.end method

.method demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@3
    move-result-object v1

    #@4
    .line 370
    .local v1, "result":Ljava/util/logging/Logger;
    if-nez v1, :cond_2

    #@6
    .line 372
    new-instance v0, Ljava/util/logging/Logger;

    #@8
    invoke-direct {v0, p1, p2, p3}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@b
    .line 374
    .local v0, "newLogger":Ljava/util/logging/Logger;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 377
    return-object v0

    #@12
    .line 391
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@15
    move-result-object v1

    #@16
    .line 392
    if-eqz v1, :cond_0

    #@18
    .line 394
    .end local v0    # "newLogger":Ljava/util/logging/Logger;
    :cond_2
    return-object v1
.end method

.method demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    iget-object v3, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    #@2
    invoke-virtual {v3, p1, p2}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    #@5
    move-result-object v2

    #@6
    .line 410
    .local v2, "sysLogger":Ljava/util/logging/Logger;
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 412
    move-object v1, v2

    #@d
    .line 416
    .local v1, "logger":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v1, :cond_0

    #@f
    .line 419
    if-eq v1, v2, :cond_1

    #@11
    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@14
    move-result-object v3

    #@15
    array-length v3, v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 421
    move-object v0, v1

    #@19
    .line 422
    .local v0, "l":Ljava/util/logging/Logger;
    new-instance v3, Ljava/util/logging/LogManager$3;

    #@1b
    invoke-direct {v3, p0, v0, v2}, Ljava/util/logging/LogManager$3;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@1e
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@21
    .line 431
    .end local v0    # "l":Ljava/util/logging/Logger;
    :cond_1
    return-object v2

    #@22
    .line 414
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@25
    move-result-object v1

    #@26
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    goto :goto_0
.end method

.method final declared-synchronized drainLoggerRefQueueBounded()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 900
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x190

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 901
    :try_start_0
    iget-object v2, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 899
    return-void

    #@c
    .line 906
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    #@e
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@14
    .line 907
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v1, :cond_0

    #@16
    .line 911
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 900
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit p0

    #@1e
    throw v2
.end method

.method getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1262
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 1263
    return p2

    #@7
    .line 1265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 1266
    const-string/jumbo v1, "true"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_1

    #@14
    const-string/jumbo v1, "1"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 1267
    :cond_1
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 1268
    :cond_2
    const-string/jumbo v1, "false"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_3

    #@28
    const-string/jumbo v1, "0"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 1269
    :cond_3
    const/4 v1, 0x0

    #@32
    return v1

    #@33
    .line 1271
    :cond_4
    return p2
.end method

.method getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Filter;

    #@0
    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1293
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1294
    :try_start_0
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    return-object v2

    #@11
    .line 1296
    :catch_0
    move-exception v0

    #@12
    .line 1302
    :cond_0
    return-object p2
.end method

.method getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Formatter;

    #@0
    .prologue
    .line 1311
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1313
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 1314
    :try_start_0
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    return-object v2

    #@11
    .line 1316
    :catch_0
    move-exception v0

    #@12
    .line 1322
    :cond_0
    return-object p2
.end method

.method getIntProperty(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 1246
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1247
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 1248
    return p2

    #@7
    .line 1251
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v2

    #@f
    return v2

    #@10
    .line 1252
    :catch_0
    move-exception v0

    #@11
    .line 1253
    .local v0, "ex":Ljava/lang/Exception;
    return p2
.end method

.method getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 1278
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1279
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 1280
    return-object p2

    #@7
    .line 1282
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-static {v2}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    #@e
    move-result-object v0

    #@f
    .line 1283
    .local v0, "l":Ljava/util/logging/Level;
    if-eqz v0, :cond_1

    #@11
    .end local v0    # "l":Ljava/util/logging/Level;
    :goto_0
    return-object v0

    #@12
    .restart local v0    # "l":Ljava/util/logging/Level;
    :cond_1
    move-object v0, p2

    #@13
    goto :goto_0
.end method

.method public getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLoggerNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1235
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1236
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 1237
    return-object p2

    #@7
    .line 1239
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public readConfiguration()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1040
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@3
    .line 1043
    const-string/jumbo v8, "java.util.logging.config.class"

    #@6
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1044
    .local v1, "cname":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@c
    .line 1049
    :try_start_0
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1050
    return-void

    #@14
    .line 1051
    :catch_0
    move-exception v3

    #@15
    .line 1052
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    new-instance v9, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v10, "Logging configuration class \""

    #@1f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v9

    #@27
    const-string/jumbo v10, "\" failed"

    #@2a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 1053
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    new-instance v9, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v10, ""

    #@3f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 1058
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v8, "java.util.logging.config.file"

    #@51
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 1059
    .local v6, "fname":Ljava/lang/String;
    if-nez v6, :cond_2

    #@57
    .line 1060
    const-string/jumbo v8, "java.home"

    #@5a
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    .line 1061
    if-nez v6, :cond_1

    #@60
    .line 1062
    new-instance v8, Ljava/lang/Error;

    #@62
    const-string/jumbo v9, "Can\'t find java.home ??"

    #@65
    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@68
    throw v8

    #@69
    .line 1064
    :cond_1
    new-instance v4, Ljava/io/File;

    #@6b
    const-string/jumbo v8, "lib"

    #@6e
    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 1065
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    #@73
    const-string/jumbo v8, "logging.properties"

    #@76
    invoke-direct {v5, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@79
    .line 1066
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    .line 1073
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    #@7f
    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@82
    .line 1081
    .local v7, "in":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    #@84
    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@87
    .line 1083
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8a
    .line 1085
    if-eqz v7, :cond_4

    #@8c
    .line 1086
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    #@8f
    .line 1039
    :cond_4
    return-void

    #@90
    .line 1074
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@91
    .line 1075
    .local v2, "e":Ljava/lang/Exception;
    const-class v8, Ljava/util/logging/LogManager;

    #@93
    const-string/jumbo v9, "logging.properties"

    #@96
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@99
    move-result-object v7

    #@9a
    .line 1076
    .restart local v7    # "in":Ljava/io/InputStream;
    if-nez v7, :cond_3

    #@9c
    .line 1077
    throw v2

    #@9d
    .line 1084
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v8

    #@9e
    .line 1085
    if-eqz v7, :cond_5

    #@a0
    .line 1086
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    #@a3
    .line 1084
    :cond_5
    throw v8
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1189
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@4
    .line 1190
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    #@7
    .line 1193
    iget-object v4, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@9
    invoke-virtual {v4, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@c
    .line 1195
    const-string/jumbo v4, "config"

    #@f
    invoke-direct {p0, v4}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 1197
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@15
    if-ge v1, v4, :cond_0

    #@17
    .line 1198
    aget-object v3, v2, v1

    #@19
    .line 1200
    .local v3, "word":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1197
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1201
    :catch_0
    move-exception v0

    #@24
    .line 1202
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "Can\'t load config class \""

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    const-string/jumbo v6, "\""

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 1203
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@46
    new-instance v5, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v6, ""

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    goto :goto_1

    #@5e
    .line 1209
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "word":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljava/util/logging/LogManager;->setLevelsOnExistingLoggers()V

    #@61
    .line 1212
    iget-object v4, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    #@63
    invoke-virtual {v4, v7, v7, v7}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@66
    .line 1216
    monitor-enter p0

    #@67
    .line 1217
    const/4 v4, 0x0

    #@68
    :try_start_1
    iput-boolean v4, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    monitor-exit p0

    #@6b
    .line 1188
    return-void

    #@6c
    .line 1216
    :catchall_0
    move-exception v4

    #@6d
    monitor-exit p0

    #@6e
    throw v4
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@3
    .line 339
    iget-object v0, p0, Ljava/util/logging/LogManager;->changes:Ljava/beans/PropertyChangeSupport;

    #@5
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    #@8
    .line 337
    return-void
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1103
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@3
    .line 1104
    monitor-enter p0

    #@4
    .line 1105
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    #@6
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    #@9
    iput-object v5, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    #@b
    .line 1108
    const/4 v5, 0x1

    #@c
    iput-boolean v5, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 1110
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "cx$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/logging/LogManager$LoggerContext;

    #@23
    .line 1111
    .local v0, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    #@26
    move-result-object v2

    #@27
    .line 1112
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_0

    #@2d
    .line 1113
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Ljava/lang/String;

    #@33
    .line 1114
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@36
    move-result-object v3

    #@37
    .line 1115
    .local v3, "logger":Ljava/util/logging/Logger;
    if-eqz v3, :cond_1

    #@39
    .line 1116
    invoke-direct {p0, v3}, Ljava/util/logging/LogManager;->resetLogger(Ljava/util/logging/Logger;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1104
    .end local v0    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    .end local v1    # "cx$iterator":Ljava/util/Iterator;
    .end local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "logger":Ljava/util/logging/Logger;
    .end local v4    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@3e
    monitor-exit p0

    #@3f
    throw v5

    #@40
    .line 1102
    .restart local v1    # "cx$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
