.class public Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
.super Ljava/lang/Object;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

.field private hostName:Ljava/lang/String;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

.field private socket:Ljava/net/Socket;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/android/okhttp/internal/spdy/PushObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->socket:Ljava/net/Socket;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "client"    # Z
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 519
    sget-object v0, Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@5
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@7
    .line 520
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@9
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@b
    .line 521
    sget-object v0, Lcom/android/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/android/okhttp/internal/spdy/PushObserver;

    #@d
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    #@f
    .line 533
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;

    #@11
    .line 534
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z

    #@13
    .line 535
    iput-object p3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->socket:Ljava/net/Socket;

    #@15
    .line 532
    return-void
.end method

.method public constructor <init>(ZLjava/net/Socket;)V
    .locals 1
    .param p1, "client"    # Z
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/net/InetSocketAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    #@d
    .line 524
    return-void
.end method


# virtual methods
.method public build()Lcom/android/okhttp/internal/spdy/SpdyConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 554
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/android/okhttp/internal/spdy/SpdyConnection;)V

    #@6
    return-object v0
.end method

.method public handler(Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0
    .param p1, "handler"    # Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@0
    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/android/okhttp/internal/spdy/IncomingStreamHandler;

    #@2
    .line 540
    return-object p0
.end method

.method public protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    #@0
    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    #@2
    .line 545
    return-object p0
.end method

.method public pushObserver(Lcom/android/okhttp/internal/spdy/PushObserver;)Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lcom/android/okhttp/internal/spdy/PushObserver;

    #@0
    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/spdy/PushObserver;

    #@2
    .line 550
    return-object p0
.end method
