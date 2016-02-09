.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$1;
    }
.end annotation


# static fields
.field private static final EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

.field private static final GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final androidTag:Ljava/lang/String;

.field final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

.field private filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isNamed:Z

.field volatile levelIntVal:I

.field volatile levelObjVal:Ljava/util/logging/Level;

.field private volatile name:Ljava/lang/String;

.field private notifyParentHandlers:Z

.field parent:Ljava/util/logging/Logger;

.field private volatile resourceBundle:Ljava/util/ResourceBundle;

.field private volatile resourceBundleName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/util/logging/Logger;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V
    .locals 0
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/util/logging/Logger$1;

    #@2
    invoke-direct {v0}, Ljava/util/logging/Logger$1;-><init>()V

    #@5
    sput-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    #@7
    .line 99
    new-instance v0, Ljava/util/logging/Logger;

    #@9
    const-string/jumbo v1, "global"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@12
    .line 107
    const/4 v0, 0x0

    #@13
    new-array v0, v0, [Ljava/util/logging/Handler;

    #@15
    sput-object v0, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    #@17
    .line 73
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 127
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@6
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    #@c
    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@11
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@13
    .line 148
    iput-boolean v1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    #@15
    .line 154
    iput-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    #@17
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v0, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    #@1e
    .line 166
    sget-object v0, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    #@20
    iput-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    #@22
    .line 253
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@24
    .line 254
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    #@27
    .line 255
    invoke-static {p1}, Ldalvik/system/DalvikLogging;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    #@2d
    .line 256
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@30
    .line 252
    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3
    .param p0, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    new-instance v1, Ljava/util/logging/Logger;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v1, v2, p0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 321
    .local v1, "result":Ljava/util/logging/Logger;
    const/4 v2, 0x0

    #@7
    iput-boolean v2, v1, Ljava/util/logging/Logger;->isNamed:Z

    #@9
    .line 322
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@c
    move-result-object v0

    #@d
    .line 323
    .local v0, "logManager":Ljava/util/logging/LogManager;
    const-string/jumbo v2, ""

    #@10
    invoke-virtual {v0, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@17
    .line 324
    return-object v1
.end method

.method public static getGlobal()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 393
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 362
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, p0, v1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 382
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p0, p1}, Ljava/util/logging/LogManager;->getOrCreate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    #@7
    move-result-object v0

    #@8
    .line 384
    .local v0, "result":Ljava/util/logging/Logger;
    invoke-direct {v0, p1}, Ljava/util/logging/Logger;->initResourceBundle(Ljava/lang/String;)V

    #@b
    .line 385
    return-object v0
.end method

.method private declared-synchronized initResourceBundle(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 334
    :try_start_0
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@3
    .line 336
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@5
    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 338
    return-void

    #@d
    .line 340
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Resource bundle name \'"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "\' is inconsistent with the existing \'"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "\'"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1

    #@3c
    .line 344
    .restart local v0    # "current":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    #@3e
    .line 345
    :try_start_2
    invoke-static {p1}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    #@44
    .line 346
    iput-object p1, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    :cond_2
    monitor-exit p0

    #@47
    .line 333
    return-void
.end method

.method private internalIsLoggable(Ljava/util/logging/Level;)Z
    .locals 3
    .param p1, "l"    # Ljava/util/logging/Level;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 632
    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    #@3
    .line 633
    .local v0, "effectiveLevel":I
    sget-object v2, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@5
    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    #@8
    move-result v2

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 635
    return v1

    #@c
    .line 637
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@f
    move-result v2

    #@10
    if-lt v2, v0, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    :cond_1
    return v1
.end method

.method static loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 6
    .param p0, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v0

    #@9
    .line 271
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    #@b
    .line 273
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@e
    move-result-object v2

    #@f
    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 274
    :catch_0
    move-exception v1

    #@15
    .line 279
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@18
    move-result-object v0

    #@19
    .line 280
    if-eqz v0, :cond_1

    #@1b
    .line 282
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 283
    :catch_1
    move-exception v1

    #@25
    .line 287
    :cond_1
    new-instance v2, Ljava/util/MissingResourceException;

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Failed to load the specified resource bundle \""

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 288
    const-string/jumbo v4, "\""

    #@3a
    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3, p0, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@45
    throw v2
.end method

.method private setResourceBundle(Ljava/util/logging/LogRecord;)V
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 661
    move-object v0, p0

    #@1
    .local v0, "p":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v0, :cond_1

    #@3
    .line 662
    iget-object v1, v0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@5
    .line 663
    .local v1, "resourceBundleName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@7
    .line 664
    iget-object v2, v0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    #@9
    invoke-virtual {p1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    #@c
    .line 665
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@f
    .line 666
    return-void

    #@10
    .line 661
    :cond_0
    iget-object v0, v0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@12
    goto :goto_0

    #@13
    .line 660
    .end local v1    # "resourceBundleName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 2
    .param p1, "handler"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 404
    if-nez p1, :cond_0

    #@2
    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "handler == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 408
    :cond_0
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 409
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@16
    .line 411
    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 412
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@1e
    .line 403
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 875
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 874
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 682
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 683
    return-void

    #@9
    .line 686
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@b
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v2, "ENTRY"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@13
    .line 687
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@18
    .line 688
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@1b
    .line 689
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1e
    .line 690
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@21
    .line 691
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@24
    .line 681
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 708
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 709
    return-void

    #@9
    .line 712
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@b
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v2, "ENTRY {0}"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@13
    .line 713
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@18
    .line 714
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@1b
    .line 715
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1e
    .line 716
    const/4 v1, 0x1

    #@1f
    new-array v1, v1, [Ljava/lang/Object;

    #@21
    const/4 v2, 0x0

    #@22
    aput-object p3, v1, v2

    #@24
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@27
    .line 717
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@2a
    .line 718
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@2d
    .line 707
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 736
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-direct {p0, v4}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 737
    return-void

    #@9
    .line 740
    :cond_0
    const-string/jumbo v1, "ENTRY"

    #@c
    .line 741
    .local v1, "msg":Ljava/lang/String;
    if-eqz p3, :cond_2

    #@e
    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    const-string/jumbo v4, "ENTRY"

    #@13
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    .line 743
    .local v2, "msgBuffer":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    array-length v4, p3

    #@18
    if-ge v0, v4, :cond_1

    #@1a
    .line 744
    const-string/jumbo v4, " {"

    #@1d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    const-string/jumbo v5, "}"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 743
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 746
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 748
    .end local v0    # "i":I
    .end local v2    # "msgBuffer":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/util/logging/LogRecord;

    #@34
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@36
    invoke-direct {v3, v4, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@39
    .line 749
    .local v3, "record":Ljava/util/logging/LogRecord;
    iget-object v4, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@3b
    invoke-virtual {v3, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@3e
    .line 750
    invoke-virtual {v3, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@41
    .line 751
    invoke-virtual {v3, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@44
    .line 752
    invoke-virtual {v3, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@47
    .line 753
    invoke-direct {p0, v3}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@4a
    .line 754
    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@4d
    .line 735
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 768
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 769
    return-void

    #@9
    .line 772
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@b
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v2, "RETURN"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@13
    .line 773
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@18
    .line 774
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@1b
    .line 775
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1e
    .line 776
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@21
    .line 777
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@24
    .line 767
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 793
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 794
    return-void

    #@9
    .line 797
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@b
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v2, "RETURN {0}"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@13
    .line 798
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@18
    .line 799
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@1b
    .line 800
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1e
    .line 801
    const/4 v1, 0x1

    #@1f
    new-array v1, v1, [Ljava/lang/Object;

    #@21
    const/4 v2, 0x0

    #@22
    aput-object p3, v1, v2

    #@24
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@27
    .line 802
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@2a
    .line 803
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@2d
    .line 792
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 886
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 885
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 897
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 896
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 908
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 907
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    #@2
    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 2

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@2
    sget-object v1, Ljava/util/logging/Logger;->EMPTY_HANDLERS_ARRAY:[Ljava/util/logging/Handler;

    #@4
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    .line 519
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .locals 1

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 611
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundle:Ljava/util/ResourceBundle;

    #@2
    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Ljava/util/logging/Logger;->resourceBundleName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUseParentHandlers()Z
    .locals 1

    #@0
    .prologue
    .line 547
    iget-boolean v0, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    #@2
    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 864
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 863
    return-void
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "l"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 651
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 921
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 922
    return-void

    #@7
    .line 924
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    #@9
    iget-object v1, p0, Ljava/util/logging/Logger;->androidTag:Ljava/lang/String;

    #@b
    invoke-interface {v0, p0, v1, p1, p2}, Ldalvik/system/DalvikLogHandler;->publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V

    #@e
    .line 920
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 939
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 940
    return-void

    #@7
    .line 943
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 944
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 945
    const/4 v1, 0x1

    #@12
    new-array v1, v1, [Ljava/lang/Object;

    #@14
    const/4 v2, 0x0

    #@15
    aput-object p3, v1, v2

    #@17
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@1a
    .line 946
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@1d
    .line 947
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@20
    .line 938
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 986
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 987
    return-void

    #@7
    .line 990
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 991
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 992
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@14
    .line 993
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@17
    .line 994
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@1a
    .line 985
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 962
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 963
    return-void

    #@7
    .line 966
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 967
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 968
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@14
    .line 969
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@17
    .line 970
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@1a
    .line 961
    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 9
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1013
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    #@4
    move-result-object v6

    #@5
    invoke-direct {p0, v6}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@8
    move-result v6

    #@9
    if-nez v6, :cond_0

    #@b
    .line 1014
    return-void

    #@c
    .line 1018
    :cond_0
    iget-object v2, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    #@e
    .line 1019
    .local v2, "f":Ljava/util/logging/Filter;
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_2

    #@16
    .line 1026
    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@19
    move-result-object v0

    #@1a
    .line 1027
    .local v0, "allHandlers":[Ljava/util/logging/Handler;
    array-length v8, v0

    #@1b
    move v6, v7

    #@1c
    :goto_0
    if-ge v6, v8, :cond_3

    #@1e
    aget-object v1, v0, v6

    #@20
    .line 1028
    .local v1, "element":Ljava/util/logging/Handler;
    invoke-virtual {v1, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    #@23
    .line 1027
    add-int/lit8 v6, v6, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1020
    .end local v0    # "allHandlers":[Ljava/util/logging/Handler;
    .end local v1    # "element":Ljava/util/logging/Handler;
    :cond_2
    return-void

    #@27
    .line 1031
    .restart local v0    # "allHandlers":[Ljava/util/logging/Handler;
    :cond_3
    move-object v4, p0

    #@28
    .line 1032
    .local v4, "temp":Ljava/util/logging/Logger;
    iget-object v5, v4, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@2a
    .line 1033
    .local v5, "theParent":Ljava/util/logging/Logger;
    :goto_1
    if-eqz v5, :cond_5

    #@2c
    invoke-virtual {v4}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_5

    #@32
    .line 1034
    invoke-virtual {v5}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@35
    move-result-object v3

    #@36
    .line 1035
    .local v3, "ha":[Ljava/util/logging/Handler;
    array-length v8, v3

    #@37
    move v6, v7

    #@38
    :goto_2
    if-ge v6, v8, :cond_4

    #@3a
    aget-object v1, v3, v6

    #@3c
    .line 1036
    .restart local v1    # "element":Ljava/util/logging/Handler;
    invoke-virtual {v1, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    #@3f
    .line 1035
    add-int/lit8 v6, v6, 0x1

    #@41
    goto :goto_2

    #@42
    .line 1038
    .end local v1    # "element":Ljava/util/logging/Handler;
    :cond_4
    move-object v4, v5

    #@43
    .line 1039
    iget-object v5, v4, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@45
    goto :goto_1

    #@46
    .line 1012
    .end local v3    # "ha":[Ljava/util/logging/Handler;
    :cond_5
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1058
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1059
    return-void

    #@7
    .line 1062
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1063
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 1064
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@14
    .line 1065
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@17
    .line 1066
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@1a
    .line 1067
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@1d
    .line 1057
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1087
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1088
    return-void

    #@7
    .line 1091
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1092
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 1093
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@14
    .line 1094
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@17
    .line 1095
    const/4 v1, 0x1

    #@18
    new-array v1, v1, [Ljava/lang/Object;

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object p5, v1, v2

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@20
    .line 1096
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@23
    .line 1097
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@26
    .line 1086
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1147
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1148
    return-void

    #@7
    .line 1151
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1152
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 1153
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@14
    .line 1154
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@17
    .line 1155
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@1a
    .line 1156
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@1d
    .line 1157
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@20
    .line 1146
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1117
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1118
    return-void

    #@7
    .line 1121
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1122
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@11
    .line 1123
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@14
    .line 1124
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@17
    .line 1125
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@1a
    .line 1126
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@1d
    .line 1127
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@20
    .line 1116
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1179
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1180
    return-void

    #@7
    .line 1183
    :cond_0
    new-instance v1, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v1, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1184
    .local v1, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    #@e
    .line 1186
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1190
    :goto_0
    invoke-virtual {v1, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@18
    .line 1192
    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@1d
    .line 1193
    invoke-virtual {v1, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@20
    .line 1194
    invoke-virtual {v1, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@23
    .line 1195
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@26
    .line 1178
    return-void

    #@27
    .line 1187
    :catch_0
    move-exception v0

    #@28
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "param"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1219
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1220
    return-void

    #@7
    .line 1223
    :cond_0
    new-instance v1, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v1, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1224
    .local v1, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    #@e
    .line 1226
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1230
    :goto_0
    invoke-virtual {v1, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@18
    .line 1232
    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@1d
    .line 1233
    invoke-virtual {v1, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@20
    .line 1234
    invoke-virtual {v1, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@23
    .line 1235
    const/4 v2, 0x1

    #@24
    new-array v2, v2, [Ljava/lang/Object;

    #@26
    const/4 v3, 0x0

    #@27
    aput-object p6, v2, v3

    #@29
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@2c
    .line 1236
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@2f
    .line 1218
    return-void

    #@30
    .line 1227
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1301
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1302
    return-void

    #@7
    .line 1305
    :cond_0
    new-instance v1, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v1, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1306
    .local v1, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    #@e
    .line 1308
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1312
    :goto_0
    invoke-virtual {v1, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@18
    .line 1314
    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@1d
    .line 1315
    invoke-virtual {v1, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@20
    .line 1316
    invoke-virtual {v1, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@23
    .line 1317
    invoke-virtual {v1, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@26
    .line 1318
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@29
    .line 1300
    return-void

    #@2a
    .line 1309
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1260
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1261
    return-void

    #@7
    .line 1264
    :cond_0
    new-instance v1, Ljava/util/logging/LogRecord;

    #@9
    invoke-direct {v1, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@c
    .line 1265
    .local v1, "record":Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_1

    #@e
    .line 1267
    :try_start_0
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1271
    :goto_0
    invoke-virtual {v1, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    #@18
    .line 1273
    :cond_1
    iget-object v2, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@1d
    .line 1274
    invoke-virtual {v1, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@20
    .line 1275
    invoke-virtual {v1, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@23
    .line 1276
    invoke-virtual {v1, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    #@26
    .line 1277
    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@29
    .line 1259
    return-void

    #@2a
    .line 1268
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 479
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 480
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@b
    .line 482
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 483
    return-void

    #@e
    .line 485
    :cond_1
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@13
    .line 486
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@16
    .line 477
    return-void
.end method

.method reset()V
    .locals 4

    #@0
    .prologue
    .line 1322
    const/4 v3, 0x0

    #@1
    iput-object v3, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    #@3
    .line 1323
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@5
    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    #@8
    move-result v3

    #@9
    iput v3, p0, Ljava/util/logging/Logger;->levelIntVal:I

    #@b
    .line 1325
    iget-object v3, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "handler$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/logging/Handler;

    #@1d
    .line 1327
    .local v0, "handler":Ljava/util/logging/Handler;
    :try_start_0
    iget-object v3, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@1f
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 1328
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 1330
    :catch_0
    move-exception v2

    #@2a
    .local v2, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@2b
    .line 1334
    .end local v0    # "handler":Ljava/util/logging/Handler;
    .end local v2    # "ignored":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@2e
    .line 1321
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

    #@0
    .prologue
    .line 506
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 507
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@b
    .line 509
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    #@d
    .line 504
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 2
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    #@0
    .prologue
    .line 531
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    .line 532
    .local v0, "logManager":Ljava/util/logging/LogManager;
    iget-boolean v1, p0, Ljava/util/logging/Logger;->isNamed:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 533
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@b
    .line 535
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    #@e
    .line 529
    return-void
.end method

.method setManager(Ljava/util/logging/LogManager;)V
    .locals 14
    .param p1, "manager"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v10, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v9

    #@b
    const-string/jumbo v10, ".level"

    #@e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v9

    #@12
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {p1, v9}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 421
    .local v8, "levelProperty":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@1c
    .line 423
    :try_start_0
    invoke-static {v8}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {p1, p0, v9}, Ljava/util/logging/LogManager;->setLevelRecursively(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 429
    :cond_0
    :goto_0
    iget-object v9, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@25
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_1

    #@2b
    const-string/jumbo v3, "handlers"

    #@2e
    .line 430
    .local v3, "handlersPropertyName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 431
    .local v2, "handlersProperty":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@34
    .line 432
    const-string/jumbo v9, ",|\\s"

    #@37
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3a
    move-result-object v10

    #@3b
    const/4 v9, 0x0

    #@3c
    array-length v11, v10

    #@3d
    :goto_2
    if-ge v9, v11, :cond_4

    #@3f
    aget-object v1, v10, v9

    #@41
    .line 433
    .local v1, "handlerName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@44
    move-result v12

    #@45
    if-eqz v12, :cond_2

    #@47
    .line 432
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 424
    .end local v1    # "handlerName":Ljava/lang/String;
    .end local v2    # "handlersProperty":Ljava/lang/String;
    .end local v3    # "handlersPropertyName":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@4b
    .line 425
    .local v6, "invalidLevel":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@4e
    goto :goto_0

    #@4f
    .line 429
    .end local v6    # "invalidLevel":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    iget-object v10, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    const-string/jumbo v10, ".handlers"

    #@5d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    .restart local v3    # "handlersPropertyName":Ljava/lang/String;
    goto :goto_1

    #@66
    .line 439
    .restart local v1    # "handlerName":Ljava/lang/String;
    .restart local v2    # "handlersProperty":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Ljava/util/logging/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@6c
    .line 446
    .local v0, "handler":Ljava/util/logging/Handler;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v12

    #@75
    const-string/jumbo v13, ".level"

    #@78
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v12

    #@7c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v12

    #@80
    invoke-virtual {p1, v12}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    .line 447
    .local v7, "level":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@86
    .line 448
    invoke-static {v7}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    #@89
    move-result-object v12

    #@8a
    invoke-virtual {v0, v12}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@8d
    .line 454
    .end local v7    # "level":Ljava/lang/String;
    :cond_3
    :goto_4
    iget-object v12, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@8f
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@92
    goto :goto_3

    #@93
    .line 440
    .end local v0    # "handler":Ljava/util/logging/Handler;
    :catch_1
    move-exception v4

    #@94
    .line 441
    .local v4, "invalidHandlerName":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    #@97
    goto :goto_3

    #@98
    .line 450
    .end local v4    # "invalidHandlerName":Ljava/lang/Exception;
    .restart local v0    # "handler":Ljava/util/logging/Handler;
    :catch_2
    move-exception v5

    #@99
    .line 451
    .local v5, "invalidLevel":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    #@9c
    goto :goto_4

    #@9d
    .line 458
    .end local v0    # "handler":Ljava/util/logging/Handler;
    .end local v1    # "handlerName":Ljava/lang/String;
    .end local v5    # "invalidLevel":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@a0
    .line 419
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .locals 3
    .param p1, "parent"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 584
    if-nez p1, :cond_0

    #@2
    .line 585
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "parent == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 589
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@e
    move-result-object v0

    #@f
    .line 590
    .local v0, "logManager":Ljava/util/logging/LogManager;
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@12
    .line 591
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->setParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    #@15
    .line 583
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .locals 1
    .param p1, "notifyParentHandlers"    # Z

    #@0
    .prologue
    .line 559
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 560
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@b
    .line 562
    :cond_0
    iput-boolean p1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    #@d
    .line 563
    invoke-virtual {p0}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@10
    .line 557
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 842
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 841
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 821
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@2
    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 822
    return-void

    #@9
    .line 825
    :cond_0
    new-instance v0, Ljava/util/logging/LogRecord;

    #@b
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@d
    const-string/jumbo v2, "THROW"

    #@10
    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@13
    .line 826
    .local v0, "record":Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    #@15
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@18
    .line 827
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    #@1b
    .line 828
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    #@1e
    .line 829
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    #@21
    .line 830
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    #@24
    .line 831
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@27
    .line 820
    return-void
.end method

.method updateDalvikLogHandler()V
    .locals 8

    #@0
    .prologue
    .line 186
    sget-object v4, Ljava/util/logging/Logger;->GENERAL_LOG_HANDLER:Ldalvik/system/DalvikLogHandler;

    #@2
    .line 188
    .local v4, "newLogHandler":Ldalvik/system/DalvikLogHandler;
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    #@4
    .line 190
    .local v5, "parent":Ljava/util/logging/Logger;
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v6

    #@8
    const-class v7, Ljava/util/logging/Logger;

    #@a
    if-eq v6, v7, :cond_1

    #@c
    .line 226
    :cond_0
    :goto_0
    iget-object v6, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    #@e
    if-ne v4, v6, :cond_3

    #@10
    .line 227
    return-void

    #@11
    .line 197
    :cond_1
    if-nez v5, :cond_2

    #@13
    .line 199
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@15
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .line 200
    .local v1, "h":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/logging/Handler;

    #@25
    .line 202
    .local v0, "firstHandler":Ljava/util/logging/Handler;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v6

    #@29
    if-nez v6, :cond_0

    #@2b
    instance-of v6, v0, Ldalvik/system/DalvikLogHandler;

    #@2d
    if-eqz v6, :cond_0

    #@2f
    move-object v4, v0

    #@30
    .line 211
    check-cast v4, Ldalvik/system/DalvikLogHandler;

    #@32
    goto :goto_0

    #@33
    .line 214
    .end local v0    # "firstHandler":Ljava/util/logging/Handler;
    .end local v1    # "h":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/Handler;>;"
    :cond_2
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    #@35
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_0

    #@3b
    iget-boolean v6, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    #@3d
    if-eqz v6, :cond_0

    #@3f
    .line 223
    iget-object v4, v5, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    #@41
    goto :goto_0

    #@42
    .line 230
    :cond_3
    iput-object v4, p0, Ljava/util/logging/Logger;->dalvikLogHandler:Ldalvik/system/DalvikLogHandler;

    #@44
    .line 232
    iget-object v6, p0, Ljava/util/logging/Logger;->children:Ljava/util/List;

    #@46
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v3

    #@4a
    .local v3, "logger$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v6

    #@4e
    if-eqz v6, :cond_4

    #@50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v2

    #@54
    check-cast v2, Ljava/util/logging/Logger;

    #@56
    .line 233
    .local v2, "logger":Ljava/util/logging/Logger;
    invoke-virtual {v2}, Ljava/util/logging/Logger;->updateDalvikLogHandler()V

    #@59
    goto :goto_1

    #@5a
    .line 185
    .end local v2    # "logger":Ljava/util/logging/Logger;
    :cond_4
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 853
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 852
    return-void
.end method
