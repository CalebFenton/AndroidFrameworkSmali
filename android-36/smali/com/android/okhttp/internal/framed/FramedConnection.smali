.class public final Lcom/android/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FramedConnection$Listener;,
        Lcom/android/okhttp/internal/framed/FramedConnection$Builder;,
        Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final blacklist executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field blacklist bytesLeftInWriteWindow:J

.field final blacklist client:Z

.field private final blacklist currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

.field private final blacklist hostName:Ljava/lang/String;

.field private blacklist idleStartTimeNs:J

.field private blacklist lastGoodStreamId:I

.field private final blacklist listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

.field private blacklist nextPingId:I

.field private blacklist nextStreamId:I

.field blacklist okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

.field final blacklist peerSettings:Lcom/android/okhttp/internal/framed/Settings;

.field private blacklist pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist protocol:Lcom/android/okhttp/Protocol;

.field private final blacklist pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

.field final blacklist readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field private blacklist receivedInitialPeerSettings:Z

.field private blacklist shutdown:Z

.field final blacklist socket:Ljava/net/Socket;

.field private final blacklist streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field blacklist unacknowledgedBytesRead:J

.field final blacklist variant:Lcom/android/okhttp/internal/framed/Variant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 57
    const-class v0, Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 71
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    const/4 v2, 0x1

    .line 73
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 133
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J

    const-wide/16 v1, 0x0

    .line 107
    iput-wide v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 117
    new-instance v1, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 123
    new-instance v1, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/4 v2, 0x0

    .line 125
    iput-boolean v2, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 838
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 134
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$000(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/Protocol;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 135
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$100(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 136
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    .line 137
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$300(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v5

    iput-object v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .line 139
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_50

    move v5, v7

    goto :goto_51

    :cond_50
    move v5, v6

    :goto_51
    iput v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 140
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    if-eqz v5, :cond_62

    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v3, v5, :cond_62

    .line 141
    iget v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 144
    :cond_62
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    if-eqz v5, :cond_69

    move v6, v7

    :cond_69
    iput v6, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 150
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_79

    .line 151
    iget-object v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 154
    :cond_79
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$400(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    .line 156
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_b8

    .line 157
    new-instance v3, Lcom/android/okhttp/internal/framed/Http2;

    invoke-direct {v3}, Lcom/android/okhttp/internal/framed/Http2;-><init>()V

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    .line 159
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v3, "OkHttp %s Push Observer"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 161
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v10, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    .line 163
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    .line 164
    invoke-virtual {v1, v3, v2, v5}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    goto :goto_c5

    .line 165
    :cond_b8
    sget-object v2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-ne v3, v2, :cond_fa

    .line 166
    new-instance v2, Lcom/android/okhttp/internal/framed/Spdy3;

    invoke-direct {v2}, Lcom/android/okhttp/internal/framed/Spdy3;-><init>()V

    iput-object v2, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    .line 167
    iput-object v9, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    :goto_c5
    const/high16 v2, 0x10000

    .line 171
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 172
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$500(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 173
    iget-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$600(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/okhttp/internal/framed/Variant;->newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    .line 175
    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v2, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$700(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Variant;->newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    .line 176
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 169
    :cond_fa
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic blacklist access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return p0
.end method

.method static synthetic blacklist access$1602(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p0
.end method

.method static synthetic blacklist access$1702(Lcom/android/okhttp/internal/framed/FramedConnection;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic blacklist access$1800(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    return p0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic blacklist access$2000(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-object p0
.end method

.method static synthetic blacklist access$2100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic blacklist access$2200(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic blacklist access$2300(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p0
.end method

.method static synthetic blacklist access$2302(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic blacklist access$2400(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/android/okhttp/internal/framed/Ping;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$2500(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic blacklist access$2600(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic blacklist access$2700(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic blacklist access$2800(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method private blacklist close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 459
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-object p1, v0

    goto :goto_7

    :catch_6
    move-exception p1

    .line 466
    :goto_7
    monitor-enter p0

    .line 467
    :try_start_8
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 468
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/okhttp/internal/framed/FramedStream;

    .line 469
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 470
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    goto :goto_31

    :catchall_2e
    move-exception p1

    goto :goto_81

    :cond_30
    move-object v1, v0

    .line 472
    :goto_31
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v3, :cond_4a

    .line 473
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/okhttp/internal/framed/Ping;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/okhttp/internal/framed/Ping;

    .line 474
    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    move-object v0, v3

    .line 476
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_2e

    if-eqz v1, :cond_5e

    .line 479
    array-length v3, v1

    move v4, v2

    :goto_4f
    if-ge v4, v3, :cond_5e

    aget-object v5, v1, v4

    .line 481
    :try_start_53
    invoke-virtual {v5, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v5

    if-eqz p1, :cond_5b

    move-object p1, v5

    :cond_5b
    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_5e
    if-eqz v0, :cond_6b

    .line 489
    array-length p2, v0

    :goto_61
    if-ge v2, p2, :cond_6b

    aget-object v1, v0, v2

    .line 490
    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/Ping;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 496
    :cond_6b
    :try_start_6b
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p2

    if-nez p1, :cond_75

    move-object p1, p2

    .line 503
    :cond_75
    :goto_75
    :try_start_75
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_7d

    :catch_7b
    move-exception p0

    move-object p1, p0

    :goto_7d
    if-nez p1, :cond_80

    return-void

    .line 508
    :cond_80
    throw p1

    .line 476
    :goto_81
    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_2e

    throw p1
.end method

.method private blacklist newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v1, p3, 0x1

    xor-int/lit8 v2, p4, 0x1

    .line 261
    iget-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter p4

    .line 262
    :try_start_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_44

    .line 263
    :try_start_8
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v0, :cond_65

    .line 266
    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v3, 0x2

    .line 267
    iput v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 268
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_37

    move v4, v3

    move v3, v1

    move v1, v4

    move-object v5, p2

    move v4, v2

    move-object v2, p0

    :try_start_1a
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_62

    move p0, v3

    move v3, v1

    move v1, p0

    move-object p2, v0

    move-object p0, v2

    move v2, v4

    .line 269
    :try_start_23
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 270
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    goto :goto_3a

    :catchall_37
    move-exception v0

    :goto_38
    move-object p1, v0

    goto :goto_6d

    .line 273
    :cond_3a
    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_37

    if-nez p1, :cond_47

    .line 275
    :try_start_3d
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    goto :goto_51

    :catchall_44
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :cond_47
    move v4, p1

    .line 277
    iget-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez p1, :cond_5a

    .line 280
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p1, v4, v3, v5}, Lcom/android/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 282
    :goto_51
    monitor-exit p4
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_44

    if-nez p3, :cond_59

    .line 285
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p0}, Lcom/android/okhttp/internal/framed/FrameWriter;->flush()V

    :cond_59
    return-object p2

    .line 278
    :cond_5a
    :try_start_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_44

    :catchall_62
    move-exception v0

    move-object p0, v2

    goto :goto_38

    .line 264
    :cond_65
    :try_start_65
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :goto_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_37

    :try_start_6e
    throw p1

    .line 282
    :goto_6f
    monitor-exit p4
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_44

    throw p0
.end method

.method private blacklist pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    new-instance v5, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v5}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 889
    invoke-interface {p2, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 890
    invoke-interface {p2, v5, v0, v1}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    .line 891
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_2f

    .line 892
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$6;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2f
    move v6, p3

    .line 891
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$5;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist pushRequestLater(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 841
    monitor-enter p0

    .line 842
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3c

    if-eqz v0, :cond_18

    .line 843
    :try_start_d
    sget-object p2, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 844
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3f

    .line 846
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_3c

    .line 848
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3c
    move-exception v0

    move-object v2, p0

    :goto_3e
    move-object p1, v0

    .line 847
    :goto_3f
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_41

    throw p1

    :catchall_41
    move-exception v0

    goto :goto_3e
.end method

.method private blacklist pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 10

    .line 909
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$7;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist pushedStream(I)Z
    .registers 3

    .line 834
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne p0, v0, :cond_d

    if-eqz p1, :cond_d

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_d

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized blacklist removePing(I)Lcom/android/okhttp/internal/framed/Ping;
    .registers 3

    monitor-enter p0

    .line 418
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/okhttp/internal/framed/Ping;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception p1

    goto :goto_15

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit p0

    return-object p1

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_10

    throw p1
.end method

.method private declared-synchronized blacklist setIdle(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 206
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_f

    :catchall_8
    move-exception p1

    goto :goto_13

    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    :goto_f
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_8

    .line 207
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_8

    throw p1
.end method

.method private blacklist writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    if-eqz p4, :cond_b

    .line 412
    :try_start_5
    invoke-virtual {p4}, Lcom/android/okhttp/internal/framed/Ping;->send()V

    goto :goto_b

    :catchall_9
    move-exception p0

    goto :goto_12

    .line 413
    :cond_b
    :goto_b
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 414
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_9

    throw p0
.end method

.method private blacklist writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 14

    .line 398
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$3;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    .line 399
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/framed/Ping;)V

    .line 398
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method blacklist addBytesToWriteWindow(J)V
    .registers 5

    .line 346
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public blacklist flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p0}, Lcom/android/okhttp/internal/framed/FrameWriter;->flush()V

    return-void
.end method

.method public declared-synchronized blacklist getIdleStartTimeNs()J
    .registers 3

    monitor-enter p0

    .line 223
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method declared-synchronized blacklist getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 3

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/okhttp/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist isIdle()Z
    .registers 5

    monitor-enter p0

    .line 211
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public declared-synchronized blacklist maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public blacklist newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized blacklist openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist ping()Lcom/android/okhttp/internal/framed/Ping;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    new-instance v0, Lcom/android/okhttp/internal/framed/Ping;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Ping;-><init>()V

    .line 383
    monitor-enter p0

    .line 384
    :try_start_6
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_30

    .line 387
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v2, v1, 0x2

    .line 388
    iput v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 389
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1e

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    goto :goto_1e

    :catchall_1c
    move-exception v0

    goto :goto_38

    .line 390
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_1c

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    .line 392
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-object v0

    .line 385
    :cond_30
    :try_start_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :goto_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_1c

    throw v0
.end method

.method public blacklist pushStream(ILjava/util/List;Z)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)",
            "Lcom/android/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v0, :cond_18

    .line 237
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object p0

    return-object p0

    .line 237
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "protocol != HTTP_2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client cannot push requests."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method declared-synchronized blacklist removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 3

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz p1, :cond_1e

    .line 198
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_23

    .line 201
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1c

    .line 202
    monitor-exit p0

    return-object p1

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1c

    throw p1
.end method

.method public blacklist sendConnectionPreface()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/android/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 517
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/framed/FrameWriter;->settings(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 518
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    if-eq v0, v1, :cond_1e

    .line 520
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    :cond_1e
    return-void
.end method

.method public blacklist setSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 527
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_15

    .line 528
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_19

    .line 531
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 532
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1, p1}, Lcom/android/okhttp/internal/framed/FrameWriter;->settings(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 533
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 534
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p0

    goto :goto_23

    :catchall_17
    move-exception p1

    goto :goto_21

    .line 529
    :cond_19
    :try_start_19
    new-instance p1, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_17

    :try_start_22
    throw p1

    .line 534
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_15

    throw p0
.end method

.method public blacklist shutdown(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 434
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_b

    .line 435
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_f

    .line 436
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception p0

    goto :goto_20

    :catchall_d
    move-exception p1

    goto :goto_1e

    :cond_f
    const/4 v1, 0x1

    .line 438
    :try_start_10
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    .line 439
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    .line 440
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 442
    :try_start_15
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    sget-object v2, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {p0, v1, p1, v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V

    .line 443
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_b

    return-void

    .line 440
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_d

    :try_start_1f
    throw p1

    .line 443
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_b

    throw p0
.end method

.method public blacklist writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 311
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p0, p2, p1, p3, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    if-lez v2, :cond_60

    .line 317
    monitor-enter p0

    .line 319
    :goto_12
    :try_start_12
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_32

    .line 322
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    :catchall_28
    move-exception p1

    goto :goto_5e

    .line 323
    :cond_2a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_32} :catch_58
    .catchall {:try_start_12 .. :try_end_32} :catchall_28

    .line 331
    :cond_32
    :try_start_32
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 332
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v4}, Lcom/android/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 333
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 334
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_28

    sub-long/2addr p4, v6

    .line 337
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_53

    cmp-long v5, p4, v0

    if-nez v5, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    move v5, v3

    :goto_54
    invoke-interface {v4, v5, p1, p3, v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    goto :goto_d

    .line 328
    :catch_58
    :try_start_58
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 334
    :goto_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_28

    throw p1

    :cond_60
    return-void
.end method

.method blacklist writeSynReply(IZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p0, p2, p1, p3}, Lcom/android/okhttp/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method blacklist writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method blacklist writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 10

    .line 351
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$1;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v3, "OkHttp %s stream %d"

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method blacklist writeWindowUpdateLater(IJ)V
    .registers 12

    .line 366
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$2;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
