.class public final Lcom/android/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;,
        Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;
    }
.end annotation


# static fields
.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/android/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/android/okhttp/ConnectionPool;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;

.field private final socket:Ljava/net/Socket;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;

.field private state:I


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/Connection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/http/HttpConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/ConnectionPool;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/http/HttpConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/http/HttpConnection;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/http/HttpConnection;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/okio/ForwardingTimeout;)V
    .locals 0
    .param p1, "timeout"    # Lcom/android/okhttp/okio/ForwardingTimeout;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpConnection;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/android/okhttp/Connection;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 82
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@6
    .line 83
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    #@8
    .line 87
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@a
    .line 88
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@c
    .line 89
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    #@e
    .line 90
    invoke-static {p3}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@18
    .line 91
    invoke-static {p3}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@22
    .line 86
    return-void
.end method

.method private detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    .locals 2
    .param p1, "timeout"    # Lcom/android/okhttp/okio/ForwardingTimeout;

    #@0
    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate()Lcom/android/okhttp/okio/Timeout;

    #@3
    move-result-object v0

    #@4
    .line 276
    .local v0, "oldDelegate":Lcom/android/okhttp/okio/Timeout;
    sget-object v1, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    #@6
    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;->setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;

    #@9
    .line 277
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    #@c
    .line 278
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    #@f
    .line 274
    return-void
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/android/okhttp/Connection;Ljava/lang/Object;)V

    #@7
    .line 136
    return-void
.end method

.method public closeOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    const/4 v0, 0x2

    #@1
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    #@3
    .line 125
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 126
    const/4 v0, 0x6

    #@8
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@a
    .line 127
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/Connection;->getSocket()Ljava/net/Socket;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@13
    .line 121
    :cond_0
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
    .line 141
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    #@5
    .line 140
    return-void
.end method

.method public isClosed()Z
    .locals 2

    #@0
    .prologue
    .line 133
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isReadable()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    #@4
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@7
    move-result v2

    #@8
    .line 154
    .local v2, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    #@a
    const/4 v4, 0x1

    #@b
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    #@e
    .line 155
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@10
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 160
    :try_start_2
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    #@18
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@1b
    .line 156
    return v6

    #@1c
    .line 160
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    #@1e
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@21
    .line 158
    return v5

    #@22
    .line 159
    :catchall_0
    move-exception v3

    #@23
    .line 160
    iget-object v4, p0, Lcom/android/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    #@25
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    #@28
    .line 159
    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    .line 162
    .end local v2    # "readTimeout":I
    :catch_0
    move-exception v1

    #@2a
    .line 163
    .local v1, "ignored":Ljava/net/SocketTimeoutException;
    return v5

    #@2b
    .line 164
    .end local v1    # "ignored":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    #@2c
    .line 165
    .local v0, "e":Ljava/io/IOException;
    return v6
.end method

.method public newChunkedSink()Lcom/android/okhttp/okio/Sink;
    .locals 3

    #@0
    .prologue
    .line 226
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "state: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 227
    :cond_0
    const/4 v0, 0x2

    #@22
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@24
    .line 228
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;)V

    #@2a
    return-object v0
.end method

.method public newChunkedSource(Lcom/android/okhttp/internal/http/HttpEngine;)Lcom/android/okhttp/okio/Source;
    .locals 3
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "state: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 251
    :cond_0
    const/4 v0, 0x5

    #@22
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@24
    .line 252
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;

    #@26
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpEngine;)V

    #@29
    return-object v0
.end method

.method public newFixedLengthSink(J)Lcom/android/okhttp/okio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 232
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "state: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 233
    :cond_0
    const/4 v0, 0x2

    #@22
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@24
    .line 234
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;JLcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;)V

    #@2a
    return-object v0
.end method

.method public newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "state: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 245
    :cond_0
    const/4 v0, 0x5

    #@22
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@24
    .line 246
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;

    #@26
    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;J)V

    #@29
    return-object v0
.end method

.method public newUnknownLengthSource()Lcom/android/okhttp/okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x4

    #@3
    if-eq v0, v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "state: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 257
    :cond_0
    const/4 v0, 0x5

    #@22
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@24
    .line 258
    new-instance v0, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$UnknownLengthSource;)V

    #@2a
    return-object v0
.end method

.method public poolOnIdle()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    const/4 v0, 0x1

    #@2
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    #@4
    .line 111
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 112
    iput v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->onIdle:I

    #@a
    .line 113
    sget-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@c
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->pool:Lcom/android/okhttp/ConnectionPool;

    #@e
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/internal/Internal;->recycle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Connection;)V

    #@13
    .line 107
    :cond_0
    return-void
.end method

