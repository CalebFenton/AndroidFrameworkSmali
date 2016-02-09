.class public final Lcom/android/okhttp/internal/spdy/SpdyStream;
.super Ljava/lang/Object;
.source "SpdyStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;,
        Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;,
        Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

.field private errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

.field private final id:I

.field private final readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

.field private final source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/spdy/SpdyStream;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/spdy/SpdyStream;)Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->cancelStreamIfNecessary()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->checkOutNotClosed()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/internal/spdy/SpdyStream;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->waitForIo()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

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
    sput-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@b
    .line 35
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(ILcom/android/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/okhttp/internal/spdy/SpdyConnection;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/high16 v2, 0x10000

    #@2
    const/4 v4, 0x0

    #@3
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 45
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->unacknowledgedBytesRead:J

    #@a
    .line 66
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@c
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@f
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@11
    .line 67
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@13
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@16
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@18
    .line 74
    iput-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@1a
    .line 78
    if-nez p2, :cond_0

    #@1c
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "connection == null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 79
    :cond_0
    if-nez p5, :cond_1

    #@27
    new-instance v0, Ljava/lang/NullPointerException;

    #@29
    const-string/jumbo v1, "requestHeaders == null"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 80
    :cond_1
    iput p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@32
    .line 81
    iput-object p2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@34
    .line 83
    iget-object v0, p2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@36
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@39
    move-result v0

    #@3a
    int-to-long v0, v0

    #@3b
    .line 82
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    #@3d
    .line 84
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@3f
    .line 85
    iget-object v1, p2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@41
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@44
    move-result v1

    #@45
    int-to-long v2, v1

    #@46
    .line 84
    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;JLcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)V

    #@49
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@4b
    .line 86
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@4d
    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;-><init>(Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@50
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@52
    .line 87
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@54
    invoke-static {v0, p4}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-set0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z

    #@57
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@59
    invoke-static {v0, p3}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-set0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z

    #@5c
    .line 89
    iput-object p5, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    #@5e
    .line 77
    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    sget-boolean v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@2
    if-nez v2, :cond_1

    #@4
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v2, 0x0

    #@b
    :goto_0
    if-nez v2, :cond_1

    #@d
    new-instance v2, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v2

    #@13
    :cond_0
    const/4 v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 451
    :cond_1
    monitor-enter p0

    #@16
    .line 452
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@18
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_4

    #@1e
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@20
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_4

    #@26
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@28
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_3

    #@2e
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@30
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    #@33
    move-result v0

    #@34
    .line 453
    :goto_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v1

    #@38
    .local v1, "open":Z
    monitor-exit p0

    #@39
    .line 455
    if-eqz v0, :cond_5

    #@3b
    .line 460
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3d
    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@40
    .line 447
    :cond_2
    :goto_2
    return-void

    #@41
    .line 452
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x1

    #@42
    .local v0, "cancel":Z
    goto :goto_1

    #@43
    .end local v0    # "cancel":Z
    :cond_4
    const/4 v0, 0x0

    #@44
    .restart local v0    # "cancel":Z
    goto :goto_1

    #@45
    .line 451
    .end local v0    # "cancel":Z
    :catchall_0
    move-exception v2

    #@46
    monitor-exit p0

    #@47
    throw v2

    #@48
    .line 461
    .restart local v1    # "open":Z
    :cond_5
    if-nez v1, :cond_2

    #@4a
    .line 462
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4c
    iget v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@4e
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@51
    goto :goto_2
.end method

.method private checkOutNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 574
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "stream closed"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@13
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 576
    new-instance v0, Ljava/io/IOException;

    #@1b
    const-string/jumbo v1, "stream finished"

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 578
    new-instance v0, Ljava/io/IOException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "stream was reset: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 572
    :cond_2
    return-void
.end method

.method private closeInternal(Lcom/android/okhttp/internal/spdy/ErrorCode;)Z
    .locals 3
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 238
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@4
    if-nez v0, :cond_1

    #@6
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    move v0, v1

    #@d
    :goto_0
    if-nez v0, :cond_1

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    :cond_0
    move v0, v2

    #@16
    goto :goto_0

    #@17
    .line 239
    :cond_1
    monitor-enter p0

    #@18
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    monitor-exit p0

    #@1d
    .line 241
    return v1

    #@1e
    .line 243
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@20
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_3

    #@26
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@28
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    monitor-exit p0

    #@2f
    .line 244
    return v1

    #@30
    .line 246
    :cond_3
    :try_start_2
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@32
    .line 247
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 249
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@38
    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@3d
    .line 250
    return v2

    #@3e
    .line 239
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit p0

    #@40
    throw v0
.end method

.method private waitForIo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    #@0
    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 586
    return-void

    #@4
    .line 589
    :catch_0
    move-exception v0

    #@5
    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    #@7
    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    #@a
    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 568
    iget-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->bytesLeftInWriteWindow:J

    #@5
    .line 569
    const-wide/16 v0, 0x0

    #@7
    cmp-long v0, p1, v0

    #@9
    if-lez v0, :cond_0

    #@b
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V

    #@e
    .line 567
    :cond_0
    return-void
.end method

.method public close(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeInternal(Lcom/android/okhttp/internal/spdy/ErrorCode;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 220
    return-void

    #@7
    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@9
    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynReset(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@e
    .line 218
    return-void
.end method

.method public closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeInternal(Lcom/android/okhttp/internal/spdy/ErrorCode;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 231
    return-void

    #@7
    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@9
    iget v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@e
    .line 229
    return-void
.end method

.method public getConnection()Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/android/okhttp/internal/spdy/ErrorCode;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@2
    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->requestHeaders:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@3
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 139
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@8
    if-nez v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 140
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    goto :goto_0

    #@12
    .line 142
    :catchall_0
    move-exception v0

    #@13
    .line 143
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@15
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@18
    .line 142
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@19
    :catchall_1
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0

    #@1c
    .line 143
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@1e
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;->exitAndThrowIfTimedOut()V

    #@21
    .line 145
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@23
    if-eqz v0, :cond_1

    #@25
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    monitor-exit p0

    #@28
    return-object v0

    #@29
    .line 146
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "stream was reset: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public getSink()Lcom/android/okhttp/okio/Sink;
    .locals 2

    #@0
    .prologue
    .line 206
    monitor-enter p0

    #@1
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 211
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@e
    return-object v0

    #@f
    .line 208
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "reply before requesting the sink"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 206
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public getSource()Lcom/android/okhttp/okio/Source;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@2
    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 120
    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@3
    and-int/lit8 v2, v2, 0x1

    #@5
    if-ne v2, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 121
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@a
    iget-boolean v2, v2, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@c
    if-ne v2, v0, :cond_1

    #@e
    :goto_1
    return v1

    #@f
    .line 120
    .end local v0    # "streamIsClient":Z
    :cond_0
    const/4 v0, 0x0

    #@10
    .restart local v0    # "streamIsClient":Z
    goto :goto_0

    #@11
    .line 121
    :cond_1
    const/4 v1, 0x0

    #@12
    goto :goto_1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-eqz v0, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 108
    return v1

    #@8
    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@a
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@12
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_3

    #@18
    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@1a
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get1(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@22
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-get0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;)Z

    #@25
    move-result v0

    #@26
    .line 110
    if-eqz v0, :cond_3

    #@28
    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    monitor-exit p0

    #@2d
    .line 113
    return v1

    #@2e
    .line 115
    :cond_3
    const/4 v0, 0x1

    #@2f
    monitor-exit p0

    #@30
    return v0

    #@31
    :catchall_0
    move-exception v0

    #@32
    monitor-exit p0

    #@33
    throw v0
.end method

.method public readTimeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->readTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@2
    return-object v0
.end method

.method receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V
    .locals 4
    .param p1, "in"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    sget-boolean v0, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@17
    int-to-long v2, p2

    #@18
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->receive(Lcom/android/okhttp/okio/BufferedSource;J)V

    #@1b
    .line 284
    return-void
.end method

.method receiveFin()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 290
    sget-boolean v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :cond_0
    if-nez v1, :cond_1

    #@e
    new-instance v1, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v1

    #@14
    .line 292
    :cond_1
    monitor-enter p0

    #@15
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->source:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;

    #@17
    const/4 v2, 0x1

    #@18
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;->-set0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSource;Z)Z

    #@1b
    .line 294
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    #@1e
    move-result v0

    #@1f
    .line 295
    .local v0, "open":Z
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 297
    if-nez v0, :cond_2

    #@25
    .line 298
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@27
    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@29
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@2c
    .line 289
    :cond_2
    return-void

    #@2d
    .line 292
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit p0

    #@2f
    throw v1
.end method

.method receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V
    .locals 5
    .param p2, "headersMode"    # Lcom/android/okhttp/internal/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    sget-boolean v3, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@2
    if-nez v3, :cond_1

    #@4
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    const/4 v3, 0x0

    #@b
    :goto_0
    if-nez v3, :cond_1

    #@d
    new-instance v3, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v3

    #@13
    :cond_0
    const/4 v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 255
    :cond_1
    const/4 v0, 0x0

    #@16
    .line 256
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    const/4 v2, 0x1

    #@17
    .line 257
    .local v2, "open":Z
    monitor-enter p0

    #@18
    .line 258
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@1a
    if-nez v3, :cond_4

    #@1c
    .line 259
    invoke-virtual {p2}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_3

    #@22
    .line 260
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .end local v0    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    .end local v2    # "open":Z
    :goto_1
    monitor-exit p0

    #@25
    .line 277
    if-eqz v0, :cond_6

    #@27
    .line 278
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@2a
    .line 253
    :cond_2
    :goto_2
    return-void

    #@2b
    .line 262
    .restart local v0    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    .restart local v2    # "open":Z
    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@2d
    .line 263
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    #@30
    move-result v2

    #@31
    .line 264
    .local v2, "open":Z
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_1

    #@35
    .line 257
    .end local v2    # "open":Z
    :catchall_0
    move-exception v3

    #@36
    monitor-exit p0

    #@37
    throw v3

    #@38
    .line 267
    .local v2, "open":Z
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_5

    #@3e
    .line 268
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@40
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    goto :goto_1

    #@41
    .line 270
    .local v0, "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    #@43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@46
    .line 271
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@48
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@4b
    .line 272
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@4e
    .line 273
    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 279
    .end local v0    # "errorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    .end local v2    # "open":Z
    :cond_6
    if-nez v2, :cond_2

    #@53
    .line 280
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@55
    iget v4, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@57
    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@5a
    goto :goto_2
.end method

.method declared-synchronized receiveRstStream(Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 304
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->errorCode:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@7
    .line 305
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 302
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public reply(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v1, 0x1

    #@1
    .line 164
    sget-boolean v2, Lcom/android/okhttp/internal/spdy/SpdyStream;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    :cond_0
    if-nez v1, :cond_1

    #@e
    new-instance v1, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v1

    #@14
    .line 165
    :cond_1
    const/4 v0, 0x0

    #@15
    .line 166
    .local v0, "outFinished":Z
    monitor-enter p0

    #@16
    .line 167
    if-nez p1, :cond_2

    #@18
    .line 168
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v2, "responseHeaders == null"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 166
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1

    #@24
    .line 170
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2a
    const-string/jumbo v2, "reply already sent"

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 173
    :cond_3
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->responseHeaders:Ljava/util/List;

    #@33
    .line 174
    if-nez p2, :cond_4

    #@35
    .line 175
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->sink:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;

    #@37
    const/4 v2, 0x1

    #@38
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;->-set0(Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyDataSink;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 176
    const/4 v0, 0x1

    #@3c
    :cond_4
    monitor-exit p0

    #@3d
    .line 179
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@3f
    iget v2, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->id:I

    #@41
    invoke-virtual {v1, v2, v0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynReply(IZLjava/util/List;)V

    #@44
    .line 181
    if-eqz v0, :cond_5

    #@46
    .line 182
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->connection:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@48
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->flush()V

    #@4b
    .line 163
    :cond_5
    return-void
.end method

.method public writeTimeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyStream;->writeTimeout:Lcom/android/okhttp/internal/spdy/SpdyStream$SpdyTimeout;

    #@2
    return-object v0
.end method
