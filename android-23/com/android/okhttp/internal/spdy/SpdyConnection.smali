.class public final Lcom/android/okhttp/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;,
        Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

.field private final handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field final okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

.field final peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/android/okhttp/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

.field final readerRunnable:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lcom/android/okhttp/internal/spdy/Variant;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/ExecutorService;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Lcom/android/okhttp/internal/spdy/PushObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z
    .locals 1
    .param p1, "streamId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Lcom/android/okhttp/internal/spdy/Ping;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/android/okhttp/internal/spdy/Ping;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p1, "connectionCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p2, "streamCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;
    .param p3, "inFinished"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushHeadersLater(ILjava/util/List;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushRequestLater(ILjava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/spdy/Ping;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/spdy/Ping;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v2

    #@b
    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-assertionsDisabled:Z

    #@d
    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@f
    .line 67
    const-wide/16 v4, 0x3c

    #@11
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@13
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@15
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    #@18
    .line 68
    const-string/jumbo v0, "OkHttp SpdyConnection"

    #@1b
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    #@1e
    move-result-object v8

    #@1f
    .line 67
    const v3, 0x7fffffff

    #@22
    .line 66
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@25
    sput-object v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    #@27
    .line 52
    return-void

    #@28
    :cond_0
    move v0, v3

    #@29
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)V
    .locals 12
    .param p1, "builder"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x7

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 81
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@f
    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@12
    move-result-wide v4

    #@13
    iput-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J

    #@15
    .line 102
    const-wide/16 v4, 0x0

    #@17
    iput-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    #@19
    .line 113
    new-instance v0, Lcom/android/okhttp/internal/spdy/Settings;

    #@1b
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@20
    .line 119
    new-instance v0, Lcom/android/okhttp/internal/spdy/Settings;

    #@22
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Settings;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@27
    .line 121
    iput-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    #@29
    .line 797
    new-instance v0, Ljava/util/LinkedHashSet;

    #@2b
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    #@30
    .line 130
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get3(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/Protocol;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@36
    .line 131
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get4(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/PushObserver;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    #@3c
    .line 132
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get0(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    #@3f
    move-result v0

    #@40
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@42
    .line 133
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get1(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@48
    .line 135
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get0(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_3

    #@4e
    move v0, v3

    #@4f
    :goto_0
    iput v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@51
    .line 136
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get0(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_0

    #@57
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@59
    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@5b
    if-ne v0, v4, :cond_0

    #@5d
    .line 137
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@5f
    add-int/lit8 v0, v0, 0x2

    #@61
    iput v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@63
    .line 140
    :cond_0
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get0(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_1

    #@69
    move v1, v3

    #@6a
    :cond_1
    iput v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    #@6c
    .line 146
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get0(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_2

    #@72
    .line 147
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@74
    const/high16 v1, 0x1000000

    #@76
    invoke-virtual {v0, v10, v2, v1}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    #@79
    .line 150
    :cond_2
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get2(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@7f
    .line 152
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@81
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@83
    if-ne v0, v1, :cond_4

    #@85
    .line 153
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http2;

    #@87
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Http2;-><init>()V

    #@8a
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/android/okhttp/internal/spdy/Variant;

    #@8c
    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@8e
    const-wide/16 v4, 0x3c

    #@90
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@92
    .line 156
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@94
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@97
    .line 157
    const-string/jumbo v0, "OkHttp %s Push Observer"

    #@9a
    new-array v8, v3, [Ljava/lang/Object;

    #@9c
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@9e
    aput-object v9, v8, v2

    #@a0
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    #@a7
    move-result-object v8

    #@a8
    .line 155
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@ab
    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    #@ad
    .line 159
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@af
    const v1, 0xffff

    #@b2
    invoke-virtual {v0, v10, v2, v1}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    #@b5
    .line 160
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@b7
    const/4 v1, 0x5

    #@b8
    const/16 v3, 0x4000

    #@ba
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    #@bd
    .line 167
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@bf
    const/high16 v1, 0x10000

    #@c1
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@c4
    move-result v0

    #@c5
    int-to-long v0, v0

    #@c6
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@c8
    .line 168
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get5(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;

    #@cb
    move-result-object v0

    #@cc
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->socket:Ljava/net/Socket;

    #@ce
    .line 169
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/android/okhttp/internal/spdy/Variant;

    #@d0
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->-get5(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;

    #@d3
    move-result-object v1

    #@d4
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    #@d7
    move-result-object v1

    #@d8
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@db
    move-result-object v1

    #@dc
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@de
    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Variant;->newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@e1
    move-result-object v0

    #@e2
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@e4
    .line 171
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    #@e6
    invoke-direct {v0, p0, v11}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;)V

    #@e9
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->readerRunnable:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    #@eb
    .line 172
    new-instance v0, Ljava/lang/Thread;

    #@ed
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->readerRunnable:Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;

    #@ef
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@f2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@f5
    .line 129
    return-void

    #@f6
    :cond_3
    move v0, v1

    #@f7
    .line 135
    goto/16 :goto_0

    #@f9
    .line 161
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@fb
    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@fd
    if-ne v0, v1, :cond_5

    #@ff
    .line 162
    new-instance v0, Lcom/android/okhttp/internal/spdy/Spdy3;

    #@101
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Spdy3;-><init>()V

    #@104
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/android/okhttp/internal/spdy/Variant;

    #@106
    .line 163
    iput-object v11, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    #@108
    goto :goto_1

    #@109
    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    #@10b
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@10d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@110
    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/android/okhttp/internal/spdy/SpdyConnection;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)V

    #@3
    return-void
.end method

.method private close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 10
    .param p1, "connectionCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p2, "streamCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 448
    sget-boolean v7, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-assertionsDisabled:Z

    #@3
    if-nez v7, :cond_1

    #@5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_0

    #@b
    move v7, v8

    #@c
    :goto_0
    if-nez v7, :cond_1

    #@e
    new-instance v7, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v7

    #@14
    :cond_0
    const/4 v7, 0x1

    #@15
    goto :goto_0

    #@16
    .line 449
    :cond_1
    const/4 v6, 0x0

    #@17
    .line 451
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 456
    .end local v6    # "thrown":Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    #@1b
    .line 457
    .local v5, "streamsToClose":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    const/4 v3, 0x0

    #@1c
    .line 458
    .local v3, "pingsToCancel":[Lcom/android/okhttp/internal/spdy/Ping;
    monitor-enter p0

    #@1d
    .line 459
    :try_start_1
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@1f
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    #@22
    move-result v7

    #@23
    if-nez v7, :cond_2

    #@25
    .line 460
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@27
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@2a
    move-result-object v7

    #@2b
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@2d
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@30
    move-result v9

    #@31
    new-array v9, v9, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@33
    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@36
    move-result-object v7

    #@37
    move-object v0, v7

    #@38
    check-cast v0, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@3a
    move-object v5, v0

    #@3b
    .line 461
    .local v5, "streamsToClose":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@3d
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    #@40
    .line 462
    const/4 v7, 0x0

    #@41
    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    #@44
    .line 464
    .end local v5    # "streamsToClose":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_2
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@46
    if-eqz v7, :cond_3

    #@48
    .line 465
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@4a
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@4d
    move-result-object v7

    #@4e
    iget-object v9, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@50
    invoke-interface {v9}, Ljava/util/Map;->size()I

    #@53
    move-result v9

    #@54
    new-array v9, v9, [Lcom/android/okhttp/internal/spdy/Ping;

    #@56
    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@59
    move-result-object v7

    #@5a
    move-object v0, v7

    #@5b
    check-cast v0, [Lcom/android/okhttp/internal/spdy/Ping;

    #@5d
    move-object v3, v0

    #@5e
    .line 466
    .local v3, "pingsToCancel":[Lcom/android/okhttp/internal/spdy/Ping;
    const/4 v7, 0x0

    #@5f
    iput-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    .end local v3    # "pingsToCancel":[Lcom/android/okhttp/internal/spdy/Ping;
    :cond_3
    monitor-exit p0

    #@62
    .line 470
    if-eqz v5, :cond_5

    #@64
    .line 471
    array-length v9, v5

    #@65
    move v7, v8

    #@66
    :goto_2
    if-ge v7, v9, :cond_5

    #@68
    aget-object v4, v5, v7

    #@6a
    .line 473
    .local v4, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :try_start_2
    invoke-virtual {v4, p2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@6d
    .line 471
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@6f
    goto :goto_2

    #@70
    .line 452
    .end local v4    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    .restart local v6    # "thrown":Ljava/io/IOException;
    :catch_0
    move-exception v1

    #@71
    .line 453
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    #@72
    .local v6, "thrown":Ljava/io/IOException;
    goto :goto_1

    #@73
    .line 458
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "thrown":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@74
    monitor-exit p0

    #@75
    throw v7

    #@76
    .line 474
    .restart local v4    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catch_1
    move-exception v1

    #@77
    .line 475
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_4

    #@79
    move-object v6, v1

    #@7a
    .restart local v6    # "thrown":Ljava/io/IOException;
    goto :goto_3

    #@7b
    .line 480
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    .end local v6    # "thrown":Ljava/io/IOException;
    :cond_5
    if-eqz v3, :cond_6

    #@7d
    .line 481
    array-length v9, v3

    #@7e
    move v7, v8

    #@7f
    :goto_4
    if-ge v7, v9, :cond_6

    #@81
    aget-object v2, v3, v7

    #@83
    .line 482
    .local v2, "ping":Lcom/android/okhttp/internal/spdy/Ping;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/Ping;->cancel()V

    #@86
    .line 481
    add-int/lit8 v7, v7, 0x1

    #@88
    goto :goto_4

    #@89
    .line 488
    .end local v2    # "ping":Lcom/android/okhttp/internal/spdy/Ping;
    :cond_6
    :try_start_3
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@8b
    invoke-interface {v7}, Lcom/android/okhttp/internal/spdy/FrameWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@8e
    .line 495
    :cond_7
    :goto_5
    :try_start_4
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->socket:Ljava/net/Socket;

    #@90
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@93
    .line 500
    :goto_6
    if-eqz v6, :cond_8

    #@95
    throw v6

    #@96
    .line 489
    :catch_2
    move-exception v1

    #@97
    .line 490
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_7

    #@99
    move-object v6, v1

    #@9a
    .restart local v6    # "thrown":Ljava/io/IOException;
    goto :goto_5

    #@9b
    .line 496
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "thrown":Ljava/io/IOException;
    :catch_3
    move-exception v1

    #@9c
    .line 497
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    #@9d
    .restart local v6    # "thrown":Ljava/io/IOException;
    goto :goto_6

    #@9e
    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "thrown":Ljava/io/IOException;
    :cond_8
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 9
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    if-eqz p3, :cond_0

    #@2
    const/4 v3, 0x0

    #@3
    .line 249
    .local v3, "outFinished":Z
    :goto_0
    if-eqz p4, :cond_1

    #@5
    const/4 v4, 0x0

    #@6
    .line 253
    .local v4, "inFinished":Z
    :goto_1
    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@8
    monitor-enter v8

    #@9
    .line 254
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 255
    :try_start_1
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 256
    new-instance v2, Ljava/io/IOException;

    #@10
    const-string/jumbo v5, "shutdown"

    #@13
    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .line 254
    :catchall_0
    move-exception v2

    #@18
    :try_start_2
    monitor-exit p0

    #@19
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1a
    .line 253
    :catchall_1
    move-exception v2

    #@1b
    monitor-exit v8

    #@1c
    throw v2

    #@1d
    .line 248
    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_0
    const/4 v3, 0x1

    #@1e
    .restart local v3    # "outFinished":Z
    goto :goto_0

    #@1f
    .line 249
    :cond_1
    const/4 v4, 0x1

    #@20
    .restart local v4    # "inFinished":Z
    goto :goto_1

    #@21
    .line 258
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@23
    .line 259
    .local v1, "streamId":I
    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@25
    add-int/lit8 v2, v2, 0x2

    #@27
    iput v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    #@29
    .line 260
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2b
    move-object v2, p0

    #@2c
    move-object v5, p2

    #@2d
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/android/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V

    #@30
    .line 261
    .local v0, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 262
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v5

    #@3c
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 263
    const/4 v2, 0x0

    #@40
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    :cond_3
    :try_start_4
    monitor-exit p0

    #@44
    .line 266
    if-nez p1, :cond_5

    #@46
    .line 267
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@48
    move v5, v1

    #@49
    move v6, p1

    #@4a
    move-object v7, p2

    #@4b
    invoke-interface/range {v2 .. v7}, Lcom/android/okhttp/internal/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4e
    :goto_2
    monitor-exit v8

    #@4f
    .line 276
    if-nez p3, :cond_4

    #@51
    .line 277
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@53
    invoke-interface {v2}, Lcom/android/okhttp/internal/spdy/FrameWriter;->flush()V

    #@56
    .line 280
    :cond_4
    return-object v0

    #@57
    .line 269
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@59
    if-eqz v2, :cond_6

    #@5b
    .line 270
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v5, "client streams shouldn\'t have associated stream IDs"

    #@60
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2

    #@64
    .line 272
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@66
    invoke-interface {v2, p1, v1, p2}, Lcom/android/okhttp/internal/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@69
    goto :goto_2
.end method

.method private pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 847
    new-instance v5, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v5}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    .line 848
    .local v5, "buffer":Lcom/android/okhttp/okio/Buffer;
    int-to-long v0, p3

    #@6
    invoke-interface {p2, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    #@9
    .line 849
    int-to-long v0, p3

    #@a
    invoke-interface {p2, v5, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@d
    .line 850
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@10
    move-result-wide v0

    #@11
    int-to-long v2, p3

    #@12
    cmp-long v0, v0, v2

    #@14
    if-eqz v0, :cond_0

    #@16
    new-instance v0, Ljava/io/IOException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@20
    move-result-wide v2

    #@21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " != "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 851
    :cond_0
    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    #@3a
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;

    #@3c
    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    #@3f
    const/4 v1, 0x2

    #@40
    new-array v3, v1, [Ljava/lang/Object;

    #@42
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@44
    const/4 v4, 0x0

    #@45
    aput-object v1, v3, v4

    #@47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v1

    #@4b
    const/4 v4, 0x1

    #@4c
    aput-object v1, v3, v4

    #@4e
    move-object v1, p0

    #@4f
    move v4, p1

    #@50
    move v6, p3

    #@51
    move v7, p4

    #@52
    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$6;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V

    #@55
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@58
    .line 846
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 825
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$5;

    #@4
    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    #@7
    const/4 v1, 0x2

    #@8
    new-array v3, v1, [Ljava/lang/Object;

    #@a
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v1, v3, v4

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v4, 0x1

    #@14
    aput-object v1, v3, v4

    #@16
    move-object v1, p0

    #@17
    move v4, p1

    #@18
    move-object v5, p2

    #@19
    move v6, p3

    #@1a
    invoke-direct/range {v0 .. v6}, Lcom/android/okhttp/internal/spdy/SpdyConnection$5;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    #@1d
    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@20
    .line 824
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 800
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    #@1
    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 802
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@f
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 803
    return-void

    #@14
    .line 805
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    #@16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    .line 807
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    #@20
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$4;

    #@22
    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    #@25
    const/4 v1, 0x2

    #@26
    new-array v3, v1, [Ljava/lang/Object;

    #@28
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@2a
    const/4 v4, 0x0

    #@2b
    aput-object v1, v3, v4

    #@2d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v1

    #@31
    const/4 v4, 0x1

    #@32
    aput-object v1, v3, v4

    #@34
    move-object v1, p0

    #@35
    move v4, p1

    #@36
    move-object v5, p2

    #@37
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection$4;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    #@3a
    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@3d
    .line 799
    return-void

    #@3e
    .line 800
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method private pushResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    .line 868
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;

    #@4
    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    #@7
    const/4 v1, 0x2

    #@8
    new-array v3, v1, [Ljava/lang/Object;

    #@a
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v1, v3, v4

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v4, 0x1

    #@14
    aput-object v1, v3, v4

    #@16
    move-object v1, p0

    #@17
    move v4, p1

    #@18
    move-object v5, p2

    #@19
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection$7;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@1c
    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@1f
    .line 867
    return-void
.end method

.method private pushedStream(I)Z
    .locals 3
    .param p1, "streamId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 793
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@3
    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@5
    if-ne v1, v2, :cond_0

    #@7
    if-eqz p1, :cond_0

    #@9
    and-int/lit8 v1, p1, 0x1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private declared-synchronized removePing(I)Lcom/android/okhttp/internal/spdy/Ping;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/okhttp/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    return-object v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 202
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@6
    move-result-wide v0

    #@7
    :goto_0
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 201
    return-void

    #@b
    .line 202
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

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

.method private writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@2
    monitor-enter v1

    #@3
    .line 404
    if-eqz p4, :cond_0

    #@5
    :try_start_0
    invoke-virtual {p4}, Lcom/android/okhttp/internal/spdy/Ping;->send()V

    #@8
    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@a
    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->ping(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 401
    return-void

    #@f
    .line 402
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private writePingLater(ZIILcom/android/okhttp/internal/spdy/Ping;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/spdy/Ping;

    #@0
    .prologue
    .line 390
    sget-object v8, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;

    #@4
    const-string/jumbo v2, "OkHttp %s ping %08x%08x"

    #@7
    const/4 v1, 0x3

    #@8
    new-array v3, v1, [Ljava/lang/Object;

    #@a
    .line 391
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v1, v3, v4

    #@f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v4, 0x1

    #@14
    aput-object v1, v3, v4

    #@16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    const/4 v4, 0x2

    #@1b
    aput-object v1, v3, v4

    #@1d
    move-object v1, p0

    #@1e
    move v4, p1

    #@1f
    move v5, p2

    #@20
    move v6, p3

    #@21
    move-object v7, p4

    #@22
    .line 390
    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$3;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/spdy/Ping;)V

    #@25
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@28
    .line 389
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 338
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@5
    .line 339
    const-wide/16 v0, 0x0

    #@7
    cmp-long v0, p1, v0

    #@9
    if-lez v0, :cond_0

    #@b
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->notifyAll()V

    #@e
    .line 337
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@7
    .line 443
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/internal/spdy/FrameWriter;->flush()V

    #@5
    .line 413
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 215
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-wide v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getProtocol()Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 207
    :try_start_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const-wide v2, 0x7fffffffffffffffL

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    monitor-exit p0

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

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

.method public newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public ping()Lcom/android/okhttp/internal/spdy/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    new-instance v0, Lcom/android/okhttp/internal/spdy/Ping;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Ping;-><init>()V

    #@5
    .line 375
    .local v0, "ping":Lcom/android/okhttp/internal/spdy/Ping;
    monitor-enter p0

    #@6
    .line 376
    :try_start_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 377
    new-instance v2, Ljava/io/IOException;

    #@c
    const-string/jumbo v3, "shutdown"

    #@f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 375
    :catchall_0
    move-exception v2

    #@14
    monitor-exit p0

    #@15
    throw v2

    #@16
    .line 379
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    #@18
    .line 380
    .local v1, "pingId":I
    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    #@1a
    add-int/lit8 v2, v2, 0x2

    #@1c
    iput v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    #@1e
    .line 381
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@20
    if-nez v2, :cond_1

    #@22
    new-instance v2, Ljava/util/HashMap;

    #@24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@27
    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@29
    .line 382
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    #@2b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit p0

    #@33
    .line 384
    const/4 v2, 0x0

    #@34
    const v3, 0x4f4b6f6b

    #@37
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/android/okhttp/internal/spdy/Ping;)V

    #@3a
    .line 385
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)",
            "Lcom/android/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Client cannot push requests."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/android/okhttp/Protocol;

    #@f
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@11
    if-eq v0, v1, :cond_1

    #@13
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "protocol != HTTP_2"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 230
    :cond_1
    const/4 v0, 0x0

    #@1d
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method declared-synchronized removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;
    .locals 3
    .param p1, "streamId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@d
    .line 194
    .local v0, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@11
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 195
    const/4 v1, 0x1

    #@18
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    #@1b
    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 198
    return-object v0

    #@20
    .end local v0    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v1

    #@21
    monitor-exit p0

    #@22
    throw v1
.end method

.method public sendConnectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    .line 508
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@4
    invoke-interface {v1}, Lcom/android/okhttp/internal/spdy/FrameWriter;->connectionPreface()V

    #@7
    .line 509
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@9
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@b
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/spdy/FrameWriter;->settings(Lcom/android/okhttp/internal/spdy/Settings;)V

    #@e
    .line 510
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@10
    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@13
    move-result v0

    #@14
    .line 511
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    #@16
    .line 512
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@18
    sub-int v2, v0, v3

    #@1a
    int-to-long v2, v2

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v1, v4, v2, v3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->windowUpdate(IJ)V

    #@1f
    .line 507
    :cond_0
    return-void
.end method

.method public shutdown(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@2
    monitor-enter v2

    #@3
    .line 426
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 427
    :try_start_1
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6
    if-eqz v1, :cond_0

    #@8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9
    monitor-exit v2

    #@a
    .line 428
    return-void

    #@b
    .line 430
    :cond_0
    const/4 v1, 0x1

    #@c
    :try_start_3
    iput-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    #@e
    .line 431
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@10
    .local v0, "lastGoodStreamId":I
    :try_start_4
    monitor-exit p0

    #@11
    .line 434
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@13
    sget-object v3, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    #@15
    invoke-interface {v1, v0, p1, v3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@18
    monitor-exit v2

    #@19
    .line 423
    return-void

    #@1a
    .line 426
    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    #@1b
    :try_start_5
    monitor-exit p0

    #@1c
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1d
    .line 424
    :catchall_1
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 302
    cmp-long v2, p4, v8

    #@5
    if-nez v2, :cond_1

    #@7
    .line 303
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@9
    invoke-interface {v2, p2, p1, p3, v3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    #@c
    .line 304
    return-void

    #@d
    .line 323
    :cond_0
    :try_start_0
    iget-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@f
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@12
    move-result-wide v4

    #@13
    long-to-int v1, v4

    #@14
    .line 324
    .local v1, "toWrite":I
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@16
    invoke-interface {v2}, Lcom/android/okhttp/internal/spdy/FrameWriter;->maxDataLength()I

    #@19
    move-result v2

    #@1a
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v1

    #@1e
    .line 325
    iget-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@20
    int-to-long v6, v1

    #@21
    sub-long/2addr v4, v6

    #@22
    iput-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 328
    int-to-long v4, v1

    #@26
    sub-long/2addr p4, v4

    #@27
    .line 329
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@29
    if-eqz p2, :cond_3

    #@2b
    cmp-long v2, p4, v8

    #@2d
    if-nez v2, :cond_3

    #@2f
    const/4 v2, 0x1

    #@30
    :goto_0
    invoke-interface {v4, v2, p1, p3, v1}, Lcom/android/okhttp/internal/spdy/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    #@33
    .line 307
    .end local v1    # "toWrite":I
    :cond_1
    cmp-long v2, p4, v8

    #@35
    if-lez v2, :cond_4

    #@37
    .line 309
    monitor-enter p0

    #@38
    .line 311
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@3a
    cmp-long v2, v4, v8

    #@3c
    if-gtz v2, :cond_0

    #@3e
    .line 314
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    #@40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v4

    #@44
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-nez v2, :cond_2

    #@4a
    .line 315
    new-instance v2, Ljava/io/IOException;

    #@4c
    const-string/jumbo v3, "stream closed"

    #@4f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 319
    :catch_0
    move-exception v0

    #@54
    .line 320
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    #@56
    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    #@59
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    .line 309
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@5b
    monitor-exit p0

    #@5c
    throw v2

    #@5d
    .line 317
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@60
    goto :goto_1

    #@61
    .restart local v1    # "toWrite":I
    :cond_3
    move v2, v3

    #@62
    .line 329
    goto :goto_0

    #@63
    .line 301
    .end local v1    # "toWrite":I
    :cond_4
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@2
    invoke-interface {v0, p2, p1, p3}, Lcom/android/okhttp/internal/spdy/FrameWriter;->synReply(ZILjava/util/List;)V

    #@5
    .line 284
    return-void
.end method

.method writeSynReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/android/okhttp/internal/spdy/FrameWriter;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@5
    .line 353
    return-void
.end method

.method writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    .line 343
    sget-object v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;

    #@4
    const-string/jumbo v2, "OkHttp %s stream %d"

    #@7
    const/4 v1, 0x2

    #@8
    new-array v3, v1, [Ljava/lang/Object;

    #@a
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v1, v3, v4

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v4, 0x1

    #@14
    aput-object v1, v3, v4

    #@16
    move-object v1, p0

    #@17
    move v4, p1

    #@18
    move-object v5, p2

    #@19
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection$1;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@1c
    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #@1f
    .line 342
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    #@0
    .prologue
    .line 358
    sget-object v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v1, Lcom/android/okhttp/internal/spdy/SpdyConnection$2;

    #@4
    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    #@7
    const/4 v2, 0x2

    #@8
    new-array v4, v2, [Ljava/lang/Object;

    #@a
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    #@c
    const/4 v5, 0x0

    #@d
    aput-object v2, v4, v5

    #@f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    const/4 v5, 0x1

    #@14
    aput-object v2, v4, v5

    #@16
    move-object v2, p0

    #@17
    move v5, p1

    #@18
    move-wide v6, p2

    #@19
    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection$2;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    #@1c
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@1f
    .line 357
    return-void
.end method
