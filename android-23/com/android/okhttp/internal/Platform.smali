.class public final Lcom/android/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLATFORM:Lcom/android/okhttp/internal/Platform;

.field private static final SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/okhttp/internal/OptionalMethod",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 39
    new-instance v0, Lcom/android/okhttp/internal/Platform;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/internal/Platform;-><init>()V

    #@8
    sput-object v0, Lcom/android/okhttp/internal/Platform;->PLATFORM:Lcom/android/okhttp/internal/Platform;

    #@a
    .line 47
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    #@c
    const-string/jumbo v1, "setUseSessionTickets"

    #@f
    new-array v2, v5, [Ljava/lang/Class;

    #@11
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    #@18
    .line 46
    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    #@1a
    .line 50
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    #@1c
    const-string/jumbo v1, "setHostname"

    #@1f
    new-array v2, v5, [Ljava/lang/Class;

    #@21
    const-class v3, Ljava/lang/String;

    #@23
    aput-object v3, v2, v4

    #@25
    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    #@28
    .line 49
    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    #@2a
    .line 53
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    #@2c
    const-class v1, [B

    #@2e
    const-string/jumbo v2, "getAlpnSelectedProtocol"

    #@31
    new-array v3, v4, [Ljava/lang/Class;

    #@33
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    #@36
    .line 52
    sput-object v0, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    #@38
    .line 56
    new-instance v0, Lcom/android/okhttp/internal/OptionalMethod;

    #@3a
    const-string/jumbo v1, "setAlpnProtocols"

    #@3d
    new-array v2, v5, [Ljava/lang/Class;

    #@3f
    const-class v3, [B

    #@41
    aput-object v3, v2, v4

    #@43
    invoke-direct {v0, v6, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    #@46
    .line 55
    sput-object v0, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    #@48
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    .line 131
    .local v2, "result":Lcom/android/okhttp/okio/Buffer;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v3

    #@a
    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@c
    .line 132
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/okhttp/Protocol;

    #@12
    .line 133
    .local v1, "protocol":Lcom/android/okhttp/Protocol;
    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@14
    if-ne v1, v4, :cond_0

    #@16
    .line 131
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 134
    :cond_0
    invoke-virtual {v1}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@20
    move-result v4

    #@21
    invoke-virtual {v2, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@24
    .line 135
    invoke-virtual {v1}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v2, v4}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@2b
    goto :goto_1

    #@2c
    .line 137
    .end local v1    # "protocol":Lcom/android/okhttp/Protocol;
    :cond_1
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    #@2f
    move-result-object v4

    #@30
    return-object v4
.end method

.method public static get()Lcom/android/okhttp/internal/Platform;
    .locals 1

    #@0
    .prologue
    .line 42
    sget-object v0, Lcom/android/okhttp/internal/Platform;->PLATFORM:Lcom/android/okhttp/internal/Platform;

    #@2
    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    #@0
    .prologue
    .line 98
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 77
    if-eqz p2, :cond_0

    #@4
    .line 78
    sget-object v2, Lcom/android/okhttp/internal/Platform;->SET_USE_SESSION_TICKETS:Lcom/android/okhttp/internal/OptionalMethod;

    #@6
    new-array v3, v5, [Ljava/lang/Object;

    #@8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v4

    #@c
    aput-object v4, v3, v6

    #@e
    invoke-virtual {v2, p1, v3}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 79
    sget-object v2, Lcom/android/okhttp/internal/Platform;->SET_HOSTNAME:Lcom/android/okhttp/internal/OptionalMethod;

    #@13
    new-array v3, v5, [Ljava/lang/Object;

    #@15
    aput-object p2, v3, v6

    #@17
    invoke-virtual {v2, p1, v3}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 83
    :cond_0
    sget-object v2, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    #@1c
    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    .line 84
    .local v0, "alpnSupported":Z
    if-nez v0, :cond_1

    #@22
    .line 85
    return-void

    #@23
    .line 88
    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    #@25
    invoke-static {p3}, Lcom/android/okhttp/internal/Platform;->concatLengthPrefixed(Ljava/util/List;)[B

    #@28
    move-result-object v2

    #@29
    aput-object v2, v1, v6

    #@2b
    .line 89
    .local v1, "parameters":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    #@2d
    .line 90
    sget-object v2, Lcom/android/okhttp/internal/Platform;->SET_ALPN_PROTOCOLS:Lcom/android/okhttp/internal/OptionalMethod;

    #@2f
    invoke-virtual {v2, p1, v1}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 75
    :cond_2
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@3
    .line 116
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    const-string/jumbo v0, "X-Android"

    #@3
    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    sget-object v2, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/OptionalMethod;->isSupported(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    .line 103
    .local v1, "alpnSupported":Z
    if-nez v1, :cond_0

    #@9
    .line 104
    return-object v4

    #@a
    .line 108
    :cond_0
    sget-object v2, Lcom/android/okhttp/internal/Platform;->GET_ALPN_SELECTED_PROTOCOL:Lcom/android/okhttp/internal/OptionalMethod;

    #@c
    const/4 v3, 0x0

    #@d
    new-array v3, v3, [Ljava/lang/Object;

    #@f
    invoke-virtual {v2, p1, v3}, Lcom/android/okhttp/internal/OptionalMethod;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [B

    #@15
    .line 109
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_1

    #@17
    .line 110
    new-instance v2, Ljava/lang/String;

    #@19
    sget-object v3, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@1b
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1e
    return-object v2

    #@1f
    .line 112
    :cond_1
    return-object v4
.end method

.method public logW(Ljava/lang/String;)V
    .locals 0
    .param p1, "warning"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    #@3
    .line 58
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    #@7
    .line 62
    return-void
.end method

.method public toUriLenient(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    #@7
    .line 66
    return-void
.end method