.method public rawSink()Lcom/android/okhttp/okio/BufferedSink;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2
    return-object v0
.end method

.method public rawSource()Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    return-object v0
.end method

.method public readHeaders(Lcom/android/okhttp/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 221
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@e
    invoke-virtual {v1, p1, v0}, Lcom/android/okhttp/internal/Internal;->addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V

    #@11
    goto :goto_0

    #@12
    .line 218
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/android/okhttp/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v6, 0x1

    #@3
    if-eq v5, v6, :cond_0

    #@5
    iget v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@7
    const/4 v6, 0x3

    #@8
    if-eq v5, v6, :cond_0

    #@a
    .line 186
    new-instance v5, Ljava/lang/IllegalStateException;

    #@c
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v7, "state: "

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    iget v7, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5

    #@26
    .line 191
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@28
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v5}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    #@2f
    move-result-object v4

    #@30
    .line 193
    .local v4, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v5, Lcom/android/okhttp/Response$Builder;

    #@32
    invoke-direct {v5}, Lcom/android/okhttp/Response$Builder;-><init>()V

    #@35
    .line 194
    iget-object v6, v4, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@37
    .line 193
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@3a
    move-result-object v5

    #@3b
    .line 195
    iget v6, v4, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@3d
    .line 193
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    #@40
    move-result-object v5

    #@41
    .line 196
    iget-object v6, v4, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@43
    .line 193
    invoke-virtual {v5, v6}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@46
    move-result-object v3

    #@47
    .line 198
    .local v3, "responseBuilder":Lcom/android/okhttp/Response$Builder;
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    #@49
    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@4c
    .line 199
    .local v2, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/android/okhttp/Headers$Builder;)V

    #@4f
    .line 200
    sget-object v5, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    #@51
    iget-object v6, v4, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@53
    invoke-virtual {v6}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v2, v5, v6}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@5a
    .line 201
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v3, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@61
    .line 203
    iget v5, v4, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@63
    const/16 v6, 0x64

    #@65
    if-eq v5, v6, :cond_0

    #@67
    .line 204
    const/4 v5, 0x4

    #@68
    iput v5, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 205
    return-object v3

    #@6b
    .line 208
    .end local v2    # "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v3    # "responseBuilder":Lcom/android/okhttp/Response$Builder;
    .end local v4    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :catch_0
    move-exception v0

    #@6c
    .line 210
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    #@6e
    new-instance v5, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v6, "unexpected end of stream on "

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    iget-object v6, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 211
    const-string/jumbo v6, " (recycle count="

    #@83
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    .line 211
    sget-object v6, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    #@89
    iget-object v7, p0, Lcom/android/okhttp/internal/http/HttpConnection;->connection:Lcom/android/okhttp/Connection;

    #@8b
    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/Internal;->recycleCount(Lcom/android/okhttp/Connection;)I

    #@8e
    move-result v6

    #@8f
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    .line 211
    const-string/jumbo v6, ")"

    #@96
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a1
    .line 212
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@a4
    .line 213
    throw v1
.end method

.method public setTimeouts(II)V
    .locals 4
    .param p1, "readTimeoutMillis"    # I
    .param p2, "writeTimeoutMillis"    # I

    #@0
    .prologue
    .line 95
    if-eqz p1, :cond_0

    #@2
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@4
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@7
    move-result-object v0

    #@8
    int-to-long v2, p1

    #@9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@b
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    #@e
    .line 98
    :cond_0
    if-eqz p2, :cond_1

    #@10
    .line 99
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@12
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@15
    move-result-object v0

    #@16
    int-to-long v2, p2

    #@17
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@19
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    #@1c
    .line 94
    :cond_1
    return-void
.end method

.method public writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lcom/android/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    if-eqz v2, :cond_0

    #@4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "state: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    iget v4, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@22
    invoke-interface {v2, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "\r\n"

    #@29
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@2c
    .line 173
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->size()I

    #@30
    move-result v1

    #@31
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@33
    .line 174
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@35
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@3c
    move-result-object v2

    #@3d
    .line 175
    const-string/jumbo v3, ": "

    #@40
    .line 174
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@43
    move-result-object v2

    #@44
    .line 176
    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 174
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@4b
    move-result-object v2

    #@4c
    .line 177
    const-string/jumbo v3, "\r\n"

    #@4f
    .line 174
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@52
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 179
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@57
    const-string/jumbo v3, "\r\n"

    #@5a
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@5d
    .line 180
    const/4 v2, 0x1

    #@5e
    iput v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@60
    .line 170
    return-void
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    iget v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "state: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 239
    :cond_0
    const/4 v0, 0x3

    #@22
    iput v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->state:I

    #@24
    .line 240
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@26
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    #@29
    .line 237
    return-void
.end method
