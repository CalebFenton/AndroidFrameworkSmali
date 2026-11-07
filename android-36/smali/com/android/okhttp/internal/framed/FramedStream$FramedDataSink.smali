.class final Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private blacklist closed:Z

.field private blacklist finished:Z

.field private final blacklist sendBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 472
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 1

    .line 472
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p0
.end method

.method static synthetic blacklist access$202(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z
    .registers 2

    .line 472
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 1

    .line 472
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return p0
.end method

.method private blacklist emitDataFrame(Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v1

    .line 504
    :try_start_3
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_91

    .line 506
    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v2, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-nez v2, :cond_2d

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 507
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$900(Lcom/android/okhttp/internal/framed/FramedStream;)V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2a

    goto :goto_c

    :catchall_2a
    move-exception v0

    move-object p1, v0

    goto :goto_94

    .line 510
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 513
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1200(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 514
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v2, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 515
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-wide v2, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v10

    iput-wide v2, v0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 516
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_91

    .line 518
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V

    .line 520
    :try_start_58
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v6

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v7

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v10, v0

    if-nez p1, :cond_76

    const/4 p1, 0x1

    :goto_71
    move v8, p1

    goto :goto_78

    :catchall_73
    move-exception v0

    move-object p1, v0

    goto :goto_87

    :cond_76
    const/4 p1, 0x0

    goto :goto_71

    :goto_78
    iget-object v9, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual/range {v6 .. v11}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    :try_end_7d
    .catchall {:try_start_58 .. :try_end_7d} :catchall_73

    .line 522
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :goto_87
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 523
    throw p1

    :catchall_91
    move-exception v0

    move-object p0, v0

    goto :goto_9e

    .line 510
    :goto_94
    :try_start_94
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 511
    throw p1

    .line 516
    :goto_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_91

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v1

    .line 544
    :try_start_3
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-eqz v0, :cond_c

    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_5c

    .line 545
    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_9

    .line 546
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_43

    .line 548
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_30

    .line 549
    :goto_22
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_43

    .line 550
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_22

    .line 554
    :cond_30
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I

    move-result v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V

    .line 557
    :cond_43
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 558
    :try_start_46
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    .line 559
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_58

    .line 560
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    .line 561
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1000(Lcom/android/okhttp/internal/framed/FramedStream;)V

    return-void

    :catchall_58
    move-exception v0

    move-object p0, v0

    .line 559
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_58

    throw p0

    .line 545
    :goto_5c
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_9

    throw p0
.end method

.method public whitelist test-api flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 529
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # invokes: Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1200(Lcom/android/okhttp/internal/framed/FramedStream;)V

    .line 530
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    .line 531
    :goto_9
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    const/4 v0, 0x0

    .line 532
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    goto :goto_9

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    .line 530
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 538
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/android/okhttp/internal/framed/FramedStream;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 492
    :goto_5
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_16

    const/4 p1, 0x0

    .line 493
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method
