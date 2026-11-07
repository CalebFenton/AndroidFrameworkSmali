.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$LoggerBundle;,
        Ljava/util/logging/Logger$SystemLoggerHelper;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field private static final greylist-max-o NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

.field private static final greylist-max-o SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

.field static final greylist-max-o SYSTEM_LOGGER_RB_NAME:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final greylist-max-o emptyHandlers:[Ljava/util/logging/Handler;

.field public static final whitelist test-api global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o offValue:I

.field private static final greylist treeLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o anonymous:Z

.field private greylist-max-o callersClassLoaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o catalog:Ljava/util/ResourceBundle;

.field private greylist-max-o catalogLocale:Ljava/util/Locale;

.field private greylist-max-o catalogName:Ljava/lang/String;

.field private volatile greylist-max-o filter:Ljava/util/logging/Filter;

.field private final greylist-max-o handlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o isSystemLogger:Z

.field private greylist-max-o kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o levelObject:Ljava/util/logging/Level;

.field private volatile greylist-max-o levelValue:I

.field private volatile greylist-max-o loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

.field private volatile greylist-max-o manager:Ljava/util/logging/LogManager;

.field private greylist-max-o name:Ljava/lang/String;

.field private volatile greylist-max-o parent:Ljava/util/logging/Logger;

.field private volatile greylist-max-o useParentHandlers:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetNO_RESOURCE_BUNDLE()Ljava/util/logging/Logger$LoggerBundle;
    .registers 1

    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSYSTEM_BUNDLE()Ljava/util/logging/Logger$LoggerBundle;
    .registers 1

    sget-object v0, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 218
    nop

    .line 219
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    .line 220
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Logger;->offValue:I

    .line 248
    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    const-string v1, "sun.util.logging.resources.logging"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger-IA;)V

    sput-object v0, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    .line 253
    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    invoke-direct {v0, v2, v2, v2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger-IA;)V

    sput-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    .line 354
    new-instance v0, Ljava/util/logging/Logger;

    const-string v1, "global"

    invoke-direct {v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 260
    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    iput-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 405
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 406
    iput-boolean v0, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    .line 407
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 408
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .line 374
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "resourceBundleName":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "resourceBundleName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 375
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .param p4, "manager"    # Ljava/util/logging/LogManager;
    .param p5, "isSystemLogger"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/logging/LogManager;",
            "Z)V"
        }
    .end annotation

    .line 377
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 260
    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    iput-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 378
    iput-object p4, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 379
    iput-boolean p5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    .line 380
    invoke-direct {p0, p2, p3}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 381
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 382
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 383
    return-void
.end method

.method private greylist-max-o checkPermission()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 417
    iget-boolean v0, p0, Ljava/util/logging/Logger;->anonymous:Z

    if-nez v0, :cond_13

    .line 418
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_e

    .line 420
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 422
    :cond_e
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 424
    :cond_13
    return-void
.end method

