.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$LoggerHelper;
    }
.end annotation


# static fields
.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field static final SYSTEM_LOGGER_RB_NAME:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final emptyHandlers:[Ljava/util/logging/Handler;

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final offValue:I

.field private static treeLock:Ljava/lang/Object;


# instance fields
.field private anonymous:Z

.field private callersClassLoaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private catalog:Ljava/util/ResourceBundle;

.field private catalogLocale:Ljava/util/Locale;

.field private catalogName:Ljava/lang/String;

.field private volatile filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private volatile levelObject:Ljava/util/logging/Level;

.field private volatile levelValue:I

.field private manager:Ljava/util/logging/LogManager;

.field private name:Ljava/lang/String;

.field private volatile parent:Ljava/util/logging/Logger;

.field private resourceBundleName:Ljava/lang/String;

.field private volatile useParentHandlers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/util/logging/Handler;

    #@3
    sput-object v0, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    #@5
    .line 177
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@7
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@a
    move-result v0

    #@b
    sput v0, Ljava/util/logging/Logger;->offValue:I

    #@d
    .line 193
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    sput-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    #@14
    .line 241
    new-instance v0, Ljava/util/logging/Logger;

    #@16
    const-string/jumbo v1, "global"

    #@19
    invoke-direct {v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@1e
    .line 175
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    .line 180
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    .line 183
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    #@d
    .line 291
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@f
    .line 292
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@11
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    #@17
    .line 289
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@4
    .line 260
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@8
    .line 180
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    .line 183
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    #@d
    .line 265
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@13
    .line 266
    invoke-direct {p0, p2, p3}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    #@16
    .line 267
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@18
    .line 268
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@1a
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    #@20
    .line 264
    return-void
.end method

.method private checkPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Ljava/util/logging/Logger;->anonymous:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 303
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 305
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@e
    .line 307
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@10
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@13
    .line 301
    :cond_1
    return-void
.end method

.method private static demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
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
    .line 337
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    .line 338
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@7
    move-result-object v1

    #@8
    .line 339
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@a
    sget-boolean v2, Ljava/util/logging/Logger$LoggerHelper;->disableCallerCheck:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 344
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 340
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object v2

    #@17
    if-nez v2, :cond_0

    #@19
    .line 341
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method private doLog(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "lr"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 630
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@5
    .line 631
    invoke-direct {p0}, Ljava/util/logging/Logger;->getEffectiveResourceBundleName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 632
    .local v0, "ebname":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    const-string/jumbo v1, "sun.util.logging.resources.logging"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 636
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@17
    .line 629
    return-void

    #@18
    .line 633
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@1b
    .line 634
    const/4 v1, 0x1

    #@1c
    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    #@23
    goto :goto_0
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "lr"    # Ljava/util/logging/LogRecord;
    .param p2, "rbname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 848
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@5
    .line 849
    if-eqz p2, :cond_0

    #@7
    .line 850
    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@a
    .line 851
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, p2, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    #@12
    .line 853
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@15
    .line 847
    return-void
.end method

.method private doSetParent(Ljava/util/logging/Logger;)V
    .locals 9
    .param p1, "newParent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 1581
    sget-object v6, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 1584
    const/4 v3, 0x0

    #@4
    .line 1585
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_start_0
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@6
    if-eqz v5, :cond_3

    #@8
    .line 1587
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@a
    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_3

    #@16
    .line 1588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    move-object v0, v5

    #@1b
    check-cast v0, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@1d
    move-object v3, v0

    #@1e
    .line 1589
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/util/logging/Logger;

    #@24
    .line 1590
    .local v2, "kid":Ljava/util/logging/Logger;
    if-ne v2, p0, :cond_1

    #@26
    .line 1592
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-object v4, v3

    #@2a
    .line 1602
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .end local v2    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .local v4, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :goto_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@2c
    .line 1603
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@2e
    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@30
    if-nez v5, :cond_0

    #@32
    .line 1604
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@34
    new-instance v7, Ljava/util/ArrayList;

    #@36
    const/4 v8, 0x2

    #@37
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@3a
    iput-object v7, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@3c
    .line 1606
    :cond_0
    if-nez v4, :cond_2

    #@3e
    .line 1608
    new-instance v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@40
    iget-object v5, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@45
    invoke-direct {v3, v5, p0}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@48
    .line 1610
    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    #@4a
    iget-object v7, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@4c
    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@4f
    invoke-virtual {v3, v5}, Ljava/util/logging/LogManager$LoggerWeakRef;->setParentRef(Ljava/lang/ref/WeakReference;)V

    #@52
    .line 1611
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@54
    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@59
    .line 1615
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    monitor-exit v6

    #@5d
    .line 1576
    return-void

    #@5e
    .line 1595
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .restart local v2    # "kid":Ljava/util/logging/Logger;
    :cond_1
    const/4 v3, 0x0

    #@5f
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_0

    #@60
    .line 1581
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .end local v2    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_0
    move-exception v5

    #@61
    :goto_3
    monitor-exit v6

    #@62
    throw v5

    #@63
    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_1
    move-exception v5

    #@64
    move-object v3, v4

    #@65
    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_3

    #@66
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_2
    move-object v3, v4

    #@67
    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_2

    #@68
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_3
    move-object v4, v3

    #@69
    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_1
.end method

.method private declared-synchronized findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCallersClassLoader"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1412
    if-nez p1, :cond_0

    #@4
    monitor-exit p0

    #@5
    .line 1413
    return-object v5

    #@6
    .line 1416
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@9
    move-result-object v2

    #@a
    .line 1419
    .local v2, "currentLocale":Ljava/util/Locale;
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    #@c
    if-eqz v4, :cond_1

    #@e
    iget-object v4, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    #@10
    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 1420
    iget-object v4, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    .line 1419
    if-eqz v4, :cond_1

    #@1e
    .line 1421
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    return-object v4

    #@22
    .line 1424
    :cond_1
    :try_start_1
    const-string/jumbo v4, "sun.util.logging.resources.logging"

    #@25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 1425
    invoke-static {v2}, Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@2e
    move-result-object v4

    #@2f
    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    #@31
    .line 1426
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    #@33
    .line 1427
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    #@35
    .line 1428
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit p0

    #@38
    return-object v4

    #@39
    .line 1433
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@40
    move-result-object v1

    #@41
    .line 1434
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_3

    #@43
    .line 1435
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    move-result-object v1

    #@47
    .line 1438
    :cond_3
    :try_start_3
    invoke-static {p1, v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@4a
    move-result-object v4

    #@4b
    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    #@4d
    .line 1439
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    #@4f
    .line 1440
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    #@51
    .line 1441
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    monitor-exit p0

    #@54
    return-object v4

    #@55
    .line 1442
    :catch_0
    move-exception v3

    #@56
    .line 1447
    .local v3, "ex":Ljava/util/MissingResourceException;
    if-eqz p2, :cond_4

    #@58
    .line 1449
    :try_start_4
    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5b
    move-result-object v0

    #@5c
    .line 1450
    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_4

    #@5e
    if-eq v0, v1, :cond_4

    #@60
    .line 1452
    :try_start_5
    invoke-static {p1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@63
    move-result-object v4

    #@64
    iput-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    #@66
    .line 1454
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    #@68
    .line 1455
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    #@6a
    .line 1456
    iget-object v4, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6c
    monitor-exit p0

    #@6d
    return-object v4

    #@6e
    .line 1457
    :catch_1
    move-exception v3

    #@6f
    .line 1464
    .end local v0    # "callersClassLoader":Ljava/lang/ClassLoader;
    :cond_4
    :try_start_6
    sget-boolean v4, Ljava/util/logging/Logger$LoggerHelper;->allowStackWalkSearch:Z

    #@71
    if-eqz v4, :cond_5

    #@73
    .line 1465
    invoke-direct {p0, p1, v2, v1}, Ljava/util/logging/Logger;->findResourceBundleFromStack(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@76
    move-result-object v4

    #@77
    monitor-exit p0

    #@78
    return-object v4

    #@79
    :cond_5
    monitor-exit p0

    #@7a
    .line 1467
    return-object v5

    #@7b
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "currentLocale":Ljava/util/Locale;
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    :catchall_0
    move-exception v4

    #@7c
    monitor-exit p0

    #@7d
    throw v4
.end method

.method private declared-synchronized findResourceBundleFromStack(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "cl"    # Ljava/lang/ClassLoader;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1481
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v6

    #@6
    invoke-static {v6}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v5

    #@a
    .line 1482
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    #@b
    .line 1483
    .local v4, "ix":I
    :goto_0
    const/4 v1, 0x0

    #@c
    .line 1485
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    aget-object v6, v5, v4

    #@e
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 1487
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-nez v1, :cond_0

    #@18
    monitor-exit p0

    #@19
    .line 1507
    return-object v7

    #@1a
    .line 1490
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1d
    move-result-object v0

    #@1e
    .line 1491
    .local v0, "cl2":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    #@20
    .line 1492
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    move-result-object v0

    #@24
    .line 1494
    :cond_1
    if-ne p3, v0, :cond_2

    #@26
    .line 1482
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1498
    :cond_2
    move-object p3, v0

    #@2a
    .line 1500
    :try_start_3
    invoke-static {p1, p2, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@2d
    move-result-object v6

    #@2e
    iput-object v6, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    #@30
    .line 1501
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    #@32
    .line 1502
    iput-object p2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    #@34
    .line 1503
    iget-object v6, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    monitor-exit p0

    #@37
    return-object v6

    #@38
    .end local v0    # "cl2":Ljava/lang/ClassLoader;
    .end local v4    # "ix":I
    .end local v5    # "stack":[Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v6

    #@39
    monitor-exit p0

    #@3a
    throw v6

    #@3b
    .line 1504
    .restart local v0    # "cl2":Ljava/lang/ClassLoader;
    .restart local v4    # "ix":I
    .restart local v5    # "stack":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v2

    #@3c
    .local v2, "ex":Ljava/util/MissingResourceException;
    goto :goto_2

    #@3d
    .line 1486
    .end local v0    # "cl2":Ljava/lang/ClassLoader;
    .end local v2    # "ex":Ljava/util/MissingResourceException;
    .restart local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    #@3e
    .local v3, "ignored":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private static findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1378
    new-instance v0, Ljava/util/logging/Logger$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/logging/Logger$1;-><init>(Ljava/util/Locale;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/ResourceBundle;

    #@b
    return-object v0
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 499
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 5
    .param p0, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 531
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    .line 533
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    #@7
    .line 535
    new-instance v1, Ljava/util/logging/Logger;

    #@9
    .line 536
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    #@c
    move-result-object v3

    #@d
    .line 535
    const/4 v4, 0x0

    #@e
    invoke-direct {v1, v4, p0, v3}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@11
    .line 537
    .local v1, "result":Ljava/util/logging/Logger;
    const/4 v3, 0x1

    #@12
    iput-boolean v3, v1, Ljava/util/logging/Logger;->anonymous:Z

    #@14
    .line 538
    const-string/jumbo v3, ""

    #@17
    invoke-virtual {v0, v3}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@1a
    move-result-object v2

    #@1b
    .line 539
    .local v2, "root":Ljava/util/logging/Logger;
    invoke-direct {v1, v2}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    #@1e
    .line 540
    return-object v1
.end method

.method private getCallersClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 281
    iget-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 282
    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/ClassLoader;

    #@d
    .line 281
    :cond_0
    return-object v0
.end method

.method private getEffectiveResourceBundleName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1680
    move-object v1, p0

    #@2
    .line 1681
    .local v1, "target":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v1, :cond_1

    #@4
    .line 1682
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1683
    .local v0, "rbn":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 1684
    return-object v0

    #@b
    .line 1686
    :cond_0
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    #@e
    move-result-object v1

    #@f
    goto :goto_0

    #@10
    .line 1688
    .end local v0    # "rbn":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static final getGlobal()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 216
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 442
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 443
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    #@7
    move-result-object v1

    #@8
    .line 445
    .local v1, "result":Ljava/util/logging/Logger;
    iget-object v2, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@a
    if-nez v2, :cond_1

    #@c
    .line 456
    invoke-direct {v1, p1, v0}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    #@f
    .line 463
    :cond_0
    return-object v1

    #@10
    .line 457
    :cond_1
    iget-object v2, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 460
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    iget-object v4, v1, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 461
    const-string/jumbo v4, " != "

    #@28
    .line 460
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
.end method

.method static getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    .line 474
    .local v0, "manager":Ljava/util/logging/LogManager;
    const-string/jumbo v2, "sun.util.logging.resources.logging"

    #@7
    invoke-virtual {v0, p0, v2}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    #@a
    move-result-object v1

    #@b
    .line 475
    .local v1, "result":Ljava/util/logging/Logger;
    return-object v1
.end method

.method private setCallersClassLoaderRef(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    .line 272
    if-eqz p1, :cond_0

    #@3
    .line 273
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v0

    #@7
    .line 275
    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    if-eqz v0, :cond_1

    #@9
    .line 276
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    #@10
    .line 271
    :cond_1
    return-void
.end method

.method private declared-synchronized setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "callersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    #@1
    .line 1518
    if-nez p1, :cond_0

    #@3
    monitor-exit p0

    #@4
    .line 1519
    return-void

    #@5
    .line 1522
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->setCallersClassLoaderRef(Ljava/lang/Class;)V

    #@8
    .line 1523
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, p1, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    #@c
    move-result-object v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1527
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    #@12
    .line 1528
    new-instance v0, Ljava/util/MissingResourceException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Can\'t find "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, " bundle"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 1529
    const-string/jumbo v2, ""

    #@32
    .line 1528
    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@35
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :catchall_0
    move-exception v0

    #@37
    monitor-exit p0

    #@38
    throw v0

    #@39
    .line 1531
    :cond_1
    :try_start_1
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    monitor-exit p0

    #@3c
    .line 1517
    return-void
.end method

.method private updateEffectiveLevel()V
    .locals 5

    #@0
    .prologue
    .line 1643
    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 1644
    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    #@9
    move-result v2

    #@a
    .line 1655
    .local v2, "newLevelValue":I
    :goto_0
    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    #@c
    if-ne v4, v2, :cond_2

    #@e
    .line 1656
    return-void

    #@f
    .line 1646
    .end local v2    # "newLevelValue":I
    :cond_0
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 1647
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@15
    iget v2, v4, Ljava/util/logging/Logger;->levelValue:I

    #@17
    .restart local v2    # "newLevelValue":I
    goto :goto_0

    #@18
    .line 1650
    .end local v2    # "newLevelValue":I
    :cond_1
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@1a
    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    #@1d
    move-result v2

    #@1e
    .restart local v2    # "newLevelValue":I
    goto :goto_0

    #@1f
    .line 1659
    :cond_2
    iput v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@21
    .line 1664
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 1665
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v4

    #@2c
    if-ge v0, v4, :cond_4

    #@2e
    .line 1666
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@36
    .line 1667
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Ljava/util/logging/Logger;

    #@3c
    .line 1668
    .local v1, "kid":Ljava/util/logging/Logger;
    if-eqz v1, :cond_3

    #@3e
    .line 1669
    invoke-direct {v1}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    #@41
    .line 1665
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_1

    #@44
    .line 1638
    .end local v0    # "i":I
    .end local v1    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_4
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1317
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getClass()Ljava/lang/Class;

    #@3
    .line 1318
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    #@6
    .line 1319
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 1315
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1190
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1191
    return-void

    #@b
    .line 1193
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1189
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1004
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1005
    return-void

    #@b
    .line 1007
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v1, "ENTRY"

    #@10
    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 1003
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1023
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1024
    return-void

    #@b
    .line 1026
    :cond_0
    const/4 v0, 0x1

    #@c
    new-array v5, v0, [Ljava/lang/Object;

    #@e
    const/4 v0, 0x0

    #@f
    aput-object p3, v5, v0

    #@11
    .line 1027
    .local v5, "params":[Ljava/lang/Object;
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@13
    const-string/jumbo v4, "ENTRY {0}"

    #@16
    move-object v0, p0

    #@17
    move-object v2, p1

    #@18
    move-object v3, p2

    #@19
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 1022
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1044
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1045
    return-void

    #@b
    .line 1047
    :cond_0
    const-string/jumbo v4, "ENTRY"

    #@e
    .line 1048
    .local v4, "msg":Ljava/lang/String;
    if-nez p3, :cond_1

    #@10
    .line 1049
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@12
    invoke-virtual {p0, v0, p1, p2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 1050
    return-void

    #@16
    .line 1052
    :cond_1
    const/4 v6, 0x0

    #@17
    .local v6, "i":I
    :goto_0
    array-length v0, p3

    #@18
    if-ge v6, v0, :cond_2

    #@1a
    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, " {"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, "}"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 1052
    add-int/lit8 v6, v6, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1055
    :cond_2
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@3e
    move-object v0, p0

    #@3f
    move-object v2, p1

    #@40
    move-object v3, p2

    #@41
    move-object v5, p3

    #@42
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@45
    .line 1043
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1069
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1070
    return-void

    #@b
    .line 1072
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v1, "RETURN"

    #@10
    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 1068
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1089
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1090
    return-void

    #@b
    .line 1092
    :cond_0
    const/4 v0, 0x1

    #@c
    new-array v6, v0, [Ljava/lang/Object;

    #@e
    const/4 v0, 0x0

    #@f
    aput-object p3, v6, v0

    #@11
    .line 1093
    .local v6, "params":[Ljava/lang/Object;
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@13
    const-string/jumbo v4, "RETURN {0}"

    #@16
    move-object v0, p0

    #@17
    move-object v2, p1

    #@18
    move-object v3, p2

    #@19
    move-object v5, p3

    #@1a
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    #@1d
    .line 1088
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1206
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1207
    return-void

    #@b
    .line 1209
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1205
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1222
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1223
    return-void

    #@b
    .line 1225
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1221
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1238
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1239
    return-void

    #@b
    .line 1241
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1237
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    #@2
    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 2

    #@0
    .prologue
    .line 1345
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    sget-object v1, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/util/logging/Handler;

    #@a
    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    #@0
    .prologue
    .line 1278
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 1553
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 2

    #@0
    .prologue
    .line 552
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    #@0
    .prologue
    .line 1371
    iget-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    #@2
    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1174
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1175
    return-void

    #@b
    .line 1177
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1173
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 2
    .param p1, "level"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 1290
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v0, v1, :cond_0

    #@8
    iget v0, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v1, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 1291
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 1293
    :cond_1
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 655
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 656
    :cond_0
    return-void

    #@f
    .line 658
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 659
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@17
    .line 654
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 674
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v2

    #@4
    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v2, v3, :cond_0

    #@8
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v3, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 675
    :cond_0
    return-void

    #@f
    .line 677
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 678
    .local v0, "lr":Ljava/util/logging/LogRecord;
    const/4 v2, 0x1

    #@15
    new-array v1, v2, [Ljava/lang/Object;

    #@17
    const/4 v2, 0x0

    #@18
    aput-object p3, v1, v2

    #@1a
    .line 679
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@1d
    .line 680
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@20
    .line 673
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 720
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 721
    :cond_0
    return-void

    #@f
    .line 723
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 724
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@17
    .line 725
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@1a
    .line 719
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 695
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 696
    :cond_0
    return-void

    #@f
    .line 698
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 699
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@17
    .line 700
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@1a
    .line 694
    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 601
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    #@7
    move-result v3

    #@8
    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    if-lt v3, v4, :cond_0

    #@c
    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    #@e
    sget v4, Ljava/util/logging/Logger;->offValue:I

    #@10
    if-ne v3, v4, :cond_1

    #@12
    .line 602
    :cond_0
    return-void

    #@13
    .line 604
    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    #@15
    .line 605
    .local v2, "theFilter":Ljava/util/logging/Filter;
    if-eqz v2, :cond_2

    #@17
    invoke-interface {v2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    .line 612
    :cond_2
    move-object v1, p0

    #@1e
    .line 613
    .local v1, "logger":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v1, :cond_5

    #@20
    .line 614
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@23
    move-result-object v4

    #@24
    const/4 v3, 0x0

    #@25
    array-length v5, v4

    #@26
    :goto_1
    if-ge v3, v5, :cond_4

    #@28
    aget-object v0, v4, v3

    #@2a
    .line 615
    .local v0, "handler":Ljava/util/logging/Handler;
    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    #@2d
    .line 614
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 606
    .end local v0    # "handler":Ljava/util/logging/Handler;
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_3
    return-void

    #@31
    .line 618
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    :cond_4
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    #@34
    move-result v3

    #@35
    if-nez v3, :cond_6

    #@37
    .line 600
    :cond_5
    return-void

    #@38
    .line 622
    :cond_6
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    #@3b
    move-result-object v1

    #@3c
    goto :goto_0
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 746
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 747
    :cond_0
    return-void

    #@f
    .line 749
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 750
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 751
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 752
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@1d
    .line 745
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 771
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v2

    #@4
    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v2, v3, :cond_0

    #@8
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v3, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 772
    :cond_0
    return-void

    #@f
    .line 774
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 775
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 776
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 777
    const/4 v2, 0x1

    #@1b
    new-array v1, v2, [Ljava/lang/Object;

    #@1d
    const/4 v2, 0x0

    #@1e
    aput-object p5, v1, v2

    #@20
    .line 778
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@23
    .line 779
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@26
    .line 770
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 829
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 830
    :cond_0
    return-void

    #@f
    .line 832
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 833
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 834
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 835
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@1d
    .line 836
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@20
    .line 828
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 798
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 799
    :cond_0
    return-void

    #@f
    .line 801
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 802
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 803
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 804
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@1d
    .line 805
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@20
    .line 797
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 877
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 878
    :cond_0
    return-void

    #@f
    .line 880
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 881
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 882
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 883
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    #@1d
    .line 876
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 908
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v2

    #@4
    iget v3, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v2, v3, :cond_0

    #@8
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v3, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 909
    :cond_0
    return-void

    #@f
    .line 911
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 912
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 913
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 914
    const/4 v2, 0x1

    #@1b
    new-array v1, v2, [Ljava/lang/Object;

    #@1d
    const/4 v2, 0x0

    #@1e
    aput-object p6, v1, v2

    #@20
    .line 915
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@23
    .line 916
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    #@26
    .line 907
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 979
    :cond_0
    return-void

    #@f
    .line 981
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 982
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 983
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 984
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@1d
    .line 985
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    #@20
    .line 977
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 941
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@6
    if-lt v1, v2, :cond_0

    #@8
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@a
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 942
    :cond_0
    return-void

    #@f
    .line 944
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@11
    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@14
    .line 945
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@17
    .line 946
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1a
    .line 947
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@1d
    .line 948
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    #@20
    .line 940
    return-void
.end method

.method final removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .locals 4
    .param p1, "child"    # Ljava/util/logging/LogManager$LoggerWeakRef;

    #@0
    .prologue
    .line 1624
    sget-object v3, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1625
    :try_start_0
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1626
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    #@15
    .line 1627
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-ne v1, p1, :cond_0

    #@17
    .line 1628
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v3

    #@1b
    .line 1629
    return-void

    #@1c
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_1
    monitor-exit v3

    #@1d
    .line 1623
    return-void

    #@1e
    .line 1624
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1332
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    #@3
    .line 1333
    if-nez p1, :cond_0

    #@5
    .line 1334
    return-void

    #@6
    .line 1336
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 1331
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 0
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    #@3
    .line 579
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    #@5
    .line 577
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1263
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    #@3
    .line 1264
    sget-object v1, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1265
    :try_start_0
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    #@8
    .line 1266
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 1262
    return-void

    #@d
    .line 1264
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method setLogManager(Ljava/util/logging/LogManager;)V
    .locals 0
    .param p1, "manager"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 298
    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@2
    .line 297
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 1567
    if-nez p1, :cond_0

    #@2
    .line 1568
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1570
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    #@a
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    #@d
    .line 1571
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    #@10
    .line 1566
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 0
    .param p1, "useParentHandlers"    # Z

    #@0
    .prologue
    .line 1360
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    #@3
    .line 1361
    iput-boolean p1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    #@5
    .line 1359
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1142
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1143
    return-void

    #@b
    .line 1145
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1141
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1118
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-lt v1, v2, :cond_0

    #@a
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@c
    sget v2, Ljava/util/logging/Logger;->offValue:I

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 1119
    :cond_0
    return-void

    #@11
    .line 1121
    :cond_1
    new-instance v0, Ljava/util/logging/LogRecord;

    #@13
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@15
    const-string/jumbo v2, "THROW"

    #@18
    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@1b
    .line 1122
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@1e
    .line 1123
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@21
    .line 1124
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@24
    .line 1125
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    #@27
    .line 1117
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1158
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1159
    return-void

    #@b
    .line 1161
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@d
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@10
    .line 1157
    return-void
.end method
