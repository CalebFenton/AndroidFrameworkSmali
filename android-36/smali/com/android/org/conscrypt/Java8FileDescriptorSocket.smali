.class final Lcom/android/org/conscrypt/Java8FileDescriptorSocket;
.super Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.source "Java8FileDescriptorSocket.java"


# instance fields
.field private blacklist selector:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 2
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 38
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 43
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 53
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 48
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "clientAddress"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .param p5, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    .line 63
    return-void
.end method

.method private static blacklist toApplicationProtocolSelector(Ljava/util/function/BiFunction;)Lcom/android/org/conscrypt/ApplicationProtocolSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/org/conscrypt/ApplicationProtocolSelector;"
        }
    .end annotation

    .line 81
    .local p0, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLSocket;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket$1;-><init>(Ljava/util/function/BiFunction;)V

    :goto_9
    return-object v0
.end method


# virtual methods
.method public whitelist test-api getHandshakeApplicationProtocolSelector()Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;->selector:Ljava/util/function/BiFunction;

    return-object v0
.end method

.method public whitelist test-api setHandshakeApplicationProtocolSelector(Ljava/util/function/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "selector":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljavax/net/ssl/SSLSocket;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;->selector:Ljava/util/function/BiFunction;

    .line 70
    invoke-static {p1}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;->toApplicationProtocolSelector(Ljava/util/function/BiFunction;)Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 71
    return-void
.end method
