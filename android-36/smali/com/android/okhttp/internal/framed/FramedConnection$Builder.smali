.class public Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist client:Z

.field private blacklist hostName:Ljava/lang/String;

.field private blacklist listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

.field private blacklist protocol:Lcom/android/okhttp/Protocol;

.field private blacklist pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

.field private blacklist sink:Lcom/android/okhttp/okio/BufferedSink;

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .line 546
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 547
    sget-object v0, Lcom/android/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/android/okhttp/internal/framed/PushObserver;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 555
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/Protocol;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/PushObserver;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z
    .registers 1

    .line 540
    iget-boolean p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    return p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->sink:Lcom/android/okhttp/okio/BufferedSink;

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-object p0
.end method


# virtual methods
.method public blacklist build()Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V

    return-object v0
.end method

.method public blacklist listener(Lcom/android/okhttp/internal/framed/FramedConnection$Listener;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-object p0
.end method

.method public blacklist protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2

    .line 578
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method public blacklist pushObserver(Lcom/android/okhttp/internal/framed/PushObserver;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2

    .line 583
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    return-object p0
.end method

.method public blacklist socket(Ljava/net/Socket;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 559
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 5

    .line 565
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    .line 566
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    .line 567
    iput-object p3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 568
    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->sink:Lcom/android/okhttp/okio/BufferedSink;

    return-object p0
.end method
