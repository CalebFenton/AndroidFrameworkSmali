.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
.super Ljava/lang/Object;
.source "DataRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
    }
.end annotation


# static fields
.field public static final MAX_WORKER_THREAD_COUNT:I

.field private static volatile instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private static requestId:I


# instance fields
.field protected volatile active:Z

.field protected bytesReceived:I

.field protected bytesSent:I

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

.field protected cookie:J

.field protected final debug:Z

.field protected final defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

.field protected final distributionChannel:Ljava/lang/String;

.field private errorRetryTime:J

.field private firstConnectionErrorTime:J

.field protected globalSpecialUrlArguments:Ljava/lang/String;

.field private volatile lastActiveTime:J

.field private lastException:Ljava/lang/Throwable;

.field private lastExceptionTime:J

.field private volatile lastSuccessTime:J

.field private final listeners:Ljava/util/Vector;

.field private maxNetworkErrorRetryTimeout:J

.field protected volatile mockLostDataConnection:Z

.field private volatile networkErrorMode:Z

.field private volatile networkSpeedBytesPerSecond:I

.field protected final platformID:Ljava/lang/String;

.field protected final properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field protected volatile serverAddress:Ljava/lang/String;

.field protected final softwareVersion:Ljava/lang/String;

.field private volatile suspendCount:I

.field protected thirdPartyServers:Ljava/util/Vector;

.field private final threadDispatchLock:Ljava/lang/Object;

.field protected warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

.field private volatile workerForegroundThreadCount:I

.field private volatile workerSubmissionThreadCount:I

.field private volatile workerThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 287
    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    #@3
    const/4 v0, 0x4

    #@4
    .line 316
    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    #@6
    .line 320
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "platformID"    # Ljava/lang/String;
    .param p3, "softwareVersion"    # Ljava/lang/String;
    .param p4, "distributionChannel"    # Ljava/lang/String;
    .param p5, "debug"    # Z

    #@0
    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    #@2
    const/4 v3, 0x0

    #@3
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 115
    new-instance v0, Ljava/util/Vector;

    #@8
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    #@d
    .line 139
    new-instance v0, Ljava/util/Vector;

    #@f
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    #@14
    const-wide/32 v0, 0x493e0

    #@17
    .line 187
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    #@19
    .line 197
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    #@1b
    .line 211
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    #@1d
    .line 217
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    #@1f
    const-wide/16 v0, 0x0

    #@21
    .line 232
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@23
    .line 239
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    #@25
    .line 242
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    #@27
    .line 248
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    #@29
    .line 255
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    #@2b
    .line 258
    new-instance v0, Ljava/lang/Object;

    #@2d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@30
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    #@32
    const/4 v0, -0x1

    #@33
    .line 272
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    #@35
    .line 375
    if-nez p1, :cond_1

    #@37
    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3c
    throw v0

    #@3d
    .line 375
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_0

    #@43
    .line 378
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    #@45
    .line 379
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    #@47
    .line 380
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    #@49
    .line 381
    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    #@4b
    .line 382
    iput-boolean p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    #@4d
    .line 383
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@57
    .line 384
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@61
    .line 385
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    #@63
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@65
    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/common/Clock;)V

    #@68
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    #@6a
    .line 386
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    #@6c
    .line 387
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    #@6e
    .line 388
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@70
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->serverAddress:Ljava/lang/String;

    #@72
    new-instance v2, Ljava/util/Vector;

    #@74
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@77
    invoke-direct {v0, p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Ljava/util/Vector;B)V

    #@7a
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@7c
    .line 390
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->loadOrRequestCookie()J

    #@7f
    move-result-wide v0

    #@80
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    #@82
    .line 392
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@84
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_REQUEST_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@86
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@89
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@8b
    .line 395
    return-void
.end method

