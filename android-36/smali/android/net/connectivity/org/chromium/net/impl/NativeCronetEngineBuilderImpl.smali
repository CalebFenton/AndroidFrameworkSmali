.class public Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;
.super Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
.source "NativeCronetEngineBuilderImpl.java"


# static fields
.field private static final blacklist sLogCronetInitializationRef:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->sLogCronetInitializationRef:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->computeCronetSource()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;-><init>(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V

    .line 30
    return-void
.end method

.method private static blacklist computeCronetSource()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    .registers 3

    .line 33
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 34
    .local v0, "implClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.BootClassLoader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 35
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-object v1

    .line 38
    :cond_15
    const-class v1, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 39
    .local v1, "apiClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 40
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-object v2

    .line 43
    :cond_24
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-object v2
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
    .registers 6

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "startUptimeMillis":J
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 57
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 60
    :cond_11
    new-instance v2, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    invoke-direct {v2, p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;-><init>(Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;J)V

    .line 64
    .local v2, "engine":Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->mMockCertVerifier:J

    .line 66
    return-object v2
.end method

.method protected blacklist getLogCronetInitializationRef()J
    .registers 6

    .line 48
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->sLogCronetInitializationRef:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->generateId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 49
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;->sLogCronetInitializationRef:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method
