.class public Lcom/android/okhttp/ConfigAwareConnectionPool;
.super Ljava/lang/Object;
.source "ConfigAwareConnectionPool.java"


# static fields
.field private static final CONNECTION_POOL_DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

.field private static final CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

.field private static final instance:Lcom/android/okhttp/ConfigAwareConnectionPool;


# instance fields
.field private connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private final networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

.field private networkEventListenerRegistered:Z


# direct methods
.method static synthetic -set0(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 35
    const-string/jumbo v3, "http.keepAlive"

    #@3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 36
    .local v1, "keepAliveProperty":Ljava/lang/String;
    const-string/jumbo v3, "http.keepAliveDuration"

    #@a
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 37
    .local v0, "keepAliveDurationProperty":Ljava/lang/String;
    const-string/jumbo v3, "http.maxConnections"

    #@11
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 38
    .local v2, "maxIdleConnectionsProperty":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    .line 39
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1a
    move-result-wide v4

    #@1b
    .line 38
    :goto_0
    sput-wide v4, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    #@1d
    .line 41
    if-eqz v1, :cond_0

    #@1f
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 43
    :cond_0
    if-eqz v2, :cond_3

    #@27
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a
    move-result v3

    #@2b
    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    #@2d
    .line 50
    :goto_1
    new-instance v3, Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@2f
    invoke-direct {v3}, Lcom/android/okhttp/ConfigAwareConnectionPool;-><init>()V

    #@32
    sput-object v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@34
    .line 28
    return-void

    #@35
    .line 40
    :cond_1
    const-wide/32 v4, 0x493e0

    #@38
    goto :goto_0

    #@39
    .line 42
    :cond_2
    const/4 v3, 0x0

    #@3a
    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    #@3c
    goto :goto_1

    #@3d
    .line 46
    :cond_3
    const/4 v3, 0x5

    #@3e
    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    #@40
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    #@9
    .line 67
    return-void
.end method

.method protected constructor <init>(Llibcore/net/event/NetworkEventDispatcher;)V
    .locals 0
    .param p1, "networkEventDispatcher"    # Llibcore/net/event/NetworkEventDispatcher;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    #@5
    .line 63
    return-void
.end method

.method public static getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;
    .locals 1

    #@0
    .prologue
    .line 72
    sget-object v0, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/okhttp/ConnectionPool;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@3
    if-nez v0, :cond_1

    #@5
    .line 81
    iget-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 82
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    #@b
    new-instance v1, Lcom/android/okhttp/ConfigAwareConnectionPool$1;

    #@d
    invoke-direct {v1, p0}, Lcom/android/okhttp/ConfigAwareConnectionPool$1;-><init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V

    #@10
    invoke-virtual {v0, v1}, Llibcore/net/event/NetworkEventDispatcher;->addListener(Llibcore/net/event/NetworkEventListener;)V

    #@13
    .line 93
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    #@16
    .line 95
    :cond_0
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    #@18
    .line 96
    sget v1, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    #@1a
    sget-wide v2, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    #@1c
    .line 95
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    #@1f
    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    #@21
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    return-object v0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method
