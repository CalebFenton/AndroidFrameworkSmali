.class public Lsun/util/logging/PlatformLogger;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/PlatformLogger$1;,
        Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;,
        Lsun/util/logging/PlatformLogger$JavaLoggerProxy;,
        Lsun/util/logging/PlatformLogger$Level;,
        Lsun/util/logging/PlatformLogger$LoggerProxy;
    }
.end annotation


# static fields
.field public static final ALL:I = -0x80000000

.field public static final CONFIG:I = 0x2bc

.field private static final DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

.field public static final FINE:I = 0x1f4

.field public static final FINER:I = 0x190

.field public static final FINEST:I = 0x12c

.field public static final INFO:I = 0x320

.field public static final OFF:I = 0x7fffffff

.field public static final SEVERE:I = 0x3e8

.field public static final WARNING:I = 0x384

.field private static loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lsun/util/logging/PlatformLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static loggingEnabled:Z


# instance fields
.field private volatile javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

.field private volatile loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;


# direct methods
.method static synthetic -get0()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    #@0
    sget-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 160
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@2
    sput-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    #@4
    .line 164
    new-instance v0, Lsun/util/logging/PlatformLogger$1;

    #@6
    invoke-direct {v0}, Lsun/util/logging/PlatformLogger$1;-><init>()V

    #@9
    .line 163
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Boolean;

    #@f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    #@15
    .line 193
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 192
    sput-object v0, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    #@1c
    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 245
    sget-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 246
    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    #@9
    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    #@e
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@10
    .line 244
    :goto_0
    return-void

    #@11
    .line 248
    :cond_0
    new-instance v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    #@13
    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;-><init>(Ljava/lang/String;)V

    #@16
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@18
    goto :goto_0
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v5, Lsun/util/logging/PlatformLogger;

    #@2
    monitor-enter v5

    #@3
    .line 199
    const/4 v1, 0x0

    #@4
    .line 200
    .local v1, "log":Lsun/util/logging/PlatformLogger;
    :try_start_0
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    #@6
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@c
    .line 201
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    if-eqz v3, :cond_1

    #@e
    .line 202
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    move-object v0, v4

    #@13
    check-cast v0, Lsun/util/logging/PlatformLogger;

    #@15
    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .local v1, "log":Lsun/util/logging/PlatformLogger;
    move-object v2, v1

    #@17
    .line 204
    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .local v2, "log":Lsun/util/logging/PlatformLogger;
    :goto_0
    if-nez v2, :cond_0

    #@19
    .line 205
    :try_start_1
    new-instance v1, Lsun/util/logging/PlatformLogger;

    #@1b
    invoke-direct {v1, p0}, Lsun/util/logging/PlatformLogger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 206
    .end local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "log":Lsun/util/logging/PlatformLogger;
    :try_start_2
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    #@20
    new-instance v6, Ljava/lang/ref/WeakReference;

    #@22
    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@25
    invoke-interface {v4, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    :goto_1
    monitor-exit v5

    #@29
    .line 208
    return-object v1

    #@2a
    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    :catchall_0
    move-exception v4

    #@2b
    :goto_2
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .restart local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    :catchall_1
    move-exception v4

    #@2e
    move-object v1, v2

    #@2f
    .end local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "log":Lsun/util/logging/PlatformLogger;
    goto :goto_2

    #@30
    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v2    # "log":Lsun/util/logging/PlatformLogger;
    :cond_0
    move-object v1, v2

    #@31
    .end local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "log":Lsun/util/logging/PlatformLogger;
    goto :goto_1

    #@32
    .local v1, "log":Lsun/util/logging/PlatformLogger;
    :cond_1
    move-object v2, v1

    #@33
    .restart local v2    # "log":Lsun/util/logging/PlatformLogger;
    goto :goto_0
.end method

.method public static declared-synchronized redirectPlatformLoggers()V
    .locals 6

    #@0
    .prologue
    const-class v5, Lsun/util/logging/PlatformLogger;

    #@2
    monitor-enter v5

    #@3
    .line 216
    :try_start_0
    sget-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    #@5
    if-nez v4, :cond_1

    #@7
    invoke-static {}, Lsun/util/logging/LoggingSupport;->isAvailable()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 218
    const/4 v4, 0x1

    #@e
    sput-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    #@10
    .line 219
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    #@12
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_2

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/util/Map$Entry;

    #@26
    .line 220
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@2c
    .line 221
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lsun/util/logging/PlatformLogger;

    #@32
    .line 222
    .local v2, "plog":Lsun/util/logging/PlatformLogger;
    if-eqz v2, :cond_0

    #@34
    .line 223
    invoke-direct {v2}, Lsun/util/logging/PlatformLogger;->redirectToJavaLoggerProxy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_0

    #@38
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    .end local v2    # "plog":Lsun/util/logging/PlatformLogger;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@3c
    .line 216
    return-void

    #@3d
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v5

    #@3e
    .line 215
    return-void
.end method

.method private redirectToJavaLoggerProxy()V
    .locals 4

    #@0
    .prologue
    .line 232
    const-class v2, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    #@2
    iget-object v3, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@4
    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    #@a
    .line 233
    .local v1, "lp":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    #@c
    iget-object v2, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    #@e
    iget-object v3, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    #@10
    invoke-direct {v0, v2, v3}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    #@13
    .line 235
    .local v0, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    #@15
    .line 236
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@17
    .line 231
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 388
    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 392
    return-void
.end method

.method public varargs config(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 396
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 403
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 407
    return-void
.end method

.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 411
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 418
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 422
    return-void
.end method

.method public varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 426
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 433
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 437
    return-void
.end method

.method public varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 441
    return-void
.end method

.method public getLevel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 286
    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    invoke-virtual {v1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    #@5
    move-result-object v0

    #@6
    .line 287
    .local v0, "level":Lsun/util/logging/PlatformLogger$Level;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    #@b
    move-result v1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    iget-object v0, v0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 373
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 377
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 381
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "levelValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 275
    invoke-static {p1}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 2
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    .line 305
    if-nez p1, :cond_0

    #@2
    .line 306
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 309
    :cond_0
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    #@a
    .line 310
    .local v0, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    if-eqz v0, :cond_1

    #@c
    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@f
    move-result v1

    #@10
    :goto_0
    return v1

    #@11
    :cond_1
    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@13
    invoke-virtual {v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    #@16
    move-result v1

    #@17
    goto :goto_0
.end method

.method public level()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setLevel(I)V
    .locals 2
    .param p1, "newLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 297
    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    #@8
    .line 296
    return-void

    #@9
    .line 297
    :cond_0
    invoke-static {p1}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 1
    .param p1, "newLevel"    # Lsun/util/logging/PlatformLogger$Level;

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    #@5
    .line 336
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 343
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 347
    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 351
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    #@7
    .line 358
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    .line 362
    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    #@2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    .line 366
    return-void
.end method
