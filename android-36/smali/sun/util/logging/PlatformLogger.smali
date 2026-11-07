.class public Lsun/util/logging/PlatformLogger;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;,
        Lsun/util/logging/PlatformLogger$LoggerProxy;,
        Lsun/util/logging/PlatformLogger$JavaLoggerProxy;,
        Lsun/util/logging/PlatformLogger$Level;
    }
.end annotation


# static fields
.field private static final blacklist ALL:I = -0x80000000

.field private static final blacklist CONFIG:I = 0x2bc

.field private static final blacklist DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

.field private static final blacklist FINE:I = 0x1f4

.field private static final blacklist FINER:I = 0x190

.field private static final blacklist FINEST:I = 0x12c

.field private static final blacklist INFO:I = 0x320

.field private static final blacklist OFF:I = 0x7fffffff

.field private static final blacklist SEVERE:I = 0x3e8

.field private static final blacklist WARNING:I = 0x384

.field private static blacklist loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lsun/util/logging/PlatformLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist loggingEnabled:Z


# instance fields
.field private volatile blacklist javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

.field private volatile blacklist loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_LEVEL()Lsun/util/logging/PlatformLogger$Level;
    .registers 1

    sget-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    sput-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    .line 159
    new-instance v0, Lsun/util/logging/PlatformLogger$1;

    invoke-direct {v0}, Lsun/util/logging/PlatformLogger$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    sget-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-eqz v0, :cond_11

    .line 241
    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    goto :goto_18

    .line 243
    :cond_11
    new-instance v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    .line 245
    :goto_18
    return-void
.end method

.method public static declared-synchronized blacklist getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    const-class v0, Lsun/util/logging/PlatformLogger;

    monitor-enter v0

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "log":Lsun/util/logging/PlatformLogger;
    :try_start_4
    sget-object v2, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 196
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    if-eqz v2, :cond_15

    .line 197
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/logging/PlatformLogger;

    move-object v1, v3

    .line 199
    :cond_15
    if-nez v1, :cond_27

    .line 200
    new-instance v3, Lsun/util/logging/PlatformLogger;

    invoke-direct {v3, p0}, Lsun/util/logging/PlatformLogger;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 201
    sget-object v3, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_29

    .line 203
    :cond_27
    monitor-exit v0

    return-object v1

    .line 193
    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .end local p0    # "name":Ljava/lang/String;
    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static declared-synchronized blacklist redirectPlatformLoggers()V
    .registers 5

    const-class v0, Lsun/util/logging/PlatformLogger;

    monitor-enter v0

    .line 211
    :try_start_3
    sget-boolean v1, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-nez v1, :cond_3b

    invoke-static {}, Lsun/util/logging/LoggingSupport;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3b

    .line 213
    :cond_e
    const/4 v1, 0x1

    sput-boolean v1, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    .line 214
    sget-object v1, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 215
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 216
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/util/logging/PlatformLogger;

    .line 217
    .local v4, "plog":Lsun/util/logging/PlatformLogger;
    if-eqz v4, :cond_38

    .line 218
    invoke-direct {v4}, Lsun/util/logging/PlatformLogger;->redirectToJavaLoggerProxy()V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3d

    .line 220
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .end local v4    # "plog":Lsun/util/logging/PlatformLogger;
    :cond_38
    goto :goto_1b

    .line 221
    :cond_39
    monitor-exit v0

    return-void

    .line 211
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    .line 210
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private blacklist redirectToJavaLoggerProxy()V
    .registers 5

    .line 227
    const-class v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    .line 228
    .local v0, "lp":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    new-instance v1, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iget-object v2, v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    iget-object v3, v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    invoke-direct {v1, v2, v3}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    .line 230
    .local v1, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    iput-object v1, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    .line 231
    iput-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    .line 232
    return-void
.end method


# virtual methods
.method public blacklist config(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public blacklist config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 355
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    return-void
.end method

.method public varargs blacklist config(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public blacklist fine(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public blacklist fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 370
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    return-void
.end method

.method public varargs blacklist fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public blacklist finer(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public blacklist finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 385
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    return-void
.end method

.method public varargs blacklist finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public blacklist finest(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public blacklist finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 400
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    return-void
.end method

.method public varargs blacklist finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    iget-object v0, v0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist info(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public blacklist info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 340
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    return-void
.end method

.method public varargs blacklist info(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .registers 4
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .line 267
    if-eqz p1, :cond_12

    .line 271
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    .line 272
    .local v0, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    :goto_11
    return v1

    .line 268
    .end local v0    # "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist level()Lsun/util/logging/PlatformLogger$Level;
    .registers 2

    .line 283
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .registers 3
    .param p1, "newLevel"    # Lsun/util/logging/PlatformLogger$Level;

    .line 299
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    .line 300
    return-void
.end method

.method public blacklist severe(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public blacklist severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 310
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    return-void
.end method

.method public varargs blacklist severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public blacklist warning(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public blacklist warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 325
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public varargs blacklist warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    return-void
.end method
