.class final Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;
.super Ljava/lang/Object;
.source "SpdyStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpdyDataSource"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final receiveBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-assertionsDisabled:Z

    #@b
    .line 314
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .param p2, "maxByteCount"    # J

    #@0
    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 316
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    #@c
    .line 319
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@e
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@13
    .line 334
    iput-wide p2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->maxByteCount:J

    #@15
    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;JLcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;
    .param p2, "maxByteCount"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;J)V

    #@3
    return-void
.end method

.method private checkNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 439
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@f
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 442
    new-instance v0, Ljava/io/IOException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "stream was reset: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@25
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 437
    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get3(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->enter()V

    #@9
    .line 376
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@b
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@e
    move-result-wide v0

    #@f
    const-wide/16 v2, 0x0

    #@11
    cmp-long v0, v0, v2

    #@13
    if-nez v0, :cond_0

    #@15
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1b
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get3(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@22
    .line 373
    return-void

    #@23
    .line 376
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    #@25
    if-nez v0, :cond_0

    #@27
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@29
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2c
    move-result-object v0

    #@2d
    if-nez v0, :cond_0

    #@2f
    .line 377
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@31
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-wrap2(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 379
    :catchall_0
    move-exception v0

    #@36
    .line 380
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@38
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get3(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@3f
    .line 379
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    monitor-enter v1

    #@3
    .line 430
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->closed:Z

    #@6
    .line 431
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@8
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    #@b
    .line 432
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@d
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 434
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@13
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-wrap0(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@16
    .line 428
    return-void

    #@17
    .line 429
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 339
    cmp-long v2, p2, v6

    #@4
    if-gez v2, :cond_0

    #@6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "byteCount < 0: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@22
    monitor-enter v3

    #@23
    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->waitUntilReadable()V

    #@26
    .line 344
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->checkNotClosed()V

    #@29
    .line 345
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@2b
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-wide v4

    #@2f
    cmp-long v2, v4, v6

    #@31
    if-nez v2, :cond_1

    #@33
    const-wide/16 v4, -0x1

    #@35
    monitor-exit v3

    #@36
    return-wide v4

    #@37
    .line 348
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@39
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@3b
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@3e
    move-result-wide v4

    #@3f
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@42
    move-result-wide v4

    #@43
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@46
    move-result-wide v0

    #@47
    .line 351
    .local v0, "read":J
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@49
    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    #@4b
    add-long/2addr v4, v0

    #@4c
    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    #@4e
    .line 352
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@50
    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    #@52
    .line 353
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@54
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@57
    move-result-object v2

    #@58
    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@5a
    const/high16 v6, 0x10000

    #@5c
    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@5f
    move-result v2

    #@60
    div-int/lit8 v2, v2, 0x2

    #@62
    int-to-long v6, v2

    #@63
    .line 352
    cmp-long v2, v4, v6

    #@65
    if-ltz v2, :cond_2

    #@67
    .line 354
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@69
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@6c
    move-result-object v2

    #@6d
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@6f
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get2(Lcom/android/okhttp/internal/spdy/SpdyStream;)I

    #@72
    move-result v4

    #@73
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@75
    iget-wide v6, v5, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    #@77
    invoke-virtual {v2, v4, v6, v7}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeWindowUpdateLater(IJ)V

    #@7a
    .line 355
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@7c
    const-wide/16 v4, 0x0

    #@7e
    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    :cond_2
    monitor-exit v3

    #@81
    .line 360
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@83
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@86
    move-result-object v3

    #@87
    monitor-enter v3

    #@88
    .line 361
    :try_start_2
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@8a
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@8d
    move-result-object v2

    #@8e
    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    #@90
    add-long/2addr v4, v0

    #@91
    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    #@93
    .line 362
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@95
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@98
    move-result-object v2

    #@99
    iget-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    #@9b
    .line 363
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@9d
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@a0
    move-result-object v2

    #@a1
    iget-object v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@a3
    const/high16 v6, 0x10000

    #@a5
    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@a8
    move-result v2

    #@a9
    div-int/lit8 v2, v2, 0x2

    #@ab
    int-to-long v6, v2

    #@ac
    .line 362
    cmp-long v2, v4, v6

    #@ae
    if-ltz v2, :cond_3

    #@b0
    .line 364
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@b2
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@b5
    move-result-object v2

    #@b6
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@b8
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@bb
    move-result-object v4

    #@bc
    iget-wide v4, v4, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    #@be
    const/4 v6, 0x0

    #@bf
    invoke-virtual {v2, v6, v4, v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeWindowUpdateLater(IJ)V

    #@c2
    .line 365
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@c4
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@c7
    move-result-object v2

    #@c8
    const-wide/16 v4, 0x0

    #@ca
    iput-wide v4, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@cc
    :cond_3
    monitor-exit v3

    #@cd
    .line 369
    return-wide v0

    #@ce
    .line 342
    .end local v0    # "read":J
    :catchall_0
    move-exception v2

    #@cf
    monitor-exit v3

    #@d0
    throw v2

    #@d1
    .line 360
    .restart local v0    # "read":J
    :catchall_1
    move-exception v2

    #@d2
    monitor-exit v3

    #@d3
    throw v2
.end method

.method receive(Lcom/android/okhttp/okio/BufferedSource;J)V
    .locals 12
    .param p1, "in"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    sget-boolean v5, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-assertionsDisabled:Z

    #@2
    if-nez v5, :cond_3

    #@4
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@6
    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    const/4 v5, 0x0

    #@d
    :goto_0
    if-nez v5, :cond_3

    #@f
    new-instance v5, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v5

    #@15
    :cond_0
    const/4 v5, 0x1

    #@16
    goto :goto_0

    #@17
    .line 411
    .local v0, "finished":Z
    .local v1, "flowControlError":Z
    .local v2, "read":J
    :cond_1
    sub-long/2addr p2, v2

    #@18
    .line 414
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1a
    monitor-enter v6

    #@1b
    .line 415
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@1d
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@20
    move-result-wide v8

    #@21
    const-wide/16 v10, 0x0

    #@23
    cmp-long v5, v8, v10

    #@25
    if-nez v5, :cond_7

    #@27
    const/4 v4, 0x1

    #@28
    .line 416
    .local v4, "wasEmpty":Z
    :goto_1
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@2a
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    #@2c
    invoke-virtual {v5, v7}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@2f
    .line 417
    if-eqz v4, :cond_2

    #@31
    .line 418
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@33
    invoke-virtual {v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@36
    :cond_2
    monitor-exit v6

    #@37
    .line 387
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    .end local v4    # "wasEmpty":Z
    :cond_3
    const-wide/16 v6, 0x0

    #@39
    cmp-long v5, p2, v6

    #@3b
    if-lez v5, :cond_8

    #@3d
    .line 390
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@3f
    monitor-enter v6

    #@40
    .line 391
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->finished:Z

    #@42
    .line 392
    .restart local v0    # "finished":Z
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    #@44
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@47
    move-result-wide v8

    #@48
    add-long/2addr v8, p2

    #@49
    iget-wide v10, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->maxByteCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    cmp-long v5, v8, v10

    #@4d
    if-lez v5, :cond_4

    #@4f
    const/4 v1, 0x1

    #@50
    .restart local v1    # "flowControlError":Z
    :goto_2
    monitor-exit v6

    #@51
    .line 396
    if-eqz v1, :cond_5

    #@53
    .line 397
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@56
    .line 398
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@58
    sget-object v6, Lcom/android/okhttp/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@5a
    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@5d
    .line 399
    return-void

    #@5e
    .line 392
    .end local v1    # "flowControlError":Z
    :cond_4
    const/4 v1, 0x0

    #@5f
    .restart local v1    # "flowControlError":Z
    goto :goto_2

    #@60
    .line 390
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    :catchall_0
    move-exception v5

    #@61
    monitor-exit v6

    #@62
    throw v5

    #@63
    .line 403
    .restart local v0    # "finished":Z
    .restart local v1    # "flowControlError":Z
    :cond_5
    if-eqz v0, :cond_6

    #@65
    .line 404
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@68
    .line 405
    return-void

    #@69
    .line 409
    :cond_6
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    #@6b
    invoke-interface {p1, v5, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@6e
    move-result-wide v2

    #@6f
    .line 410
    .restart local v2    # "read":J
    const-wide/16 v6, -0x1

    #@71
    cmp-long v5, v2, v6

    #@73
    if-nez v5, :cond_1

    #@75
    new-instance v5, Ljava/io/EOFException;

    #@77
    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    #@7a
    throw v5

    #@7b
    .line 415
    :cond_7
    const/4 v4, 0x0

    #@7c
    .restart local v4    # "wasEmpty":Z
    goto :goto_1

    #@7d
    .line 414
    .end local v4    # "wasEmpty":Z
    :catchall_1
    move-exception v5

    #@7e
    monitor-exit v6

    #@7f
    throw v5

    #@80
    .line 384
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    :cond_8
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get3(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