.method private static greylist-max-o demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 448
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 449
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 450
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_19

    sget-boolean v2, Ljava/util/logging/Logger$SystemLoggerHelper;->disableCallerCheck:Z

    if-nez v2, :cond_19

    .line 451
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_19

    .line 452
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2

    .line 455
    :cond_19
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o doLog(Ljava/util/logging/LogRecord;)V
    .registers 5
    .param p1, "lr"    # Ljava/util/logging/LogRecord;

    .line 757
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Ljava/util/logging/Logger;->getEffectiveLoggerBundle()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v0

    .line 759
    .local v0, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    .line 760
    .local v1, "bundle":Ljava/util/ResourceBundle;
    iget-object v2, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    .line 761
    .local v2, "ebname":Ljava/lang/String;
    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 762
    invoke-virtual {p1, v2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 765
    :cond_17
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 766
    return-void
.end method

.method private greylist-max-o doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V
    .registers 4
    .param p1, "lr"    # Ljava/util/logging/LogRecord;
    .param p2, "rbname"    # Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1089
    if-eqz p2, :cond_12

    .line 1090
    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 1093
    :cond_12
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1094
    return-void
.end method

.method private greylist-max-o doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V
    .registers 4
    .param p1, "lr"    # Ljava/util/logging/LogRecord;
    .param p2, "rb"    # Ljava/util/ResourceBundle;

    .line 1098
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1099
    if-eqz p2, :cond_11

    .line 1100
    invoke-virtual {p2}, Ljava/util/ResourceBundle;->getBaseBundleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 1103
    :cond_11
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1104
    return-void
.end method

.method private greylist-max-o doSetParent(Ljava/util/logging/Logger;)V
    .registers 7
    .param p1, "newParent"    # Ljava/util/logging/Logger;

    .line 2048
    sget-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2051
    const/4 v1, 0x0

    .line 2052
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_start_4
    iget-object v2, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v2, :cond_2b

    .line 2054
    iget-object v2, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v2, v2, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2055
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    move-object v1, v3

    .line 2056
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 2057
    .local v3, "kid":Ljava/util/logging/Logger;
    if-ne v3, p0, :cond_29

    .line 2059
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2060
    goto :goto_2b

    .line 2062
    :cond_29
    const/4 v1, 0x0

    .line 2064
    .end local v3    # "kid":Ljava/util/logging/Logger;
    goto :goto_10

    .line 2069
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :cond_2b
    :goto_2b
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 2070
    iget-object v2, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v2, v2, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-nez v2, :cond_3d

    .line 2071
    iget-object v2, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    .line 2073
    :cond_3d
    if-nez v1, :cond_4a

    .line 2075
    new-instance v2, Ljava/util/logging/LogManager$LoggerWeakRef;

    iget-object v3, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3, p0}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V

    move-object v1, v2

    .line 2077
    :cond_4a
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->setParentRef(Ljava/lang/ref/WeakReference;)V

    .line 2078
    iget-object v2, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v2, v2, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2082
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    .line 2084
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    monitor-exit v0

    .line 2085
    return-void

    .line 2084
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private declared-synchronized greylist-max-o findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCallersClassLoader"    # Z

    monitor-enter p0

    .line 1850
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 1851
    monitor-exit p0

    return-object v0

    .line 1854
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1855
    .local v1, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1858
    .local v2, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v3, v2, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v3, :cond_1c

    iget-object v3, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    .line 1859
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1860
    iget-object v0, v2, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_88

    monitor-exit p0

    return-object v0

    .line 1861
    .end local p0    # "this":Ljava/util/logging/Logger;
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    if-eqz v3, :cond_34

    iget-object v3, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1862
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1863
    iget-object v0, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_88

    monitor-exit p0

    return-object v0

    .line 1866
    :cond_34
    :try_start_34
    const-string v3, "sun.util.logging.resources.logging"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1867
    invoke-static {v1}, Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1868
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1869
    iput-object v1, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1870
    iget-object v0, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_88

    monitor-exit p0

    return-object v0

    .line 1875
    :cond_4a
    :try_start_4a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1876
    .local v3, "cl":Ljava/lang/ClassLoader;
    if-nez v3, :cond_59

    .line 1877
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_88

    move-object v3, v4

    .line 1880
    :cond_59
    :try_start_59
    invoke-static {p1, v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1881
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1882
    iput-object v1, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1883
    iget-object v0, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_65
    .catch Ljava/util/MissingResourceException; {:try_start_59 .. :try_end_65} :catch_67
    .catchall {:try_start_59 .. :try_end_65} :catchall_88

    monitor-exit p0

    return-object v0

    .line 1884
    :catch_67
    move-exception v4

    .line 1889
    if-eqz p2, :cond_86

    .line 1891
    :try_start_6a
    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_88

    .line 1893
    .local v4, "callersClassLoader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_84

    if-ne v4, v3, :cond_73

    goto :goto_84

    .line 1898
    :cond_73
    :try_start_73
    invoke-static {p1, v1, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1900
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1901
    iput-object v1, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1902
    iget-object v0, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_7f
    .catch Ljava/util/MissingResourceException; {:try_start_73 .. :try_end_7f} :catch_81
    .catchall {:try_start_73 .. :try_end_7f} :catchall_88

    monitor-exit p0

    return-object v0

    .line 1903
    :catch_81
    move-exception v5

    .line 1904
    .local v5, "ex":Ljava/util/MissingResourceException;
    monitor-exit p0

    return-object v0

    .line 1894
    .end local v5    # "ex":Ljava/util/MissingResourceException;
    .restart local p0    # "this":Ljava/util/logging/Logger;
    :cond_84
    :goto_84
    monitor-exit p0

    return-object v0

    .line 1907
    .end local v4    # "callersClassLoader":Ljava/lang/ClassLoader;
    .end local p0    # "this":Ljava/util/logging/Logger;
    :cond_86
    monitor-exit p0

    return-object v0

    .line 1849
    .end local v1    # "currentLocale":Ljava/util/Locale;
    .end local v2    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "useCallersClassLoader":Z
    :catchall_88
    move-exception p1

    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method private static greylist-max-o findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 1815
    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0, p0}, Ljava/util/logging/Logger$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public static whitelist test-api getAnonymousLogger()Ljava/util/logging/Logger;
    .registers 1

    .line 603
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 7
    .param p0, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 637
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    .line 639
    .local v4, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v4}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    .line 640
    new-instance v0, Ljava/util/logging/Logger;

    .line 641
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    .end local p0    # "resourceBundleName":Ljava/lang/String;
    .local v2, "resourceBundleName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 642
    .local v0, "result":Ljava/util/logging/Logger;
    const/4 p0, 0x1

    iput-boolean p0, v0, Ljava/util/logging/Logger;->anonymous:Z

    .line 643
    const-string p0, ""

    invoke-virtual {v4, p0}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    .line 644
    .local p0, "root":Ljava/util/logging/Logger;
    invoke-direct {v0, p0}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    .line 645
    return-object v0
