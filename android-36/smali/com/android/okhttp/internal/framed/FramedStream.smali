.class public final Lcom/android/okhttp/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;,
        Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;,
        Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist bytesLeftInWriteWindow:J

.field private final blacklist connection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field private final blacklist id:I

.field private final blacklist readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

.field private final blacklist requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

.field private final blacklist source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

.field blacklist unacknowledgedBytesRead:J

.field private final blacklist writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/okhttp/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 68
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 69
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-eqz p2, :cond_51

    if-eqz p5, :cond_49

    .line 82
    iput p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    .line 83
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 84
    iget-object p1, p2, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v1, 0x10000

    .line 85
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 86
    new-instance p1, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    iget-object p2, p2, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 87
    invoke-virtual {p2, v1}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;JLcom/android/okhttp/internal/framed/FramedStream$1;)V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 88
    new-instance p2, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {p2, p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 89
    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {p1, p4}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 90
    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 91
    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-void

    .line 81
    :cond_49
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "requestHeaders == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_51
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-object p0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    return p0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private blacklist cancelStreamIfNecessary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    monitor-enter p0

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_3e

    :cond_24
    :goto_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 455
    :goto_27
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    .line 456
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_22

    if-eqz v0, :cond_34

    .line 462
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_34
    if-nez v1, :cond_3d

    .line 464
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    :cond_3d
    return-void

    .line 456
    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_22

    throw v0
.end method

.method private blacklist checkOutNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 577
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 579
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_15

    return-void

    .line 580
    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 576
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z
    .registers 4

    .line 241
    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 243
    monitor-exit p0

    return v1

    :catchall_8
    move-exception p1

    goto :goto_2b

    .line 245
    :cond_a
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 246
    monitor-exit p0

    return v1

    .line 248
    :cond_1c
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 250
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_8

    .line 251
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {p1, p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    const/4 p0, 0x1

    return p0

    .line 250
    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_8

    throw p1
.end method

.method private blacklist waitForIo()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 590
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 592
    :catch_4
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method


# virtual methods
.method blacklist addBytesToWriteWindow(J)V
    .registers 5

    .line 570
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    .line 571
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public blacklist close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public blacklist closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3

    .line 232
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 235
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public blacklist getConnection()Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-object p0
.end method

.method public declared-synchronized blacklist getErrorCode()Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist getId()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    return p0
.end method

.method public blacklist getRequestHeaders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized blacklist getResponseHeaders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/AsyncTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    .line 141
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_14

    .line 142
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_6

    :catchall_12
    move-exception v0

    goto :goto_3a

    .line 145
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 147
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_38

    if-eqz v0, :cond_1f

    monitor-exit p0

    return-object v0

    .line 148
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_38
    move-exception v0

    goto :goto_40

    .line 145
    :goto_3a
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 146
    throw v0

    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_38

    throw v0
.end method

.method public blacklist getSink()Lcom/android/okhttp/okio/Sink;
    .registers 3

    .line 208
    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_16

    .line 210
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 212
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_14

    .line 213
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    return-object p0

    .line 212
    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method public blacklist getSource()Lcom/android/okhttp/okio/Source;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    return-object p0
.end method

.method public blacklist isLocallyInitiated()Z
    .registers 4

    .line 122
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 123
    :goto_a
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-ne p0, v0, :cond_11

    return v1

    :cond_11
    return v2
.end method

.method public declared-synchronized blacklist isOpen()Z
    .registers 3

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 110
    monitor-exit p0

    return v1

    .line 112
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_34

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 113
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2b
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_19

    if-eqz v0, :cond_31

    .line 115
    monitor-exit p0

    return v1

    .line 117
    :cond_31
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_19

    throw v0
.end method

.method public blacklist readTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method

.method blacklist receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receive(Lcom/android/okhttp/okio/BufferedSource;J)V

    return-void
.end method

.method blacklist receiveFin()V
    .registers 3

    .line 294
    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    const/4 v1, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 296
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    if-nez v0, :cond_18

    .line 300
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    .line 298
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method blacklist receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 259
    monitor-enter p0

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 261
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 262
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    goto :goto_34

    :catchall_10
    move-exception p1

    goto :goto_45

    .line 264
    :cond_12
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 265
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_34

    .line 269
    :cond_1c
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 270
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/framed/ErrorCode;

    goto :goto_34

    .line 272
    :cond_25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 278
    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_10

    if-eqz v1, :cond_3b

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_3b
    if-nez v2, :cond_44

    .line 282
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {p1, p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    :cond_44
    return-void

    .line 278
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_10

    throw p1
.end method

.method declared-synchronized blacklist receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3

    monitor-enter p0

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_d

    .line 306
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 309
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public blacklist reply(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    monitor-enter p0

    if-eqz p1, :cond_2d

    .line 172
    :try_start_3
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_25

    .line 175
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez p2, :cond_14

    .line 177
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    const/4 v0, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {p2, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_35

    :cond_14
    const/4 v0, 0x0

    .line 180
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_12

    .line 181
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    if-eqz v0, :cond_24

    .line 184
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    :cond_24
    return-void

    .line 173
    :cond_25
    :try_start_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reply already sent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_2d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "responseHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_12

    throw p1
.end method

.method public blacklist writeTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object p0
.end method
