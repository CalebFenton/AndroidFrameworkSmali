.class final Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist closed:Z

.field private blacklist finished:Z

.field private final blacklist maxByteCount:J

.field private final blacklist readBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final blacklist receiveBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 321
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 336
    iput-wide p2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;JLcom/android/okhttp/internal/framed/FramedStream$1;)V
    .registers 5

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 1

    .line 316
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p0
.end method

.method static synthetic blacklist access$102(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z
    .registers 2

    .line 316
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 1

    .line 316
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return p0
.end method

.method private blacklist checkNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2a

    .line 443
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 444
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist waitUntilReadable()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 378
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$900(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_9

    :catchall_2b
    move-exception v0

    goto :goto_37

    .line 382
    :cond_2d
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :goto_37
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 383
    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    const/4 v1, 0x1

    .line 432
    :try_start_4
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 433
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 434
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 435
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 436
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1000(Lcom/android/okhttp/internal/framed/FramedStream;)V

    return-void

    :catchall_17
    move-exception p0

    .line 435
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b0

    .line 344
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 345
    :try_start_9
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 346
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 347
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_20

    const-wide/16 p0, -0x1

    monitor-exit v2

    return-wide p0

    :catchall_1d
    move-exception p0

    goto/16 :goto_ae

    .line 350
    :cond_20
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p1

    .line 353
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v3, p3, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 355
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {p3}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object p3

    iget-object p3, p3, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_5f

    .line 356
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {p3}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object p3

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v3

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v6, v4, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {p3, v3, v6, v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 357
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iput-wide v0, p3, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 359
    :cond_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_9 .. :try_end_60} :catchall_1d

    .line 362
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {p3}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object p3

    monitor-enter p3

    .line 363
    :try_start_67
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v3, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 364
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 365
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v4

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_aa

    .line 366
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 367
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object p0

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    goto :goto_aa

    :catchall_a8
    move-exception p0

    goto :goto_ac

    .line 369
    :cond_aa
    :goto_aa
    monitor-exit p3

    return-wide p1

    :goto_ac
    monitor-exit p3
    :try_end_ad
    .catchall {:try_start_67 .. :try_end_ad} :catchall_a8

    throw p0

    .line 359
    :goto_ae
    :try_start_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_1d

    throw p0

    .line 341
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist receive(Lcom/android/okhttp/okio/BufferedSource;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6a

    .line 392
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 393
    :try_start_9
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .line 394
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_1c

    move v4, v6

    goto :goto_1d

    :cond_1c
    move v4, v5

    .line 395
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_67

    if-eqz v4, :cond_2b

    .line 399
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 400
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object p1, Lcom/android/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_2b
    if-eqz v3, :cond_31

    .line 406
    invoke-interface {p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    return-void

    .line 411
    :cond_31
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_61

    sub-long/2addr p2, v2

    .line 416
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 417
    :try_start_41
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_4c

    move v5, v6

    .line 418
    :cond_4c
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/android/okhttp/okio/Buffer;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    if-eqz v5, :cond_5d

    .line 420
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5d

    :catchall_5b
    move-exception p0

    goto :goto_5f

    .line 422
    :cond_5d
    :goto_5d
    monitor-exit v2

    goto :goto_0

    :goto_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_41 .. :try_end_60} :catchall_5b

    throw p0

    .line 412
    :cond_61
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :catchall_67
    move-exception p0

    .line 395
    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p0

    :cond_6a
    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    return-object p0
.end method