.end method

.method private greylist-max-o getCallersClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 395
    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 396
    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_e

    .line 397
    :cond_d
    const/4 v0, 0x0

    .line 395
    :goto_e
    return-object v0
.end method

.method private greylist-max-o getEffectiveLoggerBundle()Ljava/util/logging/Logger$LoggerBundle;
    .registers 7

    .line 2147
    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 2148
    .local v0, "lb":Ljava/util/logging/Logger$LoggerBundle;
    invoke-virtual {v0}, Ljava/util/logging/Logger$LoggerBundle;->isSystemBundle()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2149
    sget-object v1, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v1

    .line 2153
    :cond_b
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v1

    .line 2154
    .local v1, "b":Ljava/util/ResourceBundle;
    if-eqz v1, :cond_16

    iget-object v2, v0, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-ne v1, v2, :cond_16

    .line 2155
    return-object v0

    .line 2156
    :cond_16
    if-eqz v1, :cond_21

    .line 2159
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v2

    .line 2160
    .local v2, "rbName":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v3

    return-object v3

    .line 2165
    .end local v2    # "rbName":Ljava/lang/String;
    :cond_21
    iget-object v2, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 2166
    .local v2, "target":Ljava/util/logging/Logger;
    :goto_23
    if-eqz v2, :cond_61

    .line 2167
    iget-object v3, v2, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 2168
    .local v3, "trb":Ljava/util/logging/Logger$LoggerBundle;
    invoke-virtual {v3}, Ljava/util/logging/Logger$LoggerBundle;->isSystemBundle()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2169
    sget-object v4, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v4

    .line 2171
    :cond_30
    iget-object v4, v3, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v4, :cond_35

    .line 2172
    return-object v3

    .line 2174
    :cond_35
    iget-boolean v4, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v4, :cond_42

    .line 2177
    iget-boolean v4, v2, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v4, :cond_40

    iget-object v4, v3, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    goto :goto_46

    :cond_40
    const/4 v4, 0x0

    goto :goto_46

    .line 2178
    :cond_42
    invoke-virtual {v2}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v4

    :goto_46
    nop

    .line 2179
    .local v4, "rbName":Ljava/lang/String;
    if-eqz v4, :cond_54

    .line 2180
    nop

    .line 2181
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 2180
    invoke-static {v4, v5}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v5

    return-object v5

    .line 2183
    :cond_54
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_5b

    iget-object v5, v2, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_5f

    :cond_5b
    invoke-virtual {v2}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v5

    :goto_5f
    move-object v2, v5

    .line 2184
    .end local v3    # "trb":Ljava/util/logging/Logger$LoggerBundle;
    .end local v4    # "rbName":Ljava/lang/String;
    goto :goto_23

    .line 2185
    :cond_61
    sget-object v3, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v3
