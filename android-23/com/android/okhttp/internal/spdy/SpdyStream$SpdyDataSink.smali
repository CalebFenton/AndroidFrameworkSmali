.class final Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;
.super Ljava/lang/Object;
.source "SpdyStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpdyDataSink"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lcom/android/okhttp/okio/Buffer;

.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

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
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-assertionsDisabled:Z

    #@b
    .line 470
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@0
    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 477
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@c
    .line 470
    return-void
.end method

.method private emitDataFrame(Z)V
    .locals 10
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 501
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@3
    monitor-enter v1

    #@4
    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@6
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 504
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@f
    iget-wide v6, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    #@11
    const-wide/16 v8, 0x0

    #@13
    cmp-long v0, v6, v8

    #@15
    if-gtz v0, :cond_0

    #@17
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 508
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1d
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@24
    .line 511
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@26
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-wrap1(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@29
    .line 512
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2b
    iget-wide v6, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    #@2d
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@2f
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@32
    move-result-wide v8

    #@33
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@36
    move-result-wide v4

    #@37
    .line 513
    .local v4, "toWrite":J
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@39
    iget-wide v6, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    #@3b
    sub-long/2addr v6, v4

    #@3c
    iput-wide v6, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3e
    monitor-exit v1

    #@3f
    .line 516
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@41
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->enter()V

    #@48
    .line 518
    :try_start_3
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@4a
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@50
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get2(Lcom/android/okhttp/internal/spdy/SpdyStream;)I

    #@53
    move-result v1

    #@54
    if-eqz p1, :cond_1

    #@56
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@58
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@5b
    move-result-wide v6

    #@5c
    cmp-long v3, v4, v6

    #@5e
    if-nez v3, :cond_1

    #@60
    const/4 v2, 0x1

    #@61
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@63
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@66
    .line 520
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@68
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@6f
    .line 499
    return-void

    #@70
    .line 504
    .end local v4    # "toWrite":J
    :cond_2
    :try_start_4
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z

    #@72
    if-nez v0, :cond_0

    #@74
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@76
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@79
    move-result-object v0

    #@7a
    if-nez v0, :cond_0

    #@7c
    .line 505
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@7e
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-wrap2(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 507
    :catchall_0
    move-exception v0

    #@83
    .line 508
    :try_start_5
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@85
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@8c
    .line 507
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8d
    .line 501
    :catchall_1
    move-exception v0

    #@8e
    monitor-exit v1

    #@8f
    throw v0

    #@90
    .line 519
    .restart local v4    # "toWrite":J
    :catchall_2
    move-exception v0

    #@91
    .line 520
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@93
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@9a
    .line 519
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 540
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@9
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    :goto_0
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v0

    #@18
    :cond_0
    move v0, v2

    #@19
    goto :goto_0

    #@1a
    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1c
    monitor-enter v0

    #@1d
    .line 542
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-eqz v1, :cond_2

    #@21
    monitor-exit v0

    #@22
    return-void

    #@23
    :cond_2
    monitor-exit v0

    #@24
    .line 544
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@26
    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@28
    iget-boolean v0, v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->finished:Z

    #@2a
    if-nez v0, :cond_4

    #@2c
    .line 546
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@2e
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@31
    move-result-wide v0

    #@32
    cmp-long v0, v0, v4

    #@34
    if-lez v0, :cond_3

    #@36
    .line 547
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@38
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@3b
    move-result-wide v0

    #@3c
    cmp-long v0, v0, v4

    #@3e
    if-lez v0, :cond_4

    #@40
    .line 548
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->emitDataFrame(Z)V

    #@43
    goto :goto_1

    #@44
    .line 541
    :catchall_0
    move-exception v1

    #@45
    monitor-exit v0

    #@46
    throw v1

    #@47
    .line 552
    :cond_3
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@49
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4c
    move-result-object v0

    #@4d
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@4f
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get2(Lcom/android/okhttp/internal/spdy/SpdyStream;)I

    #@52
    move-result v1

    #@53
    const/4 v3, 0x0

    #@54
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeData(IZLcom/android/okhttp/okio/Buffer;J)V

    #@57
    .line 555
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@59
    monitor-enter v0

    #@5a
    .line 556
    const/4 v1, 0x1

    #@5b
    :try_start_1
    iput-boolean v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5d
    monitor-exit v0

    #@5e
    .line 558
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@60
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->flush()V

    #@67
    .line 559
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@69
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-wrap0(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@6c
    .line 539
    return-void

    #@6d
    .line 555
    :catchall_1
    move-exception v1

    #@6e
    monitor-exit v0

    #@6f
    throw v1
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 525
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    :cond_0
    const/4 v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 526
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1a
    monitor-enter v2

    #@1b
    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1d
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-wrap1(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 529
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@23
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@26
    move-result-wide v2

    #@27
    const-wide/16 v4, 0x0

    #@29
    cmp-long v0, v2, v4

    #@2b
    if-lez v0, :cond_2

    #@2d
    .line 530
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->emitDataFrame(Z)V

    #@30
    .line 531
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@32
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->flush()V

    #@39
    goto :goto_1

    #@3a
    .line 526
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v2

    #@3c
    throw v0

    #@3d
    .line 524
    :cond_2
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->-get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 488
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->this$0:Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    :cond_0
    const/4 v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@1a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@1d
    .line 490
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->sendBuffer:Lcom/android/okhttp/okio/Buffer;

    #@1f
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@22
    move-result-wide v2

    #@23
    const-wide/16 v4, 0x4000

    #@25
    cmp-long v0, v2, v4

    #@27
    if-ltz v0, :cond_2

    #@29
    .line 491
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->emitDataFrame(Z)V

    #@2c
    goto :goto_1

    #@2d
    .line 487
    :cond_2
    return-void
.end method