.method static synthetic access$1002(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .param p1, "x1"    # J

    #@0
    .prologue
    .line 53
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastSuccessTime:J

    #@2
    return-wide p1
.end method

.method static synthetic access$1100(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;ILjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->handleError(ILjava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->threadDispatchLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$308(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    #@6
    return v0
.end method

.method static synthetic access$310(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    #@6
    return v0
.end method

.method static synthetic access$408(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    #@6
    return v0
.end method

.method static synthetic access$410(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerForegroundThreadCount:I

    #@6
    return v0
.end method

.method static synthetic access$508(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    #@6
    return v0
.end method

.method static synthetic access$510(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerSubmissionThreadCount:I

    #@6
    return v0
.end method

.method static synthetic access$602(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;J)J
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .param p1, "x1"    # J

    #@0
    .prologue
    .line 53
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastActiveTime:J

    #@2
    return-wide p1
.end method

.method static synthetic access$700(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2
    return-object v0
.end method

.method static synthetic access$800(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)J
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@2
    return-wide v0
.end method

.method static synthetic access$900(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clearNetworkError()V

    #@3
    return-void
.end method

.method private addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4
    .param p1, "requests"    # Ljava/util/Vector;
    .param p2, "dispatcherServer"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, 0x3e

    #@3
    .line 1175
    invoke-virtual {p2, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1190
    :goto_0
    return-void

    #@a
    .line 1176
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    #@c
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@e
    invoke-direct {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@11
    .line 1178
    .local v0, "clientProperties":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@14
    move-result v2

    #@15
    if-gtz v2, :cond_1

    #@17
    .line 1187
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@1a
    goto :goto_0

    #@1b
    .line 1179
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@21
    .line 1180
    .local v1, "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    instance-of v2, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;

    #@23
    if-nez v2, :cond_2

    #@25
    .line 1184
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@28
    goto :goto_0

    #@29
    .line 1182
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@2c
    goto :goto_0
.end method

.method private declared-synchronized clearNetworkError()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    const-wide/high16 v0, -0x8000000000000000L

    #@3
    .line 787
    :try_start_0
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    #@5
    .line 788
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    #@8
    const-wide/16 v0, 0x0

    #@a
    .line 789
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 790
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method protected static containsForegroundRequest(Ljava/util/Vector;)Z
    .locals 4
    .param p0, "requests"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1211
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    if-lt v0, v2, :cond_0

    #@8
    .line 1218
    return v3

    #@9
    .line 1212
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@f
    .line 1213
    .local v1, "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isForeground()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 1211
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1214
    :cond_1
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method protected static containsSubmissionRequest(Ljava/util/Vector;)Z
    .locals 4
    .param p0, "requests"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1223
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    if-lt v0, v2, :cond_0

    #@8
    .line 1229
    return v3

    #@9
    .line 1224
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@f
    .line 1225
    .local v1, "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isSubmission()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 1223
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1226
    :cond_1
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 7
    .param p0, "serverAddress"    # Ljava/lang/String;
    .param p1, "platformID"    # Ljava/lang/String;
    .param p2, "softwareVersion"    # Ljava/lang/String;
    .param p3, "distributionChannel"    # Ljava/lang/String;
    .param p4, "debug"    # Z

    #@0
    .prologue
    const-class v6, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2
    monitor-enter v6

    #@3
    .line 337
    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 341
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@9
    move-object v1, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move v5, p4

    #@e
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@11
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@13
    .line 343
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;

    #@15
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@17
    const/4 v2, 0x0

    #@18
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    #@1b
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->setLogSaver(Landroid_maps_conflict_avoidance/com/google/common/Log$LogSaver;)V

    #@1e
    .line 344
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v6

    #@21
    return-object v0

    #@22
    .line 338
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@24
    const-string/jumbo v1, "Attempting to create multiple DataRequestDispatchers"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v6

    #@2d
    throw v0
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    #@0
    .prologue
    .line 348
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->instance:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@2
    return-object v0
.end method

.method private handleError(ILjava/lang/Throwable;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const-wide/16 v6, 0x7d0

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 801
    const/4 v0, 0x0

    #@5
    .line 802
    .local v0, "call":Z
    monitor-enter p0

    #@6
    .line 803
    :try_start_0
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastException:Ljava/lang/Throwable;

    #@8
    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v4

    #@c
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->lastExceptionTime:J

    #@e
    .line 807
    if-nez p2, :cond_2

    #@10
    .line 811
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@12
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->notifyFailure()V

    #@15
    .line 813
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 825
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@1b
    cmp-long v3, v4, v6

    #@1d
    if-ltz v3, :cond_6

    #@1f
    move v3, v1

    #@20
    :goto_1
    if-nez v3, :cond_7

    #@22
    const-wide/16 v4, 0x7d0

    #@24
    .line 826
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@26
    .line 833
    :goto_2
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@28
    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    #@2a
    cmp-long v3, v4, v6

    #@2c
    if-gtz v3, :cond_8

    #@2e
    :goto_3
    if-nez v1, :cond_1

    #@30
    .line 834
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maxNetworkErrorRetryTimeout:J

    #@32
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@34
    .line 837
    :cond_1
    :goto_4
    monitor-exit p0

    #@35
    .line 839
    if-nez v0, :cond_9

    #@37
    .line 849
    :goto_5
    return-void

    #@38
    .line 807
    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isDebugBuild()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_0

    #@3e
    .line 808
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    #@41
    goto :goto_0

    #@42
    .line 837
    :catchall_0
    move-exception v1

    #@43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    throw v1

    #@45
    :cond_3
    const-wide/16 v4, 0xc8

    #@47
    .line 814
    :try_start_1
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@49
    .line 816
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    #@4b
    const-wide/high16 v6, -0x8000000000000000L

    #@4d
    cmp-long v3, v4, v6

    #@4f
    if-nez v3, :cond_4

    #@51
    .line 817
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@53
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@56
    move-result-wide v2

    #@57
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    #@59
    goto :goto_4

    #@5a
    .line 818
    :cond_4
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    #@5c
    const-wide/16 v6, 0x3a98

    #@5e
    add-long/2addr v4, v6

    #@5f
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@61
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@64
    move-result-wide v6

    #@65
    cmp-long v3, v4, v6

    #@67
    if-ltz v3, :cond_5

    #@69
    :goto_6
    if-nez v1, :cond_1

    #@6b
    .line 822
    const/4 v0, 0x1

    #@6c
    goto :goto_4

    #@6d
    :cond_5
    move v1, v2

    #@6e
    .line 818
    goto :goto_6

    #@6f
    :cond_6
    move v3, v2

    #@70
    .line 825
    goto :goto_1

    #@71
    .line 829
    :cond_7
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J

    #@73
    const-wide/16 v6, 0x5

    #@75
    mul-long/2addr v4, v6

    #@76
    const-wide/16 v6, 0x4

    #@78
    div-long/2addr v4, v6

    #@79
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->errorRetryTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    goto :goto_2

    #@7c
    :cond_8
    move v1, v2

    #@7d
    .line 833
    goto :goto_3

    #@7e
    :cond_9
    const/4 v1, 0x3

    #@7f
    .line 842
    if-eq p1, v1, :cond_b

    #@81
    .line 847
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V

    #@84
    goto :goto_5

    #@85
    .line 842
    :cond_b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@87
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->usingMDS()Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_a

    #@8d
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@8f
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    #@92
    move-result v1

    #@93
    if-nez v1, :cond_a

    #@95
    const/4 p1, 0x4

    #@96
    .line 845
    goto :goto_7
.end method

.method static saveCookie(J)V
    .locals 6
    .param p0, "cookie"    # J

    #@0
    .prologue
    .line 1238
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 1239
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 1240
    .local v1, "dos":Ljava/io/DataOutput;
    invoke-interface {v1, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    #@d
    .line 1241
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@14
    move-result-object v3

    #@15
    .local v3, "store":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    const-string/jumbo v4, "SessionID"

    #@18
    .line 1242
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v5

    #@1c
    invoke-interface {v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@1f
    .line 1246
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->savePreferences()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1251
    return-void

    #@23
    .line 1250
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutput;
    .end local v3    # "store":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    :catch_0
    move-exception v2

    #@24
    .line 1249
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@26
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4
.end method


# virtual methods
.method public addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 5
    .param p1, "dataRequest"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@0
    .prologue
    .line 612
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->mockLostDataConnection:Z

    #@2
    if-nez v2, :cond_0

    #@4
    :goto_0
    const/4 v0, 0x0

    #@5
    .line 617
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    #@7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@a
    move-result v2

    #@b
    if-lt v0, v2, :cond_1

    #@d
    .line 626
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@f
    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@12
    .line 627
    return-void

    #@13
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x5

    #@14
    .line 613
    const/4 v3, 0x1

    #@15
    const/4 v4, 0x0

    #@16
    invoke-virtual {p0, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    #@19
    goto :goto_0

    #@1a
    .line 618
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    #@1c
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@22
    .line 619
    .local v1, "tps":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->canHandle(I)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_2

    #@2c
    .line 617
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 620
    :cond_2
    invoke-virtual {v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@32
    .line 621
    return-void
.end method

.method public declared-synchronized addDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .locals 1
    .param p1, "listenerData"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 513
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    :goto_0
    monitor-exit p0

    #@a
    .line 516
    return-void

    #@b
    .line 514
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public final addSimpleRequest(I[BZZ)V
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "data"    # [B
    .param p3, "immediate"    # Z
    .param p4, "foreground"    # Z

    #@0
    .prologue
    .line 1204
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZ)V

    #@5
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@8
    .line 1206
    return-void
.end method

.method public declared-synchronized canDispatchNow()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 670
    :try_start_0
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_1

    #@6
    :cond_0
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_1
    :try_start_1
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I

    #@a
    sget v2, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->MAX_WORKER_THREAD_COUNT:I

    #@c
    if-ge v1, v2, :cond_0

    #@e
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@10
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorkedThisSession()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_3

    #@16
    :cond_2
    const/4 v0, 0x1

    #@17
    goto :goto_0

    #@18
    :cond_3
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->workerThreadCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    if-eqz v1, :cond_2

    #@1c
    goto :goto_0

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 6
    .param p1, "requests"    # Ljava/util/Vector;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "dispatcherServer"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x17

    #@2
    .line 1139
    new-instance v2, Ljava/io/DataOutputStream;

    #@4
    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@7
    .line 1141
    .local v2, "out":Ljava/io/DataOutputStream;
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addClientPropertiesRequest(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    #@a
    .line 1143
    iget-byte v3, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1150
    iget-byte v3, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->headerFlag:B

    #@10
    const/4 v4, 0x1

    #@11
    if-eq v3, v4, :cond_1

    #@13
    :goto_0
    const/4 v1, 0x0

    #@14
    .line 1158
    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@17
    move-result v3

    #@18
    if-lt v1, v3, :cond_2

    #@1a
    .line 1164
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    #@1d
    .line 1165
    return-void

    #@1e
    .line 1144
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@21
    .line 1145
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    #@23
    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@26
    .line 1146
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getLocale()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@2d
    .line 1147
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->platformID:Ljava/lang/String;

    #@2f
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@32
    .line 1148
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->softwareVersion:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@37
    .line 1149
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->distributionChannel:Ljava/lang/String;

    #@39
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1151
    :cond_1
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@40
    .line 1152
    iget-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    #@42
    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@45
    const-string/jumbo v3, ""

    #@48
    .line 1153
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4b
    const-string/jumbo v3, ""

    #@4e
    .line 1154
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@51
    const-string/jumbo v3, ""

    #@54
    .line 1155
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@57
    const-string/jumbo v3, ""

    #@5a
    .line 1156
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@5d
    goto :goto_0

    #@5e
    .line 1159
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@64
    .line 1161
    .local v0, "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@67
    move-result v3

    #@68
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@6b
    .line 1162
    invoke-interface {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->writeRequestData(Ljava/io/DataOutput;)V

    #@6e
    .line 1158
    add-int/lit8 v1, v1, 0x1

    #@70
    goto :goto_1
.end method

.method public declared-synchronized isSuspended()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 448
    :try_start_0
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->suspendCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-gtz v1, :cond_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method protected loadOrRequestCookie()J
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-string/jumbo v2, "SessionID"

    #@4
    .line 493
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    #@7
    move-result-object v0

    #@8
    .line 494
    .local v0, "dis":Ljava/io/DataInput;
    if-nez v0, :cond_0

    #@a
    .line 505
    :goto_0
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;

    #@c
    invoke-direct {v2, p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$1;)V

    #@f
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@12
    const-wide/16 v2, 0x0

    #@14
    .line 506
    return-wide v2

    #@15
    .line 497
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-wide v2

    #@19
    return-wide v2

    #@1a
    :catch_0
    move-exception v1

    #@1b
    .line 501
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, "SessionID"

    #@26
    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@29
    goto :goto_0
.end method

.method protected final maybeNotifyNetworkError(I)V
    .locals 4
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 581
    const/4 v1, 0x0

    #@1
    .line 582
    .local v1, "notifyListeners":Z
    monitor-enter p0

    #@2
    .line 583
    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 589
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 591
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@9
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    #@c
    move-result v0

    #@d
    .line 593
    .local v0, "networkEverWorked":Z
    if-nez v1, :cond_1

    #@f
    .line 596
    :goto_1
    return-void

    #@10
    .end local v0    # "networkEverWorked":Z
    :cond_0
    :try_start_1
    const-string/jumbo v2, "DRD: in Error Mode"

    #@13
    .line 584
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@16
    .line 585
    const/4 v2, 0x1

    #@17
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkErrorMode:Z

    #@19
    const-wide/high16 v2, -0x8000000000000000L

    #@1b
    .line 586
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->firstConnectionErrorTime:J

    #@1d
    .line 587
    const/4 v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 589
    :catchall_0
    move-exception v2

    #@20
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    throw v2

    #@22
    .restart local v0    # "networkEverWorked":Z
    :cond_1
    const/4 v2, 0x0

    #@23
    .line 594
    invoke-virtual {p0, p1, v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    #@26
    goto :goto_1
.end method

.method protected notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V
    .locals 3
    .param p1, "dataRequest"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@0
    .prologue
    .line 541
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    #@3
    move-result-object v1

    #@4
    .local v1, "listenersArray":[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    const/4 v0, 0x0

    #@5
    .line 545
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@6
    if-lt v0, v2, :cond_0

    #@8
    .line 548
    return-void

    #@9
    .line 546
    :cond_0
    aget-object v2, v1, v0

    #@b
    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@e
    .line 545
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0
.end method

.method protected notifyNetworkError(IZLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "networkEverWorked"    # Z
    .param p3, "debugMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 555
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    #@3
    move-result-object v1

    #@4
    .local v1, "listenersArray":[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    const/4 v0, 0x0

    #@5
    .line 558
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@6
    if-lt v0, v2, :cond_0

    #@8
    .line 561
    return-void

    #@9
    .line 559
    :cond_0
    aget-object v2, v1, v0

    #@b
    invoke-interface {v2, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;->onNetworkError(IZLjava/lang/String;)V

    #@e
    .line 558
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0
.end method

.method protected processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .param p2, "dataRequest"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .param p3, "dispatcherServer"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1108
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    #@4
    move-result v0

    #@5
    .line 1109
    .local v0, "requestType":I
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@8
    move-result v1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 1117
    invoke-interface {p2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->readResponseData(Ljava/io/DataInput;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_2

    #@11
    .line 1127
    iget-object v1, p3, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverRequests:Ljava/util/Vector;

    #@13
    invoke-virtual {v1, p2, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@16
    .line 1129
    :cond_0
    :goto_0
    return-void

    #@17
    .line 1113
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "RT: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, " != "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@33
    move-result v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 1122
    :cond_2
    if-eq p2, p0, :cond_0

    #@42
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->isCancelled()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_0

    #@48
    .line 1123
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyComplete(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@4b
    goto :goto_0
.end method

.method public declared-synchronized removeDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V
    .locals 1
    .param p1, "listenerData"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 523
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 524
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public resetConnectionFactory()V
    .locals 1

    #@0
    .prologue
    .line 1434
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@a
    .line 1435
    return-void
.end method

.method protected serviceRequests(Ljava/util/Vector;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    .locals 36
    .param p1, "requests"    # Ljava/util/Vector;
    .param p2, "dispatcherServer"    # Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v19, 0x0

    #@2
    .local v19, "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    const/16 v26, 0x0

    #@4
    .local v26, "os":Ljava/io/DataOutputStream;
    const/16 v24, 0x0

    #@6
    .line 875
    .local v24, "is":Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v4, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onStartServiceRequests(Ljava/lang/Object;)V

    #@f
    .line 884
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@14
    .line 885
    .local v11, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->urlArguments(Ljava/util/Vector;)Ljava/lang/String;

    #@17
    move-result-object v10

    #@18
    .line 886
    .local v10, "addToUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a
    move-object/from16 v1, p1

    #@1c
    move-object/from16 v2, p2

    #@1e
    invoke-virtual {v0, v1, v11, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->generateRequest(Ljava/util/Vector;Ljava/io/OutputStream;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V

    #@21
    .line 889
    new-instance v16, Ljava/lang/StringBuffer;

    #@23
    const-string/jumbo v4, "DRD"

    #@26
    move-object/from16 v0, v16

    #@28
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@2b
    .local v16, "drdDebug":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "("

    #@2e
    .line 890
    move-object/from16 v0, v16

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v4

    #@34
    sget v5, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    #@36
    add-int/lit8 v8, v5, 0x1

    #@38
    sput v8, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->requestId:I

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, "): "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    const/16 v22, 0x0

    #@46
    .line 891
    .local v22, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@49
    move-result v4

    #@4a
    move/from16 v0, v22

    #@4c
    if-lt v0, v4, :cond_1

    #@4e
    .line 899
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@51
    move-result-object v32

    #@52
    .local v32, "sendData":[B
    const/4 v11, 0x0

    #@53
    .line 908
    .local v11, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@55
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@57
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@5a
    move-result-wide v6

    #@5b
    .line 909
    .local v6, "startTime":J
    move-object/from16 v0, p0

    #@5d
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@5f
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    move-object/from16 v0, p2

    #@66
    iget-object v8, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->serverAddress:Ljava/lang/String;

    #@68
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    const/4 v8, 0x1

    #@75
    invoke-interface {v4, v5, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;

    #@78
    move-result-object v19

    #@79
    .local v19, "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    const-string/jumbo v4, "Content-Type"

    #@7c
    const-string/jumbo v5, "application/binary"

    #@7f
    .line 913
    move-object/from16 v0, v19

    #@81
    invoke-interface {v0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    const-string/jumbo v4, "Content-Length"

    #@87
    .line 914
    new-instance v5, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v8, ""

    #@8f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    move-object/from16 v0, v32

    #@95
    array-length v8, v0

    #@96
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    move-object/from16 v0, v19

    #@a0
    invoke-interface {v0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@a3
    .line 917
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    #@a6
    move-result-object v26

    #@a7
    .line 919
    .local v26, "os":Ljava/io/DataOutputStream;
    move-object/from16 v0, v26

    #@a9
    move-object/from16 v1, v32

    #@ab
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    #@ae
    .line 920
    move-object/from16 v0, p0

    #@b0
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    #@b2
    move-object/from16 v0, v32

    #@b4
    array-length v5, v0

    #@b5
    add-int/2addr v4, v5

    #@b6
    move-object/from16 v0, p0

    #@b8
    iput v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesSent:I

    #@ba
    .line 922
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    #@bd
    move-result-object v24

    #@be
    .line 923
    .local v24, "is":Ljava/io/DataInputStream;
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getResponseCode()I

    #@c1
    move-result v30

    #@c2
    .line 924
    .local v30, "responseCode":I
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    #@c5
    move-result-object v12

    #@c6
    .line 925
    .local v12, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c8
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@ca
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@cd
    move-result-wide v4

    #@ce
    sub-long v20, v4, v6

    #@d0
    .local v20, "firstByteTime":J
    const-string/jumbo v4, ", "

    #@d3
    .line 927
    move-object/from16 v0, v16

    #@d5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d8
    const-wide/16 v4, 0x3e8

    #@da
    .line 928
    cmp-long v4, v20, v4

    #@dc
    if-ltz v4, :cond_3

    #@de
    const/4 v4, 0x1

    #@df
    :goto_1
    if-nez v4, :cond_4

    #@e1
    const-string/jumbo v4, "<1s"

    #@e4
    .line 929
    move-object/from16 v0, v16

    #@e6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e9
    :goto_2
    const/16 v4, 0x1f5

    #@eb
    .line 934
    move/from16 v0, v30

    #@ed
    if-eq v0, v4, :cond_5

    #@ef
    const/16 v4, 0xc8

    #@f1
    .line 942
    move/from16 v0, v30

    #@f3
    if-ne v0, v4, :cond_6

    #@f5
    const-string/jumbo v4, "application/binary"

    #@f8
    .line 971
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_b

    #@fe
    .line 979
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->getLength()J

    #@101
    move-result-wide v4

    #@102
    long-to-int v0, v4

    #@103
    move/from16 v31, v0

    #@105
    .line 980
    .local v31, "responseLength":I
    move-object/from16 v0, p0

    #@107
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    #@109
    add-int v4, v4, v31

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->bytesReceived:I

    #@10f
    .line 982
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@112
    move-result v33

    #@113
    .local v33, "serverProtocolVersion":I
    const/16 v4, 0x17

    #@115
    .line 983
    move/from16 v0, v33

    #@117
    if-ne v0, v4, :cond_c

    #@119
    const/16 v23, 0x0

    #@11b
    .line 991
    .local v23, "index":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@11e
    move-result v4

    #@11f
    move/from16 v0, v23

    #@121
    if-lt v0, v4, :cond_d

    #@123
    .line 1031
    move-object/from16 v0, p0

    #@125
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@127
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@12a
    move-result-wide v28

    #@12b
    .line 1032
    .local v28, "readEndTime":J
    sub-long v4, v28, v6

    #@12d
    long-to-int v9, v4

    #@12e
    .local v9, "elapsedTime":I
    const-string/jumbo v4, "fb"

    #@131
    .line 1034
    new-instance v5, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v8, ""

    #@139
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v5

    #@13d
    move-wide/from16 v0, v20

    #@13f
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@142
    move-result-object v5

    #@143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v5

    #@147
    const/16 v8, 0x16

    #@149
    invoke-static {v8, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@14c
    const-string/jumbo v4, "lb"

    #@14f
    .line 1036
    new-instance v5, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v8, ""

    #@157
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v5

    #@15b
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v5

    #@15f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v5

    #@163
    const/16 v8, 0x16

    #@165
    invoke-static {v8, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@168
    .line 1039
    move-object/from16 v0, p0

    #@16a
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->warmUpManager:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;

    #@16c
    move-wide/from16 v0, v20

    #@16e
    long-to-int v8, v0

    #@16f
    move-object/from16 v5, p1

    #@171
    invoke-virtual/range {v4 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ConnectionWarmUpManager;->onFinishServiceRequests(Ljava/lang/Object;JII)V

    #@174
    const/16 v4, 0x2000

    #@176
    .line 1043
    move/from16 v0, v31

    #@178
    if-ge v0, v4, :cond_13

    #@17a
    :cond_0
    :goto_4
    const-string/jumbo v4, ", "

    #@17d
    .line 1051
    move-object/from16 v0, v16

    #@17f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@182
    const/16 v4, 0x3e8

    #@184
    .line 1052
    move/from16 v0, v31

    #@186
    if-lt v0, v4, :cond_15

    #@188
    .line 1055
    move/from16 v0, v31

    #@18a
    div-int/lit16 v4, v0, 0x3e8

    #@18c
    move-object/from16 v0, v16

    #@18e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@191
    move-result-object v4

    #@192
    const-string/jumbo v5, "kb"

    #@195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@198
    .line 1058
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19b
    .line 1087
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@19e
    move-result-object v4

    #@19f
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@1a2
    .line 1064
    if-nez v24, :cond_20

    #@1a4
    .line 1071
    :goto_6
    if-nez v26, :cond_21

    #@1a6
    .line 1078
    :goto_7
    if-nez v19, :cond_22

    #@1a8
    :goto_8
    const/16 v22, 0x0

    #@1aa
    .line 1087
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@1ad
    move-result v4

    #@1ae
    move/from16 v0, v22

    #@1b0
    if-lt v0, v4, :cond_23

    #@1b2
    .line 1096
    return-void

    #@1b3
    .line 892
    .end local v6    # "startTime":J
    .end local v9    # "elapsedTime":I
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v20    # "firstByteTime":J
    .end local v23    # "index":I
    .end local v28    # "readEndTime":J
    .end local v30    # "responseCode":I
    .end local v31    # "responseLength":I
    .end local v32    # "sendData":[B
    .end local v33    # "serverProtocolVersion":I
    .local v11, "baos":Ljava/io/ByteArrayOutputStream;
    .local v19, "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .local v24, "is":Ljava/io/DataInputStream;
    .local v26, "os":Ljava/io/DataOutputStream;
    :cond_1
    move-object/from16 v0, p1

    #@1b5
    move/from16 v1, v22

    #@1b7
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1ba
    move-result-object v13

    #@1bb
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@1bd
    .line 893
    .local v13, "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@1c0
    move-result v4

    #@1c1
    move-object/from16 v0, v16

    #@1c3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1c6
    .line 894
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@1c9
    move-result v4

    #@1ca
    add-int/lit8 v4, v4, -0x1

    #@1cc
    move/from16 v0, v22

    #@1ce
    if-ne v0, v4, :cond_2

    #@1d0
    .line 891
    :goto_a
    add-int/lit8 v22, v22, 0x1

    #@1d2
    goto/16 :goto_0

    #@1d4
    :cond_2
    const-string/jumbo v4, "|"

    #@1d7
    .line 895
    move-object/from16 v0, v16

    #@1d9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1dc
    goto :goto_a

    #@1dd
    .line 928
    .end local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .restart local v6    # "startTime":J
    .local v11, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "contentType":Ljava/lang/String;
    .local v19, "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .restart local v20    # "firstByteTime":J
    .local v24, "is":Ljava/io/DataInputStream;
    .local v26, "os":Ljava/io/DataOutputStream;
    .restart local v30    # "responseCode":I
    .restart local v32    # "sendData":[B
    :cond_3
    const/4 v4, 0x0

    #@1de
    goto/16 :goto_1

    #@1e0
    :cond_4
    const-wide/16 v4, 0x3e8

    #@1e2
    .line 931
    :try_start_1
    div-long v4, v20, v4

    #@1e4
    move-object/from16 v0, v16

    #@1e6
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@1e9
    move-result-object v4

    #@1ea
    const-string/jumbo v5, "s"

    #@1ed
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f0
    goto/16 :goto_2

    #@1f2
    .line 1095
    .end local v6    # "startTime":J
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v19    # "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .end local v20    # "firstByteTime":J
    .end local v24    # "is":Ljava/io/DataInputStream;
    .end local v26    # "os":Ljava/io/DataOutputStream;
    .end local v30    # "responseCode":I
    :catchall_0
    move-exception v4

    #@1f3
    .line 1087
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1f6
    move-result-object v5

    #@1f7
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@1fa
    .line 1064
    if-nez v24, :cond_25

    #@1fc
    .line 1071
    :goto_b
    if-nez v26, :cond_26

    #@1fe
    .line 1078
    :goto_c
    if-nez v19, :cond_27

    #@200
    :goto_d
    const/16 v22, 0x0

    #@202
    .line 1087
    :goto_e
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@205
    move-result v5

    #@206
    move/from16 v0, v22

    #@208
    if-lt v0, v5, :cond_28

    #@20a
    .line 1062
    throw v4

    #@20b
    .restart local v6    # "startTime":J
    .restart local v12    # "contentType":Ljava/lang/String;
    .restart local v19    # "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .restart local v20    # "firstByteTime":J
    .restart local v24    # "is":Ljava/io/DataInputStream;
    .restart local v26    # "os":Ljava/io/DataOutputStream;
    .restart local v30    # "responseCode":I
    :cond_5
    const/4 v4, 0x2

    #@20c
    .line 938
    :try_start_2
    move-object/from16 v0, p0

    #@20e
    invoke-virtual {v0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@211
    .line 1096
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@214
    move-result-object v4

    #@215
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@218
    .line 1064
    if-nez v24, :cond_16

    #@21a
    .line 1071
    :goto_f
    if-nez v26, :cond_17

    #@21c
    .line 1078
    :goto_10
    if-nez v19, :cond_18

    #@21e
    :goto_11
    const/16 v22, 0x0

    #@220
    .line 1087
    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@223
    move-result v4

    #@224
    move/from16 v0, v22

    #@226
    if-lt v0, v4, :cond_19

    #@228
    .line 939
    return-void

    #@229
    .line 943
    :cond_6
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@22b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22e
    const-string/jumbo v5, "Bad Response Code "

    #@231
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v4

    #@235
    move/from16 v0, v30

    #@237
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v4

    #@23b
    const-string/jumbo v5, " "

    #@23e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v4

    #@242
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@245
    move-result-object v5

    #@246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v4

    #@24a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24d
    move-result-object v4

    #@24e
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@251
    const/16 v4, 0x1f4

    #@253
    .line 946
    move/from16 v0, v30

    #@255
    if-eq v0, v4, :cond_8

    #@257
    .line 969
    :cond_7
    :goto_13
    new-instance v4, Ljava/io/IOException;

    #@259
    new-instance v5, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v8, "Bad HTTP response code: "

    #@261
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v5

    #@265
    move/from16 v0, v30

    #@267
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v5

    #@26b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v5

    #@26f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@272
    throw v4

    #@273
    .line 951
    :cond_8
    new-instance v15, Ljava/lang/StringBuffer;

    #@275
    const-string/jumbo v4, "Server 500 for request types: "

    #@278
    invoke-direct {v15, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@27b
    .local v15, "debugMessage":Ljava/lang/StringBuffer;
    const/16 v23, 0x0

    #@27d
    .line 952
    .restart local v23    # "index":I
    :goto_14
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@280
    move-result v4

    #@281
    move/from16 v0, v23

    #@283
    if-lt v0, v4, :cond_9

    #@285
    .line 961
    move-object/from16 v0, p0

    #@287
    iget-boolean v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    #@289
    if-eqz v4, :cond_7

    #@28b
    .line 962
    move-object/from16 v0, p0

    #@28d
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@28f
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    #@292
    move-result v25

    #@293
    .local v25, "networkEverWorked":Z
    const/4 v4, 0x7

    #@294
    .line 963
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@297
    move-result-object v5

    #@298
    move-object/from16 v0, p0

    #@29a
    move/from16 v1, v25

    #@29c
    invoke-virtual {v0, v4, v1, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    #@29f
    goto :goto_13

    #@2a0
    .line 953
    .end local v25    # "networkEverWorked":Z
    :cond_9
    move-object/from16 v0, p1

    #@2a2
    move/from16 v1, v23

    #@2a4
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a7
    move-result-object v13

    #@2a8
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@2aa
    .line 954
    .restart local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    #@2ad
    .line 955
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@2b0
    move-result v4

    #@2b1
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2b4
    .line 956
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@2b7
    move-result v4

    #@2b8
    add-int/lit8 v4, v4, -0x1

    #@2ba
    move/from16 v0, v23

    #@2bc
    if-ne v0, v4, :cond_a

    #@2be
    .line 952
    :goto_15
    add-int/lit8 v23, v23, 0x1

    #@2c0
    goto :goto_14

    #@2c1
    .line 957
    :cond_a
    const/16 v4, 0x2c

    #@2c3
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2c6
    goto :goto_15

    #@2c7
    .line 972
    .end local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .end local v15    # "debugMessage":Ljava/lang/StringBuffer;
    .end local v23    # "index":I
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2cc
    const-string/jumbo v5, "Bad HTTP content type: "

    #@2cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v4

    #@2d3
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v4

    #@2d7
    const-string/jumbo v5, " "

    #@2da
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v4

    #@2de
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e1
    move-result-object v5

    #@2e2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v4

    #@2e6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e9
    move-result-object v4

    #@2ea
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@2ed
    .line 977
    new-instance v4, Ljava/io/IOException;

    #@2ef
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f4
    const-string/jumbo v8, "Bad HTTP content type: "

    #@2f7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    move-result-object v5

    #@2fb
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v5

    #@2ff
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@302
    move-result-object v5

    #@303
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@306
    throw v4

    #@307
    .restart local v31    # "responseLength":I
    .restart local v33    # "serverProtocolVersion":I
    :cond_c
    const/4 v4, 0x1

    #@308
    .line 985
    move-object/from16 v0, p0

    #@30a
    invoke-virtual {v0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->maybeNotifyNetworkError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30d
    .line 1087
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@310
    move-result-object v4

    #@311
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@314
    .line 1064
    if-nez v24, :cond_1b

    #@316
    .line 1071
    :goto_16
    if-nez v26, :cond_1c

    #@318
    .line 1078
    :goto_17
    if-nez v19, :cond_1d

    #@31a
    :goto_18
    const/16 v22, 0x0

    #@31c
    .line 1087
    :goto_19
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    #@31f
    move-result v4

    #@320
    move/from16 v0, v22

    #@322
    if-lt v0, v4, :cond_1e

    #@324
    .line 986
    return-void

    #@325
    .line 992
    .restart local v23    # "index":I
    :cond_d
    :try_start_4
    move-object/from16 v0, p1

    #@327
    move/from16 v1, v23

    #@329
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@32c
    move-result-object v13

    #@32d
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@32f
    .line 994
    .restart local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :try_start_5
    move-object/from16 v0, p0

    #@331
    move-object/from16 v1, v24

    #@333
    move-object/from16 v2, p2

    #@335
    invoke-virtual {v0, v1, v13, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->processDataRequest(Ljava/io/DataInput;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@338
    .line 991
    add-int/lit8 v23, v23, 0x1

    #@33a
    goto/16 :goto_3

    #@33c
    .line 1029
    :catch_0
    move-exception v17

    #@33d
    .line 996
    .local v17, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    #@33f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@342
    const-string/jumbo v5, "IOException: "

    #@345
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@348
    move-result-object v4

    #@349
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@34c
    move-result v5

    #@34d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@350
    move-result-object v4

    #@351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@354
    move-result-object v4

    #@355
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@358
    .line 997
    move-object/from16 v0, p0

    #@35a
    iget-boolean v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    #@35c
    if-nez v4, :cond_f

    #@35e
    .line 1002
    :goto_1a
    move-object/from16 v0, v17

    #@360
    instance-of v4, v0, Ljava/io/EOFException;

    #@362
    if-nez v4, :cond_10

    #@364
    :cond_e
    :goto_1b
    const/16 v22, 0x0

    #@366
    .line 1018
    :goto_1c
    move/from16 v0, v22

    #@368
    move/from16 v1, v23

    #@36a
    if-lt v0, v1, :cond_11

    #@36c
    .line 1021
    throw v17

    #@36d
    .line 998
    :cond_f
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36f
    new-instance v5, Ljava/lang/StringBuilder;

    #@371
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@374
    const-string/jumbo v8, "IOException processing: "

    #@377
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v5

    #@37b
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@37e
    move-result v8

    #@37f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@382
    move-result-object v5

    #@383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@386
    move-result-object v5

    #@387
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38a
    .line 999
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    #@38d
    goto :goto_1a

    #@38e
    .line 1006
    :cond_10
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->onServerFailure()V

    #@391
    .line 1008
    move-object/from16 v0, p0

    #@393
    iget-boolean v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    #@395
    if-eqz v4, :cond_e

    #@397
    .line 1009
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@39a
    move-result v27

    #@39b
    .line 1010
    .local v27, "requestType":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@39d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a0
    const-string/jumbo v5, "No server support for data request: "

    #@3a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a6
    move-result-object v4

    #@3a7
    move/from16 v0, v27

    #@3a9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v4

    #@3ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b0
    move-result-object v14

    #@3b1
    .line 1011
    .local v14, "debugMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3b3
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;

    #@3b5
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;->getNetworkWorked()Z

    #@3b8
    move-result v25

    #@3b9
    .restart local v25    # "networkEverWorked":Z
    const/4 v4, 0x7

    #@3ba
    .line 1012
    move-object/from16 v0, p0

    #@3bc
    move/from16 v1, v25

    #@3be
    invoke-virtual {v0, v4, v1, v14}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->notifyNetworkError(IZLjava/lang/String;)V

    #@3c1
    goto :goto_1b

    #@3c2
    .end local v14    # "debugMessage":Ljava/lang/String;
    .end local v25    # "networkEverWorked":Z
    .end local v27    # "requestType":I
    :cond_11
    const/4 v4, 0x0

    #@3c3
    .line 1019
    move-object/from16 v0, p1

    #@3c5
    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    #@3c8
    .line 1018
    add-int/lit8 v22, v22, 0x1

    #@3ca
    goto :goto_1c

    #@3cb
    .line 1021
    .end local v17    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v18

    #@3cc
    .line 1023
    .local v18, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@3ce
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d1
    const-string/jumbo v5, "RuntimeException: "

    #@3d4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v4

    #@3d8
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@3db
    move-result v5

    #@3dc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3df
    move-result-object v4

    #@3e0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e3
    move-result-object v4

    #@3e4
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logToScreen(Ljava/lang/String;)V

    #@3e7
    .line 1024
    move-object/from16 v0, p0

    #@3e9
    iget-boolean v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->debug:Z

    #@3eb
    if-nez v4, :cond_12

    #@3ed
    .line 1028
    :goto_1d
    throw v18

    #@3ee
    .line 1025
    :cond_12
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3f0
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f5
    const-string/jumbo v8, "RuntimeException processing: "

    #@3f8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fb
    move-result-object v5

    #@3fc
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->getRequestType()I

    #@3ff
    move-result v8

    #@400
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@403
    move-result-object v5

    #@404
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@407
    move-result-object v5

    #@408
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40b
    .line 1026
    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->printStackTrace()V

    #@40e
    goto :goto_1d

    #@40f
    .line 1043
    .end local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "elapsedTime":I
    .restart local v28    # "readEndTime":J
    :cond_13
    int-to-long v4, v9

    #@410
    const-wide/32 v34, 0xea60

    #@413
    cmp-long v4, v4, v34

    #@415
    if-lez v4, :cond_14

    #@417
    const/4 v4, 0x1

    #@418
    :goto_1e
    if-nez v4, :cond_0

    #@41a
    .line 1045
    move/from16 v0, v31

    #@41c
    mul-int/lit16 v4, v0, 0x3e8

    #@41e
    div-int/2addr v4, v9

    #@41f
    move-object/from16 v0, p0

    #@421
    iput v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->networkSpeedBytesPerSecond:I

    #@423
    goto/16 :goto_4

    #@425
    .line 1043
    :cond_14
    const/4 v4, 0x0

    #@426
    goto :goto_1e

    #@427
    :cond_15
    const-string/jumbo v4, "<1kb"

    #@42a
    .line 1053
    move-object/from16 v0, v16

    #@42c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@42f
    goto/16 :goto_5

    #@431
    .line 1065
    .end local v9    # "elapsedTime":I
    .end local v23    # "index":I
    .end local v28    # "readEndTime":J
    .end local v31    # "responseLength":I
    .end local v33    # "serverProtocolVersion":I
    :cond_16
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@434
    goto/16 :goto_f

    #@436
    .line 1069
    :catch_2
    move-exception v4

    #@437
    goto/16 :goto_f

    #@439
    .line 1072
    :cond_17
    :try_start_8
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    #@43c
    goto/16 :goto_10

    #@43e
    .line 1076
    :catch_3
    move-exception v4

    #@43f
    goto/16 :goto_10

    #@441
    .line 1079
    :cond_18
    :try_start_9
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@444
    goto/16 :goto_11

    #@446
    .line 1084
    :catch_4
    move-exception v4

    #@447
    goto/16 :goto_11

    #@449
    .line 1088
    :cond_19
    move-object/from16 v0, p1

    #@44b
    move/from16 v1, v22

    #@44d
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@450
    move-result-object v13

    #@451
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@453
    .line 1090
    .restart local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    #@456
    move-result v4

    #@457
    if-eqz v4, :cond_1a

    #@459
    .line 1087
    :goto_1f
    add-int/lit8 v22, v22, 0x1

    #@45b
    goto/16 :goto_12

    #@45d
    .line 1091
    :cond_1a
    move-object/from16 v0, p1

    #@45f
    invoke-virtual {v0, v13}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@462
    goto :goto_1f

    #@463
    .line 1065
    .end local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .restart local v31    # "responseLength":I
    .restart local v33    # "serverProtocolVersion":I
    :cond_1b
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    #@466
    goto/16 :goto_16

    #@468
    .line 1069
    :catch_5
    move-exception v4

    #@469
    goto/16 :goto_16

    #@46b
    .line 1072
    :cond_1c
    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    #@46e
    goto/16 :goto_17

    #@470
    .line 1076
    :catch_6
    move-exception v4

    #@471
    goto/16 :goto_17

    #@473
    .line 1079
    :cond_1d
    :try_start_c
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    #@476
    goto/16 :goto_18

    #@478
    .line 1084
    :catch_7
    move-exception v4

    #@479
    goto/16 :goto_18

    #@47b
    .line 1088
    :cond_1e
    move-object/from16 v0, p1

    #@47d
    move/from16 v1, v22

    #@47f
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@482
    move-result-object v13

    #@483
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@485
    .line 1090
    .restart local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    #@488
    move-result v4

    #@489
    if-eqz v4, :cond_1f

    #@48b
    .line 1087
    :goto_20
    add-int/lit8 v22, v22, 0x1

    #@48d
    goto/16 :goto_19

    #@48f
    .line 1091
    :cond_1f
    move-object/from16 v0, p1

    #@491
    invoke-virtual {v0, v13}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@494
    goto :goto_20

    #@495
    .line 1065
    .end local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .restart local v9    # "elapsedTime":I
    .restart local v23    # "index":I
    .restart local v28    # "readEndTime":J
    :cond_20
    :try_start_d
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    #@498
    goto/16 :goto_6

    #@49a
    .line 1069
    :catch_8
    move-exception v4

    #@49b
    goto/16 :goto_6

    #@49d
    .line 1072
    :cond_21
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    #@4a0
    goto/16 :goto_7

    #@4a2
    .line 1076
    :catch_9
    move-exception v4

    #@4a3
    goto/16 :goto_7

    #@4a5
    .line 1079
    :cond_22
    :try_start_f
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    #@4a8
    goto/16 :goto_8

    #@4aa
    .line 1084
    :catch_a
    move-exception v4

    #@4ab
    goto/16 :goto_8

    #@4ad
    .line 1088
    :cond_23
    move-object/from16 v0, p1

    #@4af
    move/from16 v1, v22

    #@4b1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4b4
    move-result-object v13

    #@4b5
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@4b7
    .line 1090
    .restart local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    #@4ba
    move-result v4

    #@4bb
    if-eqz v4, :cond_24

    #@4bd
    .line 1087
    :goto_21
    add-int/lit8 v22, v22, 0x1

    #@4bf
    goto/16 :goto_9

    #@4c1
    .line 1091
    :cond_24
    move-object/from16 v0, p1

    #@4c3
    invoke-virtual {v0, v13}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@4c6
    goto :goto_21

    #@4c7
    .line 1065
    .end local v6    # "startTime":J
    .end local v9    # "elapsedTime":I
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    .end local v19    # "hc":Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .end local v20    # "firstByteTime":J
    .end local v23    # "index":I
    .end local v24    # "is":Ljava/io/DataInputStream;
    .end local v26    # "os":Ljava/io/DataOutputStream;
    .end local v28    # "readEndTime":J
    .end local v30    # "responseCode":I
    .end local v31    # "responseLength":I
    .end local v33    # "serverProtocolVersion":I
    :cond_25
    :try_start_10
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    #@4ca
    goto/16 :goto_b

    #@4cc
    .line 1069
    :catch_b
    move-exception v5

    #@4cd
    goto/16 :goto_b

    #@4cf
    .line 1072
    :cond_26
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    #@4d2
    goto/16 :goto_c

    #@4d4
    .line 1076
    :catch_c
    move-exception v5

    #@4d5
    goto/16 :goto_c

    #@4d7
    .line 1079
    :cond_27
    :try_start_12
    invoke-interface/range {v19 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    #@4da
    goto/16 :goto_d

    #@4dc
    .line 1084
    :catch_d
    move-exception v5

    #@4dd
    goto/16 :goto_d

    #@4df
    .line 1088
    :cond_28
    move-object/from16 v0, p1

    #@4e1
    move/from16 v1, v22

    #@4e3
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4e6
    move-result-object v13

    #@4e7
    check-cast v13, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@4e9
    .line 1090
    .restart local v13    # "dataRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;->retryOnFailure()Z

    #@4ec
    move-result v5

    #@4ed
    if-eqz v5, :cond_29

    #@4ef
    .line 1087
    :goto_22
    add-int/lit8 v22, v22, 0x1

    #@4f1
    goto/16 :goto_e

    #@4f3
    .line 1091
    :cond_29
    move-object/from16 v0, p1

    #@4f5
    invoke-virtual {v0, v13}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@4f8
    goto :goto_22
.end method

.method public setAndroidLoggingId2(Ljava/lang/String;)V
    .locals 2
    .param p1, "androidLoggingId2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1337
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    const/16 v1, 0x13

    #@4
    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@7
    .line 1339
    return-void
.end method

.method public setAndroidMapKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "mapKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1328
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    const/16 v1, 0x11

    #@4
    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@7
    .line 1329
    return-void
.end method

.method public setAndroidSignature(Ljava/lang/String;)V
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1332
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    const/16 v1, 0x12

    #@4
    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@7
    .line 1334
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1342
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {v0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    #@6
    .line 1344
    return-void
.end method

.method protected declared-synchronized snapshotListeners()[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 531
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    #@3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@6
    move-result v1

    #@7
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;

    #@9
    .line 532
    .local v0, "listenersArray":[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->listeners:Ljava/util/Vector;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 533
    return-object v0

    #@10
    .end local v0    # "listenersArray":[Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    .line 759
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 760
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    #@6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@9
    move-result v1

    #@a
    if-lt v0, v1, :cond_0

    #@c
    .line 763
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->defaultServer:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@e
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    #@11
    .line 764
    return-void

    #@12
    .line 761
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->thirdPartyServers:Ljava/util/Vector;

    #@14
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;

    #@1a
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher$DispatcherServer;->start()V

    #@1d
    .line 760
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 755
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->active:Z

    #@3
    .line 756
    return-void
.end method

.method protected urlArguments(Ljava/util/Vector;)Ljava/lang/String;
    .locals 7
    .param p1, "requests"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 1265
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .local v1, "addToUrl":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "?"

    #@8
    .line 1267
    .local v5, "separator":Ljava/lang/String;
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    #@a
    invoke-static {v6}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_1

    #@10
    :goto_0
    const/4 v2, 0x0

    #@11
    .line 1272
    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@14
    move-result v6

    #@15
    if-lt v2, v6, :cond_2

    #@17
    .line 1283
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 1284
    .local v0, "addString":Ljava/lang/String;
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_0

    #@21
    .line 1287
    :cond_0
    return-object v0

    #@22
    .line 1268
    .end local v0    # "addString":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 1269
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->globalSpecialUrlArguments:Ljava/lang/String;

    #@27
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    const-string/jumbo v5, "&"

    #@2d
    .line 1270
    goto :goto_0

    #@2e
    .line 1273
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;

    #@34
    .line 1274
    .local v4, "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    instance-of v6, v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    #@36
    if-nez v6, :cond_4

    #@38
    .line 1272
    .end local v4    # "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1275
    .restart local v4    # "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    :cond_4
    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;

    #@3d
    .end local v4    # "request":Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/NeedsSpecialUrl;->getParams()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 1276
    .local v3, "param":Ljava/lang/String;
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_3

    #@47
    .line 1277
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 1278
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4d
    const-string/jumbo v5, "&"

    #@50
    .line 1279
    goto :goto_2
.end method