.end method

.method public static final whitelist test-api getGlobal()Ljava/util/logging/Logger;
    .registers 1

    .line 321
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    .line 329
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static whitelist test-api getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 502
    const/4 v0, 0x0

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 552
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 553
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 564
    .local v1, "result":Ljava/util/logging/Logger;
    invoke-direct {v1, p1, v0}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 565
    return-object v1
.end method

.method static greylist-max-o getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 572
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 576
    .local v0, "manager":Ljava/util/logging/LogManager;
    const-string v1, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0, v1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 577
    .local v1, "result":Ljava/util/logging/Logger;
    return-object v1
.end method

.method private greylist-max-o setCallersClassLoaderRef(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 386
    .local p1, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_7

    .line 387
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_8

    .line 388
    :cond_7
    const/4 v0, 0x0

    :goto_8
    nop

    .line 389
    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_12

    .line 390
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    .line 392
    :cond_12
    return-void
.end method

.method private declared-synchronized greylist-max-o setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .local p2, "callersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 1919
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1920
    .local v0, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 1923
    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_78

    if-eqz v1, :cond_11

    .line 1925
    monitor-exit p0

    return-void

    .line 1929
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_78

    .line 1933
    .end local p0    # "this":Ljava/util/logging/Logger;
    :cond_30
    if-nez p1, :cond_34

    .line 1934
    monitor-exit p0

    return-void

    .line 1937
    .restart local p0    # "this":Ljava/util/logging/Logger;
    :cond_34
    :try_start_34
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->setCallersClassLoaderRef(Ljava/lang/Class;)V

    .line 1938
    iget-boolean v1, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v1, :cond_44

    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 1939
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1941
    .end local p0    # "this":Ljava/util/logging/Logger;
    :cond_44
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    .line 1951
    nop

    .line 1952
    invoke-static {p1, v2}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_78

    .line 1953
    monitor-exit p0

    return-void

    .line 1945
    :cond_55
    :try_start_55
    iput-object v2, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    .line 1946
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, p1, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1918
    .end local v0    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "callersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_78
    move-exception p1

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_55 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method private greylist-max-o updateEffectiveLevel()V
    .registers 5

    .line 2110
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v0, :cond_b

    .line 2111
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .local v0, "newLevelValue":I
    goto :goto_1a

    .line 2113
    .end local v0    # "newLevelValue":I
    :cond_b
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v0, :cond_14

    .line 2114
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v0, v0, Ljava/util/logging/Logger;->levelValue:I

    .restart local v0    # "newLevelValue":I
    goto :goto_1a

    .line 2117
    .end local v0    # "newLevelValue":I
    :cond_14
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 2122
    .restart local v0    # "newLevelValue":I
    :goto_1a
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ne v1, v0, :cond_1f

    .line 2123
    return-void

    .line 2126
    :cond_1f
    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 2131
    iget-object v1, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-eqz v1, :cond_44

    .line 2132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 2133
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 2134
    .local v2, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 2135
    .local v3, "kid":Ljava/util/logging/Logger;
    if-eqz v3, :cond_41

    .line 2136
    invoke-direct {v3}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    .line 2132
    .end local v2    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .end local v3    # "kid":Ljava/util/logging/Logger;
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2140
    .end local v1    # "i":I
    :cond_44
    return-void
.end method


# virtual methods
.method greylist-max-o accessCheckedHandlers()[Ljava/util/logging/Handler;
    .registers 3

    .line 1783
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public whitelist test-api addHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1748
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1749
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1750
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    return-void
.end method

.method public whitelist test-api config(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1503
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1504
    return-void
.end method

.method public whitelist test-api config(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1615
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1616
    return-void
.end method

.method public whitelist test-api entering(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .line 1342
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v1, "ENTRY"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public whitelist test-api entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .line 1358
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "ENTRY {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "sourceClass":Ljava/lang/String;
    .end local p2    # "sourceMethod":Ljava/lang/String;
    .end local p3    # "param1":Ljava/lang/Object;
    .local v2, "sourceClass":Ljava/lang/String;
    .local v3, "sourceMethod":Ljava/lang/String;
    .local v5, "param1":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1359
    return-void
.end method

.method public whitelist test-api entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 1375
    const-string v0, "ENTRY"

    .line 1376
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_a

    .line 1377
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v1, p1, p2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1380
    :cond_a
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 1381
    :cond_13
    const/4 v1, 0x0

    move-object v6, v0

    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "i":I
    .local v6, "msg":Ljava/lang/String;
    :goto_15
    array-length v0, p3

    if-ge v1, v0, :cond_38

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1384
    .end local v1    # "i":I
    :cond_38
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .end local p1    # "sourceClass":Ljava/lang/String;
    .end local p2    # "sourceMethod":Ljava/lang/String;
    .end local p3    # "params":[Ljava/lang/Object;
    .local v4, "sourceClass":Ljava/lang/String;
    .local v5, "sourceMethod":Ljava/lang/String;
    .local v7, "params":[Ljava/lang/Object;
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    return-void
.end method

.method public whitelist test-api exiting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .line 1398
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v1, "RETURN"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method public whitelist test-api exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    .line 1415
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "RETURN {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "sourceClass":Ljava/lang/String;
    .end local p2    # "sourceMethod":Ljava/lang/String;
    .end local p3    # "result":Ljava/lang/Object;
    .local v2, "sourceClass":Ljava/lang/String;
    .local v3, "sourceMethod":Ljava/lang/String;
    .local v5, "result":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1416
    return-void
.end method

.method public whitelist test-api fine(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1516
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method public whitelist test-api fine(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1632
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1633
    return-void
.end method

.method public whitelist test-api finer(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1529
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method public whitelist test-api finer(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1649
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1650
    return-void
.end method

.method public whitelist test-api finest(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1542
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1543
    return-void
.end method

.method public whitelist test-api finest(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1666
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1667
    return-void
.end method

.method public whitelist test-api getFilter()Ljava/util/logging/Filter;
    .registers 2

    .line 707
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public whitelist test-api getHandlers()[Ljava/util/logging/Handler;
    .registers 2

    .line 1777
    invoke-virtual {p0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLevel()Ljava/util/logging/Level;
    .registers 2

    .line 1708
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 1731
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getParent()Ljava/util/logging/Logger;
    .registers 2

    .line 2014
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public whitelist test-api getResourceBundle()Ljava/util/ResourceBundle;
    .registers 3

    .line 664
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResourceBundleName()Ljava/lang/String;
    .registers 2

    .line 681
    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iget-object v0, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getUseParentHandlers()Z
    .registers 2

    .line 1810
    iget-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return v0
.end method

.method public whitelist test-api info(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1490
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public whitelist test-api info(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1598
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1599
    return-void
.end method

.method final greylist-max-o isLevelInitialized()Z
    .registers 2

    .line 1697
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isLoggable(Ljava/util/logging/Level;)Z
    .registers 4
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 1720
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v0, v1, :cond_11

    iget v0, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v1, Ljava/util/logging/Logger;->offValue:I

    if-ne v0, v1, :cond_f

    goto :goto_11

    .line 1723
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 1721
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 784
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 785
    return-void

    .line 787
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 788
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 789
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .line 825
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 826
    return-void

    .line 828
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 829
    .local v0, "lr":Ljava/util/logging/LogRecord;
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    .line 830
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 831
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 832
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .line 871
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 872
    return-void

    .line 874
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 875
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 876
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 877
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 846
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 847
    return-void

    .line 849
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 850
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 851
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 852
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/util/function/Supplier;)V
    .registers 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 899
    .local p3, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 900
    return-void

    .line 902
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 903
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 904
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 905
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 806
    .local p2, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 807
    return-void

    .line 809
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 810
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 811
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/LogRecord;)V
    .registers 8
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 720
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 721
    return-void

    .line 723
    :cond_b
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 724
    .local v0, "theFilter":Ljava/util/logging/Filter;
    if-eqz v0, :cond_16

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 725
    return-void

    .line 731
    :cond_16
    move-object v1, p0

    .line 732
    .local v1, "logger":Ljava/util/logging/Logger;
    :goto_17
    if-eqz v1, :cond_4f

    .line 733
    iget-boolean v2, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v2, :cond_22

    .line 734
    invoke-virtual {v1}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    goto :goto_26

    .line 735
    :cond_22
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    :goto_26
    nop

    .line 737
    .local v2, "loggerHandlers":[Ljava/util/logging/Handler;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_33

    aget-object v5, v2, v4

    .line 738
    .local v5, "handler":Ljava/util/logging/Handler;
    invoke-virtual {v5, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 737
    .end local v5    # "handler":Ljava/util/logging/Handler;
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 741
    :cond_33
    iget-boolean v3, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v3, :cond_3a

    .line 742
    iget-boolean v3, v1, Ljava/util/logging/Logger;->useParentHandlers:Z

    goto :goto_3e

    .line 743
    :cond_3a
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v3

    :goto_3e
    nop

    .line 745
    .local v3, "useParentHdls":Z
    if-nez v3, :cond_42

    .line 746
    goto :goto_4f

    .line 749
    :cond_42
    iget-boolean v4, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v4, :cond_49

    iget-object v4, v1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_4d

    :cond_49
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v4

    :goto_4d
    move-object v1, v4

    .line 750
    .end local v2    # "loggerHandlers":[Ljava/util/logging/Handler;
    .end local v3    # "useParentHdls":Z
    goto :goto_17

    .line 751
    :cond_4f
    :goto_4f
    return-void
.end method

.method public whitelist test-api logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .line 925
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 926
    return-void

    .line 928
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 929
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 931
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 932
    return-void
.end method

.method public whitelist test-api logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/Object;

    .line 977
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 978
    return-void

    .line 980
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 981
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 983
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 984
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 985
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 986
    return-void
.end method

.method public whitelist test-api logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    .line 1035
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1036
    return-void

    .line 1038
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1039
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1042
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1043
    return-void
.end method

.method public whitelist test-api logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    .line 1004
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1005
    return-void

    .line 1007
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1008
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1011
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1012
    return-void
.end method

.method public whitelist test-api logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/function/Supplier;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1069
    .local p5, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1070
    return-void

    .line 1072
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1073
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1076
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1077
    return-void
.end method

.method public whitelist test-api logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 952
    .local p4, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 953
    return-void

    .line 955
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 956
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 958
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 959
    return-void
.end method

.method public whitelist test-api logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1131
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1132
    return-void

    .line 1134
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1135
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1137
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public whitelist test-api logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1166
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1167
    return-void

    .line 1169
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1170
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1172
    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 1173
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1174
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1175
    return-void
.end method

.method public whitelist test-api logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1279
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1280
    return-void

    .line 1282
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1283
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1286
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method public whitelist test-api logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1203
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1204
    return-void

    .line 1206
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1207
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1210
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public whitelist test-api logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundle"    # Ljava/util/ResourceBundle;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    .line 1317
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1318
    return-void

    .line 1320
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1321
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1324
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V

    .line 1325
    return-void
.end method

.method public varargs whitelist test-api logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundle"    # Ljava/util/ResourceBundle;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    .line 1236
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1237
    return-void

    .line 1239
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1240
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1242
    if-eqz p6, :cond_1a

    array-length v1, p6

    if-eqz v1, :cond_1a

    .line 1243
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1245
    :cond_1a
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V

    .line 1246
    return-void
.end method

.method final greylist-max-o removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .registers 5
    .param p1, "child"    # Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 2091
    sget-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_3
    iget-object v1, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2093
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 2094
    .local v2, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-ne v2, p1, :cond_1c

    .line 2095
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2096
    monitor-exit v0

    return-void

    .line 2098
    .end local v2    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_1c
    goto :goto_9

    .line 2099
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :cond_1d
    monitor-exit v0

    .line 2100
    return-void

    .line 2099
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1764
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1765
    if-nez p1, :cond_6

    .line 1766
    return-void

    .line 1768
    :cond_6
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1769
    return-void
.end method

.method public whitelist test-api setFilter(Ljava/util/logging/Filter;)V
    .registers 2
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 697
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 698
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 699
    return-void
.end method

.method public whitelist test-api setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1689
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1690
    sget-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1691
    :try_start_6
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    .line 1692
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    .line 1693
    monitor-exit v0

    .line 1694
    return-void

    .line 1693
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method greylist-max-o setLogManager(Ljava/util/logging/LogManager;)V
    .registers 2
    .param p1, "manager"    # Ljava/util/logging/LogManager;

    .line 413
    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 414
    return-void
.end method

.method public whitelist test-api setParent(Ljava/util/logging/Logger;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .line 2028
    if-eqz p1, :cond_15

    .line 2033
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_c

    .line 2034
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 2036
    :cond_c
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 2038
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    .line 2039
    return-void

    .line 2029
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 7
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .line 1971
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1974
    invoke-virtual {p1}, Ljava/util/ResourceBundle;->getBaseBundleName()Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "baseName":Ljava/lang/String;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1981
    monitor-enter p0

    .line 1982
    :try_start_10
    iget-object v1, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1983
    .local v1, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v2, v1, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v2, v1, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    .line 1984
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v2, 0x1

    .line 1986
    .local v2, "canReplaceResourceBundle":Z
    :goto_22
    if-eqz v2, :cond_2c

    .line 1991
    invoke-static {v0, p1}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1992
    .end local v1    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    .end local v2    # "canReplaceResourceBundle":Z
    monitor-exit p0

    .line 1993
    return-void

    .line 1987
    .restart local v1    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    .restart local v2    # "canReplaceResourceBundle":Z
    :cond_2c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t replace resource bundle"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "baseName":Ljava/lang/String;
    .end local p0    # "this":Ljava/util/logging/Logger;
    .end local p1    # "bundle":Ljava/util/ResourceBundle;
    throw v3

    .line 1992
    .end local v1    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    .end local v2    # "canReplaceResourceBundle":Z
    .restart local v0    # "baseName":Ljava/lang/String;
    .restart local p0    # "this":Ljava/util/logging/Logger;
    .restart local p1    # "bundle":Ljava/util/ResourceBundle;
    :catchall_34
    move-exception v1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_34

    throw v1

    .line 1978
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resource bundle must have a name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setUseParentHandlers(Z)V
    .registers 2
    .param p1, "useParentHandlers"    # Z

    .line 1799
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1800
    iput-boolean p1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 1801
    return-void
.end method

.method public whitelist test-api severe(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1464
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method public whitelist test-api severe(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1564
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1565
    return-void
.end method

.method public whitelist test-api throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .line 1440
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1441
    return-void

    .line 1443
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1444
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1447
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1448
    return-void
.end method

.method public whitelist test-api warning(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1477
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method public whitelist test-api warning(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1581
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1582
    return-void
.end method
