.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;
.super Ljava/lang/Object;
.source "CronetLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory$SwapLoggerForTesting;
    }
.end annotation


# static fields
.field private static final blacklist SAMPLE_RATE_PER_SECOND:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsetLoggerForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;)V
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->setLoggerForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createLogger(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 31
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    if-nez v1, :cond_1e

    .line 35
    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->isAppOptedInForTelemetry(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2d

    if-eqz v1, :cond_1e

    .line 37
    :try_start_d
    new-instance v1, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;-><init>(I)V

    sput-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16
    .catchall {:try_start_d .. :try_end_15} :catchall_2d

    .line 42
    goto :goto_1e

    .line 38
    :catch_16
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    :try_start_17
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->TAG:Ljava/lang/String;

    const-string v3, "Exception creating an instance of CronetLoggerImpl"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    if-nez v1, :cond_29

    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/NoOpLogger;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/NoOpLogger;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 45
    :cond_29
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private static blacklist setLoggerForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;)V
    .registers 3
    .param p0, "testingLogger"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 50
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;

    monitor-enter v0

    .line 51
    :try_start_3
    sput-object p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->sLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
